object frm_Nomina_ProcesarNomina: Tfrm_Nomina_ProcesarNomina
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Procesar N'#243'mina'
  ClientHeight = 341
  ClientWidth = 620
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
  object Label1: TLabel
    Left = 25
    Top = 16
    Width = 265
    Height = 13
    Caption = 'SE REALIZAR'#193' EL PROCESO DE LA N'#211'MINA {NOMINA}'
  end
  object Label2: TLabel
    Left = 25
    Top = 54
    Width = 168
    Height = 13
    Caption = 'EMPLEADOS: {CANT_EMPLEADOS}'
  end
  object Label3: TLabel
    Left = 25
    Top = 73
    Width = 172
    Height = 13
    Caption = 'D'#205'AS DE N'#211'MINA: {DIAS_NOMINA}'
  end
  object Label4: TLabel
    Left = 25
    Top = 35
    Width = 240
    Height = 13
    Caption = 'FECHAS: DE {FECHA_INICIAL} A {FECHA_FINAL}'
  end
  object Button1: TButton
    Left = 459
    Top = 209
    Width = 141
    Height = 48
    Caption = 'Incidencias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object Button2: TButton
    Left = 459
    Top = 263
    Width = 141
    Height = 48
    Caption = 'Reporte de N'#243'mina'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object btnGuardar: TButton
    Left = 25
    Top = 151
    Width = 186
    Height = 45
    Caption = 'PROCESAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnGuardarClick
  end
  object Progreso_Proceso: TProgressBar
    Left = 0
    Top = 324
    Width = 620
    Height = 17
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 202
  end
  object Memo1: TMemo
    Left = 365
    Top = 8
    Width = 247
    Height = 310
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 25
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Timbrar CFDI '
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object zq_ConsultaGeneral: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'nom.*, '
      #9'DATEDIFF(nom.dFechaFinal, nom.dFechaInicial) + 1 AS DIAS, '
      #9'SUM(en.dImporte) AS dTotal '
      'FROM nom_nominas AS nom '
      
        #9'LEFT JOIN nom_empleadospornomina AS en ON (en.iId_Nomina = nom.' +
        'iId) '
      'GROUP BY nom.iId '
      'ORDER BY iId DESC;')
    Params = <>
    Left = 24
    Top = 88
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = zq_ConsultaGeneral
    Left = 59
    Top = 89
  end
  object zq_DetallesEgresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM tesoreriapegresos LIMIT 1;'
      
        '-- WHERE iIdFolio = :Folio AND sIdEgreso = "NOMINA" AND sTipoEgr' +
        'eso = "Empleados" AND sIdProveedor = :IdEmpleado;')
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
    Left = 8
    Top = 8
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
    Left = 40
    Top = 8
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
