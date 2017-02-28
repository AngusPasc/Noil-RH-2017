object frmEstimacionAvances: TfrmEstimacionAvances
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'E S T I M A C I O N   A V A N C E S'
  ClientHeight = 447
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 47
    Top = 61
    Width = 122
    Height = 13
    Caption = 'Seleccione Orden/Anexo:'
  end
  object CmdCancel: TButton
    Left = 631
    Top = 415
    Width = 90
    Height = 25
    Cancel = True
    Caption = 'Cerrar'
    ModalResult = 2
    TabOrder = 0
  end
  object tsOrdenes: TDBLookupComboBox
    Left = 175
    Top = 56
    Width = 178
    Height = 22
    Color = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'sContrato'
    ListField = 'sContrato'
    ListSource = ds_OrdenesAnexos
    ParentFont = False
    TabOrder = 1
    OnExit = tsOrdenesExit
  end
  object GrupoEstimacion: TGroupBox
    Left = 8
    Top = 5
    Width = 713
    Height = 45
    Caption = 'Datos de la Estimacion Actual'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label9: TLabel
      Left = 30
      Top = 21
      Width = 70
      Height = 14
      Caption = 'No. Estimaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 414
      Top = 21
      Width = 35
      Height = 14
      Caption = 'F. Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 544
      Top = 21
      Width = 33
      Height = 14
      Caption = 'F. Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblTipo: TLabel
      Left = 186
      Top = 21
      Width = 74
      Height = 14
      Caption = 'Tipo Estimacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object tFecha_I: TDBDateEdit
      Left = 457
      Top = 18
      Width = 81
      Height = 22
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'dFechaInicio'
      Color = 15138559
      DialogTitle = 'Selecciona una Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      CalendarStyle = csDialog
      TabOrder = 0
    end
    object tFecha_F: TDBDateEdit
      Left = 585
      Top = 18
      Width = 80
      Height = 22
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'dFechaFinal'
      Color = 15138559
      DialogTitle = 'Selecciona una Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      CalendarStyle = csDialog
      TabOrder = 1
    end
    object tNumeroEstimacion: TEdit
      Left = 106
      Top = 18
      Width = 63
      Height = 21
      Color = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object DBGridAvances: TDBGrid
    Left = 28
    Top = 96
    Width = 692
    Height = 313
    Color = 15138559
    DataSource = ds_avances
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Color = clGradientActiveCaption
        Expanded = False
        FieldName = 'dIdFecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAvanceProgramadoFisico'
        Title.Alignment = taRightJustify
        Title.Caption = 'Av. Prog. Fis %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAvanceRealFisico'
        Title.Alignment = taRightJustify
        Title.Caption = 'Av. Real Fis %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAvanceProgramadoFinanciero'
        Title.Alignment = taRightJustify
        Title.Caption = 'Av. Prog. Finz %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dAvanceFisicoFinanciero'
        Title.Alignment = taRightJustify
        Title.Caption = 'Av. Real Finz %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end>
  end
  object cmdOk: TBitBtn
    Left = 465
    Top = 56
    Width = 57
    Height = 23
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object OrdenesAnexos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from contratos where sCodigo =:Contrato and sTipoObra <' +
        '> '#39'BARCO'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 377
    Top = 54
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object ds_OrdenesAnexos: TDataSource
    AutoEdit = False
    DataSet = OrdenesAnexos
    Left = 414
    Top = 54
  end
  object ds_avances: TDataSource
    DataSet = QryAvances
    Left = 428
    Top = 320
  end
  object QryAvances: TZQuery
    Connection = connection.zConnection
    BeforePost = QryAvancesBeforePost
    SQL.Strings = (
      'select * from avances_estimaciones'
      'where sContrato =:Contrato order by dIdFecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 473
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object QryAvancessContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object QryAvancesdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object QryAvancesdAvanceProgramadoFisico: TFloatField
      FieldName = 'dAvanceProgramadoFisico'
      Required = True
    end
    object QryAvancesdAvanceRealFisico: TFloatField
      FieldName = 'dAvanceRealFisico'
      Required = True
    end
    object QryAvancesdAvanceProgramadoFinanciero: TFloatField
      FieldName = 'dAvanceProgramadoFinanciero'
      Required = True
    end
    object QryAvancesdAvanceFisicoFinanciero: TFloatField
      FieldName = 'dAvanceFisicoFinanciero'
    end
  end
end
