object frmEstimacionAdicional: TfrmEstimacionAdicional
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'E S T I M A C I O N E S   A D I C I O N A L E S '
  ClientHeight = 447
  ClientWidth = 736
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
    Left = 178
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
  object DBGrid_Convenios: TDBGrid
    Left = 8
    Top = 84
    Width = 713
    Height = 319
    Color = 15138559
    DataSource = ds_estimaciones
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid_ConveniosDblClick
    Columns = <
      item
        Color = clGradientActiveCaption
        Expanded = False
        FieldName = 'iNumeroEstimacion'
        Title.Alignment = taCenter
        Title.Caption = 'Estimacion'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sIdTipoEstimacion'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dFechaInicio'
        Title.Alignment = taCenter
        Title.Caption = 'F. Inicio'
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
        FieldName = 'dFechaFinal'
        Title.Alignment = taCenter
        Title.Caption = 'F. Final'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AdicionalMN'
        Title.Alignment = taCenter
        Title.Caption = '$ Adicional MN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AdicionalDLL'
        Title.Alignment = taCenter
        Title.Caption = '$ Adicional DLL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 105
        Visible = True
      end>
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
    TabOrder = 3
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
  object OrdenesAnexos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from contratos where sCodigo =:Contrato and sContrato <' +
        '> sCodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 369
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
    Left = 398
    Top = 54
  end
  object ds_estimaciones: TDataSource
    AutoEdit = False
    DataSet = rxEstimaciones
    Left = 55
    Top = 415
  end
  object rxEstimaciones: TRxMemoryData
    FieldDefs = <>
    Left = 88
    Top = 416
    object rxEstimacionessContrato: TStringField
      FieldName = 'sContrato'
    end
    object rxEstimacionessIdTipoEstimacion: TStringField
      FieldName = 'sIdTipoEstimacion'
    end
    object rxEstimacionesiNumeroEstimacion: TStringField
      FieldName = 'iNumeroEstimacion'
    end
    object rxEstimacionesPendienteMN: TFloatField
      FieldName = 'PendienteMN'
      currency = True
    end
    object rxEstimacionesdFechaInicio: TDateField
      Alignment = taCenter
      FieldName = 'dFechaInicio'
    end
    object rxEstimacionesdFechaFinal: TDateField
      Alignment = taCenter
      FieldName = 'dFechaFinal'
    end
    object rxEstimacionesPendienteDLL: TFloatField
      FieldName = 'PendienteDLL'
      currency = True
    end
    object rxEstimacionesAdicionalMN: TFloatField
      FieldName = 'AdicionalMN'
      currency = True
    end
    object rxEstimacionesAdicionalDLL: TFloatField
      FieldName = 'AdicionalDLL'
      currency = True
    end
    object rxEstimacionessIdConvenio: TStringField
      FieldName = 'sIdConvenio'
    end
    object rxEstimacionessIdTipo: TStringField
      FieldName = 'sIdTipo'
    end
    object rxEstimacionesiNumeroEstimacionSub: TStringField
      FieldName = 'iNumeroEstimacionSub'
    end
  end
end
