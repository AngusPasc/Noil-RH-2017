object frm_EmpleadosPorNomina: Tfrm_EmpleadosPorNomina
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Empleados por N'#243'mina'
  ClientHeight = 475
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      857
      54)
    object Label1: TLabel
      Left = 16
      Top = 36
      Width = 150
      Height = 15
      Caption = 'INFORMACI'#211'N DE N'#211'MINA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label_Nomina: TLabel
      Left = 195
      Top = 36
      Width = 52
      Height = 15
      Caption = '{N'#243'mina}'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object FiltroEmpleado: TEdit
      Left = 494
      Top = 28
      Width = 353
      Height = 23
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Buscar Empleado...'
      OnEnter = FiltroEmpleadoEnter
      OnExit = FiltroEmpleadoExit
      OnKeyUp = FiltroEmpleadoKeyUp
    end
    object btncancel: TcxButton
      Left = 204
      Top = 4
      Width = 88
      Height = 29
      Caption = '&Salir'
      TabOrder = 1
      OnClick = btnCancelClick
      OptionsImage.ImageIndex = 306
      OptionsImage.Images = frmrepositorio.IconosTodos16
    end
    object btnpost: TcxButton
      Left = 110
      Top = 4
      Width = 88
      Height = 29
      Caption = '&Terminar'
      Enabled = False
      TabOrder = 2
      OnClick = btnPostClick
      OptionsImage.ImageIndex = 54
      OptionsImage.Images = frmrepositorio.IconosTodos16
    end
    object btnedit: TcxButton
      Left = 16
      Top = 4
      Width = 88
      Height = 29
      Caption = '&Editar'
      TabOrder = 3
      OnClick = btnEditClick
      OptionsImage.ImageIndex = 299
      OptionsImage.Images = frmrepositorio.IconosTodos16
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 396
    Width = 857
    Height = 79
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 54
    Width = 857
    Height = 342
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Grid_EmpleadosPorNomina: TNextGrid
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 837
      Height = 336
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      AppearanceOptions = [aoAlphaBlendedSelection, aoHideSelection, aoHighlightSlideCells]
      AutoScroll = True
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      InactiveSelectionColor = 15138559
      Options = [goFooter, goHeader, goSelectFullRow]
      ParentFont = False
      PopupMenu = PopUp_DetallesDeEmpleado
      SlideSelectionColor = 15138559
      TabOrder = 0
      TabStop = True
      OnAfterEdit = Grid_EmpleadosPorNominaAfterEdit
      object NxTextColumn3: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'iId'
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Visible = False
      end
      object NxCheckBoxColumn1: TNxCheckBoxColumn
        Alignment = taCenter
        Color = 15138559
        DefaultWidth = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Color = 15138559
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        ParentFont = False
        Position = 1
        SortType = stBoolean
        Width = 50
      end
      object NxTextColumn1: TNxTextColumn
        Color = 15138559
        DefaultWidth = 351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Color = 15138559
        Header.Caption = 'Empleado'
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 351
      end
      object NxTextColumn2: TNxTextColumn
        Color = 15138559
        DefaultWidth = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Color = 15138559
        Header.Caption = 'D'#237'as laborados'
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 100
      end
      object NxNumberColumn1: TNxNumberColumn
        Color = 15138559
        DefaultValue = '0'
        DefaultWidth = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Color = 13683905
        Footer.Alignment = taRightJustify
        Footer.FormatMask = '$ ###0.00'
        Footer.FormatMaskKind = mkFloat
        Header.Caption = 'Salario Total'
        ParentFont = False
        Position = 4
        SortType = stNumeric
        Width = 100
        FormatMask = '$ ###0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn4: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'sIdEmpleado'
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Visible = False
      end
      object NxTextColumn5: TNxNumberColumn
        Alignment = taLeftJustify
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Faltas'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stNumeric
        Visible = False
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn6: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'dSalarioReal'
        ParentFont = False
        Position = 7
        SortType = stAlphabetic
        Visible = False
      end
    end
  end
  object ds_Nominas: TDataSource
    AutoEdit = False
    DataSet = zq_Nominas
    Left = 571
    Top = 41
  end
  object zq_Nominas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT *, DATEDIFF(dFechaFinal, dFechaInicial) AS DIAS FROM nom_' +
        'nominas ORDER BY iId DESC')
    Params = <>
    Left = 528
    Top = 40
    object zq_NominasiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_NominassNomina: TStringField
      FieldName = 'sNomina'
      Size = 50
    end
    object zq_NominasdFechaInicial: TDateField
      FieldName = 'dFechaInicial'
    end
    object zq_NominasdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object zq_NominasDIAS: TLargeintField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object zq_NominasiIdEgreso: TIntegerField
      FieldName = 'iIdEgreso'
    end
  end
  object PopUp_DetallesDeEmpleado: TPopupMenu
    Left = 392
    Top = 104
    object Detallesdepersonal1: TMenuItem
      Caption = 'Detalles de personal'
      OnClick = Detallesdepersonal1Click
    end
    object Activarygenerarvalorespordefecto1: TMenuItem
      Caption = 'Activar y generar valores por defecto'
      OnClick = Activarygenerarvalorespordefecto1Click
    end
  end
  object zq_DetallesEgresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT * FROM tesoreriapegresos WHERE iIdFolio = :Folio AND sIdE' +
        'greso = "NOMINA" AND sTipoEgreso = "Empleados" AND sIdProveedor ' +
        '= :IdEmpleado;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdEmpleado'
        ParamType = ptUnknown
      end>
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdEmpleado'
        ParamType = ptUnknown
      end>
    object zq_DetallesEgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zq_DetallesEgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zq_DetallesEgresossIdEgreso: TStringField
      FieldName = 'sIdEgreso'
      Required = True
      Size = 8
    end
    object zq_DetallesEgresossTipoEgreso: TStringField
      FieldName = 'sTipoEgreso'
      Required = True
      Size = 13
    end
    object zq_DetallesEgresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zq_DetallesEgresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zq_DetallesEgresossIdFactura: TStringField
      FieldName = 'sIdFactura'
      Required = True
      Size = 10
    end
    object zq_DetallesEgresosmDescripcion: TMemoField
      DisplayWidth = 255
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zq_DetallesEgresosdImporte: TFloatField
      FieldName = 'dImporte'
      Required = True
    end
    object zq_DetallesEgresosdFechaComprobacion: TDateField
      FieldName = 'dFechaComprobacion'
    end
    object zq_DetallesEgresosdIva: TFloatField
      FieldName = 'dIva'
      Required = True
    end
    object zq_DetallesEgresosdRetencion: TFloatField
      FieldName = 'dRetencion'
      Required = True
    end
    object zq_DetallesEgresosdIspt: TFloatField
      FieldName = 'dIspt'
      Required = True
    end
    object zq_DetallesEgresosdIsr: TFloatField
      FieldName = 'dIsr'
      Required = True
    end
    object zq_DetallesEgresosdsubtotal: TFloatField
      FieldName = 'dsubtotal'
      Required = True
    end
    object zq_DetallesEgresossCheque: TStringField
      FieldName = 'sCheque'
      Required = True
      Size = 60
    end
    object zq_DetallesEgresossPoliza: TStringField
      FieldName = 'sPoliza'
      Required = True
    end
    object zq_DetallesEgresoseReal: TStringField
      FieldName = 'eReal'
      Required = True
      Size = 2
    end
  end
  object zq_Egresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM tesoreriaegresos WHERE iIdFolio = :iIdEgreso;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'iIdEgreso'
        ParamType = ptUnknown
      end>
    Left = 32
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iIdEgreso'
        ParamType = ptUnknown
      end>
    object zq_EgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zq_EgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zq_EgresossTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Size = 8
    end
    object zq_EgresossIdArea: TStringField
      FieldName = 'sIdArea'
      Size = 8
    end
    object zq_EgresossIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
    end
    object zq_EgresossNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 60
    end
    object zq_EgresossReferencia: TStringField
      FieldName = 'sReferencia'
      Size = 30
    end
    object zq_EgresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Size = 8
    end
    object zq_EgresossIdCompania: TStringField
      FieldName = 'sIdCompania'
      Size = 8
    end
    object zq_EgresossRFC: TStringField
      FieldName = 'sRFC'
      Size = 15
    end
    object zq_EgresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Size = 255
    end
    object zq_EgresossDomicilio: TStringField
      FieldName = 'sDomicilio'
      Size = 50
    end
    object zq_EgresossCiudad: TStringField
      FieldName = 'sCiudad'
      Size = 30
    end
    object zq_EgresossCP: TStringField
      FieldName = 'sCP'
      Size = 5
    end
    object zq_EgresossEstado: TStringField
      FieldName = 'sEstado'
      Size = 30
    end
    object zq_EgresossTelefono: TStringField
      FieldName = 'sTelefono'
    end
    object zq_EgresosdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
    end
    object zq_EgresoslComprobado: TStringField
      FieldName = 'lComprobado'
      Size = 2
    end
    object zq_EgresossStatus: TStringField
      FieldName = 'sStatus'
      Size = 9
    end
    object zq_EgresosmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zq_EgresosdIva: TFloatField
      FieldName = 'dIva'
    end
    object zq_EgresoslAplicaiva: TStringField
      FieldName = 'lAplicaiva'
      Size = 2
    end
    object zq_EgresossPoliza: TStringField
      FieldName = 'sPoliza'
      Size = 40
    end
    object zq_EgresosdFechaFactura: TDateField
      FieldName = 'dFechaFactura'
    end
    object zq_EgresosiFolio: TIntegerField
      FieldName = 'iFolio'
    end
    object zq_EgresosiIdStatus: TIntegerField
      FieldName = 'iIdStatus'
    end
    object zq_EgresossTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 13
    end
    object zq_EgresossFormaPago: TStringField
      FieldName = 'sFormaPago'
      Size = 50
    end
    object zq_EgresossNumeroDeCuenta: TStringField
      FieldName = 'sNumeroDeCuenta'
      Size = 50
    end
    object zq_EgresossNumeroPedido: TStringField
      FieldName = 'sNumeroPedido'
      Size = 50
    end
    object zq_EgresosiImprimeProveedor: TIntegerField
      FieldName = 'iImprimeProveedor'
    end
  end
end
