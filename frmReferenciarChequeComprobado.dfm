object frm_ReferenciarChequeComprobado: Tfrm_ReferenciarChequeComprobado
  Left = 309
  Top = 225
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Referenciar Cheque'
  ClientHeight = 546
  ClientWidth = 1289
  Color = 13683905
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    1289
    546)
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 158
    Top = 1
    Width = 91
    Height = 15
    Caption = 'Efectivo Pagado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 2
    Top = 1
    Width = 101
    Height = 15
    Caption = 'Monto del Cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 315
    Top = 1
    Width = 144
    Height = 15
    Caption = 'Pendiente de Referenciar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pgEgresos: TPageControl
    Left = 0
    Top = 44
    Width = 1004
    Height = 501
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HotTrack = True
    MultiLine = True
    ParentFont = False
    TabOrder = 1
    TabPosition = tpBottom
    OnChange = pgEgresosChange
    OnChanging = pgEgresosChanging
  end
  object GroupBox1: TGroupBox
    Left = 1006
    Top = 36
    Width = 283
    Height = 509
    Anchors = [akTop, akRight, akBottom]
    Caption = 'Descripcion del Evento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      283
      509)
    object btnQuitarComprobacion: TSpeedButton
      Left = 5
      Top = 472
      Width = 135
      Height = 33
      Anchors = [akLeft, akBottom]
      Caption = 'Quitar Comprobacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888887488888444448888847888844448888888488884448888888
        8488884484888888848888488844888847888888888844447888888888888888
        8888888888888888888888888888888888888888888888888888}
      ParentFont = False
      OnClick = btnQuitarComprobacionClick
      ExplicitTop = 430
    end
    object btnPrinter: TSpeedButton
      Left = 146
      Top = 472
      Width = 134
      Height = 32
      Anchors = [akLeft, akBottom]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = btnPrinterClick
      ExplicitTop = 430
    end
    object tmDescripcion: TDBMemo
      Left = 3
      Top = 17
      Width = 279
      Height = 451
      Align = alCustom
      Anchors = [akLeft, akTop, akBottom]
      Color = 11009259
      DataField = 'mDescripcion'
      DataSource = dsQPEgresos
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object GridConceptos: TDBGrid
    Left = 8
    Top = 53
    Width = 983
    Height = 378
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 13683905
    Ctl3D = False
    DataSource = dsQPEgresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnKeyPress = GridConceptosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'sIdEgreso'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sIdFactura'
        ReadOnly = False
        Title.Alignment = taRightJustify
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sIdProveedor'
        ReadOnly = False
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sRazonSocial'
        ReadOnly = False
        Width = 556
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dImporte'
        ReadOnly = False
        Title.Alignment = taRightJustify
        Width = 103
        Visible = True
      end>
  end
  object tMonto: TCurrencyEdit
    Left = 2
    Top = 17
    Width = 150
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 3
  end
  object tPagado: TCurrencyEdit
    Left = 158
    Top = 17
    Width = 150
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 4
  end
  object tPendiente: TCurrencyEdit
    Left = 315
    Top = 17
    Width = 150
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    TabOrder = 5
  end
  object dsQPEgresos: TDataSource
    DataSet = zQPEgresos
    Left = 164
    Top = 106
  end
  object zQPEgresos: TZQuery
    Connection = connection.zConnection
    BeforeInsert = zQPEgresosBeforeInsert
    AfterPost = zQPEgresosAfterPost
    BeforeDelete = zQPEgresosBeforeDelete
    SQL.Strings = (
      
        'select * from tesoreriapegresos where dIdFecha = :Fecha and iIdF' +
        'olio = :folio order by sIdEgreso')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 201
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    object zQPEgresosdIdFecha: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'dIdFecha'
      Required = True
    end
    object zQPEgresosiIdFolio: TIntegerField
      DisplayLabel = 'Folio'
      FieldName = 'iIdFolio'
      Required = True
    end
    object zQPEgresossIdEgreso: TStringField
      DisplayLabel = 'Id. Egreso'
      FieldName = 'sIdEgreso'
      Required = True
      Size = 8
    end
    object zQPEgresossIdProveedor: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'sIdProveedor'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object zQPEgresossRazonSocial: TStringField
      DisplayLabel = 'Empleado/Razon Social'
      FieldName = 'sRazonSocial'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object zQPEgresossIdFactura: TStringField
      DisplayLabel = '# Factura'
      FieldName = 'sIdFactura'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object zQPEgresosmDescripcion: TMemoField
      DisplayLabel = 'Descripcion'
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zQPEgresosdImporte: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'dImporte'
      ReadOnly = True
      Required = True
      currency = True
    end
  end
  object zQCatalogodeEgresos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select distinct ce.sIdEgreso, ce.mDescripcion from tesoreriapegr' +
        'esos tpe'
      
        'inner join con_catalogodeegresos ce on (tpe.sIdEgreso = ce.sIdEg' +
        'reso)'
      'where tpe.dIdFecha = :Fecha and tpe.iIdFolio = :Folio'
      'order by sIdEgreso')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
    Left = 161
    Top = 81
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end>
  end
  object zCommand: TZQuery
    Connection = connection.zConnection
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted, usDeleted]
    Left = 586
    Top = 126
  end
  object ds_buscaobjeto: TDataSource
    AutoEdit = False
    DataSet = BuscaProveedor
    Left = 477
    Top = 122
  end
  object BuscaProveedor: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = BuscaProveedorAfterScroll
    SQL.Strings = (
      
        'select sIdProveedor, sRazonSocial, sIdFactura, dTotal, dPagado, ' +
        'mDescripcion, "" as sDescripcion'
      
        'from cuentasxpagar where dTotal > dPagado and sIdProveedor = :Pr' +
        'oveedor order by dIdFecha, sIdFactura')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
    Left = 441
    Top = 166
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proveedor'
        ParamType = ptUnknown
      end>
  end
  object BuscaObjeto: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = BuscaObjetoAfterScroll
    SQL.Strings = (
      'select e.sIdEmpleado, e.sNombreCompleto, a.sDescripcion'
      
        'from empleados e inner join areas a on (a.sIdArea = e.sIdArea) o' +
        'rder by e.sNombreCompleto')
    Params = <>
    Left = 473
    Top = 166
  end
  object zQPagado: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sum(dImporte) as dPagado from con_tesoreriapegresos where' +
        ' dIdFecha = :Fecha and iIdFolio = :folio group by dIdFecha, iIdF' +
        'olio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
    Left = 569
    Top = 222
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'folio'
        ParamType = ptUnknown
      end>
  end
end
