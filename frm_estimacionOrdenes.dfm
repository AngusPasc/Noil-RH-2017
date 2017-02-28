object frmEstimacionOrdenes: TfrmEstimacionOrdenes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Estimacion Anexos / Ordenes'
  ClientHeight = 447
  ClientWidth = 666
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
  object pgOpciones: TsPageControl
    Left = 2
    Top = 7
    Width = 656
    Height = 402
    ActivePage = pgPartidas
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object pgPartidas: TsTabSheet
      Caption = 'Nueva Estimacion'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object Label2: TLabel
        Left = 10
        Top = 14
        Width = 122
        Height = 13
        Caption = 'Seleccione Orden/Anexo:'
      end
      object GroupQuality: TGroupBox
        Left = 9
        Top = 96
        Width = 636
        Height = 253
        Caption = 'Reprogramaciones'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          636
          253)
        object Label1: TLabel
          Left = 267
          Top = 78
          Width = 57
          Height = 13
          Caption = 'Fecha Inicio'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 454
          Top = 78
          Width = 54
          Height = 13
          Caption = 'Fecha Final'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 266
          Top = 143
          Width = 83
          Height = 13
          Caption = 'Tipo de Convenio'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 266
          Top = 45
          Width = 58
          Height = 13
          Caption = 'Descripcion:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 267
          Top = 113
          Width = 56
          Height = 13
          Caption = 'Monto M.N.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 451
          Top = 113
          Width = 50
          Height = 13
          Caption = 'Monto DLL'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 267
          Top = 173
          Width = 64
          Height = 13
          Caption = 'Comentarios:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBGrid_Convenios: TDBGrid
          Left = 17
          Top = 28
          Width = 235
          Height = 192
          Color = 15138559
          DataSource = ds_convenios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupConvenios
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = clGradientActiveCaption
              Expanded = False
              FieldName = 'sIdConvenio'
              Title.Alignment = taCenter
              Title.Caption = 'Convenio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 54
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
              Width = 72
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
              Width = 68
              Visible = True
            end>
        end
        object tTipoConvenio: TDBEdit
          Left = 369
          Top = 143
          Width = 232
          Height = 22
          CharCase = ecUpperCase
          Color = 15138559
          DataField = 'Tipo'
          DataSource = ds_convenios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object tDescripcion: TDBEdit
          Left = 329
          Top = 43
          Width = 269
          Height = 22
          CharCase = ecUpperCase
          Color = 15138559
          DataField = 'sDescripcion'
          DataSource = ds_convenios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object tMonedaMN: TDBEdit
          Left = 329
          Top = 110
          Width = 84
          Height = 22
          CharCase = ecUpperCase
          Color = 15138559
          DataField = 'dMontoMN'
          DataSource = ds_convenios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnChange = tMonedaMNChange
          OnKeyPress = tMonedaMNKeyPress
        end
        object tMonedaDLL: TDBEdit
          Left = 517
          Top = 110
          Width = 84
          Height = 22
          CharCase = ecUpperCase
          Color = 15138559
          DataField = 'dMontoDLL'
          DataSource = ds_convenios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnChange = tMonedaDLLChange
          OnKeyPress = tMonedaDLLKeyPress
        end
        object tmComentarios: TDBMemo
          Left = 334
          Top = 173
          Width = 267
          Height = 54
          Anchors = [akLeft, akTop, akRight]
          Color = 15138559
          DataField = 'mComentarios'
          DataSource = ds_convenios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 7
        end
        object CheckBox1: TCheckBox
          Left = 163
          Top = 226
          Width = 79
          Height = 17
          Caption = 'Autorizada'
          TabOrder = 8
        end
        object tdFechaInicio: TDBDateTimePicker
          Left = 330
          Top = 71
          Width = 85
          Height = 21
          Date = 40721.687683472220000000
          Time = 40721.687683472220000000
          Checked = False
          Color = 15138559
          TabOrder = 3
          OnChange = tdFechaInicioChange
          DataField = 'dFechaInicio'
          Datasource = ds_convenios
        end
        object tdFechaFinal: TDBDateTimePicker
          Left = 514
          Top = 71
          Width = 85
          Height = 21
          Date = 40721.687683472220000000
          Time = 40721.687683472220000000
          Checked = False
          Color = 15138559
          TabOrder = 4
          OnChange = tdFechaFinalChange
          OnExit = tdFechaFinalExit
          DataField = 'dFechaFinal'
          Datasource = ds_convenios
        end
      end
      object tsOrdenes: TDBLookupComboBox
        Left = 138
        Top = 9
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
    end
  end
  object CmdCancel: TButton
    Left = 583
    Top = 415
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 1
  end
  object CmdNext: TButton
    Left = 502
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    Default = True
    TabOrder = 2
    OnClick = CmdNextClick
  end
  object GrupoEstimacion: TGroupBox
    Left = 8
    Top = 69
    Width = 636
    Height = 52
    Caption = 'Datos de la Estimacion'
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
      Top = 24
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
      Left = 346
      Top = 24
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
      Left = 476
      Top = 24
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
      Top = 24
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
      Left = 389
      Top = 21
      Width = 81
      Height = 22
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'dFechaInicio'
      Color = 15138559
      DialogTitle = 'Selecciona una Fecha'
      DirectInput = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      CalendarStyle = csDialog
      TabOrder = 0
      OnChange = tFecha_IChange
    end
    object tFecha_F: TDBDateEdit
      Left = 517
      Top = 21
      Width = 80
      Height = 22
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'dFechaFinal'
      Color = 15138559
      DialogTitle = 'Selecciona una Fecha'
      DirectInput = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      CalendarStyle = csDialog
      TabOrder = 1
      OnChange = tFecha_FChange
      OnExit = tFecha_FExit
    end
    object tNumeroEstimacion: TEdit
      Left = 106
      Top = 20
      Width = 62
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
      OnChange = tNumeroEstimacionChange
      OnKeyPress = tNumeroEstimacionKeyPress
    end
  end
  object OrdenesAnexos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sContrato, sTipoObra from contratos where sCodigo =:Contr' +
        'ato and sContrato <> sCodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 289
    Top = 46
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object OrdenesAnexossContrato: TStringField
      FieldName = 'sContrato'
    end
    object OrdenesAnexossTipoObra: TStringField
      FieldName = 'sTipoObra'
    end
  end
  object ds_OrdenesAnexos: TDataSource
    AutoEdit = False
    DataSet = OrdenesAnexos
    Left = 318
    Top = 46
  end
  object Convenios: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 9
    Top = 414
    object ConveniossContrato: TStringField
      FieldName = 'sContrato'
    end
    object ConveniossIdConvenio: TStringField
      FieldName = 'sIdConvenio'
    end
    object ConveniossDescripcion: TStringField
      FieldName = 'sDescripcion'
    end
    object ConveniossIdTipoConvenio: TStringField
      FieldName = 'sIdTipoConvenio'
    end
    object ConveniosdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object ConveniosdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
    end
    object ConveniosdMontoMN: TFloatField
      FieldName = 'dMontoMN'
      currency = True
    end
    object ConveniosdMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
      currency = True
    end
    object ConveniosmComentarios: TMemoField
      FieldName = 'mComentarios'
      BlobType = ftMemo
    end
    object Conveniostipo: TStringField
      FieldName = 'tipo'
    end
  end
  object ds_convenios: TDataSource
    AutoEdit = False
    DataSet = Convenios
    Left = 39
    Top = 415
  end
  object ds_Recursos: TDataSource
    DataSet = Recursos
    Left = 84
    Top = 417
  end
  object Recursos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from movtorecursosxoficio'
      'where sContrato =:Contrato'
      'And dFechaVigencia =:Vigencia'
      ' order by iItemOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vigencia'
        ParamType = ptUnknown
      end>
    Left = 117
    Top = 417
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vigencia'
        ParamType = ptUnknown
      end>
    object RecursosdFechaVigencia: TDateField
      FieldName = 'dFechaVigencia'
      Required = True
    end
    object RecursossAnexo: TStringField
      FieldName = 'sAnexo'
      Required = True
      Size = 15
    end
    object RecursossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object RecursosiItemOrden: TIntegerField
      FieldName = 'iItemOrden'
      Required = True
    end
    object RecursosdCantidad: TIntegerField
      FieldName = 'dCantidad'
      Required = True
    end
    object RecursossContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object RecursossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object RecursossDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 250
      Calculated = True
    end
    object RecursosAnterior: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Anterior'
      Calculated = True
    end
  end
  object qryOrdenesgralfecha: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select dFechaVigencia from ordenesdetrabajogral '
      'Where scontrato = :Contrato Order By dFechaVigencia DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object qryOrdenesgralfechadFechaVigencia: TDateField
      FieldName = 'dFechaVigencia'
      Required = True
    end
  end
  object qryOrdenesGral: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from ordenesdetrabajogral Where sContrato =:Contrato'
      'And dFechaVigencia = :Vigencia')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vigencia'
        ParamType = ptUnknown
      end>
    Left = 215
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vigencia'
        ParamType = ptUnknown
      end>
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = qryOrdenesGral
    Left = 252
    Top = 416
  end
  object PopupConvenios: TPopupMenu
    Images = connection.ImageList1
    Left = 153
    Top = 224
    object PTPersonal1: TMenuItem
      Caption = 'Recursos P.T'
      OnClick = PTPersonal1Click
    end
  end
end
