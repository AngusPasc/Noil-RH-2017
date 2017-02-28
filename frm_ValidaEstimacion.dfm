object frmValidaEstimacion: TfrmValidaEstimacion
  Left = 360
  Top = 173
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Autorizacion de Estimaciones'
  ClientHeight = 511
  ClientWidth = 1217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object cxGridEstimaciones: TcxGrid
    Left = 0
    Top = 61
    Width = 1217
    Height = 361
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object cxGrid_Estimaciones: TcxGridDBTableView
      OnDblClick = Grid_EstimacionesDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEstimacionPeriodo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      object cxGrid_EstimacionesiNumeroEstimacion1: TcxGridDBColumn
        Caption = 'Estimacion'
        DataBinding.FieldName = 'iNumeroEstimacion'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid_EstimacionessDescripcion1: TcxGridDBColumn
        Caption = 'Tipo de Estimacion'
        DataBinding.FieldName = 'sDescripcion'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Width = 127
      end
      object cxGrid_EstimacioneslEstimado1: TcxGridDBColumn
        Caption = 'Autorizada?'
        DataBinding.FieldName = 'lEstimado'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGrid_EstimacionesdFechaInicio1: TcxGridDBColumn
        Caption = 'F-Inicio'
        DataBinding.FieldName = 'dFechaInicio'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 69
      end
      object cxGrid_EstimacionesdFechaFinal1: TcxGridDBColumn
        Caption = 'F-Final'
        DataBinding.FieldName = 'dFechaFinal'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid_EstimacionesdMontoMN1: TcxGridDBColumn
        Caption = '$ Estimado MN'
        DataBinding.FieldName = 'dMontoMN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        Width = 100
      end
      object cxGrid_EstimacionesdMontoDLL1: TcxGridDBColumn
        Caption = '$ Estimado DLL'
        DataBinding.FieldName = 'dMontoDLL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        Width = 98
      end
      object cxGrid_EstimacionesdMontoAcumuladoMN1: TcxGridDBColumn
        Caption = '$ Acumulado MN'
        DataBinding.FieldName = 'dMontoAcumuladoMN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Width = 101
      end
      object cxGrid_EstimacionesdMontoAcumuladoDLL1: TcxGridDBColumn
        Caption = '$ Acumulado DLL'
        DataBinding.FieldName = 'dMontoAcumuladoDLL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Width = 99
      end
      object cxGrid_EstimacionesdRetencion1: TcxGridDBColumn
        Caption = '$ Retencion'
        DataBinding.FieldName = 'dRetencion'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        Width = 98
      end
    end
    object estlvl: TcxGridLevel
      GridView = cxGrid_Estimaciones
    end
  end
  object pnlPartidas: TNxHeaderPanel
    Left = 178
    Top = 147
    Width = 61
    Height = 30
    Caption = 'Conceptos Estimados'
    ColorScheme = csSilver2010
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    HeaderSize = 20
    ParentHeaderFont = False
    TabOrder = 0
    Visible = False
    FullWidth = 61
    object cxGridPartidas: TcxGrid
      Left = 9
      Top = 25
      Width = 42
      Height = 3
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      object cxGrid_Partidas: TcxGridDBTableView
        OnDblClick = cxGrid_PartidasDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_ActividadesxEstimacion
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object cxGrid_PartidassSimbolo1: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'sSimbolo'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid_PartidassWbsSpace1: TcxGridDBColumn
          Caption = 'WBS'
          DataBinding.FieldName = 'sWbsSpace'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object cxGrid_PartidassNumeroActividad1: TcxGridDBColumn
          Caption = 'Concepto'
          DataBinding.FieldName = 'sNumeroActividad'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object cxGrid_PartidasdCantidadAnexo1: TcxGridDBColumn
          Caption = 'Cant. x Cont.'
          DataBinding.FieldName = 'dCantidadAnexo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object cxGrid_PartidassMedida1: TcxGridDBColumn
          Caption = 'UM'
          DataBinding.FieldName = 'sMedida'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object cxGrid_PartidasdVentaMN1: TcxGridDBColumn
          Caption = 'P. U.'
          DataBinding.FieldName = 'dVentaMN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object cxGrid_PartidasdAcumuladoAnterior1: TcxGridDBColumn
          Caption = 'Acum. Ant.'
          DataBinding.FieldName = 'dAcumuladoAnterior'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object cxGrid_PartidasdMontoAcumuladoAnteriorMN1: TcxGridDBColumn
          Caption = '$ Anterior'
          DataBinding.FieldName = 'dMontoAcumuladoAnteriorMN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object cxGrid_PartidasdCantidad1: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'dCantidad'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = False
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object cxGrid_PartidasdAcumuladoActual1: TcxGridDBColumn
          Caption = 'Acumulado'
          DataBinding.FieldName = 'dAcumuladoActual'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object cxGrid_PartidasdMontoMN1: TcxGridDBColumn
          Caption = 'Importe MN'
          DataBinding.FieldName = 'dMontoMN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object cxGrid_PartidasdMontoAcumuladoMN1: TcxGridDBColumn
          Caption = 'Importe Acum. MN'
          DataBinding.FieldName = 'dMontoAcumuladoMN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          GroupSummaryAlignment = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
      end
      object lvl1: TcxGridLevel
        GridView = cxGrid_Partidas
      end
    end
  end
  object tsFirmas: TcxDBRichEdit
    Left = 0
    Top = 422
    Align = alBottom
    DataBinding.DataField = 'sFirmas'
    DataBinding.DataSource = dsEstimacionPeriodo
    ParentFont = False
    TabOrder = 2
    Height = 89
    Width = 1217
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 1217
    Height = 61
    Align = alTop
    ColorScheme = csSilver2010
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    HeaderSize = 60
    ParentHeaderFont = False
    TabOrder = 3
    FullWidth = 1217
    object sEstimacionVacia: TcxButton
      Left = 7
      Top = 2
      Width = 154
      Height = 56
      Caption = 'Generar Estimacion'#13#10'Vacia'
      TabOrder = 0
      OnClick = sEstimacionVaciaClick
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = iconos
      OptionsImage.Spacing = 0
    end
    object sEstimacionGeneradores: TcxButton
      Left = 160
      Top = 2
      Width = 154
      Height = 56
      Caption = 'Generar Estimacion'#13#10'Segun generadores'#13#10'de obra'
      TabOrder = 1
      OnClick = sEstimacionGeneradoresClick
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = iconos
      OptionsImage.Spacing = 0
    end
    object sActualizaAcum: TcxButton
      Left = 313
      Top = 2
      Width = 170
      Height = 56
      Caption = 'Actualiza acumulados'#13#10'anteriores de la'#13#10'estimacion'
      TabOrder = 2
      OnClick = sActualizaAcumClick
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = iconos
      OptionsImage.Spacing = 0
    end
    object sElimina: TcxButton
      Left = 482
      Top = 2
      Width = 147
      Height = 56
      Caption = 'Eliminar estimacion'#13#10'seleccionada'
      TabOrder = 3
      OnClick = sEliminaClick
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = iconos
      OptionsImage.Spacing = 0
    end
    object sEliminaCeros: TcxButton
      Left = 628
      Top = 2
      Width = 145
      Height = 56
      Caption = 'Elimina conceptos'#13#10'en cero'
      TabOrder = 4
      OnClick = sEliminaCerosClick
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = iconos
      OptionsImage.Spacing = 0
    end
    object mEditar: TcxButton
      Left = 772
      Top = 2
      Width = 118
      Height = 56
      Caption = 'Editar'#13#10'Estimacion'
      TabOrder = 5
      OnClick = mEditarClick
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = iconos
      OptionsImage.Spacing = 6
    end
    object mImprimir: TcxButton
      Left = 889
      Top = 2
      Width = 126
      Height = 56
      Caption = 'Imprimir'#13#10'estimacion'
      TabOrder = 6
      OnClick = mImprimirClick
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = iconos
      OptionsImage.Spacing = 6
    end
  end
  object mCabecera: TcxButton
    Left = 1015
    Top = 2
    Width = 137
    Height = 56
    Caption = 'Datos cabecera'#13#10'de la estimacion'
    TabOrder = 4
    OnClick = mCabeceraClick
    OptionsImage.ImageIndex = 6
    OptionsImage.Images = iconos
    OptionsImage.Spacing = 0
  end
  object piePagina1: TNxHeaderPanel
    Left = 120
    Top = 144
    Width = 52
    Height = 33
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = []
    HeaderSize = 20
    ParentHeaderFont = False
    TabOrder = 5
    Visible = False
    DesignSize = (
      50
      31)
    FullWidth = 52
    object Label26: TLabel
      Left = 31
      Top = 31
      Width = 63
      Height = 11
      Caption = 'Elemento PEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 64
      Top = 59
      Width = 30
      Height = 11
      Caption = 'Fondo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 3
      Top = 87
      Width = 91
      Height = 11
      Caption = 'Posicion Financiera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 18
      Top = 115
      Width = 76
      Height = 11
      Caption = 'Cuenta de Mayor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 30
      Top = 143
      Width = 64
      Height = 11
      Caption = 'Centro Gestor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 36
      Top = 171
      Width = 58
      Height = 11
      Caption = 'CentroCosto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 17
      Top = 199
      Width = 77
      Height = 11
      Caption = 'Centro Beneficio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 54
      Top = 227
      Width = 40
      Height = 11
      Caption = 'Proyecto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 36
      Top = 255
      Width = 58
      Height = 11
      Caption = 'Comentarios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tsElementoPEP1: TcxDBTextEdit
      Left = 103
      Top = 28
      DataBinding.DataField = 'sElementoPEP'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsElementoPEP1KeyPress
      Width = 540
    end
    object tsFondo1: TcxDBTextEdit
      Left = 103
      Top = 54
      DataBinding.DataField = 'sFondo'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsFondo1KeyPress
      Width = 540
    end
    object tsPosicionFinanciera1: TcxDBTextEdit
      Left = 103
      Top = 83
      DataBinding.DataField = 'sPosicionFinanciera'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsPosicionFinanciera1KeyPress
      Width = 540
    end
    object tsCuentaMayor1: TcxDBTextEdit
      Left = 103
      Top = 111
      DataBinding.DataField = 'sCuentaMayor'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsCuentaMayor1KeyPress
      Width = 540
    end
    object tsCentroGestor1: TcxDBTextEdit
      Left = 103
      Top = 140
      DataBinding.DataField = 'sCentroGestor'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsCentroGestor1KeyPress
      Width = 540
    end
    object tsCentroCosto1: TcxDBTextEdit
      Left = 103
      Top = 167
      DataBinding.DataField = 'sCentroCosto'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsCentroCosto1KeyPress
      Width = 540
    end
    object tsCentroBeneficio1: TcxDBTextEdit
      Left = 103
      Top = 195
      DataBinding.DataField = 'sCentroBeneficio'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsCentroBeneficio1KeyPress
      Width = 540
    end
    object tsProyecto1: TcxDBTextEdit
      Left = 103
      Top = 223
      DataBinding.DataField = 'sProyecto'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      OnKeyPress = tsProyecto1KeyPress
      Width = 540
    end
    object tmComentarios1: TcxDBMemo
      Left = 103
      Top = 252
      DataBinding.DataField = 'mComentarios'
      DataBinding.DataSource = dsEstimacionPeriodo
      ParentFont = False
      Properties.ScrollBars = ssVertical
      TabOrder = 8
      OnEnter = tsElementoPEP1Enter
      OnExit = tsElementoPEP1Exit
      Height = 62
      Width = 540
    end
    object NxHeaderPanel3: TNxHeaderPanel
      Left = -1
      Top = 323
      Width = 52
      Height = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 16773868
      DisplayStyle = dsPanelOnly
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 9
      FullWidth = 52
      object Label35: TLabel
        Left = 38
        Top = 14
        Width = 88
        Height = 11
        Caption = 'Monto del Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 106
        Top = 34
        Width = 73
        Height = 11
        Caption = '% Avance Fisico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 46
        Top = 53
        Width = 56
        Height = 11
        Caption = 'Programado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 82
        Top = 74
        Width = 20
        Height = 11
        Caption = 'Real'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 192
        Top = 54
        Width = 9
        Height = 15
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 192
        Top = 75
        Width = 9
        Height = 15
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 210
        Top = 34
        Width = 94
        Height = 11
        Caption = '% Avance Financiero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 274
        Top = 13
        Width = 60
        Height = 11
        Caption = 'F. I. Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 354
        Top = 58
        Width = 37
        Height = 11
        Caption = 'Mensual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 330
        Top = 54
        Width = 9
        Height = 15
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 330
        Top = 80
        Width = 9
        Height = 15
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label46: TLabel
        Left = 341
        Top = 82
        Width = 50
        Height = 11
        Caption = 'Acumulado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 337
        Top = 106
        Width = 54
        Height = 11
        Caption = '$ Retencion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 394
        Top = 38
        Width = 135
        Height = 11
        Caption = 'Programa de Erogaciones MN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 440
        Top = 14
        Width = 62
        Height = 11
        Caption = 'F. F. Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdMontoContrato1: TcxDBTextEdit
        Left = 132
        Top = 8
        DataBinding.DataField = 'dMontoContratoMN'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdMontoContrato1KeyPress
        Width = 136
      end
      object tdFechaInicio1: TcxDBDateEdit
        Left = 340
        Top = 10
        DataBinding.DataField = 'dFechaInicioContrato'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdFechaInicio1KeyPress
        Width = 95
      end
      object tdFechaFinal1: TcxDBDateEdit
        Left = 508
        Top = 12
        DataBinding.DataField = 'dFechaFinalContrato'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdFechaFinal1KeyPress
        Width = 95
      end
      object tdAvProgramadoFisico1: TcxDBTextEdit
        Left = 108
        Top = 50
        DataBinding.DataField = 'dAvanceFisicoProgramado'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdAvProgramadoFisico1KeyPress
        Width = 77
      end
      object tdAvFisicoReal1: TcxDBTextEdit
        Left = 108
        Top = 71
        DataBinding.DataField = 'dAvanceFisicoReal'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdAvFisicoReal1KeyPress
        Width = 77
      end
      object tdAvFinancieroReal1: TcxDBTextEdit
        Left = 207
        Top = 72
        DataBinding.DataField = 'dAvanceFinancieroReal'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdAvFinancieroReal1KeyPress
        Width = 77
      end
      object tdAvFinancieroProgramado1: TcxDBTextEdit
        Left = 207
        Top = 51
        DataBinding.DataField = 'dAvanceFinancieroProgramado'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdAvFinancieroProgramado1KeyPress
        Width = 77
      end
      object tdMontoMensualMN1: TcxDBTextEdit
        Left = 397
        Top = 55
        DataBinding.DataField = 'dMontoProgramadoMensualMN'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdMontoMensualMN1KeyPress
        Width = 132
      end
      object tdMontoAcumuladoMN1: TcxDBTextEdit
        Left = 397
        Top = 79
        DataBinding.DataField = 'dMontoProgramadoAcumuladoMN'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        OnKeyPress = tdMontoAcumuladoMN1KeyPress
        Width = 132
      end
      object tdRetencionMN1: TcxDBTextEdit
        Left = 397
        Top = 103
        DataBinding.DataField = 'dRetencionMN'
        DataBinding.DataSource = dsEstimacionPeriodo
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 9
        OnEnter = tsElementoPEP1Enter
        OnExit = tsElementoPEP1Exit
        Width = 132
      end
      object btnInformacion1: TcxButton
        Left = 11
        Top = 122
        Width = 123
        Height = 47
        Caption = 'Actualizar inf.'#13#10'del Contrato'
        ModalResult = 1
        TabOrder = 10
        OnClick = btnInformacionClick
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = iconos32x32
      end
    end
  end
  object dsEstimacionPeriodo: TDataSource
    DataSet = EstimacionPeriodo
    Left = 13
    Top = 189
  end
  object ActividadesxEstimacion: TZQuery
    Connection = connection.zConnection
    AfterScroll = ActividadesxEstimacionAfterScroll
    OnCalcFields = ActividadesxEstimacionCalcFields
    BeforeInsert = ActividadesxEstimacionBeforeInsert
    BeforeDelete = ActividadesxEstimacionBeforeDelete
    SQL.Strings = (
      'Select * from actividadesxestimacion Where sContrato = :contrato'
      'and iNumeroEstimacion = :Estimacion order by iItemOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Estimacion'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 42
    Top = 91
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Estimacion'
        ParamType = ptUnknown
      end>
    object ActividadesxEstimacionsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxEstimacioniNumeroEstimacion: TStringField
      FieldName = 'iNumeroEstimacion'
      Required = True
      Size = 10
    end
    object ActividadesxEstimacioniNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object ActividadesxEstimacionsSimbolo: TStringField
      FieldName = 'sSimbolo'
      Required = True
      Size = 1
    end
    object ActividadesxEstimacionsWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 30
    end
    object ActividadesxEstimacionsWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 30
    end
    object ActividadesxEstimacionsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxEstimacionsTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 9
    end
    object ActividadesxEstimacionsEspecificacion: TStringField
      FieldName = 'sEspecificacion'
      Required = True
      Size = 15
    end
    object ActividadesxEstimacionmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxEstimaciondCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondCostoDll: TFloatField
      FieldName = 'dCostoDll'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimacionsMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object ActividadesxEstimaciondCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxEstimacioniColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object ActividadesxEstimaciondAcumuladoAnterior: TFloatField
      FieldName = 'dAcumuladoAnterior'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxEstimaciondCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      OnChange = ActividadesxEstimaciondCantidadChange
      DisplayFormat = '###,###,##0.0###'
      EditFormat = '########0.0###'
    end
    object ActividadesxEstimaciondAcumuladoActual: TFloatField
      FieldName = 'dAcumuladoActual'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxEstimaciondMontoAcumuladoAnteriorMN: TFloatField
      FieldName = 'dMontoAcumuladoAnteriorMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoAcumuladoAnteriorDLL: TFloatField
      FieldName = 'dMontoAcumuladoAnteriorDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimacionsWbsSpace: TStringField
      FieldKind = fkCalculated
      FieldName = 'sWbsSpace'
      Size = 30
      Calculated = True
    end
    object ActividadesxEstimaciondMontoMN: TFloatField
      FieldName = 'dMontoMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoAcumuladoMN: TFloatField
      FieldName = 'dMontoAcumuladoMN'
      Required = True
      currency = True
    end
    object ActividadesxEstimaciondMontoAcumuladoDLL: TFloatField
      FieldName = 'dMontoAcumuladoDLL'
      Required = True
      currency = True
    end
    object ActividadesxEstimacioniItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 48
    end
  end
  object ds_ActividadesxEstimacion: TDataSource
    DataSet = ActividadesxEstimacion
    Left = 11
    Top = 93
  end
  object frGenerador: TfrxReport
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
    ReportOptions.LastChange = 39841.613719618100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function espaces (paramNivel :Integer) : String ;'
      'var'
      '   pos : integer ;'
      '   sCadena : String ;'
      'begin'
      '    sCadena := '#39#39' ;'
      '    for pos := 0 to (paramNivel * 2) do'
      '       sCadena := sCadena + '#39#160#39' ;'
      '    result := sCadena ;'
      'end ;'
      ''
      'var'
      '  Months: array[1..12] of string;'
      'Begin'
      '  Months[1] := '#39'ENERO'#39';'
      '  Months[2] := '#39'FEBRERO'#39';'
      '  Months[3] := '#39'MARZO'#39';'
      '  Months[4] := '#39'ABRIL'#39';'
      '  Months[5] := '#39'MAYO'#39';'
      '  Months[6] := '#39'JUNIO'#39';'
      '  Months[7] := '#39'JULIO'#39';'
      '  Months[8] := '#39'AGOSTO'#39';'
      '  Months[9] := '#39'SEPTIEMBRE'#39';'
      '  Months[10] := '#39'OCTTUBRE'#39';'
      '  Months[11] := '#39'NOVIEMBRE'#39';'
      '  Months[12] := '#39'DICIEMBRE'#39';'
      'End.')
    OnGetValue = frGeneradorGetValue
    Left = 44
    Top = 123
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmEstimaciones.dsActividadesxEstimacion
        DataSetName = 'dsActividadesxEstimacion'
      end
      item
        DataSet = frmEstimaciones.dsEstimacionCaratula
        DataSetName = 'dsEstimacionCaratula'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
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
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      object PageHeader1: TfrxPageHeader
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Width = 977.763779530000000000
          Height = 151.181200000000000000
          ShowHint = False
          Curve = 3
          Frame.Width = 1.500000000000000000
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 176.196970000000000000
          Top = 3.000000000000000000
          Width = 624.401980000000000000
          Height = 69.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[contrato."mCliente"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 802.393854570000000000
          Top = 3.000000000000000000
          Width = 166.519790000000000000
          Height = 75.370130000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 166.519790000000000000
          Height = 67.811070000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Memo53: TfrxMemoView
          Left = 85.039370080000000000
          Top = 117.165430000000000000
          Width = 619.842519690000000000
          Height = 13.456710000000000000
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
        object Memo7: TfrxMemoView
          Left = 3.779527560000000000
          Top = 75.929190000000000000
          Width = 79.370078740000000000
          Height = 30.236230240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'OBRA')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 85.039370080000000000
          Top = 75.929190000000000000
          Width = 619.842519690000000000
          Height = 41.574820240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779527560000000000
          Top = 132.283550000000000000
          Width = 79.370078740000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'PERIODO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 714.331170000000000000
          Top = 86.929190000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'ESTIMACION')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 831.496600000000000000
          Top = 86.929190000000000000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."iNumeroEstimacion"] ')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 85.039370080000000000
          Top = 132.283550000000000000
          Width = 619.842920000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'DEL [DayOf(<dsEstimacionCaratula."dFechaInicio">)] AL [DayOf(<ds' +
              'EstimacionCaratula."dFechaFinal">)]  DE [Months[MonthOf(<dsEstim' +
              'acionCaratula."dFechaFinal">) ]] DE [YearOf(<dsEstimacionCaratul' +
              'a."dFechaFinal">)]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779527559055120000
          Top = 117.165430000000000000
          Width = 79.370078740157500000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CONTRATISTA')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 714.331170000000000000
          Top = 102.047310000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'No. DE CONTRATO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 831.496600000000000000
          Top = 102.047310000000000000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[contrato."sContrato"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 714.331170000000000000
          Top = 117.165430000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VALOR DEL CONTRATO')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 831.496600000000000000
          Top = 117.165430000000000000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dMontoContratoMN"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 831.496600000000000000
          Top = 136.063080000000000000
          Width = 139.842610000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 702.992580000000000000
          Top = 132.283550000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA :')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 755.906000000000000000
          Top = 132.283550000000000000
          Width = 166.299320000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[DayOf(<dsEstimacionCaratula."dIdFecha">)]  DE [Months[MonthOf(<' +
              'dsEstimacionCaratula."dIdFecha">) ]] DE [YearOf(<dsEstimacionCar' +
              'atula."dIdFecha">)]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897637800000000000
        Top = 298.582870000000000000
        Width = 980.410082000000000000
        DataSet = frmEstimaciones.dsActividadesxEstimacion
        DataSetName = 'dsActividadesxEstimacion'
        KeepFooter = True
        OutlineText = 'dsActividadesxEstimacion."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 627.401477170000000000
          Width = 64.251966060000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidad'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."dCantidad"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Width = 54.803149610000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            
              '[espaces(<dsActividadesxEstimacion."iNivel">)] [IIF(<dsActividad' +
              'esxEstimacion."sTipoActividad"> = '#39'Actividad'#39' , <dsActividadesxE' +
              'stimacion."sNumeroActividad">, '#39#39')]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 113.385863390000000000
          Width = 336.377969840000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."mDescripcion"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 491.338470390000000000
          Width = 71.811033390000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dVentaMN'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."dVentaMN"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 563.149606300000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dCantidadAnexo'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -9
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."dCantidadAnexo"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 449.763647720000000000
          Width = 41.574803150000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sMedida'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."sMedida"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 820.157597480000000000
          Width = 79.370093390000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dMontoMN'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -9
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."dMontoMN"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 899.528140000000000000
          Width = 79.370093390000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dMontoAcumuladoMN'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -9
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsActividadesxEstimacion."dAcumuladoActual"> > <dsActividadesxE' +
            'stimacion."dCantidadAnexo">'
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."dMontoAcumuladoMN"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 755.905533780000000000
          Width = 64.251973390000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dAcumuladoActual'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -9
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."dAcumuladoActual"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.251966060000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'dAcumuladoAnterior'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."dAcumuladoAnterior"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 56.692950000000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          TagStr = '1'
          DataSet = frmEstimaciones.dsActividadesxEstimacion
          DataSetName = 'dsActividadesxEstimacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsActividadesxEstimacion."sTipoActividad"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsActividadesxEstimacion."sEspecificacion"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354342910000000000
        Top = 230.551330000000000000
        Width = 980.410082000000000000
        Condition = 'dsActividadesxEstimacion."iNumeroEstimacion"'
        KeepTogether = True
        ReprintOnNewPage = True
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 7.559059999999990000
          Width = 54.803149610000000000
          Height = 37.795282910000000000
          ShowHint = False
          Color = 11521980
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
        object Memo10: TfrxMemoView
          Left = 113.385863390000000000
          Top = 7.559059999999990000
          Width = 336.378170000000000000
          Height = 37.795282910000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONCEPTO DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 563.149606300000000000
          Top = 26.456697799999900000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTRATO ANEXO "C"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 449.763647720000000000
          Top = 7.559059999999990000
          Width = 41.574803150000000000
          Height = 37.795282910000000000
          ShowHint = False
          Color = 11521980
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
        object Memo12: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559059999999990000
          Width = 71.811026060000000000
          Height = 37.795282910000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRECIO UNITARIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 627.401980000000000000
          Top = 26.456697799999900000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTA ESTIMACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 820.158010000000000000
          Top = 26.456697799999900000
          Width = 79.370086060000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESTA ESTIMACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 755.906000000000000000
          Top = 26.456697799999900000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 11521980
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
        object Memo23: TfrxMemoView
          Left = 899.528140000000000000
          Top = 26.456697799999900000
          Width = 79.370086060000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 11521980
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
        object Memo27: TfrxMemoView
          Left = 563.149970000000000000
          Top = 7.559059999999990000
          Width = 257.007996060000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'VOLUMENES DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 820.158010000000000000
          Top = 7.559059999999990000
          Width = 158.740216060000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 11521980
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
        object Memo16: TfrxMemoView
          Left = 691.653990000000000000
          Top = 26.456709999999900000
          Width = 64.251968500000000000
          Height = 18.897632910000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 56.692950000000000000
          Top = 7.559059999999990000
          Width = 56.692913390000000000
          Height = 37.795282910000000000
          ShowHint = False
          Color = 11521980
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ESPECIF. GRAL. O PART.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 13.228346460000000000
        Top = 340.157700000000000000
        Width = 980.410082000000000000
        Stretched = True
        object Memo49: TfrxMemoView
          Left = 763.464662130000000000
          Width = 52.913332130000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 820.157568190000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dMontoMN"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 899.527559060000000000
          Width = 79.370078740000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dMontoAcumuladoMN"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 3.779530000000000000
          Width = 105.826761890000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'IMPORTE CON LETRA:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 109.606370000000000000
          Width = 634.960869130000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            '[IMPORTE]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 321.480520000000000000
        Top = 415.748300000000000000
        Width = 980.410082000000000000
        object Memo31: TfrxMemoView
          Left = 1.889763780000000000
          Top = 275.905690000000000000
          Width = 226.771653540000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ELABOR'#195#8220':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 5.669293780000000000
          Top = 309.921440470000000000
          Width = 226.771653540000000000
          Height = 22.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 5.669293780000000000
          Top = 296.693094020000000000
          Width = 226.771653540000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 752.126470000000000000
          Top = 275.905690000000000000
          Width = 230.551183540000000000
          Height = 13.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'AUTORIZ'#195#8220)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 752.126470000000000000
          Top = 309.921460000000000000
          Width = 226.771653540000000000
          Height = 22.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR_TIERRA]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 752.126470000000000000
          Top = 296.693094020000000000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR_TIERRA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 381.732530000000000000
          Top = 275.905690000000000000
          Width = 226.771653540000000000
          Height = 13.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REVIS'#195#8220)
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 389.291590000000000000
          Top = 309.921460000000000000
          Width = 241.889920000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 385.512060000000000000
          Top = 298.582870000000000000
          Width = 226.771653540000000000
          Height = 11.559060000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 406.630180000000000000
          Top = 309.921460000000000000
          Width = 185.196823540000000000
          Height = 15.338590000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000020000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ELEMENTO PEP')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118107800000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FONDO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'POSICION FINANCIERA')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795275590000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CUENTA MAYOR')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CENTRO GESTOR')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 3.779530000000000000
          Top = 60.472440940000100000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CENTRO DE COSTO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CENTRO BENEFICIO')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149606300000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PROYECTO')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 3.779530000000000000
          Top = 98.267779999999900000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VIGENCIA DEL CONTRATO')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA DE INICIO')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 3.779530000000000000
          Top = 124.724409450000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA DE TERMINACION')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 113.385826770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PLAZO')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 3.779530000000000000
          Top = 151.181200000000000000
          Width = 975.118661890000000000
          Height = 22.677172680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsEstimacionCaratula."mComentarios"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779530000000020000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sElementoPEP"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 117.165430000000000000
          Top = 15.118107800000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sFondo"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 117.165430000000000000
          Top = 26.456710000000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sPosicionFinanciera"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 117.165430000000000000
          Top = 37.795275590000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sCuentaMayor"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 117.165430000000000000
          Top = 49.133890000000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sCentroGestor"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 117.165430000000000000
          Top = 60.472440940000100000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sCentroCosto"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 117.165430000000000000
          Top = 71.811070000000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sCentroBeneficio"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 117.165430000000000000
          Top = 83.149606300000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEstimacionCaratula."sProyecto"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 117.165430000000000000
          Top = 113.385900000000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'DEL [DayOf(<dsEstimacionCaratula."dFechaInicioContrato">)] DE [M' +
              'onths[MonthOf(<dsEstimacionCaratula."dFechaInicioContrato">) ]] ' +
              'DE [YearOf(<dsEstimacionCaratula."dFechaInicioContrato">)]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 117.165430000000000000
          Top = 124.724409450000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'DEL [DayOf(<dsEstimacionCaratula."dFechaFinalContrato">)] DE [Mo' +
              'nths[MonthOf(<dsEstimacionCaratula."dFechaFinalContrato">) ]] DE' +
              ' [YearOf(<dsEstimacionCaratula."dFechaFinalContrato">)]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 117.165430000000000000
          Top = 136.063080000000000000
          Width = 264.566929130000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DIAS] Dias')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 782.362710000000000000
          Top = 1.889758900000000000
          Width = 196.535413540000000000
          Height = 11.338582680000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 782.362710000000000000
          Top = 13.228341570000000000
          Width = 98.267706770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'FISICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 880.630490000000000000
          Top = 13.228341570000000000
          Width = 98.267706770000000000
          Height = 11.338582680000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'FINANCIERO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 684.094930000000000000
          Top = 24.566921810000000000
          Width = 98.267682360000000000
          Height = 11.338582680000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 684.094930000000000000
          Top = 35.905504490000000000
          Width = 98.267682360000000000
          Height = 11.338582680000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 782.362710000000000000
          Top = 24.566921810000000000
          Width = 98.267716540000000000
          Height = 11.338582680000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dAvanceFisicoProgramado"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 782.362710000000000000
          Top = 35.905506930000000000
          Width = 98.267682360000000000
          Height = 11.338582680000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dAvanceFisicoReal"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 880.630490000000000000
          Top = 24.566921810000000000
          Width = 98.267716540000000000
          Height = 11.338582680000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dAvanceFinancieroProgramado"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 880.630490000000000000
          Top = 35.905506930000000000
          Width = 98.267682360000000000
          Height = 11.338582680000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dAvanceFinancieroReal"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 857.953310000000000000
          Top = 113.385900000000000000
          Width = 120.944960000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frmEstimaciones.dsEstimacionCaratula
          DataSetName = 'dsEstimacionCaratula'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Color = clWhite
          Highlight.Condition = '<dsEstimacionCaratula."dRetencionMN"> = 0'
          Memo.UTF8 = (
            '[dsEstimacionCaratula."dRetencionMN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 684.094930000000000000
          Top = 113.385900000000000000
          Width = 173.858380000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frmEstimaciones.dsEstimacionCaratula
          DataSetName = 'dsEstimacionCaratula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Color = clWhite
          Highlight.Condition = '<dsEstimacionCaratula."dRetencionMN"> = 0'
          Memo.UTF8 = (
            '[<setup."dRetencion"> * 100] % DE RETENCION')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dsEstimacionCaratula: TfrxDBDataset
    UserName = 'dsEstimacionCaratula'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'iNumeroEstimacion=iNumeroEstimacion'
      'sIdTipoEstimacion=sIdTipoEstimacion'
      'dIdFecha=dIdFecha'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'sMoneda=sMoneda'
      'lEstimado=lEstimado'
      'dMontoMNGeneradores=dMontoMNGeneradores'
      'dMontoDLLGeneradores=dMontoDLLGeneradores'
      'dMontoMN=dMontoMN'
      'dMontoDLL=dMontoDLL'
      'dMontoAcumuladoMN=dMontoAcumuladoMN'
      'dMontoAcumuladoDLL=dMontoAcumuladoDLL'
      'dRetencionMN=dRetencionMN'
      'dRetencionDLL=dRetencionDLL'
      'sElementoPEP=sElementoPEP'
      'sFondo=sFondo'
      'sPosicionFinanciera=sPosicionFinanciera'
      'sCuentaMayor=sCuentaMayor'
      'sCentroGestor=sCentroGestor'
      'sCentroCosto=sCentroCosto'
      'sCentroBeneficio=sCentroBeneficio'
      'sProyecto=sProyecto'
      'mComentarios=mComentarios'
      'dAvanceFisicoProgramado=dAvanceFisicoProgramado'
      'dAvanceFisicoReal=dAvanceFisicoReal'
      'dAvanceFinancieroProgramado=dAvanceFinancieroProgramado'
      'dAvanceFinancieroReal=dAvanceFinancieroReal'
      'dFechaInicioContrato=dFechaInicioContrato'
      'dFechaFinalContrato=dFechaFinalContrato'
      'dMontoContratoMN=dMontoContratoMN'
      'dMontoContratoDLL=dMontoContratoDLL'
      'dMontoProgramadoMensualMN=dMontoProgramadoMensualMN'
      'dMontoProgramadoMensualDLL=dMontoProgramadoMensualDLL'
      'dMontoProgramadoAcumuladoMN=dMontoProgramadoAcumuladoMN'
      'dMontoProgramadoAcumuladoDLL=dMontoProgramadoAcumuladoDLL'
      'sIdUsuarioAutoriza=sIdUsuarioAutoriza'
      'sDescripcion=sDescripcion'
      'sFirmas=sFirmas')
    DataSet = EstimacionPeriodo
    BCDToCurrency = False
    Left = 12
    Top = 158
  end
  object dsActividadesxEstimacion: TfrxDBDataset
    UserName = 'dsActividadesxEstimacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'iNumeroEstimacion=iNumeroEstimacion'
      'iNivel=iNivel'
      'sSimbolo=sSimbolo'
      'sWbs=sWbs'
      'sWbsAnterior=sWbsAnterior'
      'sNumeroActividad=sNumeroActividad'
      'sTipoActividad=sTipoActividad'
      'sEspecificacion=sEspecificacion'
      'mDescripcion=mDescripcion'
      'dCostoMN=dCostoMN'
      'dCostoDll=dCostoDll'
      'dVentaMN=dVentaMN'
      'dVentaDLL=dVentaDLL'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'iColor=iColor'
      'dAcumuladoAnterior=dAcumuladoAnterior'
      'dCantidad=dCantidad'
      'dAcumuladoActual=dAcumuladoActual'
      'dMontoAcumuladoAnteriorMN=dMontoAcumuladoAnteriorMN'
      'dMontoAcumuladoAnteriorDLL=dMontoAcumuladoAnteriorDLL'
      'sWbsSpace=sWbsSpace'
      'dMontoMN=dMontoMN'
      'dMontoDLL=dMontoDLL'
      'dMontoAcumuladoMN=dMontoAcumuladoMN'
      'dMontoAcumuladoDLL=dMontoAcumuladoDLL'
      'iItemOrden=iItemOrden')
    DataSet = ActividadesxEstimacion
    BCDToCurrency = False
    Left = 12
    Top = 124
  end
  object EstimacionPeriodo: TZQuery
    Connection = connection.zConnection
    AfterScroll = EstimacionPeriodoAfterScroll
    OnCalcFields = EstimacionPeriodoCalcFields
    BeforePost = EstimacionPeriodoBeforePost
    SQL.Strings = (
      
        'Select * From estimacionperiodo Where sContrato = :Contrato Orde' +
        'r By iNumeroEstimacion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 43
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object EstimacionPeriodosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
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
    object EstimacionPeriododIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object EstimacionPeriododFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object EstimacionPeriododFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object EstimacionPeriodosMoneda: TStringField
      FieldName = 'sMoneda'
      Required = True
      Size = 15
    end
    object EstimacionPeriodolEstimado: TStringField
      FieldName = 'lEstimado'
      Required = True
      Size = 2
    end
    object EstimacionPeriododMontoMNGeneradores: TFloatField
      FieldName = 'dMontoMNGeneradores'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoDLLGeneradores: TFloatField
      FieldName = 'dMontoDLLGeneradores'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoMN: TFloatField
      FieldName = 'dMontoMN'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoAcumuladoMN: TFloatField
      FieldName = 'dMontoAcumuladoMN'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoAcumuladoDLL: TFloatField
      FieldName = 'dMontoAcumuladoDLL'
      Required = True
      currency = True
    end
    object EstimacionPeriododRetencionMN: TFloatField
      FieldName = 'dRetencionMN'
      Required = True
      currency = True
    end
    object EstimacionPeriododRetencionDLL: TFloatField
      FieldName = 'dRetencionDLL'
      Required = True
      currency = True
    end
    object EstimacionPeriodosElementoPEP: TStringField
      FieldName = 'sElementoPEP'
      Required = True
      Size = 50
    end
    object EstimacionPeriodosFondo: TStringField
      FieldName = 'sFondo'
      Required = True
      Size = 50
    end
    object EstimacionPeriodosPosicionFinanciera: TStringField
      FieldName = 'sPosicionFinanciera'
      Required = True
      Size = 50
    end
    object EstimacionPeriodosCuentaMayor: TStringField
      FieldName = 'sCuentaMayor'
      Required = True
      Size = 50
    end
    object EstimacionPeriodosCentroGestor: TStringField
      FieldName = 'sCentroGestor'
      Required = True
      Size = 50
    end
    object EstimacionPeriodosCentroCosto: TStringField
      FieldName = 'sCentroCosto'
      Required = True
      Size = 50
    end
    object EstimacionPeriodosCentroBeneficio: TStringField
      FieldName = 'sCentroBeneficio'
      Required = True
      Size = 50
    end
    object EstimacionPeriodosProyecto: TStringField
      FieldName = 'sProyecto'
      Required = True
      Size = 50
    end
    object EstimacionPeriodomComentarios: TMemoField
      FieldName = 'mComentarios'
      Required = True
      BlobType = ftMemo
    end
    object EstimacionPeriododAvanceFisicoProgramado: TFloatField
      FieldName = 'dAvanceFisicoProgramado'
      Required = True
      DisplayFormat = '##0.0### %'
      EditFormat = '##0.0###'
    end
    object EstimacionPeriododAvanceFisicoReal: TFloatField
      FieldName = 'dAvanceFisicoReal'
      Required = True
      DisplayFormat = '##0.0### %'
      EditFormat = '##0.0###'
    end
    object EstimacionPeriododAvanceFinancieroProgramado: TFloatField
      FieldName = 'dAvanceFinancieroProgramado'
      Required = True
      DisplayFormat = '##0.0### %'
      EditFormat = '##0.0###'
    end
    object EstimacionPeriododAvanceFinancieroReal: TFloatField
      FieldName = 'dAvanceFinancieroReal'
      Required = True
      DisplayFormat = '##0.0### %'
      EditFormat = '##0.0###'
    end
    object EstimacionPeriododFechaInicioContrato: TDateField
      FieldName = 'dFechaInicioContrato'
      Required = True
    end
    object EstimacionPeriododFechaFinalContrato: TDateField
      FieldName = 'dFechaFinalContrato'
      Required = True
    end
    object EstimacionPeriododMontoContratoMN: TFloatField
      FieldName = 'dMontoContratoMN'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoContratoDLL: TFloatField
      FieldName = 'dMontoContratoDLL'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoProgramadoMensualMN: TFloatField
      FieldName = 'dMontoProgramadoMensualMN'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoProgramadoMensualDLL: TFloatField
      FieldName = 'dMontoProgramadoMensualDLL'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoProgramadoAcumuladoMN: TFloatField
      FieldName = 'dMontoProgramadoAcumuladoMN'
      Required = True
      currency = True
    end
    object EstimacionPeriododMontoProgramadoAcumuladoDLL: TFloatField
      FieldName = 'dMontoProgramadoAcumuladoDLL'
      Required = True
      currency = True
    end
    object EstimacionPeriodosIdUsuarioAutoriza: TStringField
      FieldName = 'sIdUsuarioAutoriza'
      Required = True
      Size = 10
    end
    object EstimacionPeriodosDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Size = 30
      Calculated = True
    end
    object EstimacionPeriodosFirmas: TMemoField
      FieldName = 'sFirmas'
      Required = True
      BlobType = ftMemo
    end
  end
  object iconos: TcxImageList
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 4128780
    ImageInfo = <
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00050000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000A0000000A0000000A0000000600000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000C00000013000000180000
          001A0000001E0000001E0000001E0000001E0000001E0000001E0000001E0000
          001E0000001E0000001E0000001E0000001E0000001E0000001E0000001E0000
          001E0000001E0000001E0000001E0000001E0000001E0000001E0000001E0000
          001E0000001E0000001E0000001E0000001E0000001A00000019000000140000
          000E000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000005000000120000001C000000260000002C0000
          0030000000330000003300000033000000330000003300000033000000330000
          0033000000330000003300000033000000330000003300000033000000330000
          0033000000330000003300000033000000330000003300000033000000330000
          0033000000330000003300000033000000330000002F0000002D000000280000
          001F000000140000000800000000000000000000000000000000000000000000
          00000000000000000002000000100000001D252525894D4D4DFD4C4C4CFF4C4C
          4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4D4D4DFD2D2D
          2D9B000000200000001300000005000000000000000000000000000000000000
          0000000000000000000600000015000000244D4D4DEEECECECFFF8F8F8FFF8F8
          F8FFF8F8F8FFF6F6F6FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF4F4F4FF4D4D
          4DF900000028000000190000000A000000000000000000000000000000000000
          0000000000000000000700000016000000254F4F4FF2F2F2F2FFEAEAEAFFE8E8
          E8FFE9E9E9FFE5E5E5FFEEEEEEFFEBEBEBFFEBEBEBFFECECECFFEDEDEDFFEEEE
          EEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FFF3F3
          F3FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF7F7F7FF4D4D
          4DFD00000029000000190000000A000000000000000000000000000000000000
          00000000000000000002000000100000001E515151F2F3F3F3FFEAEAEAFFE8E8
          E8FFE9E9E9FFE5E5E5FFEEEEEEFFEBEBEBFFEBEBEBFFECECECFFEDEDEDFFEEEE
          EEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3
          F3FFF4F4F4FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7
          F7FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF4F4F4FFF5F5F5FFF7F7F7FF4D4D
          4DFD000000220000001400000006000000000000000000000000000000000000
          000000000000000000000000000700000013525252F1F3F3F3FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFECECECFFEDEDEDFFEEEE
          EEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FFF3F3F3FFF4F4
          F4FFF4F4F4FFF5F5F5FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFD000000160000000A00000000000000000000000000000000000000000000
          000000000000000000000000000000000003555555F0F3F3F3FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFECECECFFEDEDEDFFEEEE
          EEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF4F4
          F4FFF5F5F5FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFD000000070000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000575757EFF3F3F3FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFEDEDEDFFEDEDEDFFEEEE
          EEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF4F4
          F4FFF5F5F5FFF6F6F6FFF6F6F6FFF7F7F7FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9
          F9FFF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000595959EFF3F3F3FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFEDEDEDFFC0C0C0FFC0C0
          C0FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFF8F8F8FFF9F9F9FFFAFAFAFFF9F9
          F9FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6F6FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005A5A5AEFF4F4F4FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFEDEDEDFFEDEDEDFFEEEE
          EEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF4F4
          F4FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9
          F9FFF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005C5C5CEFF5F5F5FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFEDEDEDFFC0C0C0FFC0C0
          C0FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFC5C5C5FFC4C4C4FFF7F7F7FFF6F6F6FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005F5F5FEFF5F5F5FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFECECECFFEDEDEDFFEEEE
          EEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FFF3F3F3FFF4F4
          F4FFF5F5F5FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8
          F8FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000616161EFF5F5F5FFEAEAEAFFE8E8
          E8FFE9E9E9FFE6E6E6FFEEEEEEFFEBEBEBFFECECECFFECECECFFC0C0C0FFC0C0
          C0FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000636363EFF4F4F4FFEAEAEAFFE8E8
          E8FFE9E9E9FFE5E5E5FFEEEEEEFFEBEBEBFFEBEBEBFFECECECFFEDEDEDFFEEEE
          EEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3
          F3FFF4F4F4FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000646464EFF5F5F5FFEAEAEAFFE8E8
          E8FFE9E9E9FFE5E5E5FFEEEEEEFFEBEBEBFFEBEBEBFFECECECFFC0C0C0FFC0C0
          C0FFC0C0C0FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4
          C4FFC3C3C3FFC3C3C3FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000666666EFF5F5F5FFEAEAEAFFDADA
          DAFFECECECFFE5E5E5FFEEEEEEFFEAEAEAFFEBEBEBFFECECECFFECECECFFEDED
          EDFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2
          F2FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F3FFF4F4F4FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000686868EFF6F6F6FFEAEAEAFFBFBF
          BFFFD8D8D8FFE5E5E5FFEEEEEEFFEAEAEAFFEBEBEBFFECECECFFECECECFFEDED
          EDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF2F2
          F2FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006B6B6BEFF6F6F6FFE9E9E9FFE7E7
          E7FFE8E8E8FFE5E5E5FFEDEDEDFFEAEAEAFFEBEBEBFFEBEBEBFFB8B8B7FFB9B8
          B8FFB9B8B8FFB9B8B8FFBAB9B9FFBAB9B9FFBAB9B9FFBAB9B9FFBAB9B9FFBAB9
          B9FFBBBABAFFBBBABAFFBBBABAFFBBBABAFFBBBABAFFBBBABAFFBBBABAFFBBBA
          BAFFBBBABAFFBBBABAFFBBBABAFFF3F3F3FFF2F2F2FFF3F3F3FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006C6C6CEFF6F6F6FFE9E9E9FFE7E7
          E7FFE8E8E8FFE4E4E4FFEDEDEDFFEAEAEAFFEAEAEAFFEBEBEBFFB8B8B8FF8E77
          6AFF8E7669FF8E7669FF8E7669FF8F776AFF8F776AFF8F776AFF8F776AFF8F77
          6AFF8F776AFF90786BFF90786BFF90786BFF90786BFF90786BFF90786BFF8F78
          6BFF8D766AFF90786BFFBABABAFFF2F2F2FFF2F2F2FFF2F2F2FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006E6E6EEFF6F6F6FFE9E9E9FFE7E7
          E7FFE7E7E7FFE4E4E4FFEDEDEDFFE9E9E9FFEAEAEAFFEBEBEBFFB7B7B7FF9780
          73FF978072FF978072FF978072FF978072FF988173FF988173FF988173FF9881
          73FF988173FF988173FF998274FF998274FF998274FF998274FF927D71FF8E7A
          6FFF84746AFF968073FFBABABAFFF1F1F1FFF1F1F1FFF1F1F1FFF7F7F7FF4D4D
          4DFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000707070EFF6F6F6FFE9E9E9FFE6E6
          E6FFE7E7E7FFE4E4E4FFEDEDEDFFE9E9E9FFEAEAEAFFEAEAEAFFB7B7B7FFA188
          7CFFA2897DFFA2897DFFA2897DFFA2897DFFA2897DFFA38A7EFFA38A7EFFA38A
          7EFFA38A7EFFA38A7EFFA38A7EFFA38A7EFF9E877BFF8F7D73FF917E75FF947F
          76FF8A7970FF9A8479FFB9B9B9FFF1F1F1FFF0F0F0FFF1F1F1FFF7F7F7FF4E4E
          4EFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000727272EFF7F7F7FFE8E8E8FFE6E6
          E6FFE7E7E7FFE3E3E3FFEDEDEDFFE9E9E9FFE9E9E9FFEAEAEAFFB7B7B7FFAB92
          86FFAC9387FFAC9387FFAC9387FFAC9387FFAC9387FFAC9387FFAD9488FFAD94
          88FFAD9488FFAD9488FFAA9287FF9B877EFF938178FF95837AFF9D887EFF9583
          7AFFA38D82FFAD9488FFB9B9B9FFF0F0F0FFF0F0F0FFF0F0F0FFF7F7F7FF4F4F
          4FFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000747474EFF7F7F7FFE8E8E8FFE6E6
          E6FFE6E6E6FFE3E3E3FFEDEDEDFFE8E8E8FFE9E9E9FFEAEAEAFFB7B7B7FFB59B
          90FFB59B90FFB69C91FFB69C91FFB69C91FFB69C91FFB69C91FFB69C91FFB79D
          92FFB79D92FFB49C91FF988D89FF978D89FF978D89FF938B88FF938B88FF9F91
          8BFFB59D92FFB79D92FFB9B9B9FFEFEFEFFFEFEFEFFFF0F0F0FFF7F7F7FF5151
          51FC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000767676EFF7F7F7FFE8E8E8FFE5E5
          E5FFE6E6E6FFE3E3E3FFECECECFFE8E8E8FFE9E9E9FFE9E9E9FFB7B7B7FFD6BF
          AEFFD6BFAEFFD6BFAEFFD7C0AFFFD7C0AFFFD7C0AFFFD7C0AFFFD8C1B0FFD8C1
          B0FFD8C1B0FFD8C1B0FFB4A79EFF8B8989FF8B8989FFB7A99FFF878686FFAAA0
          98FFD8C1B0FFD8C1B0FFB9B9B9FFEFEFEFFFEEEEEEFFEFEFEFFFF7F7F7FF5252
          52FC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000787878EFF7F7F7FFE8E8E8FFE5E5
          E5FFE6E6E6FFE2E2E2FFECECECFFE8E8E8FFE8E8E8FFE9E9E9FFB7B7B7FFD7B8
          9AFFD8B89AFFD8B89AFFD8B89AFFD9B99BFFD9B99BFFD9B99BFFD9B99BFFD9B9
          9BFFD9B99BFFD9B99BFFD7B89AFF928E88FF858585FFB9A693FF908C89FF8786
          86FFD2B59AFFD9B99BFFB8B8B8FFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FF5353
          53FC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A7A7AEFF6F6F6FFE8E8E8FFE5E5
          E5FFE5E5E5FFE2E2E2FFECECECFFE7E7E7FFE8E8E8FFE8E8E8FFB7B7B7FFD7B8
          9AFFD8B89AFFD6B99BFFCFBDA1FFCFBDA1FFD7BA9CFFD9B99BFFD9B99BFFD9B9
          9BFFD9B99BFFD9B99BFFD9B99BFFC8AE96FF868686FFAF9F90FF948E89FF8585
          85FFCEB298FFD9B99BFFB8B8B8FFEDEDEDFFEDEDEDFFEEEEEEFFF8F8F8FF5454
          54FC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007C7C7CEFF6F6F6FFE8E8E8FFE3E3
          E3FFECECECFFE1E1E1FFEBEBEBFFE7E7E7FFE7E7E7FFE8E8E8FFB6B6B6FFD7B8
          9AFFD6B99CFFBCD0BAFFBBE8DEFFBDE8DEFFBBD1BDFFD5BA9CFFD9B99BFFD9B9
          9BFFD9B99BFFD9B99BFFD9B99BFFD9B99BFFAD9E90FFA69A8EFF8E8A88FF9D94
          8CFFD9B99BFFD9B99BFFB8B8B8FFEDEDEDFFECECECFFEDEDEDFFF8F8F8FF5555
          55FC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007D7D7DEFF7F7F7FFE8E8E8FFC8C8
          C8FFE1E1E1FFE1E1E1FFEBEBEBFFE6E6E6FFE7E7E7FFE7E7E7FFB6B6B6FFD6B7
          99FFC9C3A9FFC7EEE7FFF3F8F7FFF3F7F7FFC7EFE9FFC6C5ABFFD8B89AFFD8B8
          9AFFD9B99BFFD9B99BFFD9B99BFFD9B99BFFD7B89AFFA89A8EFF918C88FFD2B4
          99FFD9B99BFFD9B99BFFB8B8B8FFECECECFFECECECFFECECECFFF8F8F8FF5656
          56FC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007F7F7FEFF6F6F6FFE8E8E8FFD3D3
          D3FFDEDEDEFFE1E1E1FFEAEAEAFFE6E6E6FFE6E6E6FFE7E7E7FFB6B6B6FFD6B7
          99FFC4C6AEFFD7F3F0FFF8F8F8FFF8F8F8FFD5F4F0FFC1CBB4FFD8B89AFFD8B8
          9AFFD8B89AFFD8B89AFFD8B89AFFD9B99BFFD9B99BFFCBB097FFD1B499FFD9B9
          9BFFD9B99BFFD9B99BFFB7B7B7FFEBEBEBFFEBEBEBFFECECECFFF8F8F8FF5656
          56FC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000808080EFF6F6F6FFE7E7E7FFE3E3
          E3FFE4E4E4FFE0E0E0FFEAEAEAFFE5E5E5FFE6E6E6FFE6E6E6FFB6B6B6FFD6B7
          99FFCDBDA2FFBAE4D8FFE5F6F5FFE3F6F4FFBBE7DCFFCBBFA5FFD8B89AFFD8B8
          9AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B8
          9AFFD8B89AFFD8B89AFFB7B7B7FFEBEBEBFFEAEAEAFFEBEBEBFFF8F8F8FF5757
          57FC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000828282EFF6F6F6FFE7E7E7FFE2E2
          E2FFE3E3E3FFE0E0E0FFEAEAEAFFE5E5E5FFE5E5E5FFE6E6E6FFB6B6B6FFD6B7
          99FFD6B79AFFC8C0A6FFB8D4C1FFB8D4C2FFC9C3A9FFD7B89AFFD8B89AFFD8B8
          9AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B89AFFD8B8
          9AFFD8B89AFFD8B89AFFB7B7B7FFEAEAEAFFEAEAEAFFEBEBEBFFF8F8F8FF5858
          58FC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000838383EFF6F6F6FFE6E6E6FFE2E2
          E2FFE3E3E3FFDFDFDFFFEAEAEAFFE4E4E4FFE5E5E5FFE5E5E5FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB7B7B7FFB7B7
          B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
          B7FFB7B7B7FFB7B7B7FFB7B7B7FFE9E9E9FFE9E9E9FFEAEAEAFFF8F8F8FF5959
          59FC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000858585EFF6F6F6FFE6E6E6FFE2E2
          E2FFE2E2E2FFDFDFDFFFE9E9E9FFE4E4E4FFE4E4E4FFE5E5E5FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6
          E6FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE9E9E9FFE9E9E9FFE9E9E9FFF7F7F7FF5959
          59FC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000878787EFF6F6F6FFE5E5E5FFE1E1
          E1FFE2E2E2FFDEDEDEFFE9E9E9FFE3E3E3FFE4E4E4FFE4E4E4FFE5E5E5FFE5E5
          E5FFE5E5E5FFE6E6E6FFE6E6E6FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFF7F7F7FF5A5A
          5AFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000888888EFF7F7F7FFE5E5E5FFE1E1
          E1FFE1E1E1FFDEDEDEFFE8E8E8FFE3E3E3FFE3E3E3FFE4E4E4FFBCBCBCFFBCBC
          BCFFBCBCBCFFBCBCBCFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBD
          BDFFBDBDBDFFBDBDBDFFBEBEBEFFBEBEBEFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7E7FFE7E7E7FFE8E8E8FFF7F7F7FF5A5A
          5AFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008A8A8AEFF7F7F7FFE5E5E5FFE0E0
          E0FFE1E1E1FFDDDDDDFFE8E8E8FFE2E2E2FFE2E2E2FFE3E3E3FFE3E3E3FFE4E4
          E4FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFF7F7F7FF5B5B
          5BFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008C8C8CEFF7F7F7FFE4E4E4FFE0E0
          E0FFE0E0E0FFDDDDDDFFE7E7E7FFE1E1E1FFE2E2E2FFE2E2E2FFBBBBBBFFBBBB
          BBFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBCBCBCFFBDBD
          BDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBD
          BDFFBDBDBDFFBDBDBDFFE6E6E6FFE6E6E6FFE6E6E6FFE7E7E7FFF7F7F7FF5B5B
          5BFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008C8C8CEFF7F7F7FFE4E4E4FFDFDF
          DFFFDFDFDFFFDCDCDCFFE6E6E6FFE1E1E1FFE1E1E1FFE2E2E2FFE2E2E2FFE3E3
          E3FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5E5FFE5E5E5FFE7E7E7FFF7F7F7FF5C5C
          5CFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008D8D8DEFF7F7F7FFE4E4E4FFDEDE
          DEFFDFDFDFFFDCDCDCFFE6E6E6FFE0E0E0FFE1E1E1FFE1E1E1FFE2E2E2FFE2E2
          E2FFE2E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE6E6E6FFF7F7F7FF5C5C
          5CFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008E8E8EEFF7F7F7FFE3E3E3FFDEDE
          DEFFDEDEDEFFDCDCDCFFE6E6E6FFE0E0E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1
          E1FFE2E2E2FFE2E2E2FFE2E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE6E6E6FFF7F7F7FF5C5C
          5CFC000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008F8F8FEFF7F7F7FFE5E5E5FFDFDF
          DFFFE0E0E0FFDEDEDEFFE7E7E7FFE1E1E1FFE2E2E2FFE2E2E2FFE2E2E2FFE3E3
          E3FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE5E5E5FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6
          E6FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFF7F7F7FF5C5C
          5CFC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000898989E3E8E8E8FFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
          F9FFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFEAEAEAFF5B5B
          5BF2000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002B2B2B48888888DD919191EB9393
          93EB969696EB979797EB979797EB959595EB939393EB919191EB909090EB8D8D
          8DEB8B8B8BEB898989EB878787EB858585EB838383EB818181EB7F7F7FEB7D7D
          7DEB7B7B7BEB787878EB777777EB757575EB727272EB717171EB6F6F6FEB6C6C
          6CEB6A6A6AEB686868EB666666EB646464EB626262EB606060EB5B5B5BE02020
          2056000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006E7170CA868B89FF868B89FF868B
          89FF868B89FF868B89FF868B89FF868B89FF868B89FF868B89FF868B89FF868B
          89FF868B89FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
          88FF858A88FF848A87FF848A86FF828783F84F52509808090810000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEF2F2F2FFF1F1F1FFF1F1
          F1FFF0F0F0FFF0F0F0FFF0F0F0FFF2F2F2FFF3F3F3FFF4F4F4FFF5F5F5FFF7F7
          F7FFF8F8F8FFF9F9F9FFFBFBFBFFFCFCFCFFFEFEFEFFFAFBFBFFF5F6F6FFEFF1
          F1FFEBECECFFE5E8E8FF888E8AFF999B99FF8A8E8BFF828884FB3739386B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEF4F4F4FFE9E9E9FFE8E9
          E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFF1F1
          F1FFF3F3F3FFF5F5F5FFF7F7F7FFF9F9F9FFFBFBFBFFFDFDFDFFFCFDFDFFF7F8
          F8FFF2F3F3FFECEEEEFF919693FFA9AAA9FFA4A4A4FF959695FF858A87FE6468
          65C1090909110000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEF5F5F5FFE9E9E9FFE9E9
          E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFEBEBEBFFEDED
          EDFFEFEFEFFFF1F1F1FFF3F3F3FFF6F6F6FFF8F8F8FFFAFAFAFFFCFCFCFFFEFE
          FEFFFAFBFBFFF5F6F6FF969B98FFAFB1B0FFB0B0B0FFA5A5A5FF999999FF888C
          89FF787E7AE80D0E0D1902020202000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEF7F7F7FFE9EAEAFFE9E9
          E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEAEA
          EAFFECECECFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6F6FFF8F8F8FFFBFB
          FBFFFDFDFDFFFEFEFEFF9A9F9CFFBDBEBDFFBABABAFFB2B2B2FFA7A7A7FF9C9C
          9CFF8A8D8BFF7B817DEE1A1B1B24000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEF8F8F8FFEAEAEAFFEAEA
          EAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFEAEAEAFFECECECFFEFEFEFFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7
          F7FFF9F9F9FFFBFBFBFF989C99FFC5C7C6FFBEBEBEFFB9B9B9FFB4B4B4FFA9A9
          A9FF9E9E9EFF8A8E8CFF767A77DD010101010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEFAFAFAFFEAEBEBFFEAEA
          EAFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE9E9E9FFEBEBEBFFEDEDEDFFEFEFEFFFF1F1F1FFF4F4
          F4FFF6F6F6FFF8F8F8FF949996FFC7C8C7FFD1D1D1FFCECECEFFC5C5C5FFB8B8
          B8FFA8A8A8FF9F9F9FFF888C89FE333534630000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEFBFBFBFFEBEBEBFFEAEB
          EBFFEAEBEBFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9
          E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFF0F0
          F0FFF2F2F2FFF4F4F4FF919693FF848A86FF848A86FF878D89FF8A908CFF8A90
          8CFF8A8F8CFF8B908CFF8A8F8CFF7E8481F10000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848987FEFCFCFCFFEBECECFFEBEB
          EBFFEBEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9
          E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEBEBEBFFEDED
          EDFFEFEFEFFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7F7FFF9F9F9FFFBFBFBFFFEFE
          FEFFFCFCFCFFE8EAE9FFA7ABA8FF848A86FF0000000000000000000000003335
          345E4245447F4245447F4245447F4245447F4245447F4245447F4245447F4245
          447F4245447F4245447F4245447F4245447F858A88FFFDFDFDFFEBECECFFEBEC
          ECFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFE9EA
          EAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9
          E9FFEBEBEBFFEDEDEDFFEFEFEFFFF2F2F2FFF4F4F4FFF6F6F6FFF8F8F8FFFAFA
          FAFFFCFCFCFFFEFEFEFFFBFBFBFF858A86FF0000000000000000000000004345
          447F7979797F7878787F7878787F7878787F7878787F7878787F7979797F7979
          797F7A7A7A7F7A7A7A7F7B7B7B7F7C7C7C7F858A88FFFEFEFEFFECEDEDFFECEC
          ECFFEBECECFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEBEBFFEAEAEAFFEAEA
          EAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFF0F0F0FFF2F2F2FFF5F5F5FFF7F7
          F7FFF9F9F9FFFBFBFBFFFEFEFEFF858A88FF0000000000000000000000004345
          447F7979797F7474747F7474747F7474747F7474747F7474747F7474747F7575
          757F7676767F7777777F7878787F7979797F858A88FFFFFFFFFFECEDEDFFECED
          EDFFECECECFFECECECFFEBECECFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEA
          EAFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8
          E8FFE8E8E8FFE8E8E8FFE9E9E9FFEBEBEBFFEDEDEDFFEFEFEFFFF1F1F1FFF3F3
          F3FFF5F5F5FFF7F7F7FFFCFCFCFF858A88FF0000000000000000000000004345
          447F7A7A7A7F7474747F7474747F7474747F7474747F7474747F7474747F7474
          747F7474747F7575757F7676767F7777777F858A88FFFFFFFFFFEDEDEDFFECED
          EDFFECEDEDFFECEDEDFFECECECFFEBECECFFEBECECFFEBEBEBFFEBEBEBFFEAEB
          EBFFEAEBEBFFEAEAEAFFEAEAEAFFE9EAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9
          E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFEBEBEBFFEEEEEEFFF0F0
          F0FFF2F2F2FFF4F4F4FFFBFBFBFF858A88FF0000000000000000000000004345
          447F7B7B7B7F7475757F7474747F7474747F7474747F7474747F7474747F7474
          747F7474747F7474747F7575757F7676767F858A88FFFFFFFFFFEDEEEEFFEDEE
          EEFFEDEDEDFFECEDEDFFEAEBEBFFEAEBEBFFEAEAEAFFE9EAEAFFE9EAEAFFE9E9
          E9FFE9E9E9FFE8E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE7E8E8FFE7E7E7FFE7E7
          E7FFE7E7E7FFE6E7E7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE8E8E8FFECEC
          ECFFEEEEEEFFF0F0F0FFFAFAFAFF858A88FF0000000000000000000000004345
          447F7C7C7C7F7575757F7575757F7475757F7474747F7474747F7474747F7474
          747F7474747F7474747F7474747F7474747F858A88FFFFFFFFFFEDEEEEFFEDEE
          EEFFEDEEEEFFEDEEEEFFC5C5C5FFC4C5C5FFC4C5C5FFC4C4C4FFC4C4C4FFC3C4
          C4FFC3C4C4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC2C3
          C3FFC2C2C2FFC2C2C2FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFE9E9
          E9FFEBEBEBFFEDEDEDFFFAFAFAFF858A88FF0000000000000000000000004345
          447F7C7C7C7F7575757F7575757F7575757F7575757F7475757F7474747F7474
          747F7474747F7474747F7474747F7474747F858A88FFFFFFFFFFEEEFEFFFEEEF
          EFFFEDEEEEFFEDEEEEFFC6C7C7FFC6C6C6FFC5C6C6FFC5C6C6FFC5C6C6FFC5C5
          C5FFC4C5C5FFC4C5C5FFC4C4C4FFC4C4C4FFC3C4C4FFC3C4C4FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFE8E8
          E8FFE8E8E8FFE9E9E9FFFAFAFAFF858A88FF0000000000000000000000004345
          447F7D7D7D7F7575757F7575757F7575757F7575757F7575757F7475757F7474
          747F7474747F7474747F7474747F7474747F858A88FFFFFFFFFFEEEFEFFFEEEF
          EFFFEEEFEFFFEEEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEDEDFFECEDEDFFECED
          EDFFECECECFFECECECFFEBECECFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEB
          EBFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8
          E8FFE8E8E8FFE8E8E8FFFAFAFAFF858A88FF0000000000000000000000004345
          447F7E7E7E7F7576767F7575757F7575757F7575757F7575757F7575757F7575
          757F7475757F7474747F7474747F7474747F858A88FFFFFFFFFFEFF0F0FFEEEF
          EFFFEEEFEFFFEEEFEFFFECEDEDFFEBECECFFEBECECFFEBECECFFEBEBEBFFEBEB
          EBFFEAEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFE9EAEAFFE9EAEAFFE9E9E9FFE9E9
          E9FFE8E9E9FFE8E8E8FFE8E8E8FFE9E9E9FFE9EAEAFFE9E9E9FFE9E9E9FFE9E9
          E9FFE8E8E8FFE8E8E8FFFBFBFBFF858A88FF0000000000000000000000004346
          457F7E7E7E7F7576767F7576767F7575757F7575757F7575757F7575757F7575
          757F7575757F7475757F7475757F7474747F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEEEFEFFFC6C7C7FFC6C7C7FFC6C7C7FFC5C6C6FFC5C6C6FFC5C6
          C6FFC5C5C5FFC4C5C5FFC4C5C5FFC4C5C5FFC4C4C4FFC3C4C4FFC3C4C4FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFEAEAEAFFE9EAEAFFE9E9E9FFE9E9
          E9FFE9E9E9FFE8E9E9FFFDFDFDFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7676767F7676767F7576767F7575757F6161617F6161617F6161
          617F6161617F6161617F6161617F6161617F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFC8C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C7C7FFC6C7
          C7FFC6C7C7FFC6C7C7FFC6C6C6FFC5C6C6FFC5C6C6FFC5C5C5FFC5C5C5FFC4C5
          C5FFC4C5C5FFC4C4C4FFC4C4C4FFC4C5C5FFEAEBEBFFEAEAEAFFEAEAEAFFE9EA
          EAFFE9E9E9FFE9E9E9FFFEFEFEFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7676767F7676767F7676767F7575757F6162627F6162627F6161
          617F6161617F6161617F6161617F6161617F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEFEFFFEEEF
          EFFFEDEEEEFFEDEEEEFFEDEEEEFFEDEDEDFFECEDEDFFECEDEDFFECEDEDFFECEC
          ECFFEBECECFFEBECECFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEAEAFFEAEA
          EAFFEAEAEAFFE9EAEAFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7676767F7676767F7676767F7676767F7575757F7575757F7575
          757F7575757F7575757F7475757F7475757F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFECEDEDFFECED
          EDFFECEDEDFFECECECFFEBECECFFEBECECFFEBECECFFEBEBEBFFEAEBEBFFEAEB
          EBFFEAEBEBFFEAEAEAFFE9EAEAFFE9EAEAFFE9E9E9FFEAEAEAFFEAEBEBFFEAEB
          EBFFEAEAEAFFEAEAEAFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7677777F7677777F7676767F7676767F7676767F7676767F7676
          767F7576767F7576767F7575757F7575757F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC6C7C7FFC6C7C7FFC6C7C7FFC6C6C6FFC5C6C6FFC5C6C6FFC5C6C6FFC5C5
          C5FFC4C5C5FFC4C5C5FFC4C4C4FFC4C4C4FFC3C4C4FFC3C4C4FFEBEBEBFFEBEB
          EBFFEAEBEBFFEAEAEAFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7677777F7677777F7677777F7676767F6363637F6263637F6263
          637F6262627F6262627F6262627F6262627F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC6C7C7FFC6C7C7FFC6C7
          C7FFC6C6C6FFC5C6C6FFC5C6C6FFC5C6C6FFC5C5C5FFC5C6C6FFEBECECFFEBEB
          EBFFEBEBEBFFEBEBEBFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7777777F7777777F7677777F7676767F6263637F6262627F6262
          627F6262627F6262627F6262627F6162627F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEFEFFFEEEEEEFFEDEE
          EEFFEDEEEEFFEDEEEEFFEDEDEDFFECEDEDFFECEDEDFFECEDEDFFECECECFFEBEC
          ECFFEBECECFFEBEBEBFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7777777F7777777F7777777F7777777F7676767F7676767F7676
          767F7676767F7576767F7576767F7575757F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
          EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFECEDEDFFECEDEDFFECEDEDFFECED
          EDFFECECECFFEBECECFFEBECECFFEBECECFFEBEBEBFFEAEBEBFFEAEBEBFFECEC
          ECFFECECECFFEBECECFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7777777F7777777F7777777F7777777F7677777F7677
          777F7677777F7676767F7676767F7676767F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC6C7C7FFC6C7
          C7FFC6C7C7FFC6C7C7FFC5C6C6FFC5C6C6FFC5C6C6FFC5C5C5FFC4C5C5FFECED
          EDFFECEDEDFFECECECFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7677777F6364647F6364647F6364
          647F6363637F6363637F6363637F6363637F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C7C7FFC6C7C7FFC6C7C7FFC6C7C7FFEDED
          EDFFECEDEDFFECEDEDFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7777777F6364647F6363637F6363
          637F6363637F6363637F6263637F6263637F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEDEEEEFFEDEEEEFFEDEE
          EEFFEDEEEEFFEDEDEDFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7777777F7777777F7677
          777F7677777F7677777F7677777F7676767F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEDEE
          EEFFEDEEEEFFEDEEEEFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7777777F7777777F7777777F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEF
          EFFFEEEEEEFFEDEEEEFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7777777F6464647F6464647F6464
          647F6464647F6464647F6464647F6364647F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEF
          EFFFEEEFEFFFEEEFEFFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7777777F6364647F6364647F6364
          647F6364647F6364647F6364647F6364647F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEEEFEFFFEEEFEFFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7777777F7777777F7777
          777F7777777F7777777F7777777F7777777F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F858A88FFFFFFFFFFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7777777F6464647F6464647F6464
          647F6464647F6464647F6464647F6464647F858A88FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF858A88FF0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7777777F6364647F6364647F6364
          647F6364647F6364647F6364647F6364647F828584E1858A88FF858A88FF858A
          88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
          88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
          88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
          88FF858A88FF858A88FF858A88FF686B6ABD0000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7777777F7777777F7777
          777F7777777F7777777F7777777F7777777F7777777F7777777F7777777F7777
          777F7777777F7777777F7777777F7777777F7677777F7677777F7677777F7677
          777F7676767F7676767F7677777F7677777F7676767F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7777777F7777
          777F7777777F7777777F7677777F7677777F7677777F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7777777F7777777F7777777F7777777F7677777F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7777777F7777777F7777777F7777777F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7777777F7777777F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004346
          457F7F7F7F7F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7778787F7778787F7778
          787F7778787F7778787F7778787F7778787F7778787F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004346
          457F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F4245447F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003436
          355F4245447F4245447F4245447F4245447F4245447F4245447F4245447F4245
          447F4245447F4245447F4245447F4245447F4245447F4245447F4245447F4245
          447F4245447F4245447F4245447F4245447F4245447F4245447F4245447F4245
          447F4245447F4245447F4245447F4245447F4245447F4245447F3435355E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000101100001011B00020223000202250002
          01220001011C000000120000000C0000000B0000000C0000000B000000070000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000102
          011403100D50052B218C074534BB055A44D9046148E504644BEC04644AEC045F
          46E604553FDB043D2EBF03251C9A020D0A6B0101014000000029000000230000
          001C000000120000000A00000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B09072C0932268F0764
          4BDE057A5BFF03795AFF027758FF027556FF037456FF037456FF037456FF0375
          57FF027657FF037859FF037A5AFF047759FF055842DF04271E9F020604500000
          00260000001F000000160000000A000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000070E0C20233F2F990C7A5CF5047F5FFF067A
          5CFF06795BFF06795BFF06795BFF06795BFF06795BFF06795BFF06795BFF0679
          5BFF06795BFF06795BFF06795BFF06795BFF067D5DFF078061FF086D53EB0629
          208D010202220000000700000008000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D31275F0B765CE8018263FF097F61FF0A7E61FF0A7F
          61FF0A7F61FF0A7F61FF0A7F61FF0A7F61FF0A7F61FF0A7F61FF0A7F61FF0A7F
          61FF0A7F61FF0A7F61FF0A7F61FF0A7F61FF0A7F61FF0A7E61FF098062FF0A87
          66FF0C624CCD030C0A3700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001030306124F40930C8666FF0C8566FF0E8566FF0E8566FF0E8566FF0E85
          66FF0E8566FF0E8566FF0D8566FF0D8465FF0D8365FF0C8364FF0C8263FF0A82
          63FF098262FF0B8364FF0E8566FF0E8566FF0E8566FF0E8566FF0E8566FF0E85
          66FF0D8868FF138869F20A282065000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000205
          040A15634EAF108D6DFF128C6DFF128C6DFF128C6DFF128C6DFF128C6DFF118C
          6CFF128B6CFF158D6EFF189071FF1C9575FF1F9B7BFF22A483FF29A787FF33A6
          89FF34A085FF289579FF118A6AFF098867FF108B6BFF128C6DFF128C6DFF128C
          6DFF128C6DFF118C6CFF149372FF104638770000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001020203125D
          4BA6159574FF179474FF179474FF179474FF179474FF169473FF139170FF1D96
          76FF1C9E7CFF10A37DFF0BA178FF0C9C74EF119772DB198F6FD11C9B7CD51DB0
          8DE227C9A4F94AD8B9FF6BD3BBFF51B198FF199473FF0E906EFF179474FF1794
          74FF179474FF179474FF169474FF169574FF0D43326E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002D5F50891399
          77FF1C9B7BFF1C9C7BFF1C9C7BFF1C9C7CFF199A79FF1C9A7AFF3FB195FF31BD
          9BFF119673DD14543F8C0C2D244502140F1E0508060A0501020506030407080C
          0B0F0B221C2C2C4D445F528F7FAC99ECDBF4A4E4D5FF4DB198FF159776FF1A9B
          7AFF1C9C7BFF1C9C7BFF1C9C7BFF1B9C7BFF13A376FD2023304C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F2E294C1FA581FF22A4
          82FF22A382FF22A382FF22A482FF1EA280FF2DA687FF6ED0B8FF5CC7AEE52358
          4B6F040A080F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E2A282D72938D9AB2F5E6FC69C9B3FF23A1
          80FF20A381FF22A482FF22A382FF22A382FF20A581FF27937DE60A0B0E1B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000D03031020997DDB27AC8AFF28AC
          8AFF28AC8AFF28AC8AFF26AA88FF31AE8FFF72D8C0FF679C92AE1418181F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002B3D394270C4B3D55CCD
          B4FF2BAA8AFF27AB89FF28AC8AFF28AC8AFF29AB8AFF25AF8BFF1F6952A40000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000385B507B24B18DFF2EB391FF2EB3
          91FF2EB391FF2DB390FF31B492FF48C9AAFF4E786E8801010101000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000D0F0E1433A4
          8CBB45C7A9FF2FB290FF2DB390FF2EB391FF2EB391FF2EB391FF2DB592FD1029
          233C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C0A112EAA8BE433BB98FF34BB98FF34BB
          98FF34BB98FF36BB99FF26C39FFF37594C880000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000040D
          0B0F179A7CC03DC2A2FF34BA97FF34BB98FF34BB98FF34BB98FF32BC99FF2A80
          6AAF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E483C6138C4A1FF3AC3A0FF3AC3A0FF3AC3
          A0FF3BC3A1FF35C19FFF0F765BB2010101010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C14131B22B08FE13EC4A3FF39C2A0FF3AC3A0FF3AC3A0FF39C2A0FF39BE
          9BF70D1C17260000000000000000000000000000000000000000000000000000
          0000000000000000000000000000349079B73ECBA6FF40CAA6FF40CAA6FF40CA
          A6FF44CDAAFF12AE88EC1208051F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000113A2D5133C49FFC42CBA8FF40CAA6FF40CAA6FF40CAA6FF3ECB
          A7FF225A4C740000000000000000000000000000000000000000000000000000
          000000000000000000000A15111943C4A2EE45D1ADFF46D1ADFF46D1ADFF47D2
          AEFF43CDA9FF034F398000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000509080B0E0A0A182D8D7ACB45D4AEFF46D1ADFF46D1ADFF46D1ADFF45D1
          ADFF3EB294DA2F756391338772A412372C4C0000000000000000000000000000
          00000000000000000000193B33484CD9B5FF4BD7B4FF4BD7B4FF4BD7B4FF4FDA
          B8FF30B691EF000F0A1C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003D8870AE4DC5ACE948CDAEF64AD7B3FF4BD7B4FF4BD7B4FF4BD7B4FF4BD7
          B4FF4BD8B4FF4CDAB6FF44CFABFF013B29610000000000000000000000000000
          000000000000000000003063597754E5C0FF56E2BFFF56E2BFFF55E2BFFF59E6
          C4FF177658AD0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000296D53A648DBB8FF53E0BCFF51DDBAFF51DDBAFF51DDBAFF51DDBAFF51DD
          BAFF51DDBAFF56E1BFFF21A07DE0000D08120000000000000000000000000000
          00000000000000000000363F347127C096FF32BE97FF38C39DFF3EC8A3FF4AD4
          B0FF1445336F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B15101E2DA68AE759E6C3FF56E4C0FF56E4C0FF56E4C0FF56E4C0FF56E4
          C0FF58E6C2FF4EDBB6FF03493676000000000000000000000000000000000000
          00000000000000000000040D091A004B388400533B92005D429E006B4BB90575
          53C50F261F370000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000183A335B43CDACFF5EEECAFF5AE9C5FF5AE9C5FF5AE9C5FF5AE9
          C5FF61EECBFF29AA85E6000B0814000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011120933000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001F715DAA5BE5C2FF61F1CDFF5FEECAFF5FEECAFF62F0
          CCFF59E7C2FF044C387E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000001B1118498A3B00ED150C05280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000007110B1B3BAC93E767F5D1FF64F3CFFF64F3CFFF6BF9
          D6FF31B690EB000D0A1900000000000000000000000000000000000000000000
          000000000000000000000000000000000000592D19B68D4501FF663508BA0101
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B3C2B5C5DDBBEFF6BFCD8FF6AF9D6FF63F2
          CEFF06543D890000000000000000000000000000000000000000000000000000
          00000000000000000000000000002214033B934C03FD904A07FF924A06FF3B23
          0B6C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000277A61A96DF3D3FF73FFE1FF39C0
          9BF000110B1E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000653A0EAD97510AFF96510BFF96510AFF8E4D
          0BEF150E06260000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002120D1C51C0A4E86CF9D7FF095F
          4593000000000000000000000000000000000000000000000000000000000000
          000000000000000000001D1308329A570FFA9C580FFF9C590FFF9C590FFF9D58
          0DFF704211B80101000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000164B3D634CC2A2F70013
          0D27000000000000000000000000000000000000000000000000000000000000
          00000000000000000000674115A4A46012FFA36014FFA36014FFA36014FFA360
          14FFA45F12FF412A0F6A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000182E27470000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001A12092BA76519F7AA671AFFAA671AFFAA671AFFAA671AFFAA67
          1AFFAA6719FF9F6119EF17110925000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003324134F774713B16B4115A0543D1C865036
          167A4232266F18100A2500000000000000000000000000000000000000000000
          00000000000068461A9BB26F1FFFB06F20FFB06F20FFB06F20FFB06F20FFB06F
          20FFB06F20FFB06E1DFF7B521DB6030201040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006440169BB3711FFFB06F1EFFB16D1CFFB16F
          1EFFB4701AFF4D31106A00000000000000000000000000000000000000000000
          000019130B29B07527F4B77928FFB77828FFB77828FFB77828FFB77828FFB778
          27FFB77828FFB97C2EFFBD7F32FF4A3318650000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010100048F5E21D1B97928FFB77828FFB77828FFB678
          28FFB97A29FF39260D4D00000000000000000000000000000000000000000000
          000060432082C38234FFC18135FFBF8131FFBE802EFFBE802EFFBE802EFFBE80
          2EFFBE802FFFC17E2FF8CD8226F6534033700000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B14093AC3832FFCBD802EFFBE802EFFBE802EFFBD81
          2FFFBA7D2EF72109032600000000000000000000000000000000000000000000
          0000301B06428B551BB77D4B17A7B87B30F0C48937FFC48836FFC48836FFC488
          36FFC98931FF6B5139A615150C22060506090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000805C2AA4C58835FFC48836FFC48836FFC48836FFC48B
          38FFA46828D20401000500000000000000000000000000000000000000000000
          000000000000000000000000000081521EA8CC9340FFCB913EFFCB913EFFCB91
          3EFFCC903CFFB38A40E90E140E1C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000029201137C78F3DF9CB913DFFCB913EFFCB913EFFCB913EFFCA96
          41FF753B15910000000000000000000000000000000000000000000000000000
          00000000000000000000000000003F260B54D09644FFD19A46FFD19945FFD199
          45FFD19946FFD39843FF956730B2000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000007050309A2793CC8D29944FFD19945FFD19945FFD19945FFD29A47FFD094
          43FF2B18053D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000905010CB07731DDD8A451FFD6A04DFFD6A0
          4DFFD6A04DFFD6A04DFFD9A24DFF6A522D840000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008062339BD8A14CFFD6A04DFFD6A04DFFD6A04DFFD6A04DFFD8A451FF9E69
          29C9030200040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000054320F6FD8A14FFFDEAA55FFDDA8
          54FFDDA854FFDDA854FFDDA854FFDEA953FF6452307B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020201037D60
          3491DEA954FFDDA854FFDDA854FFDDA854FFDCA854FFDEAA56FFD79D4CFF4127
          0C57000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000905020CAA6F2CD6E3B15EFFE2B0
          5CFFE2AF5BFFE2AF5BFFE2AF5BFFE2AF5BFFE4B05BFF886C3D9C100D09130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000018130E1D937742AEE5B0
          5BFFE2AF5BFFE2AF5BFFE2AF5BFFE2AF5BFFE3B15CFFE2AE5DFF976125C20302
          0104000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000035200C46D49946FDE9BA
          67FFE7B662FFE7B662FFE7B662FFE7B662FFE7B662FFE8B761FFC49C56D95143
          285D060503070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000080B090E5E4A2E6ACEA35CE4E9B761FFE7B6
          62FFE7B662FFE7B662FFE7B662FFE7B762FFE9BA67FFC98B3EF6241607320000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000066421685DEAA
          57FFEEC16EFFEBBD69FFEBBD69FFEBBD69FFEBBD69FFEBBD69FFECBD68FFEDBD
          69FFBE9B5AD16B59387A30281A36100D08120000000000000000000000000101
          0101130F0A15352C1C3C755F3C83C2A25FD9EDBE68FFECBD68FFEBBD69FFEBBD
          69FFEBBD69FFEBBD69FFECBD69FFEEC16EFFD79A4CFF50320E6C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002020103885E
          25A7E5B563FFF2C676FFEFC26EFFEFC26FFFEFC26FFFEFC26FFFEFC26FFFEFC2
          6FFFF0C26EFFF2C36EFFF0C26FFED4AD65E3B9995EC9AB8E5DBDA8895CBEBD9C
          5DCBD8B066E7F1C36FFFF1C36EFFF2C26DFFEFC26FFFEFC26FFFEFC26FFFEFC2
          6FFFEFC26FFFF0C36FFFF2C674FFDCA352FF6B3F139000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000705
          0208926929B0E9BB66FFF6CC80FFF4C773FFF4C774FFF4C774FFF4C774FFF4C7
          74FFF4C774FFF4C774FFF4C774FFF4C774FFF5C873FFF6C872FFF7CA72FFF5C7
          73FFF4C774FFF4C774FFF4C774FFF4C774FFF4C774FFF4C774FFF4C774FFF4C7
          74FFF5C873FFF4C979FFDEA753FF774F1D9D0201000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000070503088366349DE9BE62FFF8D48AFFF8CE7CFFF7CB76FFF7CD79FFF7CD
          7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD
          7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CD7AFFF7CC77FFF8CE
          7BFFF5D188FFE3B665FF6E4E1E89010100010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005945206BD6B362F1F7DC9AFFFAD995FFFAD07DFFF9CF
          79FFF9D07CFFF9D17EFFF9D17EFFF9D17EFFF9D17EFFF9D17EFFF9D17EFFF9D1
          7EFFF9D17EFFF9D17EFFF9D17EFFFAD27FFFFAD27FFFFBD482FFFAD791FFF7DD
          A4FFD9BB81E952422E5B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000221D192EA79355AEF8E6AFFFFCEBBFFFFCE1
          A7FFFCD88EFFFDD685FFFDD682FFFDD582FFFDD582FFFDD682FFFDD683FFFDD7
          84FFFED885FFFFDA87FFFFDA88FFFDD787FFF6CF82FFF0CC85FFEACF92FA998A
          69A2211D17230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003D382B40A69E84AAEBE1
          BFEFF9E8B3FFF8E0A1FFFADB94FFFAD991FFFBD98FFFFBD88DFFFBD689FFF9D3
          85FFF4CB7CFFECBE6EFFE2AD5AFFD79C44FFBE8C3DE3836A3F982D271D320000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1B
          192161564865968257A3B69754CCCAA045E7D2A244F1D29F44F6CE963DF5C489
          34EFB17629E1935C1FC06F4416923E2810510F0B061200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020202211D17253F352C4A5F4A1F6E6C501D8071521C896E4D1A886141
          167B4E3311642D1C0C3D130C0519000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0004000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000040000000400000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000005000000110000
          001A000000190000000D00000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000030000000D000000190000001A00000011000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000502020B2507072C620606
          2C6D0000003A0000002800000011000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000001107072A5E08082A6B02020B480000002E000000160000
          0005000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000502020B2517178ED82D2DBDFF2A2A
          BAFF10106CBB000000410000002A000000110000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030000001113136AAF3F3FCDFF4848D7FF1D1D8EDD02020A51000000310000
          0016000000050000000000000000000000000000000000000000000000000000
          000000000000000000000000000502020B2517178ED83333C1FF3636C5FF3939
          C7FF2E2EBEFF10106CBB000000410000002A0000001100000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          001113136AAF4646D5FF6060F1FF5F5FF4FF5757E7FF1D1D8DDD02020A510000
          0031000000160000000500000000000000000000000000000000000000000000
          0000000000000000000502020B2517178ED83232C1FF3535C4FF1010BBFF1A1A
          BEFF3A3AC8FF2F2FBFFF11116CBB000000410000002A00000011000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003000000111313
          6AAF4545D4FF5E5EF0FF4747F0FF4242F2FF6262F7FF5959EAFF1E1E8DDD0202
          0A51000000310000001600000005000000000000000000000000000000000000
          00000000000502020B2516168ED83232C0FF3535C4FF1010BAFF0707B8FF0808
          B9FF1B1BBFFF3B3BC9FF3030BFFF11116CBB000000410000002A000000110000
          0003000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000030000001113136AAF4444
          D2FF5C5CEDFF4545EDFF3838EFFF3B3BF2FF4545F5FF6464F9FF5B5BECFF1E1E
          8EDD02020A510000003100000016000000050000000000000000000000000000
          000502020B2516168ED83131C0FF3434C3FF0F0FB9FF0606B7FF0707B8FF0808
          B9FF0909BAFF1C1CC0FF3C3CC9FF3030BFFF11116CBB000000410000002A0000
          0011000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000001112126AAF4242D1FF5959
          EBFF4242EAFF3535EBFF3838EEFF3A3AF1FF3D3DF4FF4747F7FF6565FAFF5A5A
          EBFF1E1E8DDD02020A5100000031000000160000000500000000000000020202
          0B2016168FD83030BFFF3333C3FF0E0EB8FF0606B6FF0606B7FF0707B8FF0808
          B9FF0909BAFF0A0ABBFF1D1DC1FF3D3DCBFF3030C0FF11116BBB000000410000
          002A000000110000000300000000000000000000000000000000000000000000
          00000000000000000000000000030000001112126AAF4040D0FF5757E8FF3F3F
          E7FF3232E8FF3434EAFF3737EDFF3939F0FF3B3BF2FF3E3EF4FF4646F6FF6363
          F8FF5858E9FF1D1D8DDD02020A510000002E000000110000000202020B151A1A
          91D43D3DC1FF3232C2FF0D0DB7FF0505B5FF0606B6FF0606B7FF0707B8FF0808
          B9FF0909BAFF0A0ABBFF0B0BBCFF1E1EC2FF3D3DCCFF3131C1FF11116BBB0000
          00410000002A0000001100000003000000000000000000000000000000000000
          000000000000000000030000001112126AAF3F3FCEFF5555E5FF3C3CE4FF2F2F
          E4FF3131E7FF3333E9FF3535ECFF3838EEFF3A3AF0FF3B3BF2FF3C3CF3FF4444
          F4FF6161F5FF5555E6FF1D1D8EDD02020B480000001A00000004080837535C5C
          CDFF6969D2FF1212B8FF0404B4FF0505B5FF0505B6FF0606B7FF0707B8FF0808
          B9FF0909BAFF0A0ABBFF0B0BBCFF0C0CBDFF1F1FC3FF3E3ECDFF3232C1FF1111
          6BBB000000410000002A00000011000000030000000000000000000000000000
          0000000000030000001112126AAF3D3DCCFF5252E3FF3A3AE1FF2C2CE1FF2E2E
          E3FF3030E5FF3232E8FF3434EAFF3636ECFF3838EEFF3939EFFF3A3AF0FF3A3A
          F1FF4141F1FF5E5EF2FF4747D6FF08082A6B000000190000000406062C415454
          CAFF8787E0FF5656CDFF0909B6FF0505B5FF0505B6FF0606B7FF0707B8FF0808
          B9FF0909BAFF0A0ABBFF0A0ABCFF0C0CBDFF0D0DBEFF2020C4FF3F3FCDFF3232
          C1FF11116BBB000000410000002A000000110000000300000000000000000000
          00030000001112126BAF3C3CCBFF5050E0FF3636DDFF2828DDFF2B2BDFFF2D2D
          E2FF2F2FE4FF3030E6FF3232E8FF3434EAFF3535EBFF3636ECFF3737EDFF3737
          EDFF4646EFFF5E5EF0FF3E3ECCFF07072A5E0000000D00000001000000001010
          6DA06464D1FF8787E1FF5656CDFF0A0AB6FF0505B6FF0606B6FF0707B7FF0707
          B8FF0808B9FF0909BAFF0A0ABBFF0B0BBDFF0C0CBEFF0E0EBFFF2121C5FF4040
          CEFF3333C2FF12126BBB000000410000002A0000001100000003000000030000
          001112126BAF3B3BCAFF4E4EDDFF3434DAFF2525DAFF2727DCFF2929DEFF2B2B
          E0FF2D2DE2FF2F2FE4FF3030E5FF3232E7FF3333E8FF3434EAFF3434EAFF4444
          ECFF5D5DEEFF4545D4FF13136AAF000000110000000300000000000000000000
          000010106DA06464D1FF8787E1FF5656CEFF0A0AB7FF0606B6FF0606B7FF0707
          B8FF0808B9FF0909BAFF0A0ABBFF0B0BBCFF0C0CBEFF0D0DBFFF0E0EC0FF2222
          C6FF4141CFFF3333C3FF12126BBB000000410000002A00000014000000141111
          6BAF3939C8FF4C4CDBFF3131D8FF2323D6FF2424D8FF2626DAFF2828DCFF2929
          DEFF2B2BE0FF2D2DE2FF2E2EE3FF3030E5FF3131E6FF3131E7FF4141E9FF5B5B
          EDFF4444D3FF13136AAF00000011000000030000000000000000000000000000
          00000000000010106DA06464D1FF8787E1FF5757CEFF0B0BB7FF0606B7FF0707
          B8FF0808B9FF0909BAFF0A0ABBFF0B0BBCFF0C0CBDFF0D0DBEFF0E0EC0FF0F0F
          C1FF2323C7FF4141D0FF3434C3FF12126BBB000000410000003211116BB23838
          C7FF4A4AD9FF2F2FD5FF2020D3FF2121D5FF2323D7FF2525D9FF2626DBFF2828
          DCFF2929DEFF2B2BE0FF2C2CE1FF2D2DE2FF2E2EE3FF3F3FE6FF5959EAFF4343
          D1FF13136AAF0000001100000003000000000000000000000000000000000000
          0000000000000000000010106DA06464D1FF8787E1FF5757CEFF0B0BB8FF0707
          B8FF0808B9FF0909BAFF0909BAFF0A0ABCFF0C0CBDFF0C0CBEFF0E0EBFFF0F0F
          C1FF1010C2FF2323C8FF4242D1FF3434C3FF12126BBB12126ABA3636C5FF4848
          D7FF2D2DD2FF1D1DD0FF1F1FD2FF2020D4FF2222D5FF2323D7FF2525D9FF2626
          DAFF2727DCFF2929DDFF2A2ADFFF2B2BE0FF3C3CE3FF5757E8FF4242D1FF1313
          6AAF000000110000000300000000000000000000000000000000000000000000
          000000000000000000000000000010106DA06464D1FF8888E1FF5757CEFF0C0C
          B9FF0707B8FF0808B9FF0909BAFF0A0ABBFF0B0BBCFF0C0CBEFF0D0DBFFF0E0E
          C0FF1010C1FF1111C3FF2424C9FF4343D1FF3535C4FF3636C5FF4545D5FF2A2A
          D0FF1B1BCDFF1C1CCFFF1D1DD1FF1F1FD2FF2020D4FF2222D5FF2323D7FF2525
          D9FF2626DAFF2727DBFF2828DCFF3939E0FF5555E5FF4040CFFF12126AAF0000
          0011000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000010106DA06565D1FF8888E1FF5757
          CFFF0C0CB9FF0808B9FF0909BAFF0A0ABBFF0B0BBCFF0C0CBDFF0D0DBEFF0E0E
          C0FF0F0FC1FF1010C2FF1111C3FF2424C9FF4343D1FF4444D3FF2828CDFF1818
          CBFF1919CCFF1B1BCEFF1C1CCFFF1E1ED1FF1F1FD2FF2020D4FF2222D5FF2323
          D7FF2424D8FF2525D9FF3636DDFF5252E2FF3E3ECEFF12126AAF000000110000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000010106DA06565D1FF8888
          E1FF5858CFFF0C0CBAFF0808B9FF0909BAFF0A0ABBFF0B0BBDFF0C0CBEFF0D0D
          BFFF0E0EC0FF1010C1FF1111C3FF1212C4FF2525C9FF2626CBFF1616C8FF1717
          CAFF1818CBFF1A1ACCFF1B1BCEFF1C1CCFFF1E1ED1FF1F1FD2FF2020D4FF2121
          D5FF2222D6FF3434DAFF5050E0FF3D3DCCFF12126AAF00000011000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000010106DA06565
          D1FF8888E1FF5858CFFF0D0DBAFF0909BAFF0A0ABBFF0B0BBCFF0C0CBDFF0D0D
          BEFF0E0EC0FF0F0FC1FF1010C2FF1111C3FF1212C4FF1414C6FF1515C7FF1616
          C9FF1717CAFF1818CBFF1A1ACCFF1B1BCEFF1C1CCFFF1D1DD1FF1E1ED2FF1F1F
          D3FF3131D7FF4D4DDDFF3C3CCAFF12126AAF0000001100000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001010
          6DA06565D1FF8888E2FF5858CFFF0D0DBBFF0909BAFF0A0ABBFF0B0BBDFF0C0C
          BEFF0D0DBFFF0E0EC0FF0F0FC1FF1010C2FF1111C3FF1313C5FF1414C6FF1515
          C7FF1616C9FF1717CAFF1818CBFF1A1ACCFF1B1BCEFF1C1CCFFF1D1DD0FF2F2F
          D4FF4C4CDBFF3B3BCAFF12126BAF000000110000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000010106DA06565D1FF8888E2FF5858D0FF0E0EBBFF0A0ABBFF0B0BBCFF0C0C
          BDFF0C0CBEFF0D0DBFFF0E0EC0FF1010C1FF1111C3FF1212C4FF1313C5FF1414
          C6FF1515C7FF1616C9FF1717CAFF1818CBFF1919CCFF1A1ACDFF2C2CD2FF4949
          D9FF3939C8FF12126BAF00000011000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010106DA06565D2FF8888E2FF5858D0FF0E0EBBFF0A0ABBFF0B0B
          BCFF0C0CBDFF0D0DBEFF0E0EBFFF0F0FC0FF1010C2FF1111C3FF1212C4FF1313
          C5FF1414C6FF1515C7FF1616C8FF1717C9FF1818CAFF2A2ACFFF4848D6FF3838
          C7FF11116BAF0000001100000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000010106DA06565D2FF8888E2FF5858D0FF0E0EBCFF0A0A
          BCFF0B0BBCFF0C0CBDFF0D0DBEFF0E0EC0FF0F0FC0FF1010C2FF1111C3FF1212
          C4FF1313C5FF1414C6FF1515C7FF1515C8FF2828CDFF4545D5FF3636C5FF1111
          6BB2000000140000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000310106DA76565D2FF7979DDFF2121C1FF0A0A
          BBFF0A0ABCFF0B0BBDFF0C0CBEFF0D0DBFFF0E0EC0FF0F0FC1FF1010C2FF1111
          C3FF1111C3FF1212C4FF1313C5FF2626CBFF4444D2FF3535C5FF12126ABA0000
          0032000000140000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000030000001110106CAF2D2DBDFF3939C7FF1B1BBFFF0909
          BAFF0A0ABBFF0B0BBCFF0C0CBDFF0C0CBEFF0D0DBFFF0E0EC0FF0F0FC0FF1010
          C2FF1111C3FF1111C3FF1212C4FF2525C9FF4343D1FF3535C3FF12126BBB0000
          00410000002A0000001100000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000001110106CAF2D2DBCFF3838C5FF1A1ABDFF0808B9FF0808
          B9FF0909BAFF0A0ABBFF0B0BBCFF0C0CBDFF0C0CBEFF0D0DBEFF0E0EC0FF0F0F
          C0FF1010C1FF1010C2FF1111C3FF1212C4FF2424C9FF4242D1FF3434C3FF1212
          6BBB000000410000002A00000011000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030000001110106CAF4141C3FF4949CBFF1C1CBDFF0707B7FF0707B8FF0808
          B9FF0909BAFF0909BAFF0A0ABBFF0B0BBCFF0B0BBDFF0C0CBEFF0D0DBEFF0E0E
          BFFF0E0EC0FF0F0FC1FF1010C2FF1111C3FF1111C3FF2323C8FF4141D0FF3434
          C3FF12126BBB000000410000002A000000110000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          001110106CAF4343C3FF5C5CD0FF4242C9FF3030C3FF2222C0FF0C0CB9FF0707
          B8FF0808B9FF0909BAFF0909BAFF0A0ABBFF0B0BBCFF0B0BBDFF0C0CBDFF0D0D
          BEFF0D0DBFFF0E0EC0FF0F0FC0FF0F0FC1FF1010C2FF1111C3FF2323C7FF4141
          CFFF3333C2FF12126BBB000000410000002A0000001100000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003000000111010
          6DAF4343C3FF5C5CD0FF4444C9FF3434C4FF3333C4FF3232C4FF3232C5FF2929
          C2FF1717BDFF0A0ABAFF0909BAFF0909BAFF0A0ABBFF0A0ABCFF0B0BBCFF0C0C
          BDFF0C0CBEFF0D0DBEFF0E0EBFFF0E0EC0FF0F0FC0FF0F0FC1FF1010C2FF2222
          C7FF4141CFFF3333C2FF11116BBB000000410000002A00000011000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000030000001110106DAF4545
          C4FF5E5ED0FF4444C8FF3535C4FF3535C4FF3434C4FF3333C4FF3232C4FF3232
          C5FF3131C5FF3030C5FF2828C3FF1C1CBFFF1313BDFF0A0ABBFF0A0ABBFF0B0B
          BCFF0B0BBDFF0C0CBDFF0C0CBEFF0D0DBFFF0E0EBFFF0E0EC0FF0E0EC0FF0F0F
          C1FF2121C6FF4040CEFF3232C1FF11116BBB000000410000002A000000110000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000001110106DAF4646C4FF6060
          D0FF4646C9FF3737C4FF3535C4FF3535C4FF3535C4FF3434C4FF3333C4FF3232
          C4FF3232C5FF3131C5FF3131C5FF3030C5FF3F3FCAFF4343CBFF2C2CC5FF2323
          C3FF1C1CC1FF1616C0FF1414BFFF1010BFFF0C0CBEFF0D0DBEFF0D0DBFFF0E0E
          BFFF0E0EC0FF2020C5FF3F3FCDFF3131C1FF11116BBB000000410000002A0000
          0011000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000003000000110F0F6DAF4646C4FF6161D0FF4848
          C9FF3939C4FF3838C4FF3737C4FF3636C4FF3535C4FF3535C4FF3434C4FF3333
          C4FF3232C4FF3232C5FF3131C5FF4040C9FF5959D1FF8D8DE3FF7272D8FF3333
          C7FF2F2FC6FF2E2EC6FF2E2EC7FF2E2EC7FF2E2EC7FF2E2EC7FF2D2DC7FF2D2D
          C8FF2D2DC8FF2D2DC8FF3D3DCCFF5656D3FF4040C5FF11116CBB000000410000
          002A000000110000000300000000000000000000000000000000000000000000
          00000000000000000003000000110F0F6EAF4747C5FF6363D1FF4949C9FF3A3A
          C4FF3A3AC4FF3939C4FF3838C4FF3636C4FF3636C4FF3535C4FF3535C4FF3434
          C4FF3333C4FF3232C4FF4141C9FF5A5AD0FF4242C4FF6F6FD4FF9A9AE7FF7272
          D8FF3434C7FF2F2FC6FF2F2FC6FF2E2EC6FF2E2EC7FF2E2EC7FF2E2EC7FF2E2E
          C7FF2E2EC7FF2E2EC7FF2E2EC8FF3D3DCCFF5757D3FF4040C5FF11116CBB0000
          00410000002A0000001100000003000000000000000000000000000000000000
          000000000003000000110F0F6EAF4949C5FF6464D1FF4C4CCAFF3C3CC5FF3B3B
          C5FF3A3AC4FF3A3AC4FF3838C5FF3838C4FF3636C4FF3636C4FF3535C4FF3535
          C4FF3434C4FF4242C9FF5A5AD0FF4242C3FF10106CAF10106DA76F6FD4FF9A9A
          E7FF7272D8FF3333C6FF3030C6FF2F2FC6FF2F2FC6FF2F2FC6FF2E2EC6FF2E2E
          C7FF2E2EC7FF2E2EC7FF2E2EC7FF2E2EC7FF3E3ECBFF5858D2FF4141C4FF1111
          6CBB000000410000002A00000011000000030000000000000000000000000000
          0003000000110F0F6EAF4949C5FF6666D1FF4E4ECAFF3E3EC5FF3D3DC5FF3C3C
          C5FF3B3BC5FF3A3AC4FF3A3AC4FF3838C4FF3838C4FF3737C4FF3636C4FF3535
          C4FF4444C9FF5C5CD0FF4343C3FF10106CAF000000110000000310106DA06F6F
          D4FF9A9AE7FF7272D8FF3434C6FF2F2FC5FF3030C6FF3030C6FF2F2FC6FF2F2F
          C6FF2F2FC6FF2E2EC6FF2E2EC6FF2E2EC6FF2E2EC7FF3D3DCAFF5757D2FF4141
          C4FF11116CBB000000410000002A000000110000000300000000000000010000
          000D0F0F6EAE4A4AC5FF6767D2FF4F4FCAFF4141C6FF3F3FC6FF3E3EC5FF3D3D
          C5FF3C3CC5FF3B3BC5FF3A3AC4FF3A3AC4FF3939C4FF3838C4FF3737C4FF4444
          C8FF5C5CD0FF4343C3FF10106CAF000000110000000300000000000000001010
          6DA06F6FD4FF9B9BE7FF7272D8FF3434C6FF3030C5FF3030C5FF2F2FC5FF3030
          C6FF3030C6FF3030C6FF2F2FC6FF2F2FC6FF2F2FC6FF2F2FC6FF3E3ECAFF5858
          D2FF4141C4FF10106CBB00000041000000280000000D00000001000000040E0E
          6EA84E4EC6FF6969D3FF5151CBFF4242C6FF4141C6FF4141C6FF3F3FC6FF3E3E
          C5FF3D3DC5FF3C3CC5FF3B3BC5FF3A3AC4FF3A3AC4FF3939C4FF4646C9FF5E5E
          D0FF4444C3FF10106CAF00000011000000030000000000000000000000000000
          000010106DA06F6FD4FF9B9BE7FF7373D8FF3535C6FF3030C5FF3030C5FF3030
          C5FF3030C5FF3030C5FF3030C5FF3030C5FF3030C5FF3030C6FF3030C6FF3F3F
          CAFF5959D1FF4141C4FF10106CBB0000003A000000190000000406062D445D5D
          CCFF8686DBFF5454CCFF4444C7FF4343C7FF4242C6FF4141C6FF4040C6FF3F3F
          C6FF3E3EC5FF3D3DC5FF3C3CC5FF3B3BC5FF3A3AC4FF4848C9FF6060D0FF4545
          C4FF10106DAF0000001100000003000000000000000000000000000000000000
          00000000000010106DA06F6FD4FF9B9BE7FF7373D8FF3636C6FF3131C5FF3131
          C5FF3131C5FF3030C5FF3030C5FF3030C5FF3030C5FF3030C5FF3030C5FF3030
          C5FF3F3FC9FF5959D1FF3939BFFF06062C6D0000001A00000004070738517575
          D7FFA4A4E9FF6F6FD4FF4646C8FF4444C7FF4343C7FF4242C6FF4141C6FF4141
          C6FF3F3FC6FF3E3EC5FF3D3DC5FF3C3CC5FF4949C9FF6161D0FF4646C4FF1010
          6DAF000000110000000300000000000000000000000000000000000000000000
          0000000000000000000010106DA06F6FD4FF9B9BE7FF7373D8FF3636C5FF3232
          C5FF3232C5FF3232C5FF3131C5FF3131C5FF3131C5FF3131C5FF3131C5FF3131
          C5FF3939C7FF5858D0FF4242C4FF07072C62000000110000000201010B101D1D
          94D09292E2FFA4A4E9FF6F6FD4FF4646C8FF4444C7FF4343C7FF4242C6FF4141
          C6FF4141C6FF3F3FC6FF3E3EC5FF4C4CCAFF6363D1FF4646C4FF10106DAF0000
          0011000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000010106DA07070D4FF9C9CE7FF7474D8FF3636
          C5FF3232C4FF3232C4FF3232C4FF3232C4FF3232C5FF3232C5FF3232C5FF3A3A
          C7FF5858CFFF4E4ECAFF19198FD802020B250000000500000000000000000101
          0B101D1D94D09292E2FFA4A4E8FF6F6FD4FF4646C8FF4444C7FF4343C7FF4242
          C6FF4141C6FF4141C6FF4E4ECAFF6464D1FF4747C5FF0F0F6DAF000000110000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000010106DA06F6FD4FF9C9CE7FF7575
          D8FF3838C5FF3333C4FF3333C4FF3333C4FF3333C4FF3333C4FF3A3AC7FF5858
          D0FF4F4FCAFF19198FD802020B25000000050000000000000000000000000000
          000001010B101D1D94D09292E2FFA4A4E8FF6F6FD4FF4646C8FF4444C7FF4343
          C7FF4242C6FF4F4FCAFF6666D1FF4949C5FF0F0F6EAF00000011000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000010106DA07070D4FF9C9C
          E7FF7575D8FF3838C5FF3434C4FF3434C4FF3434C4FF3C3CC6FF5959CFFF4F4F
          CAFF19198FD802020B2500000005000000000000000000000000000000000000
          00000000000001010B101D1D94D09292E2FFA4A4E8FF6F6FD4FF4646C8FF4444
          C7FF5151CBFF6767D2FF4949C5FF0F0F6EAF0000001100000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000010106DA07070
          D4FF9C9CE7FF7676D8FF3939C5FF3535C4FF3C3CC6FF5A5ACFFF4F4FCAFF1919
          8FD802020B250000000500000000000000000000000000000000000000000000
          0000000000000000000001010B101D1D94D09292E2FFA4A4E9FF6F6FD4FF5454
          CCFF6969D3FF4A4AC5FF0F0F6EAF000000110000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001010
          6DA07070D4FF9D9DE7FF7676D8FF4141C7FF5A5ACFFF5050CAFF19198FD80202
          0B25000000050000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010B101D1D94D09292E2FFA4A4E9FF8686
          DBFF4E4EC6FF0F0F6EAE00000011000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000010106DA07070D5FF9D9DE7FF8686DDFF5C5CCBFF19198FD802020B250000
          0005000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010B101D1D94D07575D7FF5D5D
          CCFF0E0E6EA80000000D00000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010106DA05F5FCDFF6B6BD2FF1B1B91D402020B20000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010B10070738510606
          2D44000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000006062C4106062C4302020B1400000002000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000300000006000000090000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000A000000060000
          0004000000010000000000000000000000000000000000000000000000000000
          00000000000000000009000000130000001B0000002100000025000000260000
          0029000000290000002900000029000000290000002900000029000000290000
          0029000000290000002900000029000000290000002900000029000000290000
          0029000000290000002900000029000000290000002900000029000000290000
          0029000000290000002900000029000000290000002900000027000000250000
          00220000001C000000150000000C000000010000000000000000000000000000
          0003000000100000001C0A223386164A6FFA164C71FF164C71FF164C71FF164C
          71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C
          71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C
          71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C
          71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C71FF164C
          71FF164A6EF9091F2D7F0000001F000000130000000600000000000000000000
          00090000001700010128164B70FA2682BEFF2788C6FF2788C6FF2788C6FF2788
          C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788
          C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788
          C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788
          C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788C6FF2788
          C6FF257FB8FF154A6EF6000000280000001A0000000C00000000000000000000
          00060000001301030428174F75FC2786C4FF226FA1FF226FA0FF216E9FFF216D
          9DFF216D9DFF216C9BFF216B9AFF216A99FF216A98FF206997FF206896FF2067
          95FF206793FF206693FF206591FF206590FF1F648FFF1F638EFF1F628DFF1F62
          8CFF1F618BFF1F6089FF1F6089FF1F6089FF1F6089FF1F6089FF1F6089FF1F60
          89FF1F6089FF1F6089FF1F6089FF1F6089FF1F6089FF1F6089FF1F6089FF1F60
          89FF2787C4FF164D73FF00000023000000160000000900000000000000000000
          00000000000501030419174F75FB2786C4FF2270A2FF226FA1FF6F8893FF858A
          88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
          88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
          88FF858A88FF858A88FF858A88FF848A87FF858A87FF858A87FF858A88FF858A
          88FF858A88FF858A88FF858A88FF858A88FF858A88FF71848CFF1F6089FF1F60
          89FF2787C4FF164D73FF00000013000000080000000000000000000000000000
          00000000000001030409174F75FB2786C4FF2271A3FF2270A2FF858B8AFFF0F0
          F0FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFF2F2F2FFF3F3F3FFF4F4
          F4FFF5F5F5FFF7F7F7FFF8F8F8FFF9F9F9FFFBFBFBFFFDFDFDFFFEFEFEFFFAFA
          FAFFF4F6F6FFF0F1F1FFEBECECFFCACDCCFF868C88FF898E8BFF828683FF7274
          74FF787B7BFF898D8DFF9B9E9EFFACB0B0FFBDC1C1FF858A89FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C4FF2272A4FF2271A3FF858B8AFFF2F2
          F2FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEAEAEAFFECEC
          ECFFEFEFEFFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7F7FFF9F9F9FFFBFBFBFFFDFD
          FDFFFCFCFCFFF7F8F8FFF1F3F3FFEAEBEBFF858B87FFACACACFF989A98FF848B
          87FF7C817FFF747777FF848888FF969999FFA6A9A9FF848988FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C4FF2272A5FF2272A4FF858B8AFFF3F4
          F4FFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9
          E9FFEBEBEBFFEDEDEDFFEFEFEFFFF1F1F1FFF3F3F3FFF6F6F6FFF8F8F8FFFAFA
          FAFFFCFCFCFFFEFEFEFFFAFBFBFFF5F6F6FF878D89FFBCBCBCFFAEAEAEFFA2A2
          A2FF8B8F8CFF828784FF717473FF7F8282FF8F9393FF838887FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C4FF2273A6FF2272A5FF858B8AFFF5F5
          F5FFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6
          F6FFF8F8F8FFFBFBFBFFFDFDFDFFFEFEFEFF898F8BFFC9C9C9FFB9B9B9FFB0B0
          B0FFA5A5A5FF929492FF838986FF717372FF7C7F7FFF838887FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C5FF2374A7FF2273A6FF858B8AFFF7F7
          F7FFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFEAEAEAFFEDEDEDFFEFEFEFFFF1F1F1FFF3F3
          F3FFF5F5F5FFF7F7F7FFF9F9F9FFFBFBFBFF868C88FFCECECEFFC3C3C3FFBCBC
          BCFFB3B3B3FFA7A7A7FF949695FF858A86FF727473FF838887FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C5FF2375A9FF2374A7FF858B8AFFF8F8
          F8FFEAEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9
          E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFEBEBEBFFEDEDEDFFEFEF
          EFFFF2F2F2FFF4F4F4FFF6F6F6FFF7F7F7FF848A86FFBBBCBBFFBEC0BFFFC2C3
          C2FFC2C3C2FFB9B9B9FFA7A7A7FF949795FF8C918EFF848988FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C5FF2375AAFF2374A8FF858B8AFFFAFA
          FAFFEBEBEBFFEAEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9
          E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEAEAEAFFECEC
          ECFFEEEEEEFFF0F0F0FFF2F2F2FFF1F1F1FFA5A9A6FFA0A4A1FFA0A4A1FF9BA0
          9DFF969B97FF8F9591FF8A908CFF949896FF868C88FF858B88FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C5FF2376ABFF2375AAFF858B8AFFFBFB
          FBFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFE9EA
          EAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFEBEBEBFFEDEDEDFFEFEFEFFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7F7FFF9F9
          F9FFFCFCFCFFFEFEFEFFF7F8F8FFD2D5D4FF929794FF868C88FF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2786C5FF2377ACFF2376ABFF858B8AFFFDFD
          FDFFEBECECFFEBECECFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEAEAFFEAEA
          EAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE9E9E9FFEBEBEBFFEDEDEDFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6
          F6FFF8F8F8FFFAFAFAFFFCFCFCFFFEFEFEFFF0F0F0FF868B89FF206189FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF2377ADFF2377ACFF858B8AFFFEFE
          FEFFECEDEDFFECECECFFEBECECFFEBECECFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC2C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC1C2C2FFC1C1
          C1FFC1C1C1FFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFEEEEEEFFF0F0F0FFF2F2
          F2FFF5F5F5FFF7F7F7FFF9F9F9FFFBFBFBFFFDFDFDFF868C8AFF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF2378AEFF2377ADFF858B8AFFFFFF
          FFFFECEDEDFFECEDEDFFECECECFFECECECFFC3C4C4FFC3C4C4FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC2C3C3FFC2C2C2FFC2C2C2FFC2C2
          C2FFC1C2C2FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFEBEBEBFFEDEDEDFFEFEF
          EFFFF1F1F1FFF3F3F3FFF5F5F5FFF7F7F7FFFBFBFBFF878D8BFF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF2479AFFF2378AEFF858B8AFFFFFF
          FFFFEDEDEDFFECEDEDFFECEDEDFFECEDEDFFECECECFFEBECECFFEBECECFFEBEB
          EBFFEBEBEBFFEAEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFE9EAEAFFE9EAEAFFE9E9
          E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFECEC
          ECFFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFFAFAFAFF878D8BFF1F6089FF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF247AB0FF2479AFFF858C8AFFFFFF
          FFFFEDEEEEFFEDEEEEFFEDEDEDFFECEDEDFFECEDEDFFECEDEDFFECECECFFEBEC
          ECFFEBECECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFE9EA
          EAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFEAEAEAFFECECECFFEEEEEEFFF0F0F0FFF9F9F9FF878D8BFF1F618AFF1F60
          89FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF247AB1FF247AB0FF858C8AFFFFFF
          FFFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFC5C5C5FFC4C5C5FFC4C5C5FFC4C4
          C4FFC4C4C4FFC3C4C4FFC3C4C4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC2C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFE9E9E9FFEBEBEBFFEDEDEDFFF9F9F9FF878D8BFF1F628CFF1F61
          8AFF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF247BB2FF247AB1FF858C8AFFFFFF
          FFFFEEEFEFFFEEEFEFFFEDEEEEFFEDEEEEFFC5C6C6FFC5C5C5FFC4C5C5FFC4C5
          C5FFC4C5C5FFC4C4C4FFC3C4C4FFC3C4C4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC2C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC1C1
          C1FFC1C1C1FFE8E8E8FFE8E8E8FFEAEAEAFFF9F9F9FF888E8CFF1F628DFF1F62
          8CFF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF247CB4FF247BB2FF858C8AFFFFFF
          FFFFEEEFEFFFEEEFEFFFEEEFEFFFEEEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDED
          EDFFECEDEDFFECEDEDFFECECECFFECECECFFEBECECFFEBECECFFEBEBEBFFEBEB
          EBFFEAEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFE9E9
          E9FFE8E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFF9F9F9FF888E8CFF1F638EFF1F62
          8DFF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF247CB5FF247CB4FF858C8AFFFFFF
          FFFFEFF0F0FFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEDEEEEFFEDEEEEFFEDEE
          EEFFEDEEEEFFEDEDEDFFECEDEDFFECEDEDFFECECECFFECECECFFEBECECFFEBEC
          ECFFEBEBEBFFEBEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFE9EAEAFFE9E9
          E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFFAFAFAFF888E8CFF1F648FFF1F63
          8EFF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C5FF247DB6FF247CB5FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFC6C7C7FFC6C7C7FFC6C7C7FFC5C6
          C6FFC5C6C6FFC5C6C6FFC5C5C5FFC4C5C5FFC4C5C5FFC4C5C5FFC4C4C4FFC3C4
          C4FFC3C4C4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFEAEAEAFFE9EA
          EAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E9E9FFFCFCFCFF888E8CFF1F6490FF1F64
          8FFF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C6FF257EB7FF247DB6FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFC7C8C8FFC6C7C7FFC6C7C7FFC6C7
          C7FFC6C6C6FFC5C6C6FFC5C6C6FFC5C6C6FFC5C5C5FFC4C5C5FFC4C5C5FFC4C4
          C4FFC4C4C4FFC3C4C4FFC3C4C4FFC3C3C3FFC3C3C3FFC3C3C3FFEAEAEAFFEAEA
          EAFFEAEAEAFFE9EAEAFFE9E9E9FFE9E9E9FFFDFDFDFF898F8DFF206591FF1F64
          90FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F75FB2787C6FF257FB8FF257EB7FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEF
          EFFFEEEFEFFFEEEFEFFFEDEEEEFFEDEEEEFFEDEEEEFFEDEDEDFFECEDEDFFECED
          EDFFECEDEDFFECECECFFEBECECFFEBECECFFEBECECFFEBEBEBFFEBEBEBFFEAEB
          EBFFEAEAEAFFEAEAEAFFEAEAEAFFE9EAEAFFFEFEFEFF898F8DFF206692FF2065
          91FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F76FB2787C6FF257FB9FF257FB8FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEDEEEEFFEDEEEEFFEDEEEEFFEDED
          EDFFECEDEDFFECEDEDFFECEDEDFFECECECFFEBECECFFEBECECFFEBEBEBFFEBEB
          EBFFEAEBEBFFEAEBEBFFEAEAEAFFEAEAEAFFFEFEFEFF898F8DFF206793FF2066
          92FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F76FB2787C6FF2580BAFF257FB9FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC7C8C8FFC7C8C8FFC6C7C7FFC6C7C7FFC6C7C7FFC6C6C6FFC5C6C6FFC5C6
          C6FFC5C6C6FFC5C5C5FFC4C5C5FFC4C5C5FFC4C4C4FFC4C4C4FFC3C4C4FFC3C4
          C4FFEBEBEBFFEBEBEBFFEAEBEBFFEAEAEAFFFEFEFEFF898F8DFF206794FF2067
          93FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F76FB2787C6FF2581BBFF2580BAFF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC7C8C8FFC7C8C8FFC7C8C8FFC6C7C7FFC6C7C7FFC6C7C7FFC6C7C7FFC5C6
          C6FFC5C6C6FFC5C6C6FFC5C5C5FFC4C5C5FFC4C5C5FFC4C5C5FFC4C4C4FFC3C4
          C4FFEBECECFFEBEBEBFFEBEBEBFFEBEBEBFFFEFEFEFF898F8DFF206895FF2067
          94FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F76FB2787C6FF2582BCFF2581BBFF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEF
          EFFFEEEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEDEDFFECEDEDFFECEDEDFFECED
          EDFFECECECFFEBECECFFEBECECFFEBEBEBFFFEFEFEFF898F8DFF206997FF2068
          95FF2787C4FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F76FB2787C6FF2582BDFF2581BCFF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEF
          EFFFEEEFEFFFEEEFEFFFEEEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEDEDFFECED
          EDFFECEDEDFFECECECFFECECECFFEBECECFFFEFEFEFF898F8DFF206998FF2069
          97FF2787C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409174F76FB2787C6FF2683BFFF2582BDFF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC6C7C7FFC6C7C7FFC6C7C7FFC6C7C7FFC5C6C6FFC5C6C6FFC5C6C6FFC5C5
          C5FFC4C5C5FFECEDEDFFECEDEDFFECECECFFFEFEFEFF898F8DFF216A99FF2069
          98FF2787C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2787C6FF2684C0FF2683BFFF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8C8FFC7C8
          C8FFC7C8C8FFC7C8C8FFC6C7C7FFC6C7C7FFC6C7C7FFC6C6C6FFC5C6C6FFC5C6
          C6FFC5C6C6FFEDEDEDFFECEDEDFFECEDEDFFFEFEFEFF898F8DFF216B9AFF216A
          99FF2787C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2787C6FF2684C1FF2684C0FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFEDEE
          EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEDEDFFFEFEFEFF898F8DFF216C9BFF216B
          9AFF2787C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2787C6FF2685C2FF2684C1FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEFEFFFEEEFEFFFEEEF
          EFFFEEEFEFFFEDEEEEFFEDEEEEFFEDEEEEFFFEFEFEFF898F8DFF216C9CFF216C
          9BFF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2787C6FF2686C3FF2685C2FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEEF
          EFFFEEEFEFFFEEEFEFFFEEEEEEFFEDEEEEFFFEFEFEFF898F8DFF216D9DFF216C
          9CFF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2787C6FF2687C4FF2686C3FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEBECECFFD9D9D9FFD6D7D7FFD6D7
          D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7
          D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFD6D7D7FFE1E2
          E2FFEEEFEFFFEEEFEFFFEEEFEFFFEEEFEFFFFEFEFEFF898F8DFF216E9EFF216D
          9DFF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2788C6FF2687C5FF2687C4FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFB3B3B3FF646464FF606161FF6061
          61FF606161FF606161FF606161FF606161FF606161FF606161FF606161FF6061
          61FF606161FF606161FF606161FF606161FF606161FF606161FF646464FFAEAF
          AFFFEBECECFFEFF0F0FFEEEFEFFFEEEFEFFFFEFFFFFF898F8DFF226F9FFF216E
          9EFF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2788C6FF2788C6FF2687C5FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FF666767FF909A9AFF909B9BFF909B
          9BFF909B9BFF909B9BFF909B9BFF909B9BFF909B9BFF909B9BFF909B9BFF909B
          9BFF909B9BFF909B9BFF909B9BFF909B9BFF909B9BFF909B9BFF8F9A9AFF6767
          67FFE8E9E9FFEFF0F0FFEFF0F0FFEFF0F0FFFEFFFFFF898F8DFF226FA0FF226F
          9FFF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2788C6FF2788C6FF2788C6FF858C8BFFFFFF
          FFFFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FF626363FF9DA7A7FF838F8FFF828F
          8FFF828F8FFF828F8FFF828E8EFF828E8EFF818E8EFF818E8EFF818D8DFF808D
          8DFF808D8DFF808D8DFF808C8CFF7F8C8CFF7F8C8CFF7F8C8CFF98A3A3FF6263
          63FFE8E9E9FFEFF0F0FFEFF0F0FFEFF0F0FFFFFFFFFF898F8DFF2270A2FF226F
          A0FF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2788C6FF2788C6FF2788C6FF858C8BFFFFFF
          FFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF646565FFB3BBBBFFA1ACACFFA1AC
          ACFFA1ABABFFA1ABABFFA0ABABFFA0ABABFFA0AAAAFF9FAAAAFF9FAAAAFF9FAA
          AAFF9EA9A9FF9EA9A9FF9EA9A9FF9EA8A8FF9DA8A8FF9DA8A8FFAFB8B8FF6364
          64FFF7F8F8FFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFF898F8DFF2271A3FF2270
          A2FF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000001030409175076FB2788C6FF2788C6FF2788C6FF6F8E9FFF898E
          8CFF898E8CFF898E8CFF898E8CFF898E8CFF636464FFC0C7C7FFB4BDBDFFB4BD
          BDFFB4BEBEFFB4BEBEFFB5BEBEFFB5BEBEFFB5BEBEFFB5BEBEFFB5BFBFFFB6BF
          BFFFB6BFBFFFB6BFBFFFB6BFBFFFB6BFBFFFB6C0C0FFB7C0C0FFC2CACAFF6464
          64FF858A88FF898E8CFF898E8CFF898E8CFF898E8CFF6D8896FF2271A4FF2271
          A3FF2788C5FF164D73FF00000000000000000000000000000000000000000000
          00000000000000010103174C70F82787C5FF2788C6FF2788C6FF2788C6FF2788
          C6FF2788C6FF2788C6FF2788C6FF2788C6FF616263FFADB7B7FFA1ACACFFA1AC
          ACFFA1ACACFFA1ACACFFA1ACACFFA2ADADFFA2ADADFFA2ADADFFA2ADADFFA2AD
          ADFFA2ADADFFA3AEAEFFA3AEAEFFA3AEAEFFA3AEAEFFA3AEAEFFB0B9B9FF6162
          63FF2683BFFF2786C3FF2786C3FF2785C2FF2785C2FF2785C2FF2785C2FF2685
          C2FF2683BEFF154A6EF300000000000000000000000000000000000000000000
          00000000000000000000091F2E65164C70F518547CFF18547CFF18547CFF1854
          7CFF18547CFF18547CFF18547CFF18547CFF5A5E61FF98A4A4FF9AA5A5FF9BA5
          A5FF9BA5A5FF96A2A2FF8E9B9BFF8E9B9BFF8E9B9BFF8F9B9BFF8F9B9BFF8F9C
          9CFF8F9C9CFF8F9C9CFF98A3A3FF9DA7A7FF9DA7A7FF9DA8A8FF9BA6A6FF5A5E
          61FF18547CFF18547CFF18547CFF18547CFF18547CFF18547CFF18547CFF1854
          7CFF164B70F3091B295A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F1F1F565B5B5BF3606161FF6061
          61FF616262FF7B8585FF717F7FFF717F7FFF717F7FFF717F7FFF717F7FFF717F
          7FFF717F7FFF717F7FFF7B8585FF616262FF606161FF606161FF5A5B5BF21F1F
          1F54000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005D5D5DFF899393FF889494FF889494FF889494FF889494FF889494FF8894
          94FF889494FF889494FF899292FF5D5D5DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005C5C5CFF848C8CFF8C9595FF8C9595FF8C9595FF8C9595FF8C9595FF8C95
          95FF8C9595FF8C9595FF848C8CFF5C5C5CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000464646C35C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
          5CFF5C5C5CFF5C5C5CFF5C5C5CFF464646C10000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000300000007000000080000000C0000
          000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000
          000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000
          000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000
          000C0000000C0000000C0000000C0000000C0000000C0000000C000000080000
          0007000000030000000000000000000000000000000000000000000000000000
          0000000000030000000C000000140000001A0000001D00000020000000230000
          0023000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000002300000023000000230000
          00230000002300000023000000230000002300000023000000230000001F0000
          001E0000001A000000140000000D000000040000000000000000000000000000
          0008000000130000001D000000270000002E0000003400000035000000390000
          0039000000390000003900000039000000390000003900000039000000390000
          0039000000390000003900000039000000390000003900000039000000390000
          0039000000390000003900000039000000390000003900000039000000390000
          0039000000390000003900000039000000390000003900000039000000340000
          00340000002F000000270000001E000000140000000900000000000000050000
          00120000001E0000002A08080848484848D4575858F8585858F9585858F95858
          58F9585859F9585959F9595959F9595959F9595959F9595959F9595959F95959
          59F9595959F9595959F9595959F9595959F9595959F9585959F9585959F95859
          59F9585959F9585858F9585858F9585858F9585858F9585858F9585858F95858
          58F9585858F9585858F9585858F9585858F9585858F9575858F9575858F95757
          57F8434444CD060606440000002B0000001F0000001200000006000000080000
          00150000002300000030393939B56C6E6FFB919697FF94999BFF999FA0FF9DA4
          A6FFA3A9ABFFA7AEB0FFACB4B5FFB2B8BAFFB6BEC0FFB9C1C3FFB7BFC1FFB5BD
          BEFFB4BABCFFB2B8BAFFB0B6B8FFAEB5B6FFACB3B5FFAAB1B3FFA7AFB0FFA6AD
          AEFFA4ABACFFA2A8AAFFA0A7A8FF9FA6A7FF9CA3A5FF9AA1A3FF999FA1FF979D
          9EFF959B9CFF93999AFF919899FF8F9697FF8D9495FF8B9193FF8A8F90FF888E
          8FFF666869FA313131A600000031000000240000001600000009000000060000
          00130000001F1919195F696A6AFB686868FF676767FF676767FF676767FF6767
          67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF686868FF676767F91919195F000000200000001400000007000000000000
          000A00000016626262EABCBEBEFFDDDFDFFFDDDEDEFFDCDDDDFFDBDCDCFFDADC
          DCFFD9DBDBFFD8DADAFFD7D9D9FFD6D8D9FFD5D7D8FFD5D7D7FFD4D6D6FFD4D5
          D5FFD3D4D4FFD2D4D4FFD1D3D4FFD0D2D3FFCFD1D2FFCED0D1FFCED0D0FFCDCF
          CFFFCCCECEFFCCCDCDFFCBCCCDFFCACCCCFFC9CBCCFFC8CACBFFC7C9CAFFC7C9
          C9FFC6C8C8FFC5C7C8FFC5C6C7FFC4C5C6FFC3C5C5FFC2C4C5FFC1C3C4FFC0C2
          C3FFBFC1C2FFA6A7A8FF606161E8000000160000000B00000000000000000000
          000000000007676767FFDFE0E0FFD9DBDBFFD8DADAFFD7D9D9FFD6D8D8FFD5D7
          D7FFD4D6D6FFD3D5D5FFD2D4D4FFD1D3D4FFD0D2D3FFD0D2D2FFCFD1D1FFCED0
          D0FFCDCFCFFFCCCECEFFCBCDCEFFCACCCDFFC9CBCCFFC8CACBFFC8CACAFFC7C9
          C9FFC6C8C8FFC5C7C7FFC4C6C7FFC3C5C6FFC2C4C5FFC1C3C4FFC0C2C3FFC0C2
          C2FFBFC1C1FFBEC0C1FFBDBFC0FFBCBEBFFFBBBDBEFFBABCBDFFB9BBBCFFB8BA
          BBFFB7B9BAFFC2C4C5FF676767FF000000090000000000000000000000000000
          000000000000676767FFE2E3E3FFD9DBDBFFD8DADAFFD7D9D9FFD6D8D8FFD5D7
          D7FFD4D6D6FFD3D5D5FFD2D4D4FFD1D3D4FFD0D2D3FFD0D2D2FFCFD1D1FFCED0
          D0FFCDCFCFFFCCCECEFFCBCDCEFFCACCCDFFC9CBCCFFC8CACBFFC8CACAFFC7C9
          C9FFC6C8C8FFC5C7C7FFC4C6C7FFC3C5C6FFC2C4C5FFC1C3C4FFC0C2C3FFC0C2
          C2FFBFC1C1FFBEC0C1FFBDBFC0FFBCBEBFFFBBBDBEFFBABCBDFFB9BBBCFFB8BA
          BBFFB7B9BAFFC7C9CAFF676767FF000000010000000000000000000000000000
          000000000000676767FFE4E5E5FFD9DBDBFFD8DADAFFD7D9D9FFD6D8D8FFD5D7
          D7FFD4D6D6FFD3D5D5FFD2D4D4FFD1D3D4FFD0D2D3FFD0D2D2FFCFD1D1FFCED0
          D0FFCDCFCFFFCCCECEFFCBCDCEFFCACCCDFFC9CBCCFFC8CACBFFC8CACAFFC7C9
          C9FFC6C8C8FFC5C7C7FFC4C6C7FFC3C5C6FFC2C4C5FFC1C3C4FFC0C2C3FFC0C2
          C2FFBFC1C1FFBEC0C1FFBDBFC0FFBCBEBFFFBBBDBEFFBABCBDFFB9BBBCFFB8BA
          BBFFB7B9BAFFCCCDCEFF676767FF000000010000000000000000000000000000
          000000000000676767FFE6E8E8FFD9DBDBFFD8DADAFFD7D9D9FFD6D8D8FFD5D7
          D7FFD4D6D6FFD3D5D5FFD2D4D4FFD1D3D4FFD0D2D3FFD0D2D2FFCFD1D1FFCED0
          D0FFCDCFCFFFCCCECEFFCBCDCEFFCACCCDFFC9CBCCFFC8CACBFFC8CACAFFC7C9
          C9FFC6C8C8FFC5C7C7FFC4C6C7FFC3C5C6FFC2C4C5FFC1C3C4FFC0C2C3FFC0C2
          C2FFBFC1C1FFBEC0C1FFBDBFC0FFBCBEBFFFBBBDBEFFBABCBDFFB9BBBCFFB8BA
          BBFFB7B9BAFFD0D1D2FF676767FF000000010000000000000000000000000000
          000000000000676767FFE9EAEAFFD9DBDBFFD8DADAFFD7D9D9FFD6D8D8FFD5D7
          D7FFD4D6D6FFD3D5D5FFD2D4D4FFD1D3D4FFD0D2D3FFD0D2D2FFCFD1D1FFCED0
          D0FFCDCFCFFFCCCECEFFCBCDCEFFCACCCDFFC9CBCCFFC8CACBFFC8CACAFFC7C9
          C9FFC6C8C8FFC5C7C7FFC4C6C7FFC3C5C6FFC2C4C5FFC1C3C4FFC0C2C3FFC0C2
          C2FFBFC1C1FFBEC0C1FFBDBFC0FFBCBEBFFFBBBDBEFFBABCBDFFB9BBBCFFB8BA
          BBFFB7B9BAFFD4D6D6FF676767FF000000010000000000000000000000000000
          000000000000676767FFEBECECFFD9DBDBFFD8DADAFFD7D9D9FFD6D8D8FFD5D7
          D7FFD4D6D6FFD3D5D5FFD2D4D4FFD1D3D4FFD0D2D3FFD0D2D2FFCFD1D1FFCED0
          D0FFCDCFCFFFCCCECEFFCBCDCEFFCACCCDFFC9CBCCFFC8CACBFFC8CACAFFC7C9
          C9FFC6C8C8FFC5C7C7FFC4C6C7FFC3C5C6FFC2C4C5FFC1C3C4FFC0C2C3FFC0C2
          C2FFBFC1C1FFBEC0C1FFBDBFC0FFBCBEBFFFBBBDBEFFBABCBDFFB9BBBCFFB8BA
          BBFFB7B9BAFFD9DADAFF676767FF000000010000000000000000000000000000
          000000000000676767FFEDEEEEFFD9DBDBFFD1D3D3FF868686FF696969FF6666
          66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
          66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
          66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
          66FF666666FF666666FF666666FF666666FF676767FF6F6F6FFF9D9E9FFFB8BA
          BBFFB7B9BAFFDDDEDEFF676767FF000000010000000000000000000000000000
          000000000000676767FFF0F0F0FFD9DBDBFFA3A4A4FF9B9B9CFFF4F5F6FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFDCDCDDFF6D6D6EFFB6B8
          B9FFB7B9BAFFE1E2E3FF676767FF000000010000000000000000000000000000
          000000000000676767FFF2F2F2FFD9DBDBFF9F9F9FFFCBCCCDFFC4C5C5FF6F6F
          6FFF8F9090FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FF878788FFAFB0
          B1FFB7B9BAFFE6E6E7FF676767FF000000010000000000000000000000000000
          000000000000676767FFF4F5F5FFD9DBDBFFB4B6B6FFDADBDCFFD7D9D9FFD1D3
          D3FF888989FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6
          F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFF5F6F7FFA6A6A7FFB2B4
          B5FFB7B9BAFFEAEBEBFF676767FF000000010000000000000000000000000000
          000000000000676767FFF7F7F7FFD9DBDBFFD2D4D4FFE7E7E7FFEAEBEBFFE2E3
          E3FFD0D2D2FFEFF1F1FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEFF0F0FFEEF0
          F0FFEEF0F0FFEEEFEFFFEEEFEFFFEEEFEFFFEDEFEFFFEDEFEFFFEDEFEFFFEDEE
          EEFFEDEEEEFFEDEEEEFFEDEEEEFFECEEEEFFECEEEEFFECEDEEFFECEDEDFFECED
          EDFFECEDEDFFECEDEDFFEBEDEDFFEBEDEDFFEBECEDFFE9EAEAFFC3C5C5FFB7B9
          BAFFB7B9BAFFEEEFEFFF676767FF000000010000000000000000000000000000
          000000000000676767FFF9F9F9FFD9DBDBFFD8DADAFFDBDDDDFFE1E3E3FFE2E4
          E4FFE1E3E3FFE1E3E3FFE0E2E2FFDFE2E2FFDFE1E2FFDFE1E1FFDEE0E0FFDEE0
          E0FFDDDFDFFFDCDFDFFFDCDEDFFFDBDDDEFFDBDDDDFFDADCDDFFDADCDCFFD9DC
          DCFFD9DBDBFFD8DADAFFD8DADAFFD7D9DAFFD6D9D9FFD6D8D9FFD5D7D8FFD5D7
          D7FFD5D7D7FFD4D6D7FFD3D6D6FFD3D5D6FFD2D4D5FFCBCDCDFFBABCBDFFB8BA
          BBFFB7B9BAFFF3F3F3FF676767FF000000010000000000000000000000000000
          000000000000676767FBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBFBFBFF666666FB000000000000000000000000000000000000
          0000000000005B5B5BD2EDEEEEFFFDFDFDFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFAFAFAFFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFF6F6
          F6FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
          EEFFF8F8F8FFEBEBEBFF565656CB000000000000000000000000000000000000
          0000000000001B1B1B437E7F7FF7FBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFF9E9E9EFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
          9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
          9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
          9AFF9A9A9AFF9A9A9AFF9A9A9AFF9E9E9EFFEEEEEEFFEAEAEAFFEAEAEAFFEFEF
          EFFFF9F9F9FF797979F61313132F000000000000000000000000000000000000
          00000000000000000000494949ABBEBEBEFBFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFF8A8A8AFFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
          A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2
          A2FFA2A2A2FFA2A2A2FFA3A3A3FF898989FFE9E9E9FFE6E6E6FFE7E7E7FFF7F7
          F7FFABACACF83939398900000000000000000000000000000000000000000000
          000000000000000000000606060F646464EDE0E0E0FFFBFBFBFFFBFBFBFFFBFB
          FBFF8A8A8AFFC2C2C2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
          B4FFB4B4B4FFB4B4B4FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
          B5FFB6B6B6FFB6B6B6FFC3C3C3FF8A8A8AFFF9F9F9FFF8F8F8FFFAFAFAFFD7D8
          D8FE5B5C5CD90202020500000000000000000000000000000000000000000000
          0000000000000000000000000000151515355F5F5FE06B6B6BFF727272FF7272
          72FF898989FFD8D8D8FFBEBEBEFFBEBEBEFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
          BFFFBFBFBFFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
          C0FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2C2FFC2C2
          C2FFC2C2C2FFC2C2C2FFD8D8D8FF898989FF727272FF727272FF6F6F6FFF5B5C
          5CD90F0F0F250000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEE7E7E7FFCACACAFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFCDCDCDFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCECE
          CEFFCECECEFFCFCFCFFFE8E8E8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF3F3F3FFDADADAFFDADADAFFDADADAFFDBDBDBFFDBDBDBFFDBDB
          DBFFDBDBDBFFDCDCDCFFDCDCDCFFA8A8A8FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA8A8A8FFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFF3F3F3FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFECEC
          ECFFECECECFFECECECFFEDEDEDFFA9A9A9FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA8A8A8FFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0
          F0FFF0F0F0FFF0F0F0FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFA9A9A9FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA8A8A8FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFBFBFBFFFBFBFBFFFBFBFBFFA9A9A9FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA8A8A8FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFF8F8F8FFF8F8F8FFD8D8D8FFD8D8D8FFD8D8D8FFD0D0
          D0FFACACACFFAAAAAAFFAAAAAAFFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFCACACAFFF8F8F8FFF8F8F8FFF7F7
          F7FFF7F7F7FFF7F7F7FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFDCDCDCFFA8A8A8FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA7A7A7FFA7A7A7FFB9B9B9FFF2F2F2FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFF2F2F2FFF2F2F2FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
          D3FFD3D3D3FFC2C2C2FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA7A7A7FFACACACFFCECECEFFD2D2D2FFD2D2D2FFD2D2D2FFF1F1
          F1FFF1F1F1FFF1F1F1FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
          EEFFEEEEEEFFEEEEEEFFCBCBCBFFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA9A9A9FFDFDFDFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
          EEFFEEEEEEFFEEEEEEFFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFEBEBEBFFEBEBEBFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFB7B7B7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFBEBEBEFFCDCDCDFFCDCDCDFFCDCDCDFFCCCCCCFFCCCCCCFFEAEA
          EAFFEAEAEAFFEAEAEAFFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7E7FFBBBBBBFFA7A7A7FFA7A7A7FFA7A7
          A7FFC3C3C3FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFE5E5E5FFE5E5E5FFC7C7C7FFC7C7C7FFC7C7C7FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5C5FFADADADFFA7A7A7FFAFAF
          AFFFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFE4E4
          E4FFE4E4E4FFE4E4E4FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFDEDEDEFFBABABAFFDDDD
          DDFFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFE0E0E0FFE0E0E0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFE0E0
          E0FFE0E0E0FFE0E0E0FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000898989FEF8F8F8FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE0E0E0FFF8F8F8FF888888FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000878787F9F3F3F3FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF3F3F3FF868686F70000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000043434378878787F6888888F7888888F7888888F7888888F7888888F78888
          88F7888888F7888888F7888888F7888888F7888888F7888888F7888888F78888
          88F7888888F7888888F7888888F7888888F7888888F7888888F7888888F78888
          88F7888888F7888888F7868686F6404040740000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000303030509090911090909110909091109090911090909110909
          0911090909110909091109090911090909110909091109090911090909110909
          0911090909110909091109090911090909110909091109090911090909110909
          0911090909110909091103030305000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000600000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0004000000080000000C0000001000000015000000150000000D000000050000
          0001000000010000000200000003000000040000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000300000005000000090000000D0000
          00120000001B030508300D161F591D3044921A26368A0001022A000000120000
          000A000000090000000D00000011000000130000000D00000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000100000003000000060000000A0000000E000000140000011E05080B370F1A
          25631E33499C2C4C6CD1355C84F33D658FFF3C5473FA0611219A0001022E0000
          001C0000001C0001022B02050941010203300000002100000010000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000070000
          000B0000000F0000001501010222060A0F3E111E2B6D21384FA62E5072D9365E
          87F739628CFF39628CFF39628CFF3D658EFF3A5474FF0D2242F90510209A0206
          0C5A040D1B8707162CBF162E4AE11A2A388700000035000000210000000E0000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000002000000060000000B00000010000000170101
          02260D1116452D363F77576575B1526E8AE0386088FA39628CFF39628CFF3962
          8CFF39628CFF39628CFF39628CFF3C648EFF375476FF122B4DFF0E2444F90A1F
          3DF00B2142FE0A2041FF213B5AFF617E96ED18242E78000000320000001D0000
          000B000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000600000010010203250C12184C2B3743825869
          7ABB8195A8E793A9BFFC92A8C0FF849EB8FF577A9DFF39628CFF39628CFF3962
          8CFF39628CFF39628CFF39628CFF3B648DFF365578FF183457FF142D50FF0F27
          49FF0C2243FF0A1F41FF213C5CFF6C8CA4FF57728AE40F1820690000002D0000
          0019000000090000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000005111B254E53687CC1859AAEECA0B3C7FEA3B7
          CAFF9DB1C6FF94AAC1FF8BA3BCFF839DB7FF7793B0FF51759AFF39628CFF3962
          8CFF39628CFF39628CFF39628CFF3A638DFF34567BFF1E3D61FF1A365AFF152F
          52FF10294BFF0B2243FF244162FF547D9BFF517592FF496379D80910155A0000
          002A000000160000000700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002436477A9BB1C6FFB2C2D3FFA7B9CCFF9EB2
          C7FF96ABC2FF8DA5BDFF859EB8FF7C97B3FF7491AEFF6988A8FF4B7096FF3962
          8CFF39628CFF39628CFF39628CFF3A638CFF34587FFF25456CFF203F64FF1B38
          5DFF173255FF10284AFF254364FF5684A5FF396586FF4F728FFF3B5469CA060A
          0D4E000000260000001200000005000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C3143765A80A3FF99B0C5FFA2B6CAFF98AE
          C4FF90A7BEFF87A0B9FF7F99B4FF7692AFFF6E8CABFF6685A6FF5B7DA0FF456B
          93FF39628CFF39628CFF39628CFF39628CFF355B83FF2B4E76FF26486EFF2241
          67FF1D3B5FFF142E51FF254465FF5586A8FF3D6E92FF376081FF4B6E8BFF3046
          59BB03060843000000220000000F000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000023374874567FA3FF547DA1FF8AA5BEFF94AC
          C3FF8AA4BDFF829CB7FF7995B1FF708EACFF6887A7FF5F80A2FF577A9DFF4D72
          98FF3F668FFF39628CFF39628CFF39628CFF375F88FF315780FF2D5178FF284A
          71FF23446AFF193457FF254464FF5285A7FF43789EFF396587FF365D7EFF4668
          86FD25384AA90103043A0000001E0000000C0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000283B4A7092AEC5FF688EAEFF507BA0FF7B9B
          B7FF86A3BCFF7D9BB6FF7493B0FF6B8BAAFF6283A4FF597C9FFF51759AFF486E
          95FF406790FF39628CFF39628CFF39628CFF3A648EFF37608AFF335982FF2E53
          7BFF2A4D74FF1E3B5FFF264666FF5084A7FF457DA3FF3E7094FF355F80FF365B
          7CFF41607EFA1C2B3B97000101320000001A0000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000273B4A6D97B4C9FF9AB5CAFF6B92B1FF4E7B
          A0FF6E92B1FF7999B6FF6F92B0FF678AAAFF5E82A4FF547A9EFF4B7298FF426A
          92FF3B648DFF39628CFF39628CFF39628CFF3D6A93FF3C6992FF39628CFF345C
          85FF30557EFF234268FF294A6CFF5086A9FF467FA5FF43789FFF396688FF345B
          7DFF35597AFF3A5876F414212D840000002C0000001700000007000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002339486D83A7C1FF98B5CBFF8EAEC5FF6C94
          B2FF4D7CA1FF628BACFF6B91B0FF6289AAFF5981A4FF50799EFF477198FF3F69
          92FF3A658EFF3A638DFF39628CFF39628CFF3F7098FF41729AFF3D6B94FF3A64
          8EFF365E88FF284A70FF2B4F72FF5089ADFF4881A7FF457CA3FF3F7095FF365F
          81FF32597AFF335678FF33506DED0E1822720000002700000013000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E37476D4F85AAFF739DBAFF89ACC4FF84A7
          C1FF6C95B4FF4E7FA4FF5885A8FF5E88AAFF5581A4FF4C799EFF437198FF3E6B
          94FF3C6992FF3C6791FF3B668FFF3A648EFF42769DFF457BA2FF41749CFF3E6D
          96FF3B6791FF2C5178FF2C5276FF4F8AAEFF4984AAFF467FA5FF43789EFF3966
          89FF345C7DFF315678FF325375FF2C4662E30A11186200000022000000100000
          0004000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002039496D4984AAFF4D85AAFF6595B5FF7EA6
          C0FF7EA5BFFF6E98B6FF5183A7FF5080A5FF5180A4FF48799FFF41729AFF3F70
          98FF3F6E96FF3E6C95FF3D6A93FF3C6992FF467DA4FF4984AAFF457DA3FF4276
          9DFF407099FF30577FFF2E5579FF4E8CB0FF4A86ACFF4781A7FF457CA2FF3F6F
          95FF365F81FF33597BFF305375FF2F5071FF243C56D6060B10520000001E0000
          000D000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000213B4B6D518DB0FF548DB1FF558DB0FF6395
          B5FF77A2BEFF7AA3BFFF709BB8FF598AACFF4C7FA5FF4579A0FF42769DFF4174
          9CFF41729AFF407199FF3F6F97FF3E6D96FF4984AAFF4D8DB1FF4A86ABFF467F
          A5FF4479A0FF335E85FF2F577CFF4E8DB1FF4B89AEFF4883A9FF467EA4FF4377
          9EFF396589FF345B7DFF315678FF2E5072FF2C4C6DFF1E344BC704070A410000
          0017000000070000000100000000000000000000000000000000000000000000
          0000000000000000000000000000223E4D6D5895B7FF5D96B7FF5F96B7FF6096
          B7FF6699B8FF74A1BEFF78A3BFFF73A0BDFF6797B6FF588BADFF4C80A5FF457A
          A0FF42779EFF41749CFF40739BFF40729AFF4C8CB0FF5196B9FF4E8EB3FF4A88
          ADFF4882A8FF37658BFF305A7FFF4E8FB3FF4C8BB0FF4A85ABFF4780A6FF457B
          A2FF3E6E94FF365F81FF33597BFF305375FF2D4D6FFF2A4869FF12202E8B0000
          00180000000A0000000200000000000000000000000000000000000000000000
          000000000000000000000000000023404F6D609CBDFF669FBEFF679FBEFF699F
          BDFF6B9FBDFF6C9FBEFF679EBBFF62A2BCFF5A9DBBFF5CA2C3FF69A3C2FF6C98
          B6FF6391B1FF5A89ABFF5181A6FF487AA0FF4F95B9FF559FC2FF5297BAFF4F90
          B4FF4C8BB0FF3A6C91FF325D82FF4F91B5FF4D8DB2FF4B88ADFF4882A8FF467D
          A4FF42769DFF396488FF345B7EFF315678FF2F5072FF2B4A6CFF152537900000
          000C000000060000000100000000000000000000000000000000000000000000
          00000000000000000000000000002542506D67A4C2FF6FA7C4FF70A7C4FF72A7
          C4FF70A4C1FF5386A6FF5786A3FF6A98B3FF6E9BB6FF6D9CB9FF72A3C0FF729E
          BCFF6595B4FF588BAEFF4F88ACFF4D8CB1FF53A3C6FF55AACCFF55A1C4FF5399
          BCFF5094B8FF3D7297FF346086FF5093B7FF4E90B4FF4C8AAFFF4985AAFF477F
          A6FF447AA1FF3D6D92FF355E81FF33597BFF305375FF2D4D6FFF162738890000
          0001000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000002644526D6FABC8FF77AFCAFF79AFCAFF7BAF
          CAFF73A5C0FF6997B2FF7EADC7FF79AAC5FF6DA1BFFF5F97B8FF538FB3FF4E8F
          B3FF5197BBFF5DA6C8FF69ACCAFFA5C6D3FF9FC1CEFF6AB2D0FF57ACCEFF56A4
          C7FF549DC0FF40799CFF366389FF5196B9FF4F92B6FF4D8CB1FF4A87ACFF4882
          A8FF457CA3FF41749BFF386386FF345B7EFF315578FF2E5072FF17283A860000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002848566E76B3CEFF80B7D0FF81B6D0FF80B4
          CEFF78AECAFF6BA6C4FF5E9DBEFF5498BBFF519ABDFF56A4C6FF64B5D3FF79C8
          E1FF90D8EDFF98DFF3FF92C4DAFFD8D7D5FFDFDAD6FFB7C4C9FF4985A4FF54A8
          CBFF58AACCFF4481A3FF38668CFF5398BBFF5194B8FF4E8FB3FF4B89AEFF4984
          AAFF467FA5FF4479A0FF3C6A8FFF365E81FF33587BFF2F5275FF182A3B860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000274A586B78BCD8FF7ABAD5FF6DB0CDFF60A6
          C6FF57A1C3FF54A2C5FF56A9CAFF5CB6D4FF64CAE3FF76E0F3FF92EBFAFF9EEB
          FAFFA9EAF9FFAAE7F8FF94C8DEFFD5D5D5FFE0DCD8FFCFCCCBFF334863FF2A5C
          7FFF4D9DBFFF4182A4FF3A688DFF549BBDFF5297BAFF4F91B5FF4D8CB0FF4A86
          ACFF4781A7FF457CA2FF407298FF376285FF345B7EFF315578FF192B3D860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000244A58665EB7D8FF59AFD1FF53A3C6FF54A6
          C8FF5EC0DEFF5BB7D6FF5FBAD6FF66CBE3FF6CDCEFFF73E9FAFF8DECFCFF9EEB
          FAFFA9EAF9FFBAECFAFF9BCCE1FFD5D7D6FFE3DEDAFFDBD8D5FF4B5D74FF112C
          4FFF1E4164FF224668FF3A678BFF569EC0FF5399BCFF5093B7FF4E8EB2FF4B89
          AEFF4983A9FF467EA4FF43779EFF3A678BFF355E81FF33587BFF1A2C3F860000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F1F252C3063778E438BA6C7488BB1FF4E92
          B4FF66D3ECFF5EBCDAFF60BAD6FF65CAE3FF6BDAEEFF74E6F8FF85E5F7FF9AE0
          F2FFA1DAECFFA2D2E5FF98C1D5FFC9D2D7FFD3D5D5FFE5E0DBFF6F7F92FF284C
          74FF30547BFF2A4B6FFF3C688BFF57A1C3FF549BBEFF5196B9FF4F90B4FF4C8B
          B0FF4A86ABFF4780A6FF457BA2FF3E6F94FF376184FF345B7EFF1A2E40860000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A171A1D367289A254A4
          C5FA62C6E1FF5BB3D4FF64B2D0FF83C5D9FF93CCDCFFA0CFDBFFA6CCD7FFA2C3
          D0FF98B7C9FF90AFC5FF8CAEC7FF87ADC9FFAAC0D0FFCBD2D6FF748CA3FF345B
          82FF33587DFF294A6CFF3C698AFF58A4C6FF559EC0FF5298BBFF5093B6FF4D8D
          B2FF4B88ADFF4882A8FF467DA4FF42759BFF396588FF355E81FF1B2F42860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050B0D0D2A59
          6C8152A4C9F857A9CDFF6CB2D1FFA3BAC8FFAEC2CCFFB0C8D0FFADC9D2FFA8C3
          CFFFA1BDCBFF96B4C7FF88ABC2FF789FBDFF6796BAFF5485AEFF396086FF3255
          7AFF305377FF284667FF3D6A89FF5AA8CAFF55A0C3FF539ABDFF5195B8FF4E90
          B4FF4C8AAFFF4985AAFF477FA6FF4479A0FF3C6B8FFF376184FF1C3143860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A13
          171E4082A1DE3A799DFF397297FF4784A9FF8DB1C4FF9EB9C6FF84A9BCFF6A9B
          B2FF5797B1FF488DAFFF4792B9FF4380A9FF3D6D96FF376188FF32567AFF3052
          75FF2D4D6FFF223E5DFF3E6A88FF5BACCEFF56A4C6FF559DBFFF5297BAFF4F92
          B6FF4D8DB1FF4A87ACFF4882A8FF457CA3FF3F7196FF386487FF1C3245860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000911
          151C376B8ADD4695B7FF53AACDFF55A4C6FF559DBFFF4D90B3FF3B7397FF3F79
          9DFF437DA2FF437A9FFF4379A0FF42779EFF3A668BFF2F5375FF254363FF1D36
          54FF172D49FF152A45FF3F6A86FF5DB0D2FF56A7CAFF559FC2FF539ABCFF5094
          B8FF4E8FB3FF4B89AEFF4984AAFF467FA5FF42769CFF3A678BFF1D3346860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000911
          151C3C7291DD69B8D6FF70C0DEFF5EAACAFF559DC0FF4C8DB0FF4A88ACFF4E8E
          B3FF4A86ACFF447BA0FF39698FFF2A5073FF1D3957FF18314EFF1A324FFF1F38
          56FF243F5CFF203A55FF406B85FF5FB4D5FF56ABCDFF56A2C5FF549CBFFF5297
          BAFF4F91B5FF4D8CB0FF4A86ACFF4781A7FF447BA1FF3D6C90FF1E3548860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A12
          151C3D7592DD86C2D9FF9ED4E9FF85BFD8FF6CABC9FF5597B9FF4682A5FF3869
          8DFF2B5477FF23476BFF204162FF234261FF284A68FF2B4C6AFF2A4967FF2946
          63FF27435FFF1F3852FF416A83FF60B8D9FF56AED1FF56A6C8FF559FC1FF5399
          BCFF5094B7FF4E8EB2FF4B89AEFF4983A9FF467EA4FF3F7196FF1E374A860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A12
          161C3E7895DD94C6DBFF9ECADCFF6B9AB4FF436F8EFF2C5576FF285173FF2F5F
          80FF3C7A98FF3C7C9BFF397391FF366684FF2F5371FF2B4C69FF284562FF2540
          5CFF223B56FF1A3148FF426B81FF63BDDEFF57B3D6FF56AACCFF56A1C4FF549B
          BEFF5196B9FF4F90B4FF4C8BB0FF4A86ABFF4780A7FF42769BFF20384B860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A13
          171C3A728EDD356787FF2E5F80FF2E6182FF3A7294FF4684A7FF437FA2FF3E76
          98FF3A708EFF32607CFF315E7AFF305B77FF2A4B67FF24405BFF1F3751FF1B33
          4AFF193148FF173047FF284660FF3F7B9DFF50A6CAFF57AED1FF56A5C7FF559E
          C0FF5298BBFF5093B6FF4D8DB2FF4B88ADFF4883A9FF447AA0FF213A4D860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A14
          171C3C7895DD579AB9FF6BB5D3FF65AECDFF5CA2C3FF5093B6FF40799BFF4176
          96FF376481FF305772FF284964FF224059FF1F3B54FF1C3851FF19344EFF152E
          4BFF102847FF0D2546FF0E2648FF25486EFF3A6D94FF488EB3FF55A5C8FF56A1
          C4FF539BBDFF5195B9FF4E90B4FF4C8AAFFF4985AAFF467EA3FF223D50860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A14
          181C3F809EDD93C9DEFFADDDEEFF8FC4DBFF6FAAC7FF4F8BABFF376885FF2B52
          6CFF264A63FF244761FF22435EFF1D3B58FF15304EFF102849FF112A4DFF1934
          57FF274366FF3A5677FF516B89FF597390FF3D6286FF366189FF3F769CFF4F96
          B9FF559EC0FF5298BBFF4F92B6FF4D8DB1FF4A87ACFF4781A7FF233F53860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A14
          181B3F819FDB7DB5CDFF7BAFC7FF5187A5FF396A88FF2F5B77FF2D5572FF2B52
          71FF274B6CFF214164FF1D3C5FFF1F3D62FF26466CFF33557BFF416388FF4D6E
          91FF527294FF506F91FF47678AFF516E8EFF5F7996FF49688AFF375F86FF3866
          8DFF4681A5FF5197BAFF5195B9FF4E8FB3FF4B89AEFF4984A9FF244155860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000913
          16183E86A3D93A7D9FFF3B7C9FFF3A7195FF37658AFF345D83FF30577EFF2F55
          7CFF315A80FF366188FF3A688FFF3F6C94FF436F97FF446E96FF426A93FF3D65
          8EFF386089FF345B85FF315881FF30567EFF385B82FF4D6B8DFF4D6B8DFF3C61
          87FF355F87FF3C6E94FF4B8AAEFF4F92B6FF4D8CB1FF4A86ABFF254357860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020304061B33
          405E4585A8EA4682A9FF42759DFF3F6F97FF3F7098FF41759CFF447AA1FF457D
          A3FF467DA4FF457BA2FF43789FFF42759CFF40729AFF3F6F97FF3E6C95FF3D6A
          93FF3B6791FF3A658EFF39628CFF375F89FF345C86FF335A83FF3B5F86FF4566
          8AFF3F6388FF375F86FF366289FF41789DFF4C8BAFFF4B89AEFF264558860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000070D11193E72
          91D64B88ADFF4C8AAFFF4D8EB2FF4F90B4FF4F90B4FF4E8EB2FF4C8BB0FF4B88
          ADFF4A86ABFF4883A9FF4780A6FF467EA4FF457BA2FF43789FFF42769DFF4173
          9BFF407098FF3F6E96FF406D95FF426D95FF446D94FF406891FF39628BFF365E
          87FF3A6088FF3C6188FF385F87FF355E86FF39688EFF457FA4FF264659860000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010303051A32
          3D513F748CB4589EBDF25AA2C4FF559DBFFF5299BCFF5196B9FF5094B7FF4F91
          B5FF4E8EB3FF4C8CB0FF4B89AEFF4A86ACFF4984A9FF4881A7FF487FA5FF497F
          A4FF4C7FA4FF5080A5FF5582A6FF5A85A7FF6087A9FF6489AAFF6386A7FF587D
          A0FF486F95FF3C648DFF386089FF375F88FF365E87FF355F86FF213C549E0001
          0205000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000307080A192D36433F6E82A05DA0BCE962AACAFF5AA2C4FF549DBFFF5299
          BCFF5297BAFF5194B8FF5092B6FF5090B4FF508FB2FF508DB1FF538DB0FF5B91
          B3FF6495B5FF6A97B6FF6E99B7FF739CB9FF799EBAFF7EA1BCFF84A4BEFF8AA7
          C0FF8AA7BFFF7F9DB8FF6789A9FF4E7499FF3D668FFF38628BFF2E5072DB060B
          1020000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000002030405132329323A64758C609FB9DE6BB2D0FE60AA
          CAFF57A2C4FF549DC0FF549BBEFF599CBEFF62A0C0FF69A2C1FF6AA1BFFF669D
          BCFF689DBCFF74A3C0FF83ACC6FF8DB1C9FF92B4CAFF97B6CCFF9CB9CDFFA2BC
          D0FFA9C0D2FFAEC3D4FEA9BBCAF18D9FAED5536779AA1E3245780F1A25420203
          0407000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000102020D1A1E24315766775E9B
          B3D071B8D5FB69B2D1FF5BA8C9FF56A2C4FF59A1C3FF65A6C5FF77AFCAFF87B6
          CFFF89B6CEFF80AFC9FF7AAAC6FF85B1CAFF9CBED2FFABC6D6FCA3BAC9EA8FA2
          ADC9707D869B4D545A682B2F3239121415170404040400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000811
          1518284A56635893A9C075BCD6F671BBD9FF62B0D0FF5DAACBFF5FA8C9FF68AB
          C9FF80B6D0FF9AC1D4F896B4C3E26C8B9BBC425E6D8C3B464C592226282D0B0D
          0D0F010101010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000050B0D0F1F3D47504F879CAE73BBD5EF6EB8D4F3559AB5D83C75
          8CAE2A50607C23343C4A191D1E22080808090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002060708152B3339162D363D081215190203
          0405000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object iconos32x32: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 4128812
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000050000000D00000012000000130000001300000013000000130000
          0013000000130000001300000013000000130000001300000013000000130000
          0013000000130000001300000013000000130000001300000013000000130000
          0013000000130000001300000013000000120000000B00000003000000000000
          0005000000160000002C000000380000003A0000003A0000003A0000003A0000
          003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
          003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
          003A0000003A0000003A0000003A00000036000000240000000B000000050906
          04256F533BD8886548FF866347FF846246FF836045FF815F44FF7F5E43FFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFB2AEABFF635347FF614834FF6046
          33FF5E4532FF5C4431FF5A4230FF37281DBB00000036000000120907051C7153
          3CD7A1846CFFC9B6A6FFC8B6A5FFC8B6A5FFC7B5A4FFC7B5A4FF635347FFF2F2
          F2FFEDEDEDFFE0E0E0FFD2D2D2FFD5D5D5FFDEDEDEFFE7E7E7FFEFEFEFFFEEEE
          EEFFE8E8E8FFE2E2E2FFE3E3E3FFE9E9E9FFCBC7C4FF635347FF8F7966FF9E88
          74FFC9B59FFFBEAC9BFFBEAC9BFF58412FFF0000003A0000001372543DD2A386
          6DFFC9B7A6FFBBA796FFA38D7AFFA28C79FFA18C78FFA08B77FF635347FFFFFF
          FFFFFAFAFAFF635347FF8F7966FF8F7966FFE3E3E3FFEEEEEEFFFAFAFAFFFBFB
          FBFFF2F2F2FFEAEAEAFFEAEAEAFFF1F1F1FFD2CECBFF635347FF8F7966FF9E88
          74FFC9B59FFF917B68FFBEAC9BFF58412FFF0000003A000000138E694BFFCAB8
          A7FFBCA997FFA48F7BFFA38E7AFFA38D7AFFA28C79FFA18C78FF635347FFFFFF
          FFFFFCFCFCFF635347FF8F7966FF8F7966FFE1E1E1FFECECECFFF8F8F8FFFCFC
          FCFFF3F3F3FFEBEBEBFFE9E9E9FFF0F0F0FFD1CDCAFF635347FF8F7966FF9E88
          74FFC9B59FFF927C69FFBFAD9CFF58412FFF0000003A000000138E694BFFCAB8
          A7FFA6907DFFA5907CFFA48F7BFFA38E7AFFA38D7AFFA28C79FF635347FFFFFF
          FFFFFDFDFDFF635347FF8F7966FF8F7966FFDFDFDFFFEBEBEBFFF6F6F6FFFCFC
          FCFFF5F5F5FFECECECFFE8E8E8FFEFEFEFFFD1CDCAFF635347FF8F7966FF9E88
          74FFC9B59FFF937D6AFFBFAD9CFF58412FFF0000003A000000138E694BFFCBB9
          A8FFA6917DFFA6907DFFA5907CFFA48F7BFFA38E7AFFA38D7AFF635347FFFFFF
          FFFFFEFEFEFF635347FF8F7966FF8F7966FFDEDEDEFFE9E9E9FFF5F5F5FFFDFD
          FDFFF6F6F6FFEDEDEDFFE8E8E8FFEEEEEEFFD0CCC9FF635347FF8F7966FF9E88
          74FFC9B59FFF937E6AFFC0AE9DFF58412FFF0000003A000000138E694BFFCBBA
          A8FFA7927EFFA6917DFFA6907DFFA5907CFFA48F7BFFA38E7AFF635347FFFFFF
          FFFFFFFFFFFF635347FF84705EFF84705EFFDCDCDCFFE8E8E8FFF3F3F3FFFCFC
          FCFFF7F7F7FFEEEEEEFFE8E8E8FFEDEDEDFFCFCBC8FF635347FF8F7966FF9E88
          74FFC9B59FFF947E6BFFC0AE9DFF58412FFF0000003A000000138E694BFFCCBA
          A9FFA8937FFFA7927EFFA6917DFFA6907DFFA5907CFFA48F7BFF635347FFFFFF
          FFFFFFFFFFFF635347FF635347FF635347FFDBDBDBFFE6E6E6FFF1F1F1FFFCFC
          FCFFF8F8F8FFF0F0F0FFE8E8E8FFECECECFFCECAC7FF635347FF8F7966FF9E88
          74FFC9B59FFF957F6CFFC1AE9DFF58412FFF0000003A000000138E694BFFCCBA
          A9FFA99380FFA8937FFFA7927EFFA6917DFFA6907DFFA5907CFF635347FFF5F4
          F4FFFFFFFFFFF8F8F8FFE6E6E6FFD4D4D4FFD9D9D9FFE4E4E4FFF0F0F0FFFBFB
          FBFFF9F9F9FFF1F1F1FFE9E9E9FFEBEBEBFFAAA29CFF665549FF8F7966FF9E88
          74FFC9B59FFF96806DFFC1AF9EFF58412FFF0000003A000000138E694BFFCCBB
          A9FFAA9481FFA99380FFA8937FFFA7927EFFA6917DFFA6907DFF67574AFF6353
          47FF635347FF635347FF635347FF635347FF635347FF635347FF635347FF6353
          47FF635347FF635347FF635347FF635347FF635347FF635347FF635347FF6959
          4DFFC6B29CFF97816EFFC2AF9FFF58412FFF0000003A000000138E694BFFCDBB
          AAFFAC9683FFAA9481FFA99380FFA8937FFFA7927EFFA6917DFFA28D79FF9481
          6FFF94806EFF947F6EFF937F6DFF927E6DFF927E6CFF917D6BFF917C6BFF907C
          6AFF8F7B6AFF8F7B69FF8E7A69FF8E7968FF8D7967FF8C7867FF8C7866FF9580
          6DFF98826FFF97816EFFC2B09FFF58412FFF0000003A000000138E694BFFCDBC
          AAFFB29C89FFAD9884FFAA9481FFA99380FFA8937FFFA7927EFFA6917DFFA690
          7DFFA5907CFFA48F7BFFA48E7BFFA38D7AFFA28C79FFA18C78FFA08B77FFA08A
          77FF9F8976FF9E8875FF9D8874FF9D8774FF9C8673FF9B8572FF9A8571FF9984
          71FF998370FF98826FFFC2B09FFF58412FFF0000003A000000138E694BFFCEBC
          ABFFB49E8BFFB29D8AFFAF9A87FFAA9582FFC7B39DFFC9B59FFFC9B59FFFC9B5
          9FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B5
          9FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC6B2
          9CFF998471FF998370FFC3B0A0FF58412FFF0000003A000000138E694BFFCEBC
          ABFFB5A08DFFB49E8BFFB29D8AFF68584BFF908073FFBBAA9CFFBAAA9CFFBAA9
          9BFFB9A99AFFB8A89AFFB8A799FFB7A799FFB7A698FFB6A598FFB5A597FFB5A4
          97FFB4A496FFB3A395FFB3A395FFB2A294FFB1A194FFA59281FFB19C87FFC9B5
          9FFF9A8571FF998471FFC3B1A0FF58412FFF0000003A000000138E694BFFCFBD
          ACFFB7A18EFFB5A08DFFB49E8BFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF998370FFC9B5
          9FFF9B8572FF9A8571FFC3B1A1FF58412FFF0000003A000000138E694BFFCFBD
          ACFFB8A390FFB7A18EFFB5A08DFF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF998470FFC9B5
          9FFF9C8673FF9B8572FFC4B2A1FF58412FFF0000003A000000138E694BFFD0BD
          ADFFBAA491FFB8A390FFB7A18EFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF9A8471FFC9B5
          9FFF9D8774FF9C8673FFC4B2A1FF58412FFF0000003A000000138E694BFFD0BE
          ADFFBBA693FFBAA491FFB8A390FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF9B8572FFC9B5
          9FFF9D8874FF9D8774FFC5B3A2FF58412FFF0000003A000000138E694BFFD0BE
          ADFFBDA794FFBBA693FFBAA491FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF9C8673FFC9B5
          9FFF9E8875FF9D8874FFC5B3A2FF58412FFF0000003A000000138E694BFFD1BF
          AEFFBEA996FFBDA794FFBBA693FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF9C8773FFC9B5
          9FFF9F8976FF9E8875FFC5B4A2FF58412FFF0000003A000000138E694BFFD1BF
          AEFFC0AA97FFBEA996FFBDA794FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF9E8874FFC9B5
          9FFFA08A77FF9F8976FFC6B4A3FF58412FFF0000003A000000138E694BFFD1BF
          AEFFC1AC99FFC0AA97FFBEA996FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF9F8875FFC9B5
          9FFFA08B77FFA08A77FFC6B4A3FF58412FFF0000003A000000138E694BFFD2C0
          AFFFC3AD9AFFC1AC99FFC0AA97FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFA08976FFC9B5
          9FFFA18C78FFA08B77FFC7B5A4FF58412FFF0000003A000000138E694BFFD2C1
          AFFFC4AF9CFFC3AD9AFFC1AC99FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFA18A77FFC9B5
          9FFFA28C79FFA18C78FFC7B5A4FF58412FFF0000003A000000138E694BFFD3C1
          B0FFC9B4A2FFC7B3A1FFC6B29FFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFA28B78FFC9B5
          9FFFA38D7AFFA28C79FFC8B6A5FF58412FFF0000003A000000138E694BFFD3C1
          B0FFD3C1B0FFD2C1AFFFD2C0AFFF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
          FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFA38D7AFFC9B5
          9FFFA48E7BFFA38D7AFFC8B6A5FF58412FFF0000003A000000138E694BFFD3C2
          B0FF5C4D41FF5C4D41FFD2C1AFFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFA58E7BFFC9B5
          9FFF5C4D41FF5C4D41FFC9B6A6FF58412FFF0000003A000000138E694BFFD4C2
          B1FF5C4D41FF5C4D41FFD3C1B0FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFAE9986FFC9B5
          9FFF5C4D41FF5C4D41FFC9B7A6FF58412FFF00000036000000128E694BFFD0BD
          ABFFD4C2B1FFD3C2B0FFD3C1B0FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
          FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC7B4A3FFC9B5
          9FFFCAB8A7FFCAB8A7FFC2B09FFF58412FFF000000240000000B58412EA08C67
          4AFF8A6649FF886548FF866347FF7C5E46FF836045FF815F44FF7F5E43FF7D5C
          42FF7B5B41FF795A40FF78583FFF76573EFF74553DFF72543CFF70533BFF6E51
          3AFF6C5039FF6B4F38FF694D37FF674C36FF654B35FF634934FF614834FF6046
          33FF5E4532FF5C4431FF5A4230FF37281DA60000000B00000003}
      end>
  end
end
