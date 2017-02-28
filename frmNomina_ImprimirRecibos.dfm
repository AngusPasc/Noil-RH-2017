object frm_Nomina_ImprimirRecibos: Tfrm_Nomina_ImprimirRecibos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir Recibos'
  ClientHeight = 117
  ClientWidth = 262
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
  object Button1: TButton
    Left = 53
    Top = 48
    Width = 161
    Height = 25
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object zq_datosdeempleado: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'ne.*, '
      '                e.dImporte AS dSalarioReal, '
      '                e.dDiasLaborados, '
      '                e.dFaltas '
      'FROM nom_empleadospornomina AS e '
      #9'INNER JOIN empleados AS ne ON (ne.sIdEmpleado = e.sIdEmpleado) '
      'WHERE e.iId_Nomina = :IdNomina AND ne.lImprimeNomina = '#39'True'#39' '
      'ORDER BY ne.sNombreCompleto ASC ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object zq_datosdeempleadosIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
      Size = 8
    end
    object zq_datosdeempleadosNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object zq_datosdeempleadosRfc: TStringField
      FieldName = 'sRfc'
      Required = True
      Size = 50
    end
    object zq_datosdeempleadosDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zq_datosdeempleadosCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object zq_datosdeempleadosPuesto: TStringField
      FieldName = 'sPuesto'
      Required = True
      Size = 50
    end
    object zq_datosdeempleadosIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object zq_datosdeempleadosTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 60
    end
    object zq_datosdeempleadoseMail: TStringField
      FieldName = 'seMail'
      Required = True
      Size = 30
    end
    object zq_datosdeempleadodSueldo: TFloatField
      FieldName = 'dSueldo'
      Required = True
    end
    object zq_datosdeempleadosStatus: TStringField
      FieldName = 'sStatus'
      Required = True
      Size = 8
    end
    object zq_datosdeempleadosCuenta: TStringField
      FieldName = 'sCuenta'
      Required = True
      Size = 90
    end
    object zq_datosdeempleadolLabora: TStringField
      FieldName = 'lLabora'
      Required = True
      Size = 2
    end
    object zq_datosdeempleadosBanco: TStringField
      FieldName = 'sBanco'
      Required = True
      Size = 60
    end
    object zq_datosdeempleadosCuentaInterbancaria: TStringField
      FieldName = 'sCuentaInterbancaria'
      Required = True
      Size = 90
    end
    object zq_datosdeempleadosCurp: TStringField
      FieldName = 'sCurp'
      Required = True
      Size = 90
    end
    object zq_datosdeempleadosImss: TStringField
      FieldName = 'sImss'
      Required = True
      Size = 90
    end
    object zq_datosdeempleadosNacionalidad: TStringField
      FieldName = 'sNacionalidad'
      Required = True
      Size = 98
    end
    object zq_datosdeempleadosEstadoCivil: TStringField
      FieldName = 'sEstadoCivil'
      Required = True
      Size = 90
    end
    object zq_datosdeempleadodFechaNacimiento: TDateField
      FieldName = 'dFechaNacimiento'
      Required = True
    end
    object zq_datosdeempleadodFechaTerminoLabores: TDateField
      FieldName = 'dFechaTerminoLabores'
      Required = True
    end
    object zq_datosdeempleadodFechaInicioLabores: TDateField
      FieldName = 'dFechaInicioLabores'
    end
    object zq_datosdeempleadoiId_Puesto: TIntegerField
      FieldName = 'iId_Puesto'
    end
    object zq_datosdeempleadosLibretaMar: TStringField
      FieldName = 'sLibretaMar'
      Required = True
      Size = 80
    end
    object zq_datosdeempleadosCartilla: TStringField
      FieldName = 'sCartilla'
      Required = True
      Size = 80
    end
    object zq_datosdeempleadosCedulaProfesional: TStringField
      FieldName = 'sCedulaProfesional'
      Required = True
      Size = 40
    end
    object zq_datosdeempleadosLugarNacimiento: TStringField
      FieldName = 'sLugarNacimiento'
      Required = True
      Size = 150
    end
    object zq_datosdeempleadosCarrera: TStringField
      FieldName = 'sCarrera'
      Required = True
      Size = 150
    end
    object zq_datosdeempleadoiId_RegistroPatronal: TIntegerField
      FieldName = 'iId_RegistroPatronal'
    end
    object zq_datosdeempleadodSalarioDiario: TFloatField
      FieldName = 'dSalarioDiario'
    end
    object zq_datosdeempleadodFactorIntegracion: TFloatField
      FieldName = 'dFactorIntegracion'
    end
    object zq_datosdeempleadodPromedioVariables: TFloatField
      FieldName = 'dPromedioVariables'
    end
    object zq_datosdeempleadodSalarioIntegrado: TFloatField
      FieldName = 'dSalarioIntegrado'
    end
    object zq_datosdeempleadodSalarioReal: TFloatField
      FieldName = 'dSalarioReal'
    end
    object zq_datosdeempleadodDiasLaborados: TFloatField
      FieldName = 'dDiasLaborados'
    end
    object zq_datosdeempleadodFaltas: TFloatField
      FieldName = 'dFaltas'
    end
  end
  object frx_datosdeempleado: TfrxDBDataset
    UserName = 'frx_datosdeempleado'
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
      'sBanco=sBanco'
      'sCuentaInterbancaria=sCuentaInterbancaria'
      'sCurp=sCurp'
      'sImss=sImss'
      'sNacionalidad=sNacionalidad'
      'sEstadoCivil=sEstadoCivil'
      'dFechaNacimiento=dFechaNacimiento'
      'dFechaTerminoLabores=dFechaTerminoLabores'
      'dFechaInicioLabores=dFechaInicioLabores'
      'iId_Puesto=iId_Puesto'
      'sLibretaMar=sLibretaMar'
      'sCartilla=sCartilla'
      'sCedulaProfesional=sCedulaProfesional'
      'sLugarNacimiento=sLugarNacimiento'
      'sCarrera=sCarrera'
      'iId_RegistroPatronal=iId_RegistroPatronal'
      'dSalarioDiario=dSalarioDiario'
      'dFactorIntegracion=dFactorIntegracion'
      'dPromedioVariables=dPromedioVariables'
      'dSalarioIntegrado=dSalarioIntegrado'
      'dSalarioReal=dSalarioReal'
      'dDiasLaborados=dDiasLaborados')
    DataSet = zq_datosdeempleado
    BCDToCurrency = False
    Left = 40
    Top = 8
  end
  object ReporteNominas: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41307.127904143500000000
    ReportOptions.LastChange = 41398.782049305560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Rich10OnAfterData(Sender: TfrxComponent);'
      '      '
      'begin'
      '       '
      ''
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Top = 8
    Datasets = <
      item
        DataSet = frx_datosdeempleado
        DataSetName = 'frx_datosdeempleado'
      end
      item
        DataSet = frxSueldo
        DataSetName = 'frx_sueldo'
      end
      item
        DataSet = connection.frxDBConfiguracionRH
        DataSetName = 'frxDBConfiguracionRH'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
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
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        DataSet = frxSueldo
        DataSetName = 'frx_sueldo'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 34.015770000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dCantidadPer'
          DataSet = frxSueldo
          DataSetName = 'frx_sueldo'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 2.000000000000000000
          HideZeros = True
          Memo.UTF8 = (
            '[frx_sueldo."dCantidadPer"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 79.370130000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'sDescripcionPer'
          DataSet = frxSueldo
          DataSetName = 'frx_sueldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_sueldo."sDescripcionPer"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 273.126160000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxSueldo
          DataSetName = 'frx_sueldo'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frx_sueldo."dImportePer"]  ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 356.275820000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dCantidadDedu'
          DataSet = frxSueldo
          DataSetName = 'frx_sueldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frx_sueldo."dCantidadDedu"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 404.409710000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'sDescripcionDedu'
          DataSet = frxSueldo
          DataSetName = 'frx_sueldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_sueldo."sDescripcionDedu"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 597.165740000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxSueldo
          DataSetName = 'frx_sueldo'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frx_sueldo."dImporteDedu"]  ')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 196.756030000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        Condition = 'frx_sueldo."sIdEmpleado"'
        StartNewPage = True
        object Memo26: TfrxMemoView
          Left = 34.015770000000000000
          Top = 1.220470000000000000
          Width = 646.299630000000000000
          Height = 192.756030000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sNombre"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 52.913420000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'REG. PAT IMSS:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 154.960730000000000000
          Top = 37.795300000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frx_sueldo."sRegistroPatronal"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 52.913420000000000000
          Top = 56.692950000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'RFC.:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 154.960730000000000000
          Top = 56.692950000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sRfc"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 154.960730000000000000
          Top = 78.590600000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RECIBO DE NOMINA DEL ')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 306.141930000000000000
          Top = 78.590600000000000000
          Width = 309.921460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frx_sueldo."dFechaInicio"] AL [frx_sueldo."dFechaFinal"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 264.567100000000000000
          Top = 105.826840000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'PAGO UNICO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 113.385900000000000000
          Top = 125.504020000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTRATO DE TIEMPO DETERMINADO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 52.913420000000000000
          Top = 158.740260000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[frxDBConfiguracionRH."sDireccion1"] [frxDBConfiguracionRH."sDir' +
              'eccion2"] [frxDBConfiguracionRH."sDireccion3"] ')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 37.795300000000000000
        Top = 665.197280000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Left = 357.165585000000000000
          Width = 323.149815000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 34.015770000000000000
          Width = 322.771653543307000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 268.819071250000000000
          Top = 4.779530000000000000
          Width = 88.346513750000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frx_sueldo."dImportePer">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 34.015770000000000000
          Top = 4.779530000000000000
          Width = 223.464711250000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DE PERCEPCIONES ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 597.638181250000000000
          Top = 3.779530000000000000
          Width = 80.787453750000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frx_sueldo."dImporteDedu">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 359.055350000000000000
          Top = 3.779530000000000000
          Width = 223.464711250000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DE DEDUCCIONES')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 34.015770000000000000
          Top = 2.000000000000000000
          Width = 113.385900000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.frxDBConfiguracionRH
          DataSetName = 'frxDBConfiguracionRH'
          HightQuality = False
        end
        object Memo13: TfrxMemoView
          Left = 147.401670000000000000
          Top = 22.677180000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Color = clMaroon
          Frame.Typ = [ftBottom]
          Frame.Width = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBConfiguracionRH."sNombre"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 162.740260000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        Condition = 'frx_sueldo."sIdEmpleado"'
        object Memo37: TfrxMemoView
          Left = 34.015770000000000000
          Top = 1.220470000000000000
          Width = 646.299630000000000000
          Height = 158.740260000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 49.133890000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'PLATAFORMAS:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000000000
          Width = 514.016080000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'REHABILITACION DE TRANSFORMADORS DE POTENCIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 49.133890000000000000
          Top = 47.913420000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NOMBRE: [frx_sueldo."sNombre"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 49.133890000000000000
          Top = 82.370130000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'CATEGORIA:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 139.842610000000000000
          Top = 82.370130000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_sueldo."sPuesto"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 491.338900000000000000
          Top = 48.913420000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'N.S.S.: [frx_sueldo."sImss"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 491.338900000000000000
          Top = 82.149660000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'RFC: [frx_sueldo."sRfc"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 49.133890000000000000
          Top = 109.606370000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'CURP. :')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 139.842610000000000000
          Top = 109.606370000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_sueldo."sCurp"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 294.803340000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'DIAS PAGADOS:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 389.291590000000000000
          Top = 132.283550000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_sueldo."dDiasLaborados"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 113.385900000000000000
        Top = 725.669760000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 264.567100000000000000
          Top = 1.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[(SUM(<frx_sueldo."dImportePer">,MasterData1)) - (SUM(<frx_sueld' +
              'o."dImporteDedu">,MasterData1))]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 132.283550000000000000
          Width = 121.417401250000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'NETO A PAGAR ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 491.338900000000000000
          Top = 45.354360000000000000
          Width = 188.976500000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'RECIBI DE CONFORMIDAD'
            ''
            'NOMBRE Y FIRMA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 37.795300000000000000
          Top = 88.929190000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            'ESTE COMPROBANTE NO ES VALIDOS SINO CUENTA CON SELLO')
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 22.897650000000000000
        Top = 551.811380000000000000
        Width = 718.110700000000000000
        Condition = 'frx_sueldo."sIdEmpleado"'
        object Memo1: TfrxMemoView
          Left = 34.015770000000000000
          Top = 3.779530000000000000
          Width = 239.953327890000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PERCEPCION')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 357.118757890000000000
          Top = 3.779530000000000000
          Width = 243.732857890000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DEDUCCION')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 275.343010920000000000
          Top = 3.779530000000000000
          Width = 80.775746970000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 599.445998810000000000
          Top = 3.779530000000000000
          Width = 80.775746970000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'IMPORTE')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Top = 642.520100000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object zq_percepciones: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT *, (dImporte * dCantidad) AS dImporteTotal FROM nom_detal' +
        'lesporempleado WHERE lTipo = '#39'Percepcion'#39' AND iId_Nomina = :IdNo' +
        'mina;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 8
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object zq_percepcionesiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_percepcionesiId_Nomina: TIntegerField
      FieldName = 'iId_Nomina'
    end
    object zq_percepcionessIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Size = 50
    end
    object zq_percepcionesdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object zq_percepcionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object zq_percepcionesdImporte: TFloatField
      FieldName = 'dImporte'
    end
    object zq_percepcioneslImprime: TStringField
      FieldName = 'lImprime'
      Size = 2
    end
    object zq_percepcioneslTipo: TStringField
      FieldName = 'lTipo'
      Size = 10
    end
    object zq_percepcionesdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      ReadOnly = True
    end
  end
  object frx_Percepciones: TfrxDBDataset
    UserName = 'frx_Percepciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'iId_Nomina=iId_Nomina'
      'sIdEmpleado=sIdEmpleado'
      'dCantidad=dCantidad'
      'sDescripcion=sDescripcion'
      'dImporte=dImporte'
      'lImprime=lImprime'
      'lTipo=lTipo'
      'dImporteTotal=dImporteTotal')
    DataSet = zq_percepciones
    BCDToCurrency = False
    Left = 40
    Top = 40
  end
  object zq_deducciones: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT *, (dImporte * dCantidad) AS dImporteTotal FROM nom_detal' +
        'lesporempleado WHERE lTipo = '#39'Deduccion'#39' AND iId_Nomina = :IdNom' +
        'ina;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 8
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object zq_deduccionesiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_deduccionesiId_Nomina: TIntegerField
      FieldName = 'iId_Nomina'
    end
    object zq_deduccionessIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Size = 50
    end
    object zq_deduccionesdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object zq_deduccionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object zq_deduccionesdImporte: TFloatField
      FieldName = 'dImporte'
    end
    object zq_deduccioneslImprime: TStringField
      FieldName = 'lImprime'
      Size = 2
    end
    object zq_deduccioneslTipo: TStringField
      FieldName = 'lTipo'
      Size = 10
    end
    object zq_deduccionesdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      ReadOnly = True
    end
  end
  object frx_Deducciones: TfrxDBDataset
    UserName = 'frx_Deducciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'iId_Nomina=iId_Nomina'
      'sIdEmpleado=sIdEmpleado'
      'dCantidad=dCantidad'
      'sDescripcion=sDescripcion'
      'dImporte=dImporte'
      'lImprime=lImprime'
      'lTipo=lTipo'
      'dImporteTotal=dImporteTotal')
    DataSet = zq_deducciones
    BCDToCurrency = False
    Left = 40
    Top = 72
  end
  object rxSueldo: TRxMemoryData
    FieldDefs = <>
    Left = 176
    Top = 88
    object rxSueldoId: TIntegerField
      FieldName = 'Id'
    end
    object rxSueldoiId_Nomina: TIntegerField
      FieldName = 'iId_Nomina'
    end
    object rxSueldosIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Size = 50
    end
    object rxSueldodCantidadPer: TFloatField
      FieldName = 'dCantidadPer'
    end
    object rxSueldosDescripcionPer: TStringField
      FieldName = 'sDescripcionPer'
      Size = 100
    end
    object rxSueldodImportePer: TFloatField
      FieldName = 'dImportePer'
    end
    object rxSueldodImporteTotalPer: TFloatField
      FieldName = 'dImporteTotalPer'
    end
    object rxSueldodCantidadDedu: TFloatField
      FieldName = 'dCantidadDedu'
    end
    object rxSueldosDescripcionDedu: TStringField
      FieldName = 'sDescripcionDedu'
      Size = 100
    end
    object rxSueldodImporteDedu: TFloatField
      FieldName = 'dImporteDedu'
    end
    object rxSueldodImporteTotalDedu: TFloatField
      FieldName = 'dImporteTotalDedu'
    end
    object rxSueldosNombre: TStringField
      FieldName = 'sNombre'
      Size = 50
    end
    object rxSueldosRfc: TStringField
      FieldName = 'sRfc'
      Size = 50
    end
    object rxSueldosPuesto: TStringField
      FieldName = 'sPuesto'
      Size = 50
    end
    object rxSueldosImss: TStringField
      FieldName = 'sImss'
      Size = 90
    end
    object rxSueldosCurp: TStringField
      FieldName = 'sCurp'
      Size = 90
    end
    object rxSueldodDiasLaborados: TFloatField
      FieldName = 'dDiasLaborados'
    end
    object rxSueldodFechaInicio: TDateField
      FieldName = 'dFechaInicio'
    end
    object rxSueldodFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object rxSueldosRegistroPatronal: TStringField
      FieldName = 'sRegistroPatronal'
      Size = 50
    end
  end
  object frxSueldo: TfrxDBDataset
    UserName = 'frx_sueldo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'iId_Nomina=iId_Nomina'
      'sIdEmpleado=sIdEmpleado'
      'dCantidadPer=dCantidadPer'
      'sDescripcionPer=sDescripcionPer'
      'dImportePer=dImportePer'
      'dImporteTotalPer=dImporteTotalPer'
      'dCantidadDedu=dCantidadDedu'
      'sDescripcionDedu=sDescripcionDedu'
      'dImporteDedu=dImporteDedu'
      'dImporteTotalDedu=dImporteTotalDedu'
      'sNombre=sNombre'
      'sRfc=sRfc'
      'sPuesto=sPuesto'
      'sImss=sImss'
      'sCurp=sCurp'
      'dDiasLaborados=dDiasLaborados'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'sRegistroPatronal=sRegistroPatronal')
    DataSet = rxSueldo
    BCDToCurrency = False
    Left = 120
    Top = 80
  end
end
