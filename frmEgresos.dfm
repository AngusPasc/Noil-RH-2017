object frm_Egresos: Tfrm_Egresos
  Left = 49
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Impresion de Cheques'
  ClientHeight = 559
  ClientWidth = 1158
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = frmOrdenes.PopupPrincipal
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object NxHeaderPanel1: TNxHeaderPanel
    AlignWithMargins = True
    Left = 87
    Top = 3
    Width = 1061
    Height = 553
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    HeaderSize = 20
    ParentColor = True
    ParentHeaderFont = False
    TabOrder = 5
    FullWidth = 1061
    object Label1: TLabel
      Left = 14
      Top = 34
      Width = 36
      Height = 16
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 14
      Top = 122
      Width = 65
      Height = 16
      Caption = 'Referencia:'
      FocusControl = tdbsReferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 14
      Top = 94
      Width = 49
      Height = 16
      Caption = 'Cargo a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 160
      Top = 214
      Width = 31
      Height = 16
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 14
      Top = 342
      Width = 60
      Height = 16
      Caption = 'Proyecto :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 172
      Top = 182
      Width = 19
      Height = 16
      Caption = 'Iva:'
      FocusControl = dbIVa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 14
      Top = 309
      Width = 40
      Height = 16
      Caption = 'Poliza:'
      FocusControl = dbPoliza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 14
      Top = 62
      Width = 32
      Height = 16
      Caption = 'Folio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 151
      Width = 61
      Height = 16
      Caption = 'Proveedor:'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 14
      Top = 277
      Width = 30
      Height = 16
      Caption = 'RFC:'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 14
      Top = 246
      Width = 69
      Height = 16
      Caption = 'Cta. Banco:'
      FocusControl = tdbsReferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btnBusca: TSpeedButton
      Left = 425
      Top = 148
      Width = 37
      Height = 27
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000888800000880F00088880F000880F00088880F0008800000088000
        0008800F000000F00008800F000800F00008800F000800F00008880000000000
        00888880F00880F008888880000880000888888800088000888888880F0880F0
        8888888800088000888888888888888888888888888888888888}
      OnClick = btnBuscaClick
    end
    object Label13: TLabel
      Left = 528
      Top = 99
      Width = 22
      Height = 16
      Caption = 'CP:'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 528
      Top = 162
      Width = 45
      Height = 16
      Caption = 'Estado:'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 747
      Top = 99
      Width = 51
      Height = 16
      Caption = 'Telefono:'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 528
      Top = 194
      Width = 72
      Height = 16
      Caption = 'Descripci'#243'n:'
      FocusControl = tmDescripcion
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 528
      Top = 32
      Width = 81
      Height = 16
      Caption = 'Razon Social:'
      FocusControl = tsRazonSocial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 528
      Top = 130
      Width = 57
      Height = 16
      Caption = 'Domicilio:'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 528
      Top = 66
      Width = 44
      Height = 16
      Caption = 'Ciudad:'
      FocusControl = tsCiudad
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl4: TLabel
      Left = 23
      Top = 182
      Width = 54
      Height = 16
      Caption = 'SubTotal:'
      FocusControl = tdbsReferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl1: TLabel
      Left = 308
      Top = 214
      Width = 100
      Height = 16
      Caption = 'Mostrar Subtotal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label18: TLabel
      Left = 528
      Top = 275
      Width = 73
      Height = 16
      Caption = 'Banco Prov.:'
      FocusControl = tmDescripcion
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 359
      Top = 182
      Width = 35
      Height = 16
      Caption = '% Iva:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 29
      Top = 214
      Width = 48
      Height = 16
      Caption = '10% Isr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 280
      Top = 182
      Width = 28
      Height = 16
      Caption = 'Ret.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 92
      Top = 148
      Width = 326
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'sIdProveedor'
      DataSource = dszQEgresos
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 92
      Top = 273
      Width = 372
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'sRFC'
      DataSource = dszQEgresos
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object dbIVa: TDBEdit
      Left = 195
      Top = 179
      Width = 69
      Height = 23
      Color = clWhite
      DataField = 'dIva'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = dbIVaEnter
    end
    object dbPoliza: TDBEdit
      Left = 92
      Top = 306
      Width = 372
      Height = 23
      Color = clWhite
      DataField = 'sPoliza'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = dbPolizaKeyPress
    end
    object tdbiIdFolio: TDBEdit
      Left = 92
      Top = 59
      Width = 372
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'iIdFolio'
      DataSource = dszQEgresos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = tdbiIdFolioKeyPress
    end
    object tdbsIdArea: TDBLookupComboBox
      Left = 92
      Top = 90
      Width = 372
      Height = 24
      Color = clWhite
      DataField = 'sIdArea'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'sIdArea'
      ListField = 'sDescripcion'
      ListSource = dszQAreas
      ParentFont = False
      TabOrder = 5
      OnKeyPress = tdbsIdAreaKeyPress
    end
    object tdbsReferencia: TDBEdit
      Left = 92
      Top = 119
      Width = 372
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'sReferencia'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = tdbsReferenciaKeyPress
    end
    object tdFecha: TDateTimePicker
      Left = 92
      Top = 26
      Width = 224
      Height = 24
      Date = 39765.594495983790000000
      Time = 39765.594495983790000000
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnCloseUp = tdFechaCloseUp
      OnKeyPress = tdFechaKeyPress
    end
    object tsIdCuentaBancaria: TDBLookupComboBox
      Left = 92
      Top = 245
      Width = 372
      Height = 24
      Color = clWhite
      DataField = 'sIdNumeroCuenta'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'sIdNumeroCuenta'
      ListField = 'sNombreCuenta'
      ListSource = dszQCuentasBancarias
      ParentFont = False
      TabOrder = 8
      OnKeyPress = tsIdCuentaBancariaKeyPress
    end
    object tsidOrdendeTrabajo: TDBLookupComboBox
      Left = 93
      Top = 339
      Width = 372
      Height = 25
      Color = clWhite
      DataField = 'sNumeroOrden'
      DataSource = dszQEgresos
      KeyField = 'sNumeroOrden'
      ListField = 'sDescripcionCorta'
      ListSource = ds_ordenesdetrabajo
      TabOrder = 9
      OnKeyPress = tsidOrdendeTrabajoKeyPress
    end
    object tsRazonSocial: TDBEdit
      Left = 622
      Top = 29
      Width = 395
      Height = 23
      Color = clWhite
      DataField = 'sRazonSocial'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnKeyPress = tsRazonSocialKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 622
      Top = 127
      Width = 395
      Height = 23
      Color = clWhite
      DataField = 'sDomicilio'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '15'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnKeyPress = DBEdit4KeyPress
    end
    object tsCiudad: TDBEdit
      Left = 622
      Top = 62
      Width = 395
      Height = 23
      Color = clWhite
      DataField = 'sCiudad'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnKeyPress = tsCiudadKeyPress
    end
    object DBEdit6: TDBEdit
      Left = 622
      Top = 95
      Width = 92
      Height = 23
      Color = clWhite
      DataField = 'sCP'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '13'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnKeyPress = DBEdit6KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 622
      Top = 160
      Width = 395
      Height = 23
      Color = clWhite
      DataField = 'sEstado'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '16'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnKeyPress = DBEdit7KeyPress
    end
    object DBEdit8: TDBEdit
      Left = 810
      Top = 94
      Width = 203
      Height = 23
      Color = clWhite
      DataField = 'sTelefono'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '14'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnKeyPress = DBEdit8KeyPress
    end
    object tmDescripcion: TDBMemo
      Left = 622
      Top = 190
      Width = 395
      Height = 75
      Color = clWhite
      DataField = 'mDescripcion'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '17'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 16
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 733
      Top = 343
      Width = 279
      Height = 29
      Buttons.CustomButtons = <>
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Post.Visible = False
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = dszQEgresos
      InfoPanel.Visible = True
      TabOrder = 17
    end
    object btnCancelar: TAdvGlowButton
      AlignWithMargins = True
      Left = 835
      Top = 309
      Width = 88
      Height = 28
      AntiAlias = aaAntiAlias
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      FocusType = ftNone
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = btnCancelarClick
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnReferencia: TAdvGlowButton
      AlignWithMargins = True
      Left = 929
      Top = 309
      Width = 88
      Height = 28
      AntiAlias = aaAntiAlias
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      FocusType = ftNone
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = btnReferenciaClick
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object cxGridAgresos: TcxGrid
      Left = 9
      Top = 390
      Width = 1042
      Height = 157
      Align = alBottom
      TabOrder = 20
      ExplicitLeft = 10
      ExplicitTop = 389
      ExplicitWidth = 1039
      object grid_agresos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dszQEgresos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object grid_agresosdIdFecha1: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'dIdFecha'
        end
        object grid_agresosiIdFolio1: TcxGridDBColumn
          Caption = 'Folio'
          DataBinding.FieldName = 'iIdFolio'
          Width = 37
        end
        object grid_agresossIdArea1: TcxGridDBColumn
          Caption = 'Cargo a'
          DataBinding.FieldName = 'sIdArea'
        end
        object grid_agresossReferencia1: TcxGridDBColumn
          Caption = 'Referencia'
          DataBinding.FieldName = 'sReferencia'
          Width = 126
        end
        object grid_agresossIdProveedor1: TcxGridDBColumn
          Caption = 'Proveedor'
          DataBinding.FieldName = 'sIdProveedor'
        end
        object grid_agresosdImporteTotal1: TcxGridDBColumn
          Caption = 'Importe'
          DataBinding.FieldName = 'dImporteTotal'
          Width = 61
        end
        object grid_agresosdIva1: TcxGridDBColumn
          Caption = 'Iva'
          DataBinding.FieldName = 'dIva'
          Width = 55
        end
        object grid_agresossIdNumeroCuenta1: TcxGridDBColumn
          Caption = 'Cta. Banco'
          DataBinding.FieldName = 'sIdNumeroCuenta'
          Width = 98
        end
        object grid_agresossRFC1: TcxGridDBColumn
          Caption = 'RFC'
          DataBinding.FieldName = 'sRFC'
        end
        object grid_agresosColumn1: TcxGridDBColumn
          Caption = 'Poliza'
          DataBinding.FieldName = 'sPoliza'
          Width = 134
        end
        object grid_agresossNumeroOrden1: TcxGridDBColumn
          Caption = 'Proyecto'
          DataBinding.FieldName = 'sNumeroOrden'
          Width = 116
        end
        object grid_agresossRazonSocial1: TcxGridDBColumn
          Caption = 'Razon Social'
          DataBinding.FieldName = 'sRazonSocial'
          Width = 190
        end
        object grid_agresossCiudad1: TcxGridDBColumn
          Caption = 'Ciudad'
          DataBinding.FieldName = 'sCiudad'
        end
        object grid_agresossCP1: TcxGridDBColumn
          Caption = 'CP'
          DataBinding.FieldName = 'sCP'
          Width = 87
        end
        object grid_agresossDomicilio1: TcxGridDBColumn
          Caption = 'Domicilio'
          DataBinding.FieldName = 'sDomicilio'
        end
        object grid_agresosColumn2: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'sTelefono'
          Width = 108
        end
        object grid_agresossStatus1: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'sStatus'
        end
        object grid_agresoslComprobado1: TcxGridDBColumn
          Caption = 'Comprobado'
          DataBinding.FieldName = 'lComprobado'
          Width = 80
        end
      end
      object gridEgresosLevel: TcxGridLevel
        GridView = grid_agresos
      end
    end
    object btnCatalogoProyectos: TButton
      Left = 471
      Top = 338
      Width = 32
      Height = 26
      Caption = '...'
      TabOrder = 21
      OnClick = btnCatalogoProyectosClick
    end
    object btnCatalogoBanco: TButton
      Left = 471
      Top = 244
      Width = 32
      Height = 26
      Caption = '...'
      TabOrder = 22
      OnClick = btnCatalogoBancoClick
    end
    object btnCatalogoAreas: TButton
      Left = 470
      Top = 92
      Width = 32
      Height = 26
      Caption = '...'
      TabOrder = 23
      OnClick = btnCatalogoAreasClick
    end
    object pnlBusqueda: TPanel
      Left = 509
      Top = 339
      Width = 261
      Height = 200
      TabOrder = 24
      Visible = False
      object headerpanelbusqueda: TNxHeaderPanel
        Left = 1
        Top = 1
        Width = 259
        Height = 198
        Align = alClient
        Caption = 'Tipo de busqueda'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -12
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = []
        HeaderSize = 16
        ParentHeaderFont = False
        TabOrder = 0
        FullWidth = 228
        object chkBuscarEmpleado: TcxRadioButton
          Left = 10
          Top = 27
          Width = 128
          Height = 19
          Caption = 'Por empleado'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object chkBuscarProveedor: TcxRadioButton
          Left = 10
          Top = 56
          Width = 128
          Height = 19
          Caption = 'Por proveedor'
          TabOrder = 1
        end
        object W7Panel1: TW7Panel
          Left = 10
          Top = 159
          Width = 237
          Height = 33
          Version = '1.0.1.2'
          Caption = 'W7Panel1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          SolidColor = clBlack
          OuterBorderColor = clWhite
          InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
          OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
          Style = wpsCustom
          FillStyle = pfsGradient
          ColorA = clWhite
          ColorC = clBlack
          ColorD = clBlack
          Align = alBottom
          DoubleBuffered = False
          ParentFont = False
          TabOrder = 2
          object btnAceptarbusqueda: TAdvGlowButton
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 156
            Height = 26
            Align = alClient
            AntiAlias = aaAntiAlias
            Caption = 'Aceptar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            FocusType = ftHotBorder
            ModalResult = 1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnAceptarbusquedaClick
            Appearance.BorderColor = 13815240
            Appearance.BorderColorHot = 5819121
            Appearance.BorderColorDown = 3181250
            Appearance.BorderColorChecked = 3181250
            Appearance.ColorTo = 15590880
            Appearance.ColorChecked = 14285309
            Appearance.ColorCheckedTo = 7131391
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7131391
            Appearance.ColorDownTo = 8122111
            Appearance.ColorHot = 9102333
            Appearance.ColorHotTo = 14285309
            Appearance.ColorMirror = 15590880
            Appearance.ColorMirrorTo = 15590880
            Appearance.ColorMirrorHot = 14285309
            Appearance.ColorMirrorHotTo = 9102333
            Appearance.ColorMirrorDown = 8122111
            Appearance.ColorMirrorDownTo = 7131391
            Appearance.ColorMirrorChecked = 7131391
            Appearance.ColorMirrorCheckedTo = 7131391
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object btnCancelarBusqueda: TAdvGlowButton
            AlignWithMargins = True
            Left = 165
            Top = 3
            Width = 68
            Height = 26
            Align = alRight
            AntiAlias = aaAntiAlias
            Caption = 'Cancelar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            FocusType = ftNone
            ModalResult = 1
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            Appearance.BorderColor = 13815240
            Appearance.BorderColorHot = 5819121
            Appearance.BorderColorDown = 3181250
            Appearance.BorderColorChecked = 3181250
            Appearance.ColorTo = 15590880
            Appearance.ColorChecked = 14285309
            Appearance.ColorCheckedTo = 7131391
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7131391
            Appearance.ColorDownTo = 8122111
            Appearance.ColorHot = 9102333
            Appearance.ColorHotTo = 14285309
            Appearance.ColorMirror = 15590880
            Appearance.ColorMirrorTo = 15590880
            Appearance.ColorMirrorHot = 14285309
            Appearance.ColorMirrorHotTo = 9102333
            Appearance.ColorMirrorDown = 8122111
            Appearance.ColorMirrorDownTo = 7131391
            Appearance.ColorMirrorChecked = 7131391
            Appearance.ColorMirrorCheckedTo = 7131391
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
      end
    end
    object cbbMostrarSubtotal: TComboBox
      Left = 419
      Top = 212
      Width = 45
      Height = 25
      ItemHeight = 17
      ItemIndex = 0
      TabOrder = 25
      Text = 'Si'
      Visible = False
      OnChange = cbbMostrarSubtotalChange
      Items.Strings = (
        'Si'
        'No')
    end
    object edtSubtotal: TDBEdit
      Left = 92
      Top = 181
      Width = 63
      Height = 23
      Color = clWhite
      DataField = 'dImporteTotal'
      DataSource = dszQEgresos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      OnKeyPress = edtSubtotalKeyPress
    end
    object tdImporteTotal: TEdit
      Left = 195
      Top = 212
      Width = 69
      Height = 23
      OEMConvert = True
      ReadOnly = True
      TabOrder = 27
      OnEnter = tdImporteTotalEnter
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 622
      Top = 272
      Width = 395
      Height = 24
      Color = clWhite
      DataField = 'sBancoProv'
      DataSource = dszQEgresos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'sIdBanco'
      ListField = 'sIdBanco'
      ListSource = ds_provbanco
      ParentFont = False
      TabOrder = 28
      OnKeyPress = DBLookupComboBox1KeyPress
    end
    object cbIvaRet: TDBComboBox
      Left = 312
      Top = 179
      Width = 45
      Height = 25
      DataField = 'iIvaPorRet'
      DataSource = dszQEgresos
      ItemHeight = 17
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20')
      TabOrder = 29
    end
  end
  inline frmBarra1: TfrmBarra
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 81
    Height = 553
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alLeft
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 81
    ExplicitHeight = 553
    inherited AdvPanel1: TAdvPanel
      Width = 81
      Height = 553
      TabOrder = 2
      ExplicitWidth = 81
      ExplicitHeight = 553
      FullHeight = 0
      inherited btnEdit: TcxButton
        Left = 2
        Top = 27
        Width = 76
        Height = 29
        Font.Height = -13
        OnClick = frmBarra1btnEditClick
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 76
        ExplicitHeight = 29
      end
      inherited btnPost: TcxButton
        Left = 2
        Top = 56
        Width = 76
        Height = 28
        Font.Height = -13
        OnClick = frmBarra1btnPostClick
        ExplicitLeft = 2
        ExplicitTop = 56
        ExplicitWidth = 76
        ExplicitHeight = 28
      end
      inherited btnCancel: TcxButton
        Left = 2
        Top = 82
        Width = 76
        Height = 28
        Font.Height = -13
        OnClick = frmBarra1btnCancelClick
        ExplicitLeft = 2
        ExplicitTop = 82
        ExplicitWidth = 76
        ExplicitHeight = 28
      end
      inherited btnDelete: TcxButton
        Left = 2
        Top = 109
        Width = 76
        Height = 28
        Font.Height = -13
        OnClick = frmBarra1btnDeleteClick
        ExplicitLeft = 2
        ExplicitTop = 109
        ExplicitWidth = 76
        ExplicitHeight = 28
      end
      inherited btnPrinter: TcxButton
        Left = 2
        Top = 136
        Width = 76
        Height = 28
        Font.Height = -13
        OnClick = frmBarra1btnPrinterClick
        ExplicitLeft = 2
        ExplicitTop = 136
        ExplicitWidth = 76
        ExplicitHeight = 28
      end
      inherited btnRefresh: TcxButton
        Left = 2
        Top = 163
        Width = 76
        Height = 29
        Font.Height = -13
        OnClick = frmBarra1btnRefreshClick
        ExplicitLeft = 2
        ExplicitTop = 163
        ExplicitWidth = 76
        ExplicitHeight = 29
      end
      inherited btnExit: TcxButton
        Left = 2
        Top = 190
        Width = 76
        Height = 29
        Font.Height = -13
        OnClick = frmBarra1btnExitClick
        ExplicitLeft = 2
        ExplicitTop = 190
        ExplicitWidth = 76
        ExplicitHeight = 29
      end
      inherited btnAdd: TcxButton
        Left = 2
        Top = 1
        Width = 76
        Height = 28
        Hint = 'Agregar registro (CTRL + I)'
        Font.Height = -13
        OnClick = frmBarra1btnAddClick
        ExplicitLeft = 2
        ExplicitTop = 1
        ExplicitWidth = 76
        ExplicitHeight = 28
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
  end
  object AvOfCkFormatos: TAdvOfficeCheckGroup
    Left = 10
    Top = 235
    Width = 76
    Height = 104
    RoundEdges = True
    Version = '1.3.4.1'
    Caption = 'Escaneos'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      '1'
      '2'
      '3')
    Ellipsis = False
  end
  object cxButton1: TcxButton
    Left = 34
    Top = 249
    Width = 50
    Height = 29
    Caption = 'PDF'
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 34
    Top = 278
    Width = 50
    Height = 28
    Caption = 'JPEG'
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 34
    Top = 306
    Width = 50
    Height = 28
    Caption = 'XML'
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object dbIvaRet: TDBEdit
    Left = 493
    Top = 187
    Width = 63
    Height = 23
    Color = clWhite
    DataField = 'dIvaRet'
    DataSource = dszQEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object dbIsrRet: TDBEdit
    Left = 185
    Top = 220
    Width = 63
    Height = 23
    Color = clWhite
    DataField = 'dIsrRet'
    DataSource = dszQEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object dszQEgresos: TDataSource
    AutoEdit = False
    DataSet = zQEgresos
    Left = 108
    Top = 370
  end
  object zQEgresos: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEgresosAfterScroll
    AfterInsert = zQEgresosAfterInsert
    SQL.Strings = (
      'select * from con_tesoreriaegresos where dIdFecha = :Fecha '
      'And sTipoMovimiento = "CHEQUE" order by iIdFolio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    Left = 68
    Top = 301
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    object zQEgresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      OnChange = zQEgresossIdProveedorChange
    end
    object zQEgresossPoliza: TStringField
      FieldName = 'sPoliza'
      Required = True
      Size = 40
    end
    object zQEgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQEgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQEgresossTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Required = True
      Size = 8
    end
    object zQEgresossIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object zQEgresossIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQEgresossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 60
    end
    object zQEgresossReferencia: TStringField
      FieldName = 'sReferencia'
      Required = True
      Size = 30
    end
    object zQEgresossIdCompania: TStringField
      FieldName = 'sIdCompania'
      Required = True
      Size = 8
    end
    object zQEgresossRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQEgresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zQEgresossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQEgresossCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 30
    end
    object zQEgresosdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      Required = True
    end
    object zQEgresoslComprobado: TStringField
      FieldName = 'lComprobado'
      Required = True
      Size = 2
    end
    object zQEgresossStatus: TStringField
      FieldName = 'sStatus'
      Required = True
      Size = 9
    end
    object zQEgresosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zQEgresosdIva: TFloatField
      FieldName = 'dIva'
      Required = True
    end
    object zQEgresosdFechaFactura: TDateField
      FieldName = 'dFechaFactura'
    end
    object zQEgresossTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
    end
    object zQEgresossEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object zQEgresossCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQEgresoslAplicaiva: TStringField
      FieldName = 'lAplicaiva'
      Required = True
      Size = 2
    end
    object zQEgresosiFolio: TIntegerField
      FieldName = 'iFolio'
    end
    object zQEgresosiIdStatus: TIntegerField
      FieldName = 'iIdStatus'
    end
    object zQEgresossTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 13
    end
    object zQEgresossNumeroDeCuenta: TStringField
      FieldName = 'sNumeroDeCuenta'
      Size = 50
    end
    object zQEgresossNumeroPedido: TStringField
      FieldName = 'sNumeroPedido'
      Size = 50
    end
    object zQEgresosiImprimeProveedor: TIntegerField
      FieldName = 'iImprimeProveedor'
    end
    object zQEgresosiEjercicio: TIntegerField
      FieldName = 'iEjercicio'
    end
    object intgrfldQEgresossFormaPago: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'sFormaPago'
      Calculated = True
    end
    object zQEgresossBancoProv: TStringField
      FieldName = 'sBancoProv'
    end
    object zQEgresosiIvaRet: TIntegerField
      FieldName = 'iIvaPorRet'
    end
    object zQEgresosdIvaRet: TFloatField
      FieldName = 'dIvaRet'
    end
    object zQEgresosdIsrRet: TFloatField
      FieldName = 'dIsrRet'
    end
  end
  object zQAreas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_areas order by sDescripcion')
    Params = <>
    Left = 4
    Top = 367
  end
  object dszQAreas: TDataSource
    AutoEdit = False
    DataSet = zQAreas
    Left = 74
    Top = 337
  end
  object dszQCuentasBancarias: TDataSource
    DataSet = zQCuentasBancarias
    Left = 108
    Top = 337
  end
  object zQCuentasBancarias: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQCuentasBancariasAfterScroll
    SQL.Strings = (
      
        'select * from con_cuentasbancarias where sIdCompaniaConf =:Compa' +
        'nia order by sNombreCuenta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Compania'
        ParamType = ptUnknown
      end>
    Left = 36
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Compania'
        ParamType = ptUnknown
      end>
    object zQCuentasBancariassIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zQCuentasBancariassNombreCuenta: TStringField
      FieldName = 'sNombreCuenta'
      Required = True
      Size = 50
    end
    object zQCuentasBancariassFirmanCuenta: TStringField
      FieldName = 'sFirmanCuenta'
      Required = True
      Size = 100
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
  object zQProveedores: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from proveedores'
      'where sIdProveedor = :Proveedor')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 38
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    object zQProveedoressIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zQProveedoressRFC: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object zQProveedoressRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zQProveedoressDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQProveedoressCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object zQProveedoressCP: TStringField
      FieldName = 'sCP'
      Required = True
      Size = 5
    end
    object zQProveedoressEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 30
    end
    object zQProveedoressTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 30
    end
    object zQProveedoresdMontoCredito: TFloatField
      FieldName = 'dMontoCredito'
      Required = True
    end
    object zQProveedoreslStatus: TStringField
      FieldName = 'lStatus'
      Required = True
      Size = 8
    end
  end
  object zCommand: TZQuery
    Connection = connection.zConnection
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 36
    Top = 304
  end
  object frPrinter: TfrxDBDataset
    UserName = 'frxEgresos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dIdFecha=dIdFecha'
      'iIdFolio=iIdFolio'
      'sTipoMovimiento=sTipoMovimiento'
      'sIdNumeroCuenta=sIdNumeroCuenta'
      'sReferencia=sReferencia'
      'sIdProveedor=sIdProveedor'
      'sRazonSocial=sRazonSocial'
      'dImporteTotal=dImporteTotal'
      'lComprobado=lComprobado'
      'sNombreCuenta=sNombreCuenta'
      'sNumeroOrden=sNumeroOrden'
      'mDescripcion=mDescripcion')
    DataSet = zqEstadodeCuenta
    BCDToCurrency = False
    Left = 111
    Top = 306
  end
  object rptReporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 41989.465087557870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      ' Gastos,Ingresos,Saldos:String;                                 '
      'begin'
      ''
      'end.          ')
    OnGetValue = rptReporteGetValue
    Left = 104
    Top = 403
    Datasets = <
      item
        DataSet = connection.frConfiguracionCont
        DataSetName = 'frConfiguracionCont'
      end
      item
        DataSet = frPrinter
        DataSetName = 'frxEgresos'
      end
      item
        DataSet = frxEstadosCuentas
        DataSetName = 'frxEstadosCuentas'
      end>
    Variables = <
      item
        Name = ' EdoCuenta'
        Value = Null
      end
      item
        Name = 'Abono'
        Value = 
          'IIF(<frxEgresos."sTipoMovimiento"> = '#39'DEPOSITO'#39', <frxEgresos."dI' +
          'mporteTotal"> , 0 )'
      end
      item
        Name = 'Retiro'
        Value = 
          'IIF(<frxEgresos."sTipoMovimiento"> = '#39'CHEQUE'#39', <frxEgresos."dImp' +
          'orteTotal">, 0 )'
      end>
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
      object GroupFooter2: TfrxGroupFooter
        Height = 71.811070000000000000
        Top = 317.480520000000000000
        Width = 980.410082000000000000
        object Memo4: TfrxMemoView
          Top = 30.236240000000000000
          Width = 204.094505280000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SALDO ACTUAL')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 204.094620000000000000
          Top = 30.236240000000000000
          Width = 136.062965280000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SaldoActual]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentassNombreCuenta: TfrxMemoView
          Top = 11.338590000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16629143
          DataField = 'sNombreCuenta'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."sNombreCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118110240000000000
        Top = 279.685220000000000000
        Width = 980.410082000000000000
        DataSet = frxEstadosCuentas
        DataSetName = 'frxEstadosCuentas'
        RowCount = 0
        Stretched = True
        object Memo14: TfrxMemoView
          Left = 916.425790000000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxEstadosCuentas."dIva"]')
          ParentFont = False
        end
        object frxEstadosCuentasdImporteTotal: TfrxMemoView
          Left = 837.276130000000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dImporteTotal'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxEstadosCuentas."dImporteTotal"]')
          ParentFont = False
        end
        object frxEstadosCuentasdIdFecha1: TfrxMemoView
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dIdFecha'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentasiIdFolio: TfrxMemoView
          Left = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iIdFolio'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."iIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentasiIdFolio1: TfrxMemoView
          Left = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iIdFolio'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."iIdFolio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentassReferencia: TfrxMemoView
          Left = 143.622140000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sReferencia'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."sReferencia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentassIdNumeroCuenta1: TfrxMemoView
          Left = 225.771800000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdNumeroCuenta'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."sIdNumeroCuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentassStatus: TfrxMemoView
          Left = 309.921460000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sStatus'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxEstadosCuentas."sStatus"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentassTipoMovimiento: TfrxMemoView
          Left = 380.732530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTipoMovimiento'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sTipoMovimiento"]')
          ParentFont = False
        end
        object frxEstadosCuentassRazonSocial: TfrxMemoView
          Left = 452.543600000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sRazonSocial'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."sRazonSocial"]')
          ParentFont = False
        end
        object frxEstadosCuentasmDescripcion: TfrxMemoView
          Left = 583.827150000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxEstadosCuentas."mDescripcion"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 449.764070000000000000
        Width = 980.410082000000000000
        object Memo10: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000020000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 52.913405350000000000
        Top = 204.094620000000000000
        Width = 980.410082000000000000
        Condition = 'frxEstadosCuentas."sIdNumeroCuenta"'
        ReprintOnNewPage = True
        OutlineText = 'frxEstadosCuentas."sIdNumeroCuenta"'
        StartNewPage = True
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Top = 30.236240000000000000
          Width = 34.015770000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id. FOLIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 452.189240000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CHEQUE CON CARGO A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 139.944960000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REFERENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 476.866420000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'No. DE CUENTA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 22.677165354330700000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
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
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 837.055660000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DEPOSITOS/    EGRESOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 916.425790000000000000
          Top = 30.236240000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'IVA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 584.472790000000000000
          Top = 30.236240000000000000
          Width = 253.228510000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
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
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 226.212740000000000000
          Top = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ORDEN No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 380.496290000000000000
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MOVIMIENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 308.921460000000000000
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 90.708720000000000000
          Top = 30.236240000000000000
          Width = 52.913420000000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = 16629143
          DataSet = frPrinter
          DataSetName = 'frxEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '# FACTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxEstadosCuentassIdNumeroCuenta: TfrxMemoView
          Left = 570.709030000000000000
          Top = 7.559060000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sIdNumeroCuenta'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Memo.UTF8 = (
            '[frxEstadosCuentas."sIdNumeroCuenta"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object frConfiguracionsNombre: TfrxMemoView
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 634.961040000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sNombre"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 207.874150000000000000
          Top = 34.015770000000000000
          Width = 634.961040000000000000
          Height = 56.692950000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frmSetup.frConfiguracion
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracionCont."sRfc"]'
            '[frConfiguracionCont."sDireccion1"]'
            '[frConfiguracionCont."sDireccion2"]'
            '[frConfiguracionCont."sDireccion3"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 117.165430000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.frConfiguracionCont
          DataSetName = 'frConfiguracionCont'
          HightQuality = False
        end
        object frxEstadosCuentasdIdFecha: TfrxMemoView
          Left = 347.716760000000000000
          Top = 90.708720000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dIdFecha'
          DataSet = frxEstadosCuentas
          DataSetName = 'frxEstadosCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          HAlign = haRight
          Memo.UTF8 = (
            '[frxEstadosCuentas."dIdFecha"]')
          ParentFont = False
        end
      end
    end
  end
  object zqEstadodeCuenta: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select te.*, c.sNombreCuenta from con_tesoreriaegresos te'
      
        'inner join con_cuentasbancarias c on (te.sIdNumeroCuenta = c.sId' +
        'NumeroCuenta)'
      
        'where te.dIdFecha = :Fecha order by te.sIdNumeroCuenta, te.iIdFo' +
        'lio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 5
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    object zqEstadodeCuentadIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zqEstadodeCuentaiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zqEstadodeCuentasTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Required = True
      Size = 8
    end
    object zqEstadodeCuentasIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
      Required = True
    end
    object zqEstadodeCuentasReferencia: TStringField
      FieldName = 'sReferencia'
      Required = True
      Size = 15
    end
    object zqEstadodeCuentasIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zqEstadodeCuentasRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 50
    end
    object zqEstadodeCuentadImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      Required = True
    end
    object zqEstadodeCuentalComprobado: TStringField
      FieldName = 'lComprobado'
      Required = True
      Size = 2
    end
    object zqEstadodeCuentasNombreCuenta: TStringField
      FieldName = 'sNombreCuenta'
      Required = True
      Size = 50
    end
    object zqEstadodeCuentasNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 60
    end
    object zqEstadodeCuentamDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object strngfldEstadodeCuentasStatus: TStringField
      FieldName = 'sStatus'
      Size = 255
    end
    object zqEstadodeCuentadIva: TFloatField
      FieldName = 'dIva'
    end
  end
  object dszQOrdenesdeTrabajo: TDataSource
    DataSet = zQOrdenesdeTrabajo
    Left = 73
    Top = 369
  end
  object zQOrdenesdeTrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sDescripcionCorta, sNumeroOrden'
      
        'from ordenesdetrabajo where sContrato = :Contrato Order By  sDes' +
        'cripcionCorta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 34
    Top = 367
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object mnucheques: TPopupMenu
    Left = 79
    Top = 276
    object PolizaCheque1: TMenuItem
      Caption = 'Poliza Cheque'
      OnClick = PolizaCheque1Click
    end
    object DoctoCheque1: TMenuItem
      Caption = 'Docto Cheque'
      OnClick = DoctoCheque1Click
    end
  end
  object qryOrdenesTrabajo: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sDescripcionCorta, sNumeroOrden'
      
        'from ordenesdetrabajo where sContrato = :Contrato Order By sDesc' +
        'ripcionCorta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 4
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object ds_ordenesdetrabajo: TDataSource
    DataSet = qryOrdenesTrabajo
    Left = 73
    Top = 400
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
    Left = 4
    Top = 304
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
  object zQEmpleados: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select '
      '*, '
      
        'concat(sCalle, '#39' '#39', sNumero, '#39' '#39', sColonia, '#39'. '#39', sLocalidad, '#39'.' +
        ' '#39', sEstado) as sDomicilio,'
      
        'concat(sNombreCompleto, '#39' '#39', sApellidoPaterno, '#39' '#39', sApellidoMat' +
        'erno) as nombre'
      'from empleados '
      'where sIdEmpleado = :Empleado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 2
    Top = 445
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    object StringField2: TStringField
      FieldName = 'sRFC'
      Required = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 30
    end
    object zQEmpleadossIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
    end
    object zQEmpleadossNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object strngfldQEmpleadossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Size = 255
    end
    object zQEmpleadosnombre: TStringField
      FieldName = 'nombre'
      Size = 120
    end
  end
  object frxEstadosCuentas: TfrxDBDataset
    UserName = 'frxEstadosCuentas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dIdFecha=dIdFecha'
      'iIdFolio=iIdFolio'
      'sTipoMovimiento=sTipoMovimiento'
      'sIdNumeroCuenta=sIdNumeroCuenta'
      'sReferencia=sReferencia'
      'sIdProveedor=sIdProveedor'
      'sRazonSocial=sRazonSocial'
      'dImporteTotal=dImporteTotal'
      'lComprobado=lComprobado'
      'sNumeroOrden=sNumeroOrden'
      'mDescripcion=mDescripcion'
      'dIva=dIva'
      'iFolio=iFolio'
      'iIdStatus=iIdStatus'
      'saldo=saldo'
      'total=total'
      'sNombreCuenta=sNombreCuenta'
      'sStatus=sStatus')
    DataSet = zqEstadodeCuenta
    BCDToCurrency = False
    Left = 193
    Top = 389
  end
  object zq_provbanco: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_provbanco'
      'where sIdProv=:Prov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Prov'
        ParamType = ptUnknown
      end>
    Left = 37
    Top = 446
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Prov'
        ParamType = ptUnknown
      end>
  end
  object ds_provbanco: TDataSource
    DataSet = zq_provbanco
    Left = 72
    Top = 446
  end
  object WSocketMensaje: TWSocket
    LineMode = False
    LineLimit = 65536
    LineEnd = #13#10
    LineEcho = False
    LineEdit = False
    SocketFamily = sfIPv4
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalPort = '0'
    MultiThreaded = False
    MultiCast = False
    MultiCastIpTTL = 1
    FlushTimeout = 60
    SendFlags = wsSendNormal
    LingerOnOff = wsLingerOn
    LingerTimeout = 0
    KeepAliveOnOff = wsKeepAliveOff
    KeepAliveTime = 0
    KeepAliveInterval = 0
    SocksLevel = '5'
    SocksAuthentication = socksNoAuthentication
    LastError = 0
    ReuseAddr = False
    ComponentOptions = []
    ListenBacklog = 5
    ReqVerLow = 2
    ReqVerHigh = 2
    Left = 104
    Top = 448
  end
end
