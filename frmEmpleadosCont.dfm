object frm_EmpleadosCont: Tfrm_EmpleadosCont
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Catalogo de Empleados'
  ClientHeight = 660
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    993
    660)
  PixelsPerInch = 96
  TextHeight = 13
  object Label26: TLabel
    Left = 473
    Top = 497
    Width = 86
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'INICIO LABORES:'
    FocusControl = CURP
  end
  object Label27: TLabel
    Left = 491
    Top = 499
    Width = 86
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'INICIO LABORES:'
    FocusControl = CURP
    ExplicitTop = 556
  end
  object NxPageControl1: TNxPageControl
    Left = 4
    Top = 288
    Width = 930
    Height = 372
    ActivePage = NxTabSheet2
    ActivePageIndex = 1
    PopupMenu = Popempleados
    TabOrder = 2
    BackgroundColor = 13683905
    BackgroundKind = bkSolid
    Margin = 0
    Spacing = 0
    TabHeight = 17
    object NxTabSheet1: TNxTabSheet
      Caption = 'Datos de Empleado'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      DesignSize = (
        930
        351)
      object Label1: TLabel
        Left = 17
        Top = 34
        Width = 71
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'ID EMPLEADO:'
        FocusControl = tsIdEmpleado
        ExplicitTop = 31
      end
      object Label2: TLabel
        Left = 17
        Top = 61
        Width = 46
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'NOMBRE:'
        FocusControl = tsNombre
        ExplicitTop = 58
      end
      object Label5: TLabel
        Left = 17
        Top = 88
        Width = 55
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'DOMICILIO'
        FocusControl = tsDomicilio
        ExplicitTop = 85
      end
      object Label7: TLabel
        Left = 17
        Top = 115
        Width = 39
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'CIUDAD'
        FocusControl = tsCiudad
        ExplicitTop = 112
      end
      object Label8: TLabel
        Left = 18
        Top = 9
        Width = 85
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'DEPARTAMENTO:'
      end
      object Label9: TLabel
        Left = 476
        Top = 7
        Width = 52
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'TELEFONO'
        FocusControl = tsTelefono
      end
      object Label10: TLabel
        Left = 18
        Top = 252
        Width = 88
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'SUELDO MENSUAL'
        FocusControl = tdSueldo
        ExplicitTop = 249
      end
      object Label11: TLabel
        Left = 17
        Top = 142
        Width = 39
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'PUESTO'
        ExplicitTop = 139
      end
      object Label12: TLabel
        Left = 479
        Top = 34
        Width = 38
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'E-MAIL:'
        FocusControl = MAIL
        ExplicitTop = 31
      end
      object Label3: TLabel
        Left = 18
        Top = 169
        Width = 40
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'CUENTA'
        FocusControl = tsTelefono
        ExplicitTop = 166
      end
      object Label6: TLabel
        Left = 18
        Top = 197
        Width = 35
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'BANCO'
        FocusControl = tsTelefono
        ExplicitTop = 194
      end
      object Label13: TLabel
        Left = 18
        Top = 224
        Width = 109
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'CTA. INTERBANCARIA'
        FocusControl = tsTelefono
        ExplicitTop = 221
      end
      object Label14: TLabel
        Left = 479
        Top = 61
        Width = 27
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'CURP'
        FocusControl = CURP
        ExplicitTop = 58
      end
      object Label16: TLabel
        Left = 479
        Top = 88
        Width = 24
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'IMSS'
        FocusControl = CURP
        ExplicitTop = 85
      end
      object Label15: TLabel
        Left = 479
        Top = 115
        Width = 20
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'RFC'
        FocusControl = CURP
        ExplicitTop = 112
      end
      object Label17: TLabel
        Left = 479
        Top = 142
        Width = 77
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'NACIONALIDAD'
        FocusControl = CURP
        ExplicitTop = 139
      end
      object Label18: TLabel
        Left = 479
        Top = 169
        Width = 69
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'ESTADO CIVIL'
        FocusControl = CURP
        ExplicitTop = 166
      end
      object Label19: TLabel
        Left = 479
        Top = 197
        Width = 68
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'NACIMIENTO:'
        FocusControl = CURP
        ExplicitTop = 194
      end
      object Label21: TLabel
        Left = 479
        Top = 221
        Width = 86
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'INICIO LABORES:'
        FocusControl = CURP
      end
      object Label4: TLabel
        Left = 20
        Top = 276
        Width = 40
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'LABORA'
        FocusControl = tdSueldo
        ExplicitTop = 273
      end
      object Label20: TLabel
        Left = 481
        Top = 266
        Width = 66
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'LIBRETA MAR'
        FocusControl = CURP
      end
      object Label22: TLabel
        Left = 481
        Top = 292
        Width = 92
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'CARTILLA MILITAR'
        FocusControl = CURP
      end
      object Label23: TLabel
        Left = 481
        Top = 316
        Width = 112
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'CEDULA PROFESIONAL'
        FocusControl = CURP
      end
      object Label24: TLabel
        Left = 19
        Top = 302
        Width = 100
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'LUGAR NACIMIENTO'
        FocusControl = CURP
      end
      object Label25: TLabel
        Left = 17
        Top = 324
        Width = 121
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'CARRERA PROFESIONAL'
        FocusControl = CURP
      end
      object Label28: TLabel
        Left = 479
        Top = 243
        Width = 98
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'TERMINO LABORES:'
        FocusControl = CURP
      end
      object tsIdEmpleado: TDBEdit
        Left = 142
        Top = 31
        Width = 145
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sIdEmpleado'
        DataSource = dszQEmpleados
        TabOrder = 1
        OnKeyPress = tsIdEmpleadoKeyPress
      end
      object tsNombre: TDBEdit
        Left = 142
        Top = 58
        Width = 318
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sNombreCompleto'
        DataSource = dszQEmpleados
        TabOrder = 2
        OnKeyPress = tsNombreKeyPress
      end
      object tsDomicilio: TDBEdit
        Left = 142
        Top = 85
        Width = 318
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sDomicilio'
        DataSource = dszQEmpleados
        TabOrder = 3
        OnKeyPress = tsDomicilioKeyPress
      end
      object tsCiudad: TDBEdit
        Left = 142
        Top = 112
        Width = 318
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sCiudad'
        DataSource = dszQEmpleados
        TabOrder = 4
        OnKeyPress = tsCiudadKeyPress
      end
      object tsTelefono: TDBEdit
        Left = 602
        Top = 4
        Width = 318
        Height = 22
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sTelefono'
        DataSource = dszQEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = '1'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnKeyPress = tsTelefonoKeyPress
      end
      object tdSueldo: TDBEdit
        Left = 142
        Top = 249
        Width = 214
        Height = 21
        Anchors = [akLeft, akBottom]
        Color = 11009259
        DataField = 'dSueldo'
        DataSource = dszQEmpleados
        TabOrder = 9
        OnKeyPress = tdSueldoKeyPress
      end
      object tsIdArea: TDBLookupComboBox
        Left = 142
        Top = 4
        Width = 318
        Height = 21
        Anchors = [akLeft, akBottom]
        Color = 11009259
        DataField = 'sIdArea'
        DataSource = dszQEmpleados
        KeyField = 'sIdArea'
        ListField = 'sDescripcion'
        ListSource = dszQAreas
        TabOrder = 0
        OnKeyPress = tsIdAreaKeyPress
      end
      object MAIL: TDBEdit
        Left = 602
        Top = 31
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecLowerCase
        Color = 11009259
        DataField = 'seMail'
        DataSource = dszQEmpleados
        TabOrder = 13
        OnKeyPress = MAILKeyPress
      end
      object CUENTA: TDBEdit
        Left = 142
        Top = 166
        Width = 318
        Height = 22
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sCuenta'
        DataSource = dszQEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = '1'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = CUENTAKeyPress
      end
      object BANCO: TDBEdit
        Left = 142
        Top = 193
        Width = 318
        Height = 22
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sBanco'
        DataSource = dszQEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = '1'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = BANCOKeyPress
      end
      object INTERBANCARIA: TDBEdit
        Left = 142
        Top = 221
        Width = 318
        Height = 22
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sCuentaInterbancaria'
        DataSource = dszQEmpleados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = '1'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnKeyPress = INTERBANCARIAKeyPress
      end
      object CURP: TDBEdit
        Left = 602
        Top = 58
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sCurp'
        DataSource = dszQEmpleados
        TabOrder = 14
        OnKeyPress = CURPKeyPress
      end
      object IMSS: TDBEdit
        Left = 602
        Top = 85
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sImss'
        DataSource = dszQEmpleados
        TabOrder = 15
        OnKeyPress = IMSSKeyPress
      end
      object RFC: TDBEdit
        Left = 602
        Top = 112
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sRfc'
        DataSource = dszQEmpleados
        TabOrder = 16
        OnKeyPress = RFCKeyPress
      end
      object NACIONALIDAD: TDBEdit
        Left = 602
        Top = 139
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sNacionalidad'
        DataSource = dszQEmpleados
        TabOrder = 17
        OnKeyPress = NACIONALIDADKeyPress
      end
      object ESTADOCIV: TDBEdit
        Left = 602
        Top = 166
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sEstadoCivil'
        DataSource = dszQEmpleados
        TabOrder = 18
        OnKeyPress = ESTADOCIVKeyPress
      end
      object NACIMIENTO: TDBDateEdit
        Left = 602
        Top = 193
        Width = 319
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'dFechaNacimiento'
        DataSource = dszQEmpleados
        Color = 11009259
        Anchors = [akLeft, akBottom]
        NumGlyphs = 2
        TabOrder = 19
        OnKeyPress = NACIMIENTOKeyPress
      end
      object INICIOLAB: TDBDateEdit
        Left = 602
        Top = 218
        Width = 319
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'dFechaInicioLabores'
        DataSource = dszQEmpleados
        Color = 11009259
        Anchors = [akLeft, akBottom]
        NumGlyphs = 2
        TabOrder = 20
        OnKeyPress = INICIOLABKeyPress
      end
      object dbPuesto: TDBLookupComboBox
        Left = 142
        Top = 139
        Width = 318
        Height = 21
        Anchors = [akLeft, akBottom]
        Color = 11009259
        DataField = 'iId_Puesto'
        DataSource = dszQEmpleados
        KeyField = 'iId'
        ListField = 'sPuesto'
        ListSource = ds_Puestos
        TabOrder = 5
        OnKeyPress = dbPuestoKeyPress
      end
      object dbLabora: TDBCheckBox
        Left = 142
        Top = 276
        Width = 65
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = 'Labora'
        DataField = 'lLabora'
        DataSource = dszQEmpleados
        TabOrder = 10
        ValueChecked = 'Si'
        ValueUnchecked = 'No'
        OnKeyPress = dbLaboraKeyPress
      end
      object sLibretaMar: TDBEdit
        Left = 601
        Top = 268
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sLibretaMar'
        DataSource = dszQEmpleados
        TabOrder = 21
        OnKeyPress = sLibretaMarKeyPress
      end
      object CARTILLA: TDBEdit
        Left = 602
        Top = 295
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sCartilla'
        DataSource = dszQEmpleados
        TabOrder = 22
        OnKeyPress = CARTILLAKeyPress
      end
      object CEDULA: TDBEdit
        Left = 603
        Top = 321
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sCedulaProfesional'
        DataSource = dszQEmpleados
        TabOrder = 23
      end
      object LNACIMIENTO: TDBEdit
        Left = 142
        Top = 297
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sLugarNacimiento'
        DataSource = dszQEmpleados
        TabOrder = 11
        OnKeyPress = LNACIMIENTOKeyPress
      end
      object CARRERA: TDBEdit
        Left = 144
        Top = 322
        Width = 319
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        Color = 11009259
        DataField = 'sCarrera'
        DataSource = dszQEmpleados
        TabOrder = 24
        OnKeyPress = CARRERAKeyPress
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'Documentos Escaneados'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      DesignSize = (
        930
        351)
      object bImagen: TImage
        Left = 9
        Top = 32
        Width = 918
        Height = 276
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Stretch = True
        ExplicitHeight = 273
      end
      object lblRecord: TLabel
        Left = 457
        Top = 5
        Width = 3
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object btnPreview: TBitBtn
        Left = 9
        Top = 6
        Width = 76
        Height = 24
        Anchors = [akRight, akBottom]
        Caption = '&Preview'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnPreviewClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888800000888800000880F00088880F000880F00088880F0008800000088000
          0008800F000000F00008800F000800F00008800F000800F00008880000000000
          00888880F00880F008888880000880000888888800088000888888880F0880F0
          8888888800088000888888888888888888888888888888888888}
      end
    end
    object NxTabSheet3: TNxTabSheet
      Caption = 'Equipos Asignados'
      PageIndex = 2
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      DesignSize = (
        930
        351)
      object DBGrid1: TDBGrid
        Left = 3
        Top = 37
        Width = 918
        Height = 271
        Anchors = [akLeft, akBottom]
        DataSource = ds_EquiposPorEmpleado
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'sEquipo'
            Title.Caption = 'Equipo'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFecha_Recepcion'
            Title.Caption = 'Recepci'#243'n'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFecha_Remocion'
            Title.Caption = 'Remoci'#243'n'
            Width = 75
            Visible = True
          end>
      end
      object btnAdd: TBitBtn
        Left = 3
        Top = 6
        Width = 89
        Height = 25
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = 'Agregar'
        TabOrder = 1
        OnClick = btnAddClick
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000F0000000E0000000100
          04000000000070000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8880888888888888888088888888888888808888880008888880888888070888
          8880888888070888888088800007000088808880777777708880888000070000
          8880888888070888888088888807088888808888880008888880888888888888
          88808888888888888880}
      end
      object btnDelete: TBitBtn
        Left = 120
        Top = 6
        Width = 89
        Height = 25
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = 'Quitar'
        TabOrder = 2
        OnClick = btnDeleteClick
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888888888888881F88881F8888888888888991F8888889F8888191F888881
          F888888199F88891F8888888191F819F88888888819199F88888888888919F88
          88888888891911F888888888191F89F88888889191F88819F88881919F888881
          9F88891F8888888819F88888888888888888}
      end
      object btnPrinter: TBitBtn
        Left = 240
        Top = 6
        Width = 90
        Height = 25
        Hint = 'Imprimir (CTRL + P)'
        Align = alCustom
        Anchors = [akLeft, akBottom]
        Caption = 'Imprimir'
        TabOrder = 3
        OnClick = btnPrinterClick
        Glyph.Data = {
          22010000424D22010000000000004A0000002800000012000000120000000100
          040000000000D8000000120B0000120B000005000000050000000000FF00FFFF
          FF00BFBFBF007F7F7F0000000000222222222222222222004004222444444444
          4422220022222242222222224342220022242444444444444434220022422422
          2222200224442200244424222222222224342200242224444444444444334200
          2422242222222222434342002444224444444444243442002422222424444444
          4243420022442222411111114444220022242222411111111422220022222222
          2411111114222200222222222411111111422200222222222244444444422200
          2222222222222222222222002222222222222222222222002222222222222222
          222222002222}
      end
    end
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 76
    Height = 217
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alCustom
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 76
    ExplicitHeight = 217
    inherited AdvPanel1: TAdvPanel
      Width = 76
      Height = 217
      ExplicitWidth = 76
      ExplicitHeight = 217
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
      inherited btnPrinter: TcxButton
        OnClick = frmBarra1btnPrinterClick
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
  end
  object grid_catIngresos: TDBGrid
    Left = 77
    Top = 0
    Width = 985
    Height = 261
    Align = alCustom
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    DataSource = dszQEmpleados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = Popempleados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'sIdEmpleado'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sNombreCompleto'
        Title.Caption = 'Nombre Completo'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sDomicilio'
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sCiudad'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sIdArea'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sTelefono'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'seMail'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dSueldo'
        Title.Alignment = taRightJustify
        Visible = True
      end>
  end
  object TERMINOLAB: TDBDateEdit
    Left = 606
    Top = 552
    Width = 319
    Height = 21
    Margins.Left = 4
    Margins.Top = 1
    DataField = 'dFechaTerminoLabores'
    DataSource = dszQEmpleados
    Color = 11009259
    Anchors = [akLeft, akBottom]
    NumGlyphs = 2
    TabOrder = 3
    OnKeyPress = INICIOLABKeyPress
  end
  object dszQEmpleados: TDataSource
    DataSet = zQEmpleados
    Left = 739
    Top = 109
  end
  object zQEmpleados: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEmpleadosAfterScroll
    AfterInsert = zQEmpleadosAfterInsert
    SQL.Strings = (
      'select * from empleados order by sNombreCompleto')
    Params = <>
    Left = 704
    Top = 108
    object zQEmpleadossIdEmpleado: TStringField
      DisplayLabel = 'Id Empleado'
      DisplayWidth = 14
      FieldName = 'sIdEmpleado'
      Required = True
      Size = 8
    end
    object zQEmpleadossNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object zQEmpleadossDomicilio: TStringField
      DisplayLabel = 'Domilio'
      DisplayWidth = 35
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zQEmpleadossCiudad: TStringField
      DisplayLabel = 'Ciudad'
      DisplayWidth = 35
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object zQEmpleadossPuesto: TStringField
      DisplayLabel = 'Puesto'
      FieldName = 'sPuesto'
      Size = 50
    end
    object zQEmpleadossIdArea: TStringField
      DisplayLabel = 'Depto.'
      DisplayWidth = 10
      FieldName = 'sIdArea'
      Required = True
      OnChange = zQEmpleadossIdAreaChange
      Size = 8
    end
    object zQEmpleadossTelefono: TStringField
      DisplayLabel = 'Telefono'
      DisplayWidth = 60
      FieldName = 'sTelefono'
      Required = True
      Size = 60
    end
    object zQEmpleadosseMail: TStringField
      DisplayLabel = 'eMail'
      DisplayWidth = 60
      FieldName = 'seMail'
      Required = True
      Size = 30
    end
    object zQEmpleadosdSueldo: TFloatField
      DisplayLabel = 'Sueldo'
      DisplayWidth = 12
      FieldName = 'dSueldo'
      Required = True
      currency = True
    end
    object zQEmpleadossCuenta: TStringField
      DisplayWidth = 90
      FieldName = 'sCuenta'
      Required = True
      Size = 90
    end
    object zQEmpleadoslLabora: TStringField
      FieldName = 'lLabora'
      Required = True
      Size = 2
    end
    object zQEmpleadossBanco: TStringField
      FieldName = 'sBanco'
      Required = True
      Size = 60
    end
    object zQEmpleadossCuentaInterbancaria: TStringField
      DisplayWidth = 90
      FieldName = 'sCuentaInterbancaria'
      Required = True
      Size = 90
    end
    object zQEmpleadossCurp: TStringField
      FieldName = 'sCurp'
      Required = True
      Size = 90
    end
    object zQEmpleadossImss: TStringField
      FieldName = 'sImss'
      Required = True
      Size = 90
    end
    object zQEmpleadossRfc: TStringField
      FieldName = 'sRfc'
      Required = True
      Size = 50
    end
    object zQEmpleadossNacionalidad: TStringField
      FieldName = 'sNacionalidad'
      Required = True
      Size = 98
    end
    object zQEmpleadossEstadoCivil: TStringField
      FieldName = 'sEstadoCivil'
      Required = True
      Size = 90
    end
    object zQEmpleadosdFechaNacimiento: TDateField
      FieldName = 'dFechaNacimiento'
      Required = True
    end
    object zQEmpleadosdFechaInicioLabores: TDateField
      FieldName = 'dFechaInicioLabores'
    end
    object zQEmpleadosiId_Puesto: TIntegerField
      FieldName = 'iId_Puesto'
    end
    object zQEmpleadossPuestoLabora: TStringField
      FieldKind = fkLookup
      FieldName = 'sPuestoLabora'
      LookupDataSet = zq_Puestos
      LookupKeyFields = 'iId'
      LookupResultField = 'sPuesto'
      KeyFields = 'iId_Puesto'
      Size = 50
      Lookup = True
    end
    object zQEmpleadossLibretaMar: TStringField
      FieldName = 'sLibretaMar'
      Required = True
      Size = 80
    end
    object zQEmpleadossCartilla: TStringField
      FieldName = 'sCartilla'
      Size = 80
    end
    object zQEmpleadossCedulaProfesional: TStringField
      FieldName = 'sCedulaProfesional'
      Size = 40
    end
    object zQEmpleadossCarrera: TStringField
      DisplayWidth = 150
      FieldName = 'sCarrera'
      Size = 200
    end
    object zQEmpleadossLugarNacimiento: TStringField
      FieldName = 'sLugarNacimiento'
      Required = True
      Size = 150
    end
    object zQEmpleadosdFechaTerminoLabores: TDateField
      FieldName = 'dFechaTerminoLabores'
      Required = True
    end
  end
  object zQAreas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from areas order by sDescripcion')
    Params = <>
    Left = 704
    Top = 188
    object zQAreassIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object zQAreassDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object zQAreassMascara: TStringField
      FieldName = 'sMascara'
      ReadOnly = True
      Size = 4
    end
  end
  object dszQAreas: TDataSource
    AutoEdit = False
    DataSet = zQAreas
    Left = 736
    Top = 188
  end
  object rptReporte: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41134.804896064800000000
    ReportOptions.LastChange = 41143.573903958340000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 228
    Datasets = <
      item
      end
      item
        DataSet = frx_EquiposPorEmpleado
        DataSetName = 'frx_EquiposPorEmpleado'
      end
      item
        DataSet = frxEquipos
        DataSetName = 'frxEquipos'
      end>
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
      object PageHeader1: TfrxPageHeader
        Height = 650.079160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frConfiguracionsNombre: TfrxMemoView
          Left = 158.740260000000000000
          Top = 34.015770000000000000
          Width = 510.236550000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -23
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 113.385900000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            
              'Ciudad del Carmen,  [FormatDateTime('#39'dd'#39',Now)] de  [FormatDateTi' +
              'me('#39'mmmm'#39',Now)] del [FormatDateTime('#39'yyyy'#39',Now)]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Rich1: TfrxRichView
          Top = 207.874150000000000000
          Width = 721.890230000000000000
          Height = 442.205010000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67333038327B5C666F6E7474626C7B5C66305C666E696C5C66636861
            72736574302043616C696272693B7D7B5C66315C666E696C205461686F6D613B
            7D7D0D0A5C766965776B696E64345C7563315C706172645C716A5C6C616E6732
            3035385C66305C667333362052454349425C27636420444520494E54454C2D43
            4F44452C20532E412E20444520432E562E20454C20445C27636441205B557070
            65726361736528466F726D61744461746554696D65282744444444272C3C6672
            785F45717569706F73506F72456D706C6561646F2E226446656368615F526563
            657063696F6E223E29295D205B466F726D61744461746554696D652827646427
            2C3C6672785F45717569706F73506F72456D706C6561646F2E22644665636861
            5F526563657063696F6E223E295D204445205B55707065724361736528466F72
            6D61744461746554696D6528274D4D4D4D272C3C6672785F45717569706F7350
            6F72456D706C6561646F2E226446656368615F526563657063696F6E223E2929
            5D2044454C205B55707065724361736528466F726D61744461746554696D6528
            2759595959272C3C6672785F45717569706F73506F72456D706C6561646F2E22
            6446656368615F526563657063696F6E223E29295D2C20434154414C4F474144
            4F20454E2045535441444F2044453A205B6672785F45717569706F73506F7245
            6D706C6561646F2E22735374617475735F526563657063696F6E225D5C706172
            0D0A5C706172645C71635C625C7061720D0A5C7061720D0A5C7061720D0A5C70
            61720D0A5B66727845717569706F732E22734E6F6D627265225D204D4F44454C
            4F205B66727845717569706F732E22734D6F64656C6F225D5C7061720D0A5B66
            727845717569706F732E22734465736372697063696F6E225D5C7061720D0A5C
            7061720D0A5C7061720D0A5C7061720D0A5C62305C7061720D0A5C7061720D0A
            5C706172645C716A204152545C27636443554C4F2050524F5049454441442044
            4520494E54454C2D434F44452C20532E412E20444520432E562E2059204D4520
            56454F20454E204C41204F424C49474143495C2764334E204445204445564F4C
            5645524C4F204355414E444F204D45205345412052455155455249444F2E5C6C
            616E67333038325C625C66315C667331365C7061720D0A7D0D0A00}
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 102.047310000000000000
        Top = 729.449290000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
          Top = 45.354360000000000000
          Width = 415.748300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_EquiposPorEmpleado."sEmpleado"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frx_ReporteEmpleados: TfrxDBDataset
    UserName = 'frx_ReporteEmpleados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdEmpleado=sIdEmpleado'
      'sNombreCompleto=sNombreCompleto'
      'sRfc=sRfc'
      'sDomicilio=sDomicilio'
      'sCiudad=sCiudad'
      'sPuesto=sPuesto'
      'sIdArea=sIdArea'
      'sTelefono=sTelefono'
      'seMail=seMail'
      'dSueldo=dSueldo'
      'sStatus=sStatus'
      'sCuenta=sCuenta'
      'lLabora=lLabora'
      'sIdArea_1=sIdArea_1'
      'sDescripcion=sDescripcion'
      'sMascara=sMascara'
      'sTipoArea=sTipoArea'
      'iId_Puesto=iId_Puesto'
      'PuestoEmpleado=PuestoEmpleado'
      'sCuentaInterbancaria=sCuentaInterbancaria'
      'sEstadoCivil=sEstadoCivil'
      'sLibretaMar=sLibretaMar'
      'sCartilla=sCartilla'
      'sCedulaProfesional=sCedulaProfesional'
      'dFechaNacimiento=dFechaNacimiento'
      'sCurp=sCurp'
      'sImss=sImss'
      'sCarrera=sCarrera'
      'sLugarNacimiento=sLugarNacimiento')
    DataSet = qryEmpleados
    BCDToCurrency = False
    Left = 840
    Top = 108
  end
  object qryEmpleados: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select e.*, a.*, cp.sPuesto AS PuestoEmpleado from empleados e'
      'inner join areas a On e.sIdArea=a.sIdArea '
      'left join catalogodepuestos cp ON (cp.iId = e.iId_Puesto) '
      'Where lLabora="Si" '
      'order by iId_Puesto;')
    Params = <>
    Left = 704
    Top = 156
    object qryEmpleadossIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
      Size = 8
    end
    object qryEmpleadossNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object qryEmpleadossRfc: TStringField
      FieldName = 'sRfc'
      Required = True
      Size = 50
    end
    object qryEmpleadossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object qryEmpleadossCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object qryEmpleadossPuesto: TStringField
      FieldName = 'sPuesto'
      Required = True
      Size = 50
    end
    object qryEmpleadossIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object qryEmpleadossTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
    end
    object qryEmpleadosseMail: TStringField
      FieldName = 'seMail'
      Required = True
      Size = 30
    end
    object qryEmpleadosdSueldo: TFloatField
      FieldName = 'dSueldo'
      Required = True
    end
    object qryEmpleadossStatus: TStringField
      FieldName = 'sStatus'
      Required = True
      Size = 8
    end
    object qryEmpleadossCuenta: TStringField
      FieldName = 'sCuenta'
      Required = True
      Size = 30
    end
    object qryEmpleadoslLabora: TStringField
      FieldName = 'lLabora'
      Required = True
      Size = 2
    end
    object qryEmpleadossIdArea_1: TStringField
      FieldName = 'sIdArea_1'
      Required = True
      Size = 8
    end
    object qryEmpleadossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object qryEmpleadossMascara: TStringField
      FieldName = 'sMascara'
      Required = True
      Size = 4
    end
    object qryEmpleadossTipoArea: TStringField
      FieldName = 'sTipoArea'
      Required = True
      Size = 12
    end
    object qryEmpleadosiId_Puesto: TIntegerField
      FieldName = 'iId_Puesto'
    end
    object qryEmpleadosPuestoEmpleado: TStringField
      FieldName = 'PuestoEmpleado'
      Size = 100
    end
    object qryEmpleadossCuentaInterbancaria: TStringField
      FieldName = 'sCuentaInterbancaria'
      Required = True
      Size = 90
    end
    object qryEmpleadossEstadoCivil: TStringField
      FieldName = 'sEstadoCivil'
      Required = True
      Size = 90
    end
    object qryEmpleadossLibretaMar: TStringField
      FieldName = 'sLibretaMar'
      Required = True
      Size = 80
    end
    object qryEmpleadossCartilla: TStringField
      FieldName = 'sCartilla'
      ReadOnly = True
      Size = 80
    end
    object qryEmpleadossCedulaProfesional: TStringField
      FieldName = 'sCedulaProfesional'
      ReadOnly = True
      Size = 40
    end
    object qryEmpleadosdFechaNacimiento: TDateField
      FieldName = 'dFechaNacimiento'
      Required = True
    end
    object qryEmpleadossCurp: TStringField
      FieldName = 'sCurp'
      Required = True
      Size = 90
    end
    object qryEmpleadossImss: TStringField
      FieldName = 'sImss'
      Required = True
      Size = 90
    end
    object qryEmpleadossCarrera: TStringField
      FieldName = 'sCarrera'
      ReadOnly = True
      Size = 200
    end
    object qryEmpleadossLugarNacimiento: TStringField
      FieldName = 'sLugarNacimiento'
      Required = True
      Size = 150
    end
    object qryEmpleadosdFechaTerminoLabores: TDateField
      FieldName = 'dFechaTerminoLabores'
      Required = True
    end
  end
  object zq_EquiposPorEmpleado: TZQuery
    Connection = connection.zConnection
    AfterScroll = zq_EquiposPorEmpleadoAfterScroll
    SQL.Strings = (
      'SELECT * FROM equiposporempleado WHERE sIdEmpleado = :Empleado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    Left = 710
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    object zq_EquiposPorEmpleadoiId: TIntegerField
      FieldName = 'iId'
    end
    object zq_EquiposPorEmpleadoiIdEquipo: TIntegerField
      FieldName = 'iIdEquipo'
    end
    object zq_EquiposPorEmpleadosIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Size = 100
    end
    object zq_EquiposPorEmpleadodFecha_Recepcion: TDateField
      FieldName = 'dFecha_Recepcion'
    end
    object zq_EquiposPorEmpleadodFecha_Remocion: TDateField
      FieldName = 'dFecha_Remocion'
    end
    object zq_EquiposPorEmpleadosEquipo: TStringField
      FieldKind = fkLookup
      FieldName = 'sEquipo'
      LookupDataSet = zqEquipos
      LookupKeyFields = 'iId'
      LookupResultField = 'sNombre'
      KeyFields = 'iIdEquipo'
      Lookup = True
    end
    object zq_EquiposPorEmpleadosStatus_Recepcion: TStringField
      FieldName = 'sStatus_Recepcion'
      Size = 100
    end
    object zq_EquiposPorEmpleadosStatus_Entrega: TStringField
      FieldName = 'sStatus_Entrega'
      Size = 100
    end
    object zq_EquiposPorEmpleadosEmpleado: TStringField
      DisplayWidth = 200
      FieldKind = fkLookup
      FieldName = 'sEmpleado'
      LookupDataSet = qryEmpleados
      LookupKeyFields = 'sIdEmpleado'
      LookupResultField = 'sNombreCompleto'
      KeyFields = 'sIdEmpleado'
      Size = 200
      Lookup = True
    end
  end
  object ds_EquiposPorEmpleado: TDataSource
    DataSet = zq_EquiposPorEmpleado
    Left = 745
    Top = 237
  end
  object zqEquipos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM catalogodeequipos;')
    Params = <>
    Left = 704
    Top = 212
    object zqEquiposiId: TIntegerField
      FieldName = 'iId'
    end
    object zqEquiposiId_Categoria: TIntegerField
      FieldName = 'iId_Categoria'
    end
    object zqEquipossClave: TStringField
      FieldName = 'sClave'
      Size = 50
    end
    object zqEquipossNombre: TStringField
      FieldName = 'sNombre'
      Size = 100
    end
    object zqEquipossModelo: TStringField
      FieldName = 'sModelo'
      Size = 100
    end
    object zqEquipossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 500
    end
    object zqEquipossMarca: TStringField
      FieldName = 'sMarca'
      Size = 50
    end
    object zqEquipossNumeroSerie: TStringField
      FieldName = 'sNumeroSerie'
      Size = 50
    end
    object zqEquipossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Size = 80
    end
    object zqEquiposdFechaCompra: TDateField
      FieldName = 'dFechaCompra'
    end
  end
  object dsEquipos: TDataSource
    DataSet = zqEquipos
    Left = 739
    Top = 213
  end
  object frx_EquiposPorEmpleado: TfrxDBDataset
    UserName = 'frx_EquiposPorEmpleado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'iIdEquipo=iIdEquipo'
      'sIdEmpleado=sIdEmpleado'
      'dFecha_Recepcion=dFecha_Recepcion'
      'dFecha_Remocion=dFecha_Remocion'
      'sEquipo=sEquipo'
      'sStatus_Recepcion=sStatus_Recepcion'
      'sStatus_Entrega=sStatus_Entrega'
      'sEmpleado=sEmpleado')
    DataSet = zq_EquiposPorEmpleado
    BCDToCurrency = False
    Left = 840
    Top = 228
  end
  object PopupMenu1: TPopupMenu
    Left = 616
    Top = 232
    object Imprimircartaresponsiva1: TMenuItem
      Caption = 'Imprimir Carta Responsiva'
      OnClick = Imprimircartaresponsiva1Click
    end
  end
  object frxEquipos: TfrxDBDataset
    UserName = 'frxEquipos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'iId_Categoria=iId_Categoria'
      'sClave=sClave'
      'sNombre=sNombre'
      'sModelo=sModelo'
      'sDescripcion=sDescripcion'
      'sMarca=sMarca'
      'sNumeroSerie=sNumeroSerie'
      'sIdProveedor=sIdProveedor'
      'dFechaCompra=dFechaCompra')
    DataSet = zqEquipos
    BCDToCurrency = False
    Left = 840
    Top = 172
  end
  object zq_Puestos: TZQuery
    Connection = connection.zConnection
    AfterScroll = zQEmpleadosAfterScroll
    AfterInsert = zQEmpleadosAfterInsert
    SQL.Strings = (
      'SELECT * FROM catalogodepuestos;')
    Params = <>
    Left = 704
    Top = 132
    object zq_PuestosiId: TIntegerField
      FieldName = 'iId'
    end
    object zq_PuestossPuesto: TStringField
      FieldName = 'sPuesto'
      Size = 100
    end
    object zq_PuestossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 300
    end
  end
  object ds_Puestos: TDataSource
    DataSet = zq_Puestos
    Left = 739
    Top = 133
  end
  object ReporteFotografico: TZQuery
    Connection = connection.zConnection
    AfterScroll = ReporteFotograficoAfterScroll
    BeforeInsert = ReporteFotograficoBeforeInsert
    AfterInsert = ReporteFotograficoAfterInsert
    BeforeEdit = ReporteFotograficoBeforeEdit
    AfterEdit = ReporteFotograficoAfterEdit
    BeforePost = ReporteFotograficoBeforePost
    AfterCancel = ReporteFotograficoAfterCancel
    BeforeDelete = ReporteFotograficoBeforeDelete
    AfterDelete = ReporteFotograficoAfterDelete
    SQL.Strings = (
      
        'SELECT * FROM escaneos_imagenes WHERE sTipo = '#39'DOCUMENTOS_PERSON' +
        'AL'#39' AND sIdentificador = :Identificador ORDER BY iId ASC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Identificador'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Identificador'
        ParamType = ptUnknown
      end>
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 376
    Top = 182
  end
  object ds_ReporteFotografico: TDataSource
    DataSet = ReporteFotografico
    Left = 552
    Top = 224
  end
  object frxReport1: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39813.804003356500000000
    ReportOptions.LastChange = 41207.846874062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var'
      '       Total_Cancelado: Real;            '
      '       Total_Pendiente: Real;'
      '       Total_Pagado: Real;               '
      'procedure frPrinterdSueldoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       //;                          '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       if <frxEgresos."sStatus"> = '#39'PAGADA'#39' then begin'
      
        '               Total_Pagado := Total_Pagado + (<frxEgresos."dImp' +
        'orteTotal"> + <frxEgresos."dIva">)'
      '       end;'
      
        '       if (<frxEgresos."sStatus"> = '#39'PENDIENTE'#39') OR (<frxEgresos' +
        '."sStatus"> = '#39'ENTREGADA'#39') then begin'
      
        '               Total_Pendiente := Total_Pendiente + (<frxEgresos' +
        '."dImporteTotal"> + <frxEgresos."dIva">)'
      '       end;'
      '       if <frxEgresos."sStatus"> = '#39'CANCELADA'#39' then begin'
      
        '               Total_Cancelado := Total_Cancelado + (<frxEgresos' +
        '."dImporteTotal"> + <frxEgresos."dIva">)'
      '       end;  '
      'end;'
      ''
      'procedure GroupFooter1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       Total_Cancelado:= 0;              '
      '       Total_Pendiente:= 0;  '
      '       Total_Pagado:= 0;       '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 72
    Top = 224
    Datasets = <
      item
      end
      item
        DataSet = frxFotografia
        DataSetName = 'frxFotografia'
      end>
    Variables = <
      item
        Name = ' Totales'
        Value = Null
      end
      item
        Name = 'PendientedePagar'
        Value = '<frTmpQuery."dTotal"> - <frTmpQuery."dPagado">'
      end>
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
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 978.898270000000000000
        Width = 740.409927000000000000
        object frConfiguracionsSlogan: TfrxMemoView
          Left = 257.008040000000000000
          Top = 22.677180000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sSlogan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 294.803340000000000000
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
      object PageHeader1: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object frConfiguracionsNombre: TfrxMemoView
          Left = 147.401670000000000000
          Top = 3.779530000000000000
          Width = 438.425480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 41.574830000000000000
          Width = 438.425480000000000000
          Height = 52.913420000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frConfiguracion."sRfc"]'
            '[frConfiguracion."sDireccion1"]'
            '[frConfiguracion."sDireccion2"]'
            '[frConfiguracion."sDireccion3"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 738.228820000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        DataSet = frxFotografia
        DataSetName = 'frxFotografia'
        RowCount = 0
        object Picture2: TfrxPictureView
          Top = 20.370130000000000000
          Width = 778.583180000000000000
          Height = 706.772110000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = frxFotografia
          DataSetName = 'frxFotografia'
          HightQuality = False
        end
      end
    end
  end
  object Popempleados: TPopupMenu
    Left = 160
    Top = 152
    object IMPRESIONEMPLEADOS1: TMenuItem
      Caption = 'Mostrar Informacion Empleados'
      OnClick = IMPRESIONEMPLEADOS1Click
    end
    object IMPRESIONSUELDOS1: TMenuItem
      Caption = 'Mostrar Sueldos Empleado'
      OnClick = IMPRESIONSUELDOS1Click
    end
    object MostrarSoportesEmpleados1: TMenuItem
      Caption = 'Mostrar Soportes Empleados'
      OnClick = MostrarSoportesEmpleados1Click
    end
  end
  object frxFotografia: TfrxDBDataset
    UserName = 'frxFotografia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'sTipo=sTipo'
      'bImagen=bImagen'
      'sIdentificador=sIdentificador')
    DataSet = ReporteFotografico
    BCDToCurrency = False
    Left = 472
    Top = 100
  end
end
