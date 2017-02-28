object frm_Nomina_ReporteAcumulados: Tfrm_Nomina_ReporteAcumulados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reporte de N'#243'minas'
  ClientHeight = 118
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 21
    Width = 370
    Height = 24
    Caption = 'Su reporte de Acumulados fue exportado.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 104
    Top = 72
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
      '                e.dFaltas, '
      #9'a.sDescripcion AS sDescripcionArea '
      'FROM nom_empleadospornomina AS e '
      #9'INNER JOIN empleados AS ne ON (ne.sIdEmpleado = e.sIdEmpleado) '
      #9'INNER JOIN con_areas AS a ON (a.sIdArea = ne.sIdArea) '
      'WHERE e.iId_Nomina = :IdNomina '
      'ORDER BY ne.sIdArea, ne.sNombreCompleto ASC ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 80
    Top = 104
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
    object zq_datosdeempleadosDescripcionArea: TStringField
      FieldName = 'sDescripcionArea'
      Required = True
      Size = 50
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
    Left = 112
    Top = 104
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
    ReportOptions.LastChange = 41318.880311620370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Rich10OnAfterData(Sender: TfrxComponent);'
      'var'
      '  TotalPercepciones: Extended;'
      '  TotalDeducciones: Extended;      '
      'begin'
      '  Percepciones_Cant.Text := '#39#39';'
      '  Percepciones_Desc.Text := '#39#39';'
      '  Percepciones_Tot.Text := '#39#39';'
      '  Memo19.Text := '#39#39';                      '
      
        '  TotalPercepciones := 0;                                       ' +
        '                 '
      '  Master_Percepciones.DataSet.First;          '
      '  while Not Master_Percepciones.DataSet.Eof do begin'
      
        '    if ( <frx_datosdeempleado."sIdEmpleado"> = <frx_Percepciones' +
        '."sIdEmpleado">) then begin                                     ' +
        '                                                                ' +
        '   '
      
        '       Percepciones_Cant.Text := Percepciones_Cant.Text + FloatT' +
        'oStr(<frx_Percepciones."dCantidad">) + #13 + #10 + #13 + #10;'
      
        '       Percepciones_Desc.Text := Percepciones_Desc.Text + <frx_P' +
        'ercepciones."sDescripcion"> + #13 + #10 + #13 + #10;'
      
        '       Percepciones_Tot.Text := Percepciones_Tot.Text + FormatFl' +
        'oat('#39'$ 0.00'#39', <frx_Percepciones."dImporteTotal">) + '#39' '#39' + #13 + ' +
        '#10 + #13 + #10;             '
      
        '       TotalPercepciones := (TotalPercepciones + <frx_Percepcion' +
        'es."dImporteTotal">)                                            '
      '    end;'
      '    Master_Percepciones.DataSet.Next;                  '
      '  end;'
      
        '  Memo19.Text := FormatFloat('#39'$ 0.00'#39', TotalPercepciones);      ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '    '
      '  Deducciones_Cant.Text := '#39#39';'
      '  Deducciones_Desc.Text := '#39#39';'
      '  Deducciones_Tot.Text := '#39#39';'
      
        '  Memo21.Text := '#39#39';                                            ' +
        '      '
      
        '  TotalDeducciones := 0;                                        ' +
        '                '
      '  Master_Deducciones.DataSet.First;                      '
      '  while Not Master_Deducciones.DataSet.Eof do begin'
      
        '    if ( <frx_datosdeempleado."sIdEmpleado"> = <frx_Deducciones.' +
        '"sIdEmpleado">) then begin                                      ' +
        '                                                                ' +
        '  '
      
        '       Deducciones_Cant.Text := Deducciones_Cant.Text + FloatToS' +
        'tr(<frx_Deducciones."dCantidad">) + #13 + #10 + #13 + #10;'
      
        '       Deducciones_Desc.Text := Deducciones_Desc.Text + <frx_Ded' +
        'ucciones."sDescripcion"> + #13 + #10 + #13 + #10;'
      
        '       Deducciones_Tot.Text := Deducciones_Tot.Text + FormatFloa' +
        't('#39'$ 0.00'#39', <frx_Deducciones."dImporteTotal">) + '#39' '#39' + #13 + #10' +
        ' + #13 + #10;             '
      
        '       TotalDeducciones := (TotalDeducciones + <frx_Deducciones.' +
        '"dImporteTotal">);                               '
      '    end;'
      '    Master_Deducciones.DataSet.Next;'
      '  end;'
      '  Memo21.Text := FormatFloat('#39'$ 0.00'#39', TotalDeducciones);      '
      ''
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 144
    Top = 104
    Datasets = <
      item
        DataSet = frx_datosdeempleado
        DataSetName = 'frx_datosdeempleado'
      end
      item
        DataSet = frx_Deducciones
        DataSetName = 'frx_Deducciones'
      end
      item
        DataSet = frx_Percepciones
        DataSetName = 'frx_Percepciones'
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
        Height = 207.874150000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        DataSet = frx_datosdeempleado
        DataSetName = 'frx_datosdeempleado'
        RowCount = 0
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 207.874150000000000000
          ShowHint = False
          Frame.Width = 2.000000000000000000
        end
        object Memo1: TfrxMemoView
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'PERCEPCIONES')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 226.771800000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DEDUCCIONES')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 453.543600000000000000
          Width = 264.567100000000000000
          Height = 207.874150000000000000
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
        object Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Top = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 170.078850000000000000
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
        object Memo5: TfrxMemoView
          Left = -0.220470000000000000
          Top = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 170.078850000000000000
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
        object Rich1: TfrxRichView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7B5C66315C666E696C205461686F6D613B7D
            7D0D0A5C766965776B696E64345C7563315C706172645C66305C667331362052
            454349424F204445204E5C2764334D494E413A5C66315C7061720D0A7D0D0A00}
        end
        object Picture1: TfrxPictureView
          Left = 454.543600000000000000
          Top = 2.000000000000000000
          Width = 113.385900000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Rich2: TfrxRichView
          Left = 566.929500000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7B5C66315C666E696C205461686F6D613B7D
            7D0D0A5C766965776B696E64345C7563315C706172645C66305C66733136205B
            73657475702E22734E6F6D627265225D5C66315C7061720D0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C66305C6673
            3136205B73657475702E2273526663225D5C7061720D0A7D0D0A00}
        end
        object Rich4: TfrxRichView
          Left = 453.543600000000000000
          Top = 66.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C205461686F6D613B7D7D
            0D0A5C766965776B696E64345C7563315C706172645C625C6673313620454D50
            4C4541444F3A5C62305C66315C7061720D0A7D0D0A00}
        end
        object Rich6: TfrxRichView
          Left = 453.543600000000000000
          Top = 113.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C205461686F6D613B7D7D
            0D0A5C766965776B696E64345C7563315C706172645C625C6673313620524643
            3A5C62305C66315C7061720D0A7D0D0A00}
        end
        object Rich7: TfrxRichView
          Left = 453.543600000000000000
          Top = 132.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C205461686F6D613B7D7D
            0D0A5C766965776B696E64345C7563315C706172645C625C6673313620505545
            53544F3A5C62305C66315C7061720D0A7D0D0A00}
        end
        object Rich8: TfrxRichView
          Left = 453.543600000000000000
          Top = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C205461686F6D613B7D7D
            0D0A5C766965776B696E64345C7563315C706172645C625C6673313620445C27
            63644153204C41424F5241444F533A5C62305C66315C7061720D0A7D0D0A00}
        end
        object Rich10: TfrxRichView
          Left = 567.606680000000000000
          Top = 66.590600000000000000
          Width = 151.181200000000000000
          Height = 45.354360000000000000
          OnAfterData = 'Rich10OnAfterData'
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C66305C6673
            3136205B6672785F6461746F736465656D706C6561646F2E22734E6F6D627265
            436F6D706C65746F225D5C7061720D0A7D0D0A00}
        end
        object Rich11: TfrxRichView
          Left = 566.929500000000000000
          Top = 113.488250000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C66305C6673
            3136205B6672785F6461746F736465656D706C6561646F2E2273526663225D5C
            7061720D0A7D0D0A00}
        end
        object Rich12: TfrxRichView
          Left = 566.929500000000000000
          Top = 132.385900000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C66305C6673
            3136205B6672785F6461746F736465656D706C6561646F2E227350756573746F
            225D5C7061720D0A7D0D0A00}
        end
        object Rich13: TfrxRichView
          Left = 566.929500000000000000
          Top = 151.181200000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C66305C6673
            3136205B6672785F6461746F736465656D706C6561646F2E2264446961734C61
            626F7261646F73225D5C7061720D0A7D0D0A00}
        end
        object Memo10: TfrxMemoView
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 264.567100000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 396.850650000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Percepciones_Cant: TfrxMemoView
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Percepciones_Desc: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Percepciones_Tot: TfrxMemoView
          Left = 170.078850000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Deducciones_Cant: TfrxMemoView
          Left = 226.771800000000000000
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Deducciones_Desc: TfrxMemoView
          Left = 264.567100000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Deducciones_Tot: TfrxMemoView
          Left = 396.850650000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
      end
      object Master_Percepciones: TfrxMasterData
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frx_Percepciones
        DataSetName = 'frx_Percepciones'
        KeepTogether = True
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Percepciones."sDescripcion"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dCantidad'
          DataSet = frx_Percepciones
          DataSetName = 'frx_Percepciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Percepciones."dCantidad"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dImporteTotal'
          DataSet = frx_Percepciones
          DataSetName = 'frx_Percepciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Percepciones."dImporteTotal"]')
          ParentFont = False
        end
      end
      object Master_Deducciones: TfrxMasterData
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frx_Deducciones
        DataSetName = 'frx_Deducciones'
        KeepTogether = True
        RowCount = 0
        object Memo16: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'sDescripcion'
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Deducciones."sDescripcion"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dCantidad'
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Deducciones."dCantidad"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dImporteTotal'
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Deducciones."dImporteTotal"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        Condition = 'frx_datosdeempleado."sIdEmpleado"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 52.913420000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Left = 226.771800000000000000
          Width = 226.771800000000000000
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
        object Memo23: TfrxMemoView
          Width = 226.771800000000000000
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
        object Rich9: TfrxRichView
          Left = 453.543600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C205461686F6D613B7D7D
            0D0A5C766965776B696E64345C7563315C706172645C625C6673313620535545
            4C444F20544F54414C3A5C62305C66315C7061720D0A7D0D0A00}
        end
        object Memo19: TfrxMemoView
          Left = 170.078850000000000000
          Top = 4.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 4.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '( + )   TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 396.850650000000000000
          Top = 4.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 226.771800000000000000
          Top = 4.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '( - )  TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 566.929500000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dSalarioReal'
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[frx_datosdeempleado."dSalarioReal"]')
        end
        object Memo25: TfrxMemoView
          Left = 453.543600000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
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
    Left = 80
    Top = 136
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
    Left = 112
    Top = 136
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
    Left = 80
    Top = 168
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
    Left = 112
    Top = 168
  end
  object zq_Nominas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'nom.*, '
      #9'DATEDIFF(nom.dFechaFinal, nom.dFechaInicial) + 1 AS DIAS, '
      #9'SUM(en.dImporte) AS dTotal '
      'FROM nom_nominas AS nom '
      
        #9'LEFT JOIN nom_empleadospornomina AS en ON (en.iId_Nomina = nom.' +
        'iId) '
      'WHERE nom.iId = :IdNomina '
      'ORDER BY iId DESC;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object zq_NominasdTotalRestante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dTotalRestante'
      Calculated = True
    end
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
    object zq_NominasiIdEgreso: TIntegerField
      FieldName = 'iIdEgreso'
    end
    object zq_NominasdDias: TFloatField
      FieldName = 'dDias'
    end
    object zq_NominassNombreEmpresa: TStringField
      FieldName = 'sNombreEmpresa'
      Size = 100
    end
    object zq_NominassRFC: TStringField
      FieldName = 'sRFC'
      Size = 100
    end
    object zq_NominasiId_RegistroPatronal: TIntegerField
      FieldName = 'iId_RegistroPatronal'
    end
    object zq_NominasiId_ZonaGeografica: TIntegerField
      FieldName = 'iId_ZonaGeografica'
    end
    object zq_NominasdSalarioMinimo: TFloatField
      FieldName = 'dSalarioMinimo'
    end
    object zq_NominasdSalarioMinimoDF: TFloatField
      FieldName = 'dSalarioMinimoDF'
    end
    object zq_NominasiProcesada: TIntegerField
      FieldName = 'iProcesada'
    end
    object zq_NominasDIAS: TLargeintField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object zq_NominasdTotal: TFloatField
      FieldName = 'dTotal'
      ReadOnly = True
    end
  end
  object zq_ReporteAcumulados: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'ar.sIdArea, '
      #9'ar.sDescripcion AS Area, '
      #9'de.iId_Nomina, '
      #9'de.sDescripcion,'
      #9'SUM(de.dImporte) AS Acumulado, '
      #9'de.lTipo, '
      #9'de.iId_Catalogo '
      'FROM nom_detallesporempleado AS de '
      
        #9'INNER JOIN empleados AS em ON (de.sIdEmpleado = em.sIdEmpleado)' +
        ' '
      #9'INNER JOIN con_areas AS ar ON (ar.sIdArea = em.sIdArea) '
      #9'WHERE '
      #9#9'de.iId_Nomina = :IdNomina '
      'GROUP BY em.sIdArea, de.sDescripcion, de.lTipo '
      'ORDER BY em.sIdArea, de.lTipo, de.iId_Catalogo;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 192
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
  end
  object zq_AcumuladosTotales: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'*, '
      #9'SUM(de.dImporte) AS Acumulado '
      'FROM nom_detallesporempleado AS de '
      #9'WHERE '
      #9#9'de.iId_Nomina = :IdNomina '
      'GROUP BY de.sDescripcion, de.lTipo '
      'ORDER BY de.lTipo, de.iId_Catalogo;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 192
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
  end
end
