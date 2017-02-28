object frmGerencialBarco: TfrmGerencialBarco
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Gerencial Barco'
  ClientHeight = 318
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 15
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Label2: TLabel
    Left = 104
    Top = 38
    Width = 57
    Height = 13
    Caption = 'Hora Inicial:'
  end
  object Label3: TLabel
    Left = 109
    Top = 62
    Width = 52
    Height = 13
    Caption = 'Hora Final:'
  end
  object cmdGerencial: TButton
    Left = 104
    Top = 86
    Width = 161
    Height = 25
    Caption = 'Gerencial  Barco'
    TabOrder = 0
    OnClick = cmdGerencialClick
  end
  object Fecha: TDateTimePicker
    Left = 167
    Top = 12
    Width = 98
    Height = 21
    Date = 40981.541043935180000000
    Time = 40981.541043935180000000
    TabOrder = 1
  end
  object hInicio: TMaskEdit
    Left = 167
    Top = 35
    Width = 40
    Height = 21
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 2
    Text = '17:00'
  end
  object hTermino: TMaskEdit
    Left = 167
    Top = 59
    Width = 40
    Height = 21
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 3
    Text = '05:00'
  end
  object chkOpcion: TCheckBox
    Left = 293
    Top = 90
    Width = 44
    Height = 17
    Caption = 'PDF'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object qryContratoPrincipal: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 24
    Top = 8
  end
  object qryPosicionamiento: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 24
    Top = 40
  end
  object qryCondicionesClimatologicas: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 24
    Top = 72
  end
  object qryExistencias: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 56
    Top = 8
  end
  object qryTodosLosFrentes: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 56
    Top = 72
  end
  object qryPaquetes: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 56
    Top = 104
  end
  object qryTiemposMuertos: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 24
    Top = 104
  end
  object qryMovimientosEmbarcacion: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 56
    Top = 40
  end
  object qryPersonal: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 24
    Top = 136
  end
  object qryPersonalxOrden: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 96
    Top = 112
  end
  object qryEquipos: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 64
    Top = 136
  end
  object qryEquiposxorden: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 128
    Top = 112
  end
  object rReporte: TfrxReport
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
    ReportOptions.LastChange = 41003.041559120400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var x, dias, faltantes : integer;'
      'cadena : string;    '
      ''
      'procedure Memo163OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                          '
      '    if <Actividades."sTipoNota"> = '#39'Tiempos'#39' then'
      '    begin                '
      '        memo16.Visible  := False;'
      '        memo17.Visible  := False;                '
      '        memo164.Visible := True;'
      '        memo165.Visible := True;'
      '        memo163.Color   := clNone; '
      '    end;        '
      ''
      '    if <Actividades."sTipoNota"> = '#39'Partidas'#39' then        '
      '    begin'
      '        memo16.Visible  := True;'
      '        memo17.Visible  := True;'
      '        memo164.Visible := False;'
      '        memo165.Visible := False;'
      ''
      '        if <Actividades."sTipoActividad"> = '#39'Actividad'#39' then'
      '        begin                    '
      '            memo163.Color := $00B4E6AC;'
      '            memo16.Color  := $00B4E6AC;'
      '            memo17.Color  := $00B4E6AC;'
      '        end;'
      ''
      '        if <Actividades."sTipoActividad"> = '#39'Paquete'#39' then'
      '        begin                    '
      '            memo163.Color := $00E4E4E4;'
      '            memo16.Color  := $00E4E4E4;'
      '            memo17.Color  := $00E4E4E4;'
      '        end;                           '
      '    end;'
      ''
      '    if <Actividades."sTipoNota"> = '#39'Notas'#39' then        '
      '    begin'
      '        memo16.Visible  := False;'
      '        memo17.Visible  := True;'
      '        memo164.Visible := False;'
      '        memo165.Visible := False;'
      ''
      '        memo163.Color := clWhite;'
      '        memo16.Color  := clWhite;'
      
        '        memo17.Color  := clWhite;                               ' +
        '                                    '
      '    end;        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = rReporteGetValue
    Left = 296
    Top = 56
    Datasets = <
      item
        DataSet = dsOrdenes
        DataSetName = 'Actividades'
      end
      item
        DataSet = dsArribosReporte
        DataSetName = 'ArribosReporte'
      end
      item
        DataSet = dsArribosReporteVuelo
        DataSetName = 'ArribosReporteVuelo'
      end
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dsClimaReporte
        DataSetName = 'dsClimaReporte'
      end
      item
        DataSet = dsConfiguracion
        DataSetName = 'dsConfiguracion'
      end
      item
        DataSet = dsEmbarcacion
        DataSetName = 'dsEmbarcacion'
      end
      item
        DataSet = dsNotasGenerales
        DataSetName = 'dsNotasGenerales'
      end
      item
        DataSet = dsTripulacion
        DataSetName = 'dsTripulacion'
      end>
    Variables = <
      item
        Name = ' Financiero'
        Value = Null
      end
      item
        Name = 'dAcumulado'
        Value = '<CANTIDAD_ANTERIOR> + <dsmBitacora1."dCantidad">'
      end
      item
        Name = 'dAvanceAcumulado'
        Value = '<AVANCE_ANTERIOR> + <dsmBitacora1."dAvance">'
      end
      item
        Name = 'sTexto'
        Value = 'IIF(lblAvance.Value <> '#39#39','#39'O B S E R V A C I O N E S'#39','#39#39')'
      end
      item
        Name = ' NuevasVar'
        Value = Null
      end
      item
        Name = 'PUESTO_SUPERINTENDENTE'
        Value = Null
      end
      item
        Name = 'SUPERVISOR'
        Value = Null
      end
      item
        Name = 'PUESTO_SUPERVISOR'
        Value = Null
      end
      item
        Name = 'SUPERINTENDENTE'
        Value = Null
      end
      item
        Name = 'DESCRIPCION_CORTA'
        Value = Null
      end
      item
        Name = 'PERIODO'
        Value = Null
      end
      item
        Name = 'sNewTexto'
        Value = Null
      end
      item
        Name = 'REAL_ANTERIOR_MULTIPLE'
        Value = Null
      end
      item
        Name = 'PROGRAMADO_ANTERIOR_MULTIPLE'
        Value = Null
      end
      item
        Name = 'REAL_ACTUAL_MULTIPLE'
        Value = Null
      end
      item
        Name = 'REAL_ACUMULADO_MULTIPLE'
        Value = Null
      end
      item
        Name = 'PROGRAMADO_ACTUAL_MULTIPLE'
        Value = Null
      end
      item
        Name = 'PROGRAMADO_ACUMULADO_MULTIPLE'
        Value = Null
      end
      item
        Name = 'REAL_ANTERIOR'
        Value = Null
      end
      item
        Name = 'PROGRAMADO_ANTERIOR'
        Value = Null
      end
      item
        Name = 'REAL_ACTUAL'
        Value = Null
      end
      item
        Name = 'REAL_ACUMULADO'
        Value = Null
      end
      item
        Name = 'PROGRAMADO_ACTUAL'
        Value = Null
      end
      item
        Name = 'PROGRAMADO_ACUMULADO'
        Value = Null
      end
      item
        Name = 'IMPRIME_AVANCES'
        Value = Null
      end
      item
        Name = 'PUESTO_SUPERVISOR_TIERRA'
        Value = Null
      end
      item
        Name = 'SUPERVISOR_TIERRA'
        Value = Null
      end>
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 223.000000000000000000
      Left = 613.000000000000000000
      Top = 186.000000000000000000
      Width = 336.000000000000000000
    end
    object ReporteDiaroBarco: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      OnBeforePrint = 'ReporteDiaroBarcoOnBeforePrint'
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 483.779840000000000000
        Width = 740.409927000000000000
        object Memo32: TfrxMemoView
          Left = 34.015770000000000000
          Top = 18.897650000000000000
          Width = 702.992580000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'rptSetup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 257.008040000000000000
          Top = 18.897650000000000000
          Width = 226.771800000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Top = 15.118120000000000000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSetName = 'rptSetup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsConfiguracion."sWeb"]'
            '[dsConfiguracion."sEmail"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 211.653587240000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo93: TfrxMemoView
          Left = 625.622450000000000000
          Top = 150.181200000000000000
          Width = 112.605198500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 491.338900000000000000
          Top = 150.181200000000000000
          Width = 133.417322830000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'PRODUCIDO Y/O RECIBIDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 352.496290000000000000
          Top = 150.181200000000000000
          Width = 139.061908500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'CONSUMIDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 114.275663780000000000
          Top = 91.464566930000000000
          Width = 623.621800930000000000
          Height = 32.125967170000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsConfiguracion."mDescripcion"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          Left = 114.275663780000000000
          Top = 79.826840000000000000
          Width = 623.622450000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[dsConfiguracion."sCodigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 1.000000000000000000
          Width = 737.007874020000000000
          Height = 75.590600000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 182.417440000000000000
          Top = 33.236240000000000000
          Width = 408.968770000000000000
          Height = 21.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[dsConfiguracion."sDireccion1"] [dsConfiguracion."sDireccion2"] ' +
              '[dsConfiguracion."sDireccion3"] [dsConfiguracion."sTelefono"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 22.677180000000000000
          Top = 2.000000000000000000
          Width = 134.401670000000000000
          Height = 39.354360000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          DataSet = dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 616.181510000000000000
          Top = 3.000000000000000000
          Width = 102.267780000000000000
          Height = 52.692950000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = dsConfiguracion
          DataSetName = 'dsConfiguracion'
          HightQuality = False
        end
        object Memo9: TfrxMemoView
          Left = 2.779530000000000000
          Top = 37.133890000000000000
          Width = 182.196970000000000000
          Height = 36.795300000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 216.433210000000000000
          Top = 56.692950000000000000
          Width = 303.141930000000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'GERENCIAL:   [HORA_INICIO] - [HORA_FINAL] HRS.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Top = 91.464566930000000000
          Width = 113.385781990000000000
          Height = 32.125967170000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            'OBRA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 1.000000000000000000
          Top = 79.748031496063000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 276.795453780000000000
          Top = 194.086662990000000000
          Width = 461.102010930000000000
          Height = 13.228317170000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 276.795453780000000000
          Top = 138.622140000000000000
          Width = 461.480314960000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'EXISTENCIAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 1.000000000000000000
          Top = 138.330708660000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'LOCALIZACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 1.000000000000000000
          Top = 127.504020000000000000
          Width = 737.008350000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."embarcacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 114.165430000000000000
          Top = 150.047244090000000000
          Width = 161.763779530000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DIRECCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 114.165430000000000000
          Top = 138.622140000000000000
          Width = 161.763779530000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'CONDICIONES METEOROLOGICAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 114.385900000000000000
          Top = 162.519790000000000000
          Width = 41.574649050000000000
          Height = 20.031496060000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsClimaReporte."sDescripcionTiempo1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 154.960730000000000000
          Top = 162.519790000000000000
          Width = 60.472299050000000000
          Height = 20.031496060000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsClimaReporte."sCantidad1"] [dsClimaReporte."sMedida1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 215.433210000000000000
          Top = 162.519790000000000000
          Width = 60.472299050000000000
          Height = 20.031496060000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsClimaReporte."sDireccion1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 114.385900000000000000
          Top = 181.229355040000000000
          Width = 41.574649050000000000
          Height = 26.284873820000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsClimaReporte."sDescripcionTiempo2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 154.960730000000000000
          Top = 181.229355040000000000
          Width = 60.472299050000000000
          Height = 26.284873820000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsClimaReporte."sCantidad2"] [dsClimaReporte."sMedida2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 215.433210000000000000
          Top = 181.229355040000000000
          Width = 60.472299050000000000
          Height = 26.284873820000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsClimaReporte."sDireccion2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 276.685220000000000000
          Top = 149.960730000000000000
          Width = 75.212598430000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 276.930381030000000000
          Top = 160.519790000000000000
          Width = 74.809898500000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[dsEmbarcacion."sRecurso1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 276.930381030000000000
          Top = 171.078850000000000000
          Width = 74.809898500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[dsEmbarcacion."sRecurso2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 276.930381030000000000
          Top = 183.307086610000000000
          Width = 74.809898500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[dsEmbarcacion."sRecurso3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 351.496290000000000000
          Top = 160.519790000000000000
          Width = 74.809898500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadConsumo1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 351.496290000000000000
          Top = 171.078850000000000000
          Width = 74.809898500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadConsumo2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 351.496290000000000000
          Top = 183.307086610000000000
          Width = 74.809898500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadConsumo3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 427.086890000000000000
          Top = 160.496062990000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 427.086890000000000000
          Top = 171.078740160000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 427.086890000000000000
          Top = 183.307086610000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 491.338900000000000000
          Top = 160.763987010000000000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadProducido1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 491.338900000000000000
          Top = 171.323047010000000000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadProducido2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 491.338900000000000000
          Top = 182.929133860000000000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadProducido3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 558.327450200000000000
          Top = 160.740260000000000000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 558.327450200000000000
          Top = 171.322937170000000000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 558.327450200000000000
          Top = 182.929133860000000000
          Width = 66.141732280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 623.622450000000000000
          Top = 160.763987010000000000
          Width = 58.582672280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadActual1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 623.622450000000000000
          Top = 171.323047010000000000
          Width = 58.582672280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadActual2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 623.622450000000000000
          Top = 182.929133860000000000
          Width = 58.582672280000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEmbarcacion."dCantidadActual3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 682.611000200000000000
          Top = 160.740260000000000000
          Width = 55.181102360000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 682.611000200000000000
          Top = 171.322937170000000000
          Width = 55.181102360000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 682.611000200000000000
          Top = 182.929133860000000000
          Width = 55.181102360000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEmbarcacion."sMedida3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 1.000000000000000000
          Top = 150.133882680000000000
          Width = 113.385826770000000000
          Height = 57.448818900000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            'OBRA:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object mCondicionesClimatologicas: TfrxMasterData
        Height = 15.118120000000000000
        Top = 291.023810000000000000
        Width = 740.409927000000000000
        DataSet = dsClimaReporte
        DataSetName = 'dsClimaReporte'
        RowCount = 0
        object Actividades: TfrxSubreport
          Align = baClient
          Width = 740.409927000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Page = rReporte.Page2
        end
      end
      object mNotasGenerales: TfrxMasterData
        Height = 18.897650000000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
        DataSet = dsNotasGenerales
        DataSetName = 'dsNotasGenerales'
        RowCount = 0
        Stretched = True
        object notasgenerales: TfrxSubreport
          Align = baClient
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rReporte.Page7
        end
      end
      object mArriboEmbarcaciones: TfrxMasterData
        Height = 15.118120000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        DataSet = dsArribosReporte
        DataSetName = 'ArribosReporte'
        RowCount = 0
        StartNewPage = True
        object Subreport5: TfrxSubreport
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Page = rReporte.arriboEmbarcaciones
        end
      end
      object mArriboVuelos: TfrxMasterData
        Height = 15.118120000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = dsArribosReporteVuelo
        DataSetName = 'ArribosReporteVuelo'
        RowCount = 0
        StartNewPage = True
        object Subreport8: TfrxSubreport
          Left = 1.000000000000000000
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Page = rReporte.Page5
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        Height = 36.015770000000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = dsOrdenes
        DataSetName = 'Actividades'
        RowCount = 0
        Stretched = True
        object Memo163: TfrxMemoView
          Width = 90.708590630000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo163OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroActividad'
          DataSet = dsOrdenes
          DataSetName = 'Actividades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 158.740260000000000000
          Top = 0.779530000000000000
          Width = 578.267960630000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = dsOrdenes
          DataSetName = 'Actividades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[Actividades."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Left = 90.708720000000000000
          Top = 0.779530000000000000
          Width = 68.031410630000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sHoras'
          DataSet = dsOrdenes
          DataSetName = 'Actividades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."sHoras"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 676.535870000000000000
          Width = 60.472309130000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsOrdenes
          DataSetName = 'Actividades'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dAvancePartida"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 90.708720000000000000
          Width = 585.826771650000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'mDescripcion'
          DataSet = dsOrdenes
          DataSetName = 'Actividades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[Actividades."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 23.811028500000000000
        Top = 132.283550000000000000
        Width = 740.409927000000000000
        Condition = 'Actividades."sOrden"'
        ReprintOnNewPage = True
        object Memo161: TfrxMemoView
          Top = 7.559060000000000000
          Width = 90.708590630000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'CLASIFICACI'#195#8220'N')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 158.740260000000000000
          Top = 7.559060000000000000
          Width = 578.267960630000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 90.708720000000000000
          Top = 7.559060000000000000
          Width = 68.031410630000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'HORAS')
          ParentFont = False
        end
      end
      object GroupFooter4: TfrxGroupFooter
        Height = 15.118120000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'Actividades."sOrden"'
        object Memo138: TfrxMemoView
          Top = 28.456710000000000000
          Width = 351.496160630000000000
          Height = 23.811028500000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 15000804
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[Actividades."sDescripcionOrden"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 7.559060000000000000
          Width = 351.496160630000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'O.T. : [Actividades."sOrden"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 351.496290000000000000
          Top = 7.559060000000000000
          Width = 68.031410630000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCE PROG.')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 419.527830000000000000
          Top = 7.559060000000000000
          Width = 68.031496060000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 487.559370000000000000
          Top = 7.559060000000000000
          Width = 64.251880630000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCE ANTERIOR')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 551.811380000000000000
          Top = 7.559060000000000000
          Width = 64.251880630000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCE DIARIO')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000000000
          Width = 60.472350630000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TIEMPO PROG.(DIAS)')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 676.535870000000000000
          Top = 7.559060000000000000
          Width = 60.472350630000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TIEMPO PROG.(DIAS)')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 351.496290000000000000
          Top = 28.456710000000000000
          Width = 68.031410630000000000
          Height = 23.811028500000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dAvanceProgramado"]%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 419.527830000000000000
          Top = 28.456710000000000000
          Width = 68.031410630000000000
          Height = 23.811028500000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dAvanceReal"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 487.559370000000000000
          Top = 28.456710000000000000
          Width = 64.251880630000000000
          Height = 23.811028500000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dAvanceAnterior"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 551.811380000000000000
          Top = 28.456710000000000000
          Width = 64.251880630000000000
          Height = 23.811028500000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            ' [Actividades."dAvanceDiario"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Left = 616.063390000000000000
          Top = 28.456710000000000000
          Width = 60.472350630000000000
          Height = 23.811028500000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dTiempoProgramado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Left = 676.535870000000000000
          Top = 28.456710000000000000
          Width = 60.472350630000000000
          Height = 23.811028500000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dTiempoReal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Left = 351.496290000000000000
          Top = 53.913420000000000000
          Width = 68.031410630000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCE PROG. ANTERIOR')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 419.527830000000000000
          Top = 53.913420000000000000
          Width = 68.031496060000000000
          Height = 20.787401570000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCE PROG. DIARIO')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 351.496290000000000000
          Top = 74.031540000000000000
          Width = 68.031410630000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dAvanceProgramadoAnt"] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 419.527830000000000000
          Top = 74.031540000000000000
          Width = 68.031410630000000000
          Height = 16.251968500000000000
          ShowHint = False
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Actividades."dAvanceProgramadoDiario"] %')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter5: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
      end
    end
    object Page7: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clWhite
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object Header7: TfrxHeader
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        ReprintOnNewPage = True
        StartNewPage = True
        object Memo77: TfrxMemoView
          Left = 1.740156670000000000
          Top = 13.338590000000000000
          Width = 737.007874020000000000
          Height = 16.377963330000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NOTAS GENERALES')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        Height = 15.118107800000000000
        Top = 71.811070000000000000
        Width = 740.409927000000000000
        AllowSplit = True
        DataSet = dsNotasGenerales
        DataSetName = 'dsNotasGenerales'
        RowCount = 0
        StartNewPage = True
        Stretched = True
        object Memo78: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 737.008350000000000000
          Height = 15.118107800000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DataField = 'mDescripcion'
          DataSet = dsNotasGenerales
          DataSetName = 'dsNotasGenerales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            '[dsNotasGenerales."mDescripcion"]')
          ParentFont = False
          WordBreak = True
        end
      end
    end
    object Personal: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 2
      ColumnWidth = 97.950000000000000000
      ColumnPositions.Strings = (
        '0'
        '97.95')
      Duplex = dmHorizontal
      PrintIfEmpty = False
      object MasterData9: TfrxMasterData
        Height = 12.094488190000000000
        Top = 480.000310000000000000
        Width = 370.204963500000000000
        DataSet = dsTripulacion
        DataSetName = 'dsTripulacion'
        RowCount = 0
        Stretched = True
        object Memo82: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 308.031496060000000000
          Height = 12.094488188976400000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dsTripulacion
          DataSetName = 'dsTripulacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTripulacion."sDescripcion"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo83: TfrxMemoView
          ShiftMode = smDontShift
          Left = 309.921259840000000000
          Width = 56.692913390000000000
          Height = 12.094488188976400000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'iNacionales'
          DataSet = dsTripulacion
          DataSetName = 'dsTripulacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTripulacion."iNacionales"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object GroupHeader4: TfrxGroupHeader
        Height = 11.338582680000000000
        Top = 445.984540000000000000
        Width = 370.204963500000000000
        Condition = 'dsTripulacion."sIdCategoria"'
        KeepTogether = True
        ReprintOnNewPage = True
        OutlineText = 'dsTripulacion."sIdCategoria"'
        Stretched = True
        object Memo79: TfrxMemoView
          Left = 1.889763780000000000
          Width = 308.031496060000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 16700346
          DataSet = dsTripulacion
          DataSetName = 'dsTripulacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTripulacion."sCategoria"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 309.921460000000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 16700346
          DataSet = dsTripulacion
          DataSetName = 'dsTripulacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 12.094488190000000000
        Top = 514.016080000000000000
        Width = 370.204963500000000000
        object SysMemo4: TfrxSysMemoView
          Left = 309.921259840000000000
          Width = 56.692913390000000000
          Height = 12.094488188976400000
          ShowHint = False
          Color = 12961221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<dsTripulacion."iNacionales">,MasterData9)]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 1.889763780000000000
          Width = 308.031496060000000000
          Height = 12.094488188976400000
          ShowHint = False
          Color = 12961221
          DataSet = dsTripulacion
          DataSetName = 'dsTripulacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Totales')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 15.118120000000000000
        Top = 548.031850000000000000
        Width = 370.204963500000000000
        AllowSplit = True
        object Subreport1: TfrxSubreport
          Align = baClient
          Width = 740.409927000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Page = rReporte.Page8
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 3.779530000000000000
        Top = 419.527830000000000000
        Width = 370.204963500000000000
        Condition = 'dsTripulacion."dIdFecha"'
      end
      object ReportTitle2: TfrxReportTitle
        Height = 158.740260000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo7: TfrxMemoView
          Width = 737.007874020000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.000000000000000000
          Width = 408.968770000000000000
          Height = 48.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]'
            ''
            'CONTRATO No.: [dsConfiguracion."sContrato"]')
          ParentFont = False
        end
        object Picture5: TfrxPictureView
          Left = 570.709030000000000000
          Top = 3.000000000000000000
          Width = 164.637910000000000000
          Height = 84.708720000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Memo40: TfrxMemoView
          Left = 551.811380000000000000
          Top = 94.488250000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[FECHA_REPORTE]')
          ParentFont = False
        end
        object Picture6: TfrxPictureView
          Left = 2.897650000000000000
          Top = 3.000000000000000000
          Width = 151.401670000000000000
          Height = 82.929190000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo46: TfrxMemoView
          Left = 427.086890000000000000
          Top = 94.488250000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 551.811380000000000000
          Top = 139.842517240000000000
          Width = 185.196872360000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 427.086890000000000000
          Top = 139.842517240000000000
          Width = 124.724392360000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'EMBARCACION')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 427.086890000000000000
          Top = 109.606370000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DIAS TRANSCURRIDOS')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 551.811380000000000000
          Top = 109.606370000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DIAS_POR_TRANSCURRIR]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 427.086890000000000000
          Top = 124.724490000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DIAS POR TRANSCURRIR')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 551.811380000000000000
          Top = 124.724490000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DIAS_TRANSCURRIDOS]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          ShiftMode = smDontShift
          Left = 215.433210000000000000
          Top = 75.590600000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RESUMEN DE PERSONAL A BORDO')
          ParentFont = False
          WordBreak = True
        end
        object Memo37: TfrxMemoView
          Left = 1.779530000000000000
          Top = 105.157472990000000000
          Width = 415.747933860000000000
          Height = 20.787377170000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DataField = 'mDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsConfiguracion."mDescripcion"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 1.779530000000000000
          Top = 94.488250000000000000
          Width = 415.748300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DESCRIPCION DEL CONTRATO')
          ParentFont = False
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 158.740177010000000000
        Top = 200.315090000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        Stretched = True
        object Memo81: TfrxMemoView
          ShiftMode = smDontShift
          Left = 551.811380000000000000
          Top = 94.488250000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          DisplayFormat.FormatStr = 'dd-mmm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[FECHA_REPORTE]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          ShiftMode = smDontShift
          Left = 427.086890000000000000
          Top = 94.488250000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          ShiftMode = smDontShift
          Left = 551.811380000000000000
          Top = 139.842527010000000000
          Width = 185.196872360000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          ShiftMode = smDontShift
          Left = 427.086890000000000000
          Top = 139.842527010000000000
          Width = 124.724392360000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'EMBARCACION')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          ShiftMode = smDontShift
          Left = 427.086890000000000000
          Top = 109.606370000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DIAS TRANSCURRIDOS')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          ShiftMode = smDontShift
          Left = 551.811380000000000000
          Top = 109.606370000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DIAS_POR_TRANSCURRIR]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          ShiftMode = smDontShift
          Left = 427.086890000000000000
          Top = 124.724490000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DIAS POR TRANSCURRIR')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Left = 551.811380000000000000
          Top = 124.724490000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DIAS_TRANSCURRIDOS]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Width = 737.007874020000000000
          Height = 90.708720000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.000000000000000000
          Width = 408.968770000000000000
          Height = 48.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]'
            ''
            'CONTRATO No.: [dsConfiguracion."sContrato"]')
          ParentFont = False
        end
        object Picture7: TfrxPictureView
          Left = 570.709030000000000000
          Top = 3.000000000000000000
          Width = 164.637910000000000000
          Height = 84.708720000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Picture8: TfrxPictureView
          Left = 2.897650000000000000
          Top = 3.000000000000000000
          Width = 151.401670000000000000
          Height = 82.929190000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo136: TfrxMemoView
          ShiftMode = smDontShift
          Left = 215.433210000000000000
          Top = 75.590600000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RESUMEN DE PERSONAL A BORDO')
          ParentFont = False
          WordBreak = True
        end
        object Memo110: TfrxMemoView
          Left = 1.779530000000000000
          Top = 105.157472990000000000
          Width = 415.747933860000000000
          Height = 20.787377170000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DataField = 'mDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsConfiguracion."mDescripcion"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 1.779530000000000000
          Top = 94.488250000000000000
          Width = 415.748300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'DESCRIPCION DEL CONTRATO')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 41.574830000000000000
        Top = 623.622450000000000000
        Width = 740.409927000000000000
        object Memo96: TfrxMemoView
          Left = 34.015770000000000000
          Top = 22.677180000000000000
          Width = 702.992580000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'rptSetup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 264.567100000000000000
          Top = 11.338590000000000000
          Width = 226.771800000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Top = 18.897650000000000000
          Width = 275.905690000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSetName = 'rptSetup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsConfiguracion."sWeb"]'
            '[dsConfiguracion."sEmail"]')
          ParentFont = False
        end
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 119
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader5: TfrxGroupHeader
        Height = 14.362207170000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = '<dsTotales."nacionales"> >=0'
        KeepTogether = True
        object Memo143: TfrxMemoView
          Left = 2.000000000000000000
          Top = 3.779530000000000000
          Width = 362.834679840000000000
          Height = 10.582677170000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RESUMEN DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData8: TfrxMasterData
        Height = 9.826771650000000000
        Top = 90.708720000000000000
        Width = 740.409927000000000000
        DataSet = dstotalesporcategorias
        DataSetName = 'dstotales'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object Memo51: TfrxMemoView
          Left = 2.000000000000000000
          Width = 309.921259840000000000
          Height = 9.070866140000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8 = (
            '[dsTotales."sDescripcion"]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 311.921259840000000000
          Width = 52.913420000000000000
          Height = 9.070866140000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTotales."nacionales"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 14.362207170000000000
        Top = 158.740260000000000000
        Width = 740.409927000000000000
        object Memo151: TfrxMemoView
          Left = 2.000000000000000000
          Width = 309.921259840000000000
          Height = 14.362207170000000000
          ShowHint = False
          Color = 14463898
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 311.921259840000000000
          Width = 52.913420000000000000
          Height = 14.362207170000000000
          ShowHint = False
          Color = 14463898
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<dsTotales."Nacionales">,MasterData8)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader10: TfrxGroupHeader
        Height = 10.582677170000000000
        Top = 56.692950000000000000
        Width = 740.409927000000000000
        Condition = 'dstotales."sMiGrupoResumen"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Memo145: TfrxMemoView
          Left = 2.000000000000000000
          Width = 309.921460000000000000
          Height = 10.582677170000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTotales."sMiGrupoResumen"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 311.921259840000000000
          Width = 52.913420000000000000
          Height = 10.582677165354300000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter10: TfrxGroupFooter
        Height = 9.826771650000000000
        Top = 124.724490000000000000
        Width = 740.409927000000000000
        object Memo162: TfrxMemoView
          Left = 2.000000000000000000
          Width = 309.921259840000000000
          Height = 9.826771653543310000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          Left = 311.921259840000000000
          Width = 52.913420000000000000
          Height = 9.826771653543310000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<dsTotales."Nacionales">,MasterData8)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object arriboEmbarcaciones: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData14: TfrxMasterData
        Height = 18.897650000000000000
        Top = 83.149660000000000000
        Width = 740.409927000000000000
        DataSet = dsArribosReporte
        DataSetName = 'ArribosReporte'
        RowCount = 0
        Stretched = True
        object Memo177: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ArribosReporte."sHoraInicio"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo178: TfrxMemoView
          ShiftMode = smDontShift
          Left = 66.141732283464600000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ArribosReporte."sHoraFinal"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo179: TfrxMemoView
          ShiftMode = smDontShift
          Left = 126.614173230000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'sClasificacion'
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ArribosReporte."sClasificacion"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo180: TfrxMemoView
          ShiftMode = smDontShift
          Left = 175.748031500000000000
          Width = 563.149628270000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            '[ArribosReporte."mDescripcion"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object GroupHeader11: TfrxGroupHeader
        Height = 39.574820240000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'ArribosReporte."sContrato"'
        ReprintOnNewPage = True
        object Memo181: TfrxMemoView
          Left = 1.889763780000000000
          Top = 10.559060000000000000
          Width = 737.008220630000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'ARRIBO DE EMBARCACIONES')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 1.889763780000000000
          Top = 24.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA INICIO')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 66.141732280000000000
          Top = 24.456710000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA FINAL')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          Left = 126.614173230000000000
          Top = 24.456710000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIPO')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          Left = 175.748031500000000000
          Top = 24.456710000000000000
          Width = 563.149611180000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
        end
      end
      object GroupFooter11: TfrxGroupFooter
        Top = 124.724490000000000000
        Width = 740.409927000000000000
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader12: TfrxGroupHeader
        Height = 39.574820240000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'ArribosReporteVuelo."sContrato"'
        ReprintOnNewPage = True
        object Memo202: TfrxMemoView
          Left = 1.889763780000000000
          Top = 10.559060000000000000
          Width = 737.008220630000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'ARRIBO DE HELICOPTEROS')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          Left = 1.889763780000000000
          Top = 24.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA INICIO')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          Left = 66.141732280000000000
          Top = 24.456710000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA FINAL')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          Left = 126.614173230000000000
          Top = 24.456710000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIPO')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 175.748031500000000000
          Top = 24.456710000000000000
          Width = 563.149611180000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14342874
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
        end
      end
      object MasterData17: TfrxMasterData
        Height = 18.897650000000000000
        Top = 83.149660000000000000
        Width = 740.409927000000000000
        DataSet = dsArribosReporteVuelo
        DataSetName = 'ArribosReporteVuelo'
        RowCount = 0
        Stretched = True
        object Memo207: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ArribosReporteVuelo."sHoraInicio"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo208: TfrxMemoView
          ShiftMode = smDontShift
          Left = 66.141732280000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ArribosReporteVuelo."sHoraFinal"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo209: TfrxMemoView
          ShiftMode = smDontShift
          Left = 126.614173230000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ArribosReporteVuelo."sIdTipoEmbarcacion"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo210: TfrxMemoView
          ShiftMode = smDontShift
          Left = 175.748031500000000000
          Width = 563.149628270000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = dsArribosReporte
          DataSetName = 'ArribosReporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 3.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            '[ArribosReporteVuelo."mDescripcion"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object GroupFooter12: TfrxGroupFooter
        Top = 124.724490000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object dsComentarios: TfrxDBDataset
    UserName = 'dsComentarios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sNumeroOrden=sNumeroOrden'
      'sNumeroReporte=sNumeroReporte'
      'sIdTurno=sIdTurno'
      'sIdConvenio=sIdConvenio'
      'dIdFecha=dIdFecha'
      'sDescripcion=sDescripcion'
      'dFechaInicio=dFechaInicio'
      'dFechaFinal=dFechaFinal'
      'mDescripcion=mDescripcion')
    BCDToCurrency = False
    Left = 329
    Top = 58
  end
  object qryArribos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * from movimientosdeembarcacion m'
      'Where m.dIdFecha=:Fecha'
      'And m.sContrato=:Contrato'
      'And sTipo="ARRIBO"'
      'And sTipoEmbarcacion<>"S/E"')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object dsArribosReporte: TfrxDBDataset
    UserName = 'ArribosReporte'
    CloseDataSource = False
    DataSet = qryArribos
    BCDToCurrency = False
    Left = 328
    Top = 184
  end
  object dsClimaReporte: TfrxDBDataset
    UserName = 'dsClimaReporte'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sCantidad1=sCantidad1'
      'sDescripcionTiempo1=sDescripcionTiempo1'
      'sDireccion1=sDireccion1'
      'sMedida1=sMedida1'
      'sCantidad2=sCantidad2'
      'sDescripcionTiempo2=sDescripcionTiempo2'
      'sDireccion2=sDireccion2'
      'sMedida2=sMedida2')
    DataSet = rxCondiciones
    BCDToCurrency = False
    Left = 328
    Top = 216
  end
  object qryClimaReporte: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        ' select sCantidad, c.sDescripcion as sDescripcionTiempo,d.sDescr' +
        'ipcion as Direccion ,c.sMedida'
      ' from condicionesclimatologicas cm'
      ' inner join condiciones c on ('
      '  cm.iIdCondicion=c.iIdCondicion )'
      ' inner join direcciones d on (cm.iIdDireccion=d.iIdDireccion)'
      'where'
      ' cm.dIdFecha=:Fecha'
      ' and cm.sContrato=:Contrato'
      ' Group By sDescripcionTiempo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object embarcacion: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 296
    Top = 248
  end
  object dsArribosReporteVuelo: TfrxDBDataset
    UserName = 'ArribosReporteVuelo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'dIdFecha=dIdFecha'
      'sIdDepartamento=sIdDepartamento'
      'sTipoEmbarcacion=sTipoEmbarcacion'
      'sClasificacion=sClasificacion'
      'sDescripcion=sDescripcion'
      'sIdFase=sIdFase'
      'sHoraInicio=sHoraInicio'
      'sHoraFinal=sHoraFinal'
      'sFactor=sFactor'
      'mDescripcion=mDescripcion'
      'idDiario=idDiario'
      'sTipo=sTipo')
    DataSet = qryArribosVuelo
    BCDToCurrency = False
    Left = 328
    Top = 152
  end
  object qryArribosVuelo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * from movimientosdeembarcacion m'
      'Where m.dIdFecha=:Fecha'
      'And m.sContrato=:Contrato'
      'And sTipo="ARRIBO"'
      'And sTipoEmbarcacion<>"S/E"')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object totalestripulacion: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select c.sDescripcion, sum(iNacionales) as total from tripulacio' +
        'ndiaria td'
      'inner join categorias c On (td.sIdCategoria=c.sIdCategoria)'
      'where sContrato="428238800"'
      'and dIdFecha="2008-09-01"'
      'GROUP  by td.sIdCategoria order by c.sDescripcion')
    Params = <>
    Left = 368
    Top = 160
  end
  object dstotalesporcategorias: TfrxDBDataset
    UserName = 'dstotales'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sDescripcion=sDescripcion'
      'total=total')
    DataSet = totalestripulacion
    BCDToCurrency = False
    Left = 400
    Top = 160
  end
  object dsNotasGenerales: TfrxDBDataset
    UserName = 'dsNotasGenerales'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mDescripcion=mDescripcion')
    DataSet = qryNotasGenerales
    BCDToCurrency = False
    Left = 400
    Top = 128
  end
  object qryNotasGenerales: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select mDescripcion from bitacoradeactividades where '
      '     dIdFecha=:Fecha'
      '     and sContrato=:Contrato'
      '     and sNumeroOrden="BARCO"     '
      '     and sIdTipoMovimiento="B" ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 368
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object dsTripulacion: TfrxDBDataset
    UserName = 'dsTripulacion'
    CloseDataSource = False
    DataSet = Tripulacion
    BCDToCurrency = False
    Left = 400
    Top = 96
  end
  object Tripulacion: TZQuery
    Connection = connection.zConnection
    Params = <
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'Contrato'
        ParamType = ptInput
      end>
    Left = 368
    Top = 96
    ParamData = <
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'Contrato'
        ParamType = ptInput
      end>
  end
  object dsTotales: TfrxDBDataset
    UserName = 'dsTotales'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sDescripcion=sDescripcion'
      'nacionales=nacionales'
      'extranjeros=extranjeros')
    DataSet = totales
    BCDToCurrency = False
    Left = 400
    Top = 56
  end
  object totales: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select t.sDescripcion, sum(td.iNacionales) as nacionales '
      'from tripulaciondiaria td'
      'inner join categorias t'
      'On (t.sIdCategoria=td.sIdCategoria)'
      'where td.sContrato=:Contrato'
      'and dIdFecha=:Fecha'
      'group by t.sIdCategoria'
      'order by t.sIdCategoria')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    Left = 368
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
  end
  object QryConfiguracion: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select c.iFirmasGeneradores, c.iFirmas, c.sOrdenPerEq, c.sTipoPa' +
        'rtida, c.sImprimePEP,'
      
        'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.l' +
        'Licencia,'
      
        'c.sDireccion1, c.sDireccion2, c.sDireccion3, c.sCiudad, c.sTelef' +
        'ono,'
      
        'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWe' +
        'b, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario,'
      
        'c2.sCodigo, c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen' +
        ' as bImagenPEP ,c.sMostrarAvances'
      
        'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c' +
        '2.sContrato)'
      'Where c2.sContrato = :Contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 300
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object QryConfiguracioniFirmasGeneradores: TStringField
      FieldName = 'iFirmasGeneradores'
      Required = True
      Size = 1
    end
    object QryConfiguracioniFirmas: TStringField
      FieldName = 'iFirmas'
      Required = True
      Size = 1
    end
    object QryConfiguracionsOrdenPerEq: TStringField
      FieldName = 'sOrdenPerEq'
      Required = True
      Size = 8
    end
    object QryConfiguracionsTipoPartida: TStringField
      FieldName = 'sTipoPartida'
      Required = True
      Size = 7
    end
    object QryConfiguracionsImprimePEP: TStringField
      FieldName = 'sImprimePEP'
      Required = True
      Size = 2
    end
    object QryConfiguracionsClaveSeguridad: TStringField
      FieldName = 'sClaveSeguridad'
      Required = True
      Size = 10
    end
    object QryConfiguracioncStatusProceso: TStringField
      FieldName = 'cStatusProceso'
      Required = True
      Size = 1
    end
    object QryConfiguracionsOrdenExtraordinaria: TStringField
      FieldName = 'sOrdenExtraordinaria'
      Required = True
      Size = 4
    end
    object QryConfiguracionlLicencia: TStringField
      FieldName = 'lLicencia'
      Required = True
      Size = 2
    end
    object QryConfiguracionsDireccion1: TStringField
      FieldName = 'sDireccion1'
      Required = True
      Size = 50
    end
    object QryConfiguracionsDireccion2: TStringField
      FieldName = 'sDireccion2'
      Required = True
      Size = 50
    end
    object QryConfiguracionsDireccion3: TStringField
      FieldName = 'sDireccion3'
      Required = True
      Size = 50
    end
    object QryConfiguracionsCiudad: TStringField
      FieldName = 'sCiudad'
      Size = 30
    end
    object QryConfiguracionsTelefono: TStringField
      FieldName = 'sTelefono'
      Size = 50
    end
    object QryConfiguracionbImagen: TBlobField
      FieldName = 'bImagen'
    end
    object QryConfiguracionsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object QryConfiguracionsNombre: TStringField
      FieldName = 'sNombre'
      Required = True
      Size = 70
    end
    object QryConfiguracionsPiePagina: TStringField
      FieldName = 'sPiePagina'
      Required = True
      Size = 150
    end
    object QryConfiguracionsEmail: TStringField
      FieldName = 'sEmail'
      Required = True
      Size = 50
    end
    object QryConfiguracionsWeb: TStringField
      FieldName = 'sWeb'
      Required = True
      Size = 50
    end
    object QryConfiguracionsSlogan: TStringField
      FieldName = 'sSlogan'
      Required = True
      Size = 100
    end
    object QryConfiguracionsFirmasElectronicas: TStringField
      FieldName = 'sFirmasElectronicas'
      Required = True
      Size = 1
    end
    object QryConfiguracionlImprimeExtraordinario: TStringField
      FieldName = 'lImprimeExtraordinario'
      Required = True
      Size = 2
    end
    object QryConfiguracionsCodigo: TStringField
      FieldName = 'sCodigo'
      Required = True
      Size = 15
    end
    object QryConfiguracionmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object QryConfiguracionsTitulo: TMemoField
      FieldName = 'sTitulo'
      BlobType = ftMemo
    end
    object QryConfiguracionmCliente: TMemoField
      FieldName = 'mCliente'
      Required = True
      BlobType = ftMemo
    end
    object QryConfiguracionbImagenPEP: TBlobField
      FieldName = 'bImagenPEP'
      Required = True
    end
    object QryConfiguracionsMostrarAvances: TStringField
      FieldName = 'sMostrarAvances'
      Required = True
      Size = 2
    end
  end
  object dsConfiguracion: TfrxDBDataset
    UserName = 'dsConfiguracion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iFirmasGeneradores=iFirmasGeneradores'
      'iFirmas=iFirmas'
      'sOrdenPerEq=sOrdenPerEq'
      'sTipoPartida=sTipoPartida'
      'sImprimePEP=sImprimePEP'
      'sClaveSeguridad=sClaveSeguridad'
      'cStatusProceso=cStatusProceso'
      'sOrdenExtraordinaria=sOrdenExtraordinaria'
      'lLicencia=lLicencia'
      'sDireccion1=sDireccion1'
      'sDireccion2=sDireccion2'
      'sDireccion3=sDireccion3'
      'sCiudad=sCiudad'
      'sTelefono=sTelefono'
      'bImagen=bImagen'
      'sContrato=sContrato'
      'sNombre=sNombre'
      'sPiePagina=sPiePagina'
      'sEmail=sEmail'
      'sWeb=sWeb'
      'sSlogan=sSlogan'
      'sFirmasElectronicas=sFirmasElectronicas'
      'lImprimeExtraordinario=lImprimeExtraordinario'
      'sCodigo=sCodigo'
      'mDescripcion=mDescripcion'
      'sTitulo=sTitulo'
      'mCliente=mCliente'
      'bImagenPEP=bImagenPEP'
      'sMostrarAvances=sMostrarAvances')
    DataSet = QryConfiguracion
    BCDToCurrency = False
    Left = 325
    Top = 120
  end
  object qryOrdenes: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select '
      '      ax.sNumeroActividad, '
      '      ax.mDescripcion, '
      '      me.dIdFecha, '
      '      sum(me.sFactor) sFactor '
      
        '     from actividadesxanexo ax left join   movimientosdeembarcac' +
        'ion me  on ('
      '      ax.sWbs=me.sClasificacion      '
      '      and me.dIdFecha=:Fecha'
      '     )                           '
      '     Where                     '
      '      ax.sWbs like "%A.C-0%" '
      '      And ax.sTipoActividad="Actividad" '
      '      and ax.sContrato=:Contrato'
      '     group by ax.sNumeroActividad ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
  end
  object dsOrdenes: TfrxDBDataset
    UserName = 'Actividades'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sOrden=sOrden'
      'sDescripcionOrden=sDescripcionOrden'
      'dAvanceProgramado=dAvanceProgramado'
      'dAvanceReal=dAvanceReal'
      'dAvanceProgramadoAnt=dAvanceProgramadoAnt'
      'dAvanceProgramadoDiario=dAvanceProgramadoDiario'
      'dAvanceAnterior=dAvanceAnterior'
      'dAvanceDiario=dAvanceDiario'
      'dTiempoProgramado=dTiempoProgramado'
      'dTiempoReal=dTiempoReal'
      'sHoraEfectivo=sHoraEfectivo'
      'sHoraMuerto=sHoraMuerto'
      'sHoraMalTiempo=sHoraMalTiempo'
      'sTipoActividad=sTipoActividad'
      'sNumeroActividad=sNumeroActividad'
      'mDescripcion=mDescripcion'
      'dAvancePartida=dAvancePartida'
      'sTipoNota=sTipoNota'
      'sHoraInicio=sHoraInicio'
      'sHoraFinal=sHoraFinal'
      'sHoras=sHoras')
    DataSet = rxOrdenes
    BCDToCurrency = False
    Left = 328
    Top = 280
  end
  object rxCondiciones: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sCantidad1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sDescripcionTiempo1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sDireccion1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'sMedida1'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'sCantidad2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sDescripcionTiempo2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sDireccion2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'sMedida2'
        DataType = ftString
        Size = 45
      end>
    Left = 264
    Top = 224
    object rxCondicionessCantidad1: TStringField
      FieldName = 'sCantidad1'
    end
    object rxCondicionessDescripcionTiempo1: TStringField
      FieldName = 'sDescripcionTiempo1'
      Size = 100
    end
    object rxCondicionessDireccion1: TStringField
      FieldName = 'sDireccion1'
      Size = 60
    end
    object rxCondicionessMedida1: TStringField
      FieldName = 'sMedida1'
      Size = 45
    end
    object rxCondicionessCantidad2: TStringField
      FieldName = 'sCantidad2'
    end
    object rxCondicionessDescripcionTiempo2: TStringField
      FieldName = 'sDescripcionTiempo2'
      Size = 100
    end
    object rxCondicionessDireccion2: TStringField
      FieldName = 'sDireccion2'
      Size = 60
    end
    object rxCondicionessMedida2: TStringField
      FieldName = 'sMedida2'
      Size = 45
    end
  end
  object dsEmbarcacion: TfrxDBDataset
    UserName = 'dsEmbarcacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sRecurso1=sRecurso1'
      'sMedida1=sMedida1'
      'dCantidadConsumo1=dCantidadConsumo1'
      'dCantidadProducido1=dCantidadProducido1'
      'dCantidadActual1=dCantidadActual1'
      'sRecurso2=sRecurso2'
      'sMedida2=sMedida2'
      'dCantidadConsumo2=dCantidadConsumo2'
      'dCantidadProducido2=dCantidadProducido2'
      'dCantidadActual2=dCantidadActual2'
      'sRecurso3=sRecurso3'
      'sMedida3=sMedida3'
      'dCantidadConsumo3=dCantidadConsumo3'
      'dCantidadProducido3=dCantidadProducido3'
      'dCantidadActual3=dCantidadActual3'
      'sRecurso4=sRecurso4'
      'sMedida4=sMedida4'
      'dCantidadConsumo4=dCantidadConsumo4'
      'dCantidadProducido4=dCantidadProducido4'
      'dCantidadActual4=dCantidadActual4'
      'Embarcacion=Embarcacion')
    DataSet = rxRecursos
    BCDToCurrency = False
    Left = 328
    Top = 248
  end
  object rxRecursos: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sRecurso1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sMedida1'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'dCantidadConsumo1'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadProducido1'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadActual1'
        DataType = ftFloat
      end
      item
        Name = 'sRecurso2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sMedida2'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'dCantidadConsumo2'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadProducido2'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadActual2'
        DataType = ftFloat
      end
      item
        Name = 'sRecurso3'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sMedida3'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'dCantidadConsumo3'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadProducido3'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadActual3'
        DataType = ftFloat
      end
      item
        Name = 'sRecurso4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sMedida4'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'dCantidadConsumo4'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadProducido4'
        DataType = ftFloat
      end
      item
        Name = 'dCantidadActual4'
        DataType = ftFloat
      end
      item
        Name = 'Embarcacion'
        DataType = ftString
        Size = 50
      end>
    Left = 264
    Top = 248
    object rxRecursossRecurso1: TStringField
      FieldName = 'sRecurso1'
      Size = 100
    end
    object rxRecursossMedida1: TStringField
      FieldName = 'sMedida1'
      Size = 25
    end
    object rxRecursosdCantidadConsumo1: TFloatField
      FieldName = 'dCantidadConsumo1'
    end
    object rxRecursosdCantidadProducido1: TFloatField
      FieldName = 'dCantidadProducido1'
    end
    object rxRecursosdCantidadActual1: TFloatField
      FieldName = 'dCantidadActual1'
    end
    object rxRecursossRecurso2: TStringField
      FieldName = 'sRecurso2'
      Size = 100
    end
    object rxRecursossMedida2: TStringField
      FieldName = 'sMedida2'
      Size = 25
    end
    object rxRecursosdCantidadConsumo2: TFloatField
      FieldName = 'dCantidadConsumo2'
    end
    object rxRecursosdCantidadProducido2: TFloatField
      FieldName = 'dCantidadProducido2'
    end
    object rxRecursosdCantidadActual2: TFloatField
      FieldName = 'dCantidadActual2'
    end
    object rxRecursossRecurso3: TStringField
      FieldName = 'sRecurso3'
      Size = 100
    end
    object rxRecursossMedida3: TStringField
      FieldName = 'sMedida3'
      Size = 25
    end
    object rxRecursosdCantidadConsumo3: TFloatField
      FieldName = 'dCantidadConsumo3'
    end
    object rxRecursosdCantidadProducido3: TFloatField
      FieldName = 'dCantidadProducido3'
    end
    object rxRecursosdCantidadActual3: TFloatField
      FieldName = 'dCantidadActual3'
    end
    object rxRecursossRecurso4: TStringField
      FieldName = 'sRecurso4'
      Size = 100
    end
    object rxRecursossMedida4: TStringField
      FieldName = 'sMedida4'
      Size = 25
    end
    object rxRecursosdCantidadConsumo4: TFloatField
      FieldName = 'dCantidadConsumo4'
    end
    object rxRecursosdCantidadProducido4: TFloatField
      FieldName = 'dCantidadProducido4'
    end
    object rxRecursosdCantidadActual4: TFloatField
      FieldName = 'dCantidadActual4'
    end
    object rxRecursosEmbarcacion: TStringField
      FieldName = 'Embarcacion'
      Size = 50
    end
  end
  object rxOrdenes: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'sOrden'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sDescripcionOrden'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'dAvanceProgramado'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceReal'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceProgramadoAnt'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceProgramadoDiario'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceAnterior'
        DataType = ftFloat
      end
      item
        Name = 'dAvanceDiario'
        DataType = ftFloat
      end
      item
        Name = 'dTiempoProgramado'
        DataType = ftFloat
      end
      item
        Name = 'dTiempoReal'
        DataType = ftFloat
      end
      item
        Name = 'sHoraEfectivo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sHoraMuerto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sHoraMalTiempo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sTipoActividad'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sNumeroActividad'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'dAvancePartida'
        DataType = ftFloat
      end
      item
        Name = 'sTipoNota'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sHoraInicio'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sHoraFinal'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sHoras'
        DataType = ftString
        Size = 20
      end>
    Left = 264
    Top = 280
    object rxOrdenessOrden: TStringField
      FieldName = 'sOrden'
      Size = 40
    end
    object rxOrdenessDescripcionOrden: TStringField
      FieldName = 'sDescripcionOrden'
      Size = 250
    end
    object rxOrdenesdAvanceProgramado: TFloatField
      FieldName = 'dAvanceProgramado'
    end
    object rxOrdenesdAvanceReal: TFloatField
      FieldName = 'dAvanceReal'
    end
    object rxOrdenesdAvanceProgramadoAnt: TFloatField
      FieldName = 'dAvanceProgramadoAnt'
    end
    object rxOrdenesdAvanceProgramadoDiario: TFloatField
      FieldName = 'dAvanceProgramadoDiario'
    end
    object rxOrdenesdAvanceAnterior: TFloatField
      FieldName = 'dAvanceAnterior'
    end
    object rxOrdenesdAvanceDiario: TFloatField
      FieldName = 'dAvanceDiario'
    end
    object rxOrdenesdTiempoProgramado: TFloatField
      FieldName = 'dTiempoProgramado'
    end
    object rxOrdenesdTiempoReal: TFloatField
      FieldName = 'dTiempoReal'
    end
    object rxOrdenessHoraEfectivo: TStringField
      FieldName = 'sHoraEfectivo'
    end
    object rxOrdenessHoraMuerto: TStringField
      FieldName = 'sHoraMuerto'
    end
    object rxOrdenessHoraMalTiempo: TStringField
      FieldName = 'sHoraMalTiempo'
    end
    object rxOrdenessTipoActividad: TStringField
      FieldName = 'sTipoActividad'
    end
    object rxOrdenessNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Size = 100
    end
    object rxOrdenesmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object rxOrdenesdAvancePartida: TFloatField
      FieldName = 'dAvancePartida'
    end
    object rxOrdenessTipoNota: TStringField
      FieldName = 'sTipoNota'
      Size = 30
    end
    object rxOrdenessHoraInicio: TStringField
      FieldName = 'sHoraInicio'
    end
    object rxOrdenessHoraFinal: TStringField
      FieldName = 'sHoraFinal'
    end
    object rxOrdenessHoras: TStringField
      FieldName = 'sHoras'
    end
  end
end
