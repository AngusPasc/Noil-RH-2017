object FrmIniciacionSaldo: TFrmIniciacionSaldo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Saldos Iniciales'
  ClientHeight = 401
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGBDatos: TcxGroupBox
    Left = 0
    Top = 194
    Align = alBottom
    PanelStyle.Active = True
    ParentFont = False
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 207
    Width = 544
    object CxDbDateFecha: TcxDBDateEdit
      Left = 71
      Top = 10
      DataBinding.DataField = 'dIdFecha'
      DataBinding.DataSource = dsDeposito
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 466
    end
    object cxDbCurrencyEditIMporte: TcxDBCurrencyEdit
      Left = 71
      Top = 33
      DataBinding.DataField = 'dImporteTotal'
      DataBinding.DataSource = dsDeposito
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 466
    end
    object CxDbMemoMotivo: TcxDBMemo
      Left = 70
      Top = 56
      DataBinding.DataField = 'mDescripcion'
      DataBinding.DataSource = dsDeposito
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 146
      Width = 467
    end
    object CxLbl1: TcxLabel
      Left = 2
      Top = 11
      Caption = 'Fecha:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl3: TcxLabel
      Left = 2
      Top = 57
      Caption = 'Motivo:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl2: TcxLabel
      Left = 2
      Top = 34
      Caption = 'Saldo:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 0
    Width = 71
    Height = 194
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alLeft
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitWidth = 71
    ExplicitHeight = 194
    inherited AdvPanel1: TAdvPanel
      Width = 71
      Height = 194
      Align = alLeft
      TabOrder = 2
      ExplicitWidth = 71
      ExplicitHeight = 194
      FullHeight = 0
      inherited btnEdit: TcxButton
        Left = 1
        Top = 28
        Enabled = False
        OnClick = btnEditClick
        ExplicitLeft = 1
        ExplicitTop = 28
      end
      inherited btnPost: TcxButton
        Left = 1
        Top = 49
        OnClick = btnPostClick
        ExplicitLeft = 1
        ExplicitTop = 49
      end
      inherited btnCancel: TcxButton
        Left = 2
        Top = 73
        OnClick = btnCancelClick
        ExplicitLeft = 2
        ExplicitTop = 73
      end
      inherited btnDelete: TcxButton
        Left = 2
        Top = 97
        Enabled = False
        OnClick = btnDeleteClick
        ExplicitLeft = 2
        ExplicitTop = 97
      end
      inherited btnPrinter: TcxButton
        Left = 2
        Enabled = False
        ExplicitLeft = 2
      end
      inherited btnRefresh: TcxButton
        Left = 2
        Top = 145
        Enabled = False
        OnClick = btnRefreshClick
        ExplicitLeft = 2
        ExplicitTop = 145
      end
      inherited btnExit: TcxButton
        Left = 2
        Top = 169
        OnClick = btnExitClick
        ExplicitLeft = 2
        ExplicitTop = 169
      end
      inherited btnAdd: TcxButton
        Left = 2
        Top = 4
        Enabled = False
        OnClick = btnAddClick
        ExplicitLeft = 2
        ExplicitTop = 4
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
  object CxGridDatos: TcxGrid
    AlignWithMargins = True
    Left = 72
    Top = 30
    Width = 465
    Height = 164
    Margins.Left = 1
    Margins.Top = 30
    Margins.Right = 7
    Margins.Bottom = 0
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object CxGridSaldoInicial: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsDeposito
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object IDGrid1DBTableView1iid1: TcxGridDBColumn
        DataBinding.FieldName = 'iid'
        Visible = False
        Options.Editing = False
        Width = 74
      end
      object IDGrid1DBTableView1sIdCompania1: TcxGridDBColumn
        DataBinding.FieldName = 'sIdCompania'
        Visible = False
        Options.Editing = False
        Width = 109
      end
      object CxColumnFecha: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'dIdFecha'
        Options.Editing = False
        Width = 68
      end
      object CxColumnCuenta: TcxGridDBColumn
        Caption = 'Cuenta Bancaria'
        DataBinding.FieldName = 'sIdNumeroCuenta'
        Width = 109
      end
      object CxColumnImporte: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'dImporteTotal'
        Width = 110
      end
      object CxColumnMotivo: TcxGridDBColumn
        Caption = 'Motivo'
        DataBinding.FieldName = 'mDescripcion'
        Width = 109
      end
    end
    object CxLevelSaldoInicial: TcxGridLevel
      GridView = CxGridSaldoInicial
    end
  end
  object CxLbl4: TcxLabel
    Left = 72
    Top = 3
    Caption = 'Cuenta:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object CxCbbCuentas: TcxLookupComboBox
    Left = 125
    Top = 3
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'sIdNumeroCuenta'
    Properties.ListColumns = <
      item
        Caption = 'Cuenta Bancaria'
        FieldName = 'DatosCuenta'
      end>
    Properties.ListSource = dsCuentas
    Properties.OnChange = CxCbbCuentasPropertiesChange
    TabOrder = 4
    Width = 412
  end
  object zCuentas: TZQuery
    SQL.Strings = (
      'Select'
      '  a.sIdNumeroCuenta,'
      '  a.sNombreCuenta,'
      '  a.sFirmanCuenta,'
      '  a.sInterbancaria,'
      '  a.sFolioCheque,'
      '  a.sFolioSinCheque,'
      '  a.sIdBanco,'
      '  a.sIdCompaniaConf,'
      '  a.eAplicaFiscal,'
      
        '  Concat(a.sNombreCuenta, '#39' CTA: ['#39', a.sIdBanco, '#39' '#39',  a.sIdNume' +
        'roCuenta, '#39']'#39' ) as DatosCuenta'
      'From '
      '  con_cuentasbancarias as a'
      'Where'
      '  (a.eAplicaFiscal = '#39'Si'#39') and '
      
        '  (:sIdNumeroCuenta = -1 or (:sIdNumeroCuenta <> -1 and a.sIdNum' +
        'eroCuenta = :sIdNumeroCuenta)) and '
      
        '  (:sIdCompaniaConf = -1 or (:sIdCompaniaConf <> -1 and a.sIdCom' +
        'paniaConf = :sIdCompaniaConf))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sIdNumeroCuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdCompaniaConf'
        ParamType = ptUnknown
      end>
    Left = 392
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sIdNumeroCuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sIdCompaniaConf'
        ParamType = ptUnknown
      end>
  end
  object dsCuentas: TDataSource
    DataSet = zCuentas
    Left = 424
    Top = 304
  end
  object zDeposito: TZQuery
    SQL.Strings = (
      'Select '
      '  a.iIdFolio,'
      '  a.dIdFecha,'
      '  a.sTipoMovimiento,'
      '  a.sIdArea,'
      '  a.sIdNumeroCuenta,'
      '  a.sNumeroOrden,'
      '  a.sReferencia,'
      '  a.sIdProveedor,'
      '  a.sIdCompania,'
      '  a.sRfc,'
      '  a.sRazonSocial,'
      '  a.sDomicilio,'
      '  a.sCiudad,'
      '  a.sCp,'
      '  a.sEstado,'
      '  a.sTelefono,'
      '  a.dImporteTotal, '
      '  a.dImporteSubTotal,'
      '  a.lComprobado,'
      '  a.sStatus,'
      '  a.mDescripcion,'
      '  a.dIva,'
      '  a.lAplicaIva,'
      '  a.sPoliza,'
      '  a.dFechaFactura,'
      '  a. dFechaRecepcion,'
      '  a.iFolio,'
      '  a.iIdStatus,'
      '  a.sFormaPago,'
      '  a.sNumerodeCuenta,'
      '  a.sNumeroPedido,'
      '  a.iImprimeProveedor,'
      '  a. sMes,'
      '  a.lAplicaPagoParcial,'
      '  a.dParcialidad,'
      '  a.sProyecto,'
      '  a.sUsuario,'
      '  a.iEjercicio,'
      '  a.iIdTipoMoneda,'
      '  a.iIdPrecioMoneda,'
      '  a.lNotaCredito,'
      '  a.eSaldoInicial'
      'From '
      '  con_tesoreriaegresos as a'
      'where '
      '  (a.eSaldoInicial = '#39'Si'#39') and'
      
        '  (:Cuenta = -1 or (:Cuenta <> -1 and a.sIdNumeroCuenta = :Cuent' +
        'a))'
      '  ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cuenta'
        ParamType = ptUnknown
      end>
  end
  object dsDeposito: TDataSource
    DataSet = zDeposito
    Left = 456
    Top = 312
  end
end
