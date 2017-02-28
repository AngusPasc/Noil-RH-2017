object frm_Nomina_EmpleadosPorNomina: Tfrm_Nomina_EmpleadosPorNomina
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Empleados por N'#243'mina'
  ClientHeight = 497
  ClientWidth = 660
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 173
      Height = 16
      Caption = 'INFORMACI'#211'N DE N'#211'MINA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_Nomina: TLabel
      Left = 187
      Top = 8
      Width = 297
      Height = 16
      Caption = '{NOMINA} DE {FECHA_INICIAL} A {FECHA_FINAL}'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 367
      Top = 31
      Width = 114
      Height = 16
      Caption = 'IMPORTE ASIGNADO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 487
      Top = 31
      Width = 43
      Height = 16
      Caption = '{Importe}'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnEdit: TBitBtn
      Left = 0
      Top = 1
      Width = 90
      Height = 8
      Hint = 'Editar registro (CTRL + E)'
      Align = alCustom
      Caption = 'Editar'
      Enabled = False
      TabOrder = 0
      Visible = False
      OnClick = btnEditClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000000
        00008888880FFFFFFFF000800000FF0F00F0E00BBBBB0FFFFFF0E0BBBB000FFF
        F0F0E0BBBBBBB0F00FF0E0BBBB00000C0FF0E0BBBBBBBBB0FFF0E0BB0000000F
        FFF0000BBB00C0FF00F08880000C0FFFFFF0888880C0FFFF000088880C0FF00F
        0FF08880C00FFFFF0F08880C080FFFFF00888880880000000888}
    end
    object FiltroEmpleado: TEdit
      Left = 8
      Top = 30
      Width = 353
      Height = 21
      TabOrder = 1
      Text = 'Buscar Empleado...'
      OnEnter = FiltroEmpleadoEnter
      OnExit = FiltroEmpleadoExit
      OnKeyUp = FiltroEmpleadoKeyUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 660
    Height = 65
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      660
      65)
    object btnPost: TBitBtn
      Left = 553
      Top = 17
      Width = 90
      Height = 25
      Hint = 'Salvar cambios (F10)'
      Align = alCustom
      Anchors = [akRight, akBottom]
      Caption = 'Terminar'
      Enabled = False
      TabOrder = 0
      OnClick = btnPostClick
      Glyph.Data = {
        36010000424D3601000000000000760000002800000011000000100000000100
        040000000000C0000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000008888888888888888800000008888890888888888800000008888
        9990888888888000000088889990888888888000000088899999088888888000
        0000889999990888888880000000899908999088888880000000990888899088
        8888800000008888888999088888800000008888888899088888800000008888
        8888899088888000000088888888889908888000000088888888888990888000
        0000888888888888899080000000888888888888888880000000}
    end
    object btnProcesarNomina: TBitBtn
      Left = 0
      Top = 49
      Width = 129
      Height = 25
      Hint = 'Salvar cambios (F10)'
      Align = alCustom
      Caption = 'Procesar N'#243'mina'
      Enabled = False
      TabOrder = 1
      Visible = False
      OnClick = btnProcesarNominaClick
      Glyph.Data = {
        36010000424D3601000000000000760000002800000011000000100000000100
        040000000000C0000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000008888888888888888800000008888890888888888800000008888
        9990888888888000000088889990888888888000000088899999088888888000
        0000889999990888888880000000899908999088888880000000990888899088
        8888800000008888888999088888800000008888888899088888800000008888
        8888899088888000000088888888889908888000000088888888888990888000
        0000888888888888899080000000888888888888888880000000}
    end
    object Progreso: TProgressBar
      Left = 5
      Top = 18
      Width = 542
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 660
    Height = 375
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Grid_EmpleadosPorNomina: TNextGrid
      Left = 0
      Top = 0
      Width = 660
      Height = 375
      Align = alClient
      AppearanceOptions = [aoAlphaBlendedSelection, aoHideSelection, aoHighlightSlideCells]
      AutoScroll = True
      Color = 15138559
      InactiveSelectionColor = 15138559
      Options = [goFooter, goHeader, goSelectFullRow]
      PopupMenu = PopUp_DetallesDeEmpleado
      SlideSelectionColor = 15138559
      TabOrder = 0
      TabStop = True
      OnAfterEdit = Grid_EmpleadosPorNominaAfterEdit
      OnChange = Grid_EmpleadosPorNominaChange
      OnDblClick = Grid_EmpleadosPorNominaDblClick
      OnHeaderClick = Grid_EmpleadosPorNominaHeaderClick
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
        Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
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
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
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
      Visible = False
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
  object Query: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 592
    Top = 8
  end
end
