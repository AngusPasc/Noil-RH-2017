object frmOpcionesAvances: TfrmOpcionesAvances
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Opciones de Reporte'
  ClientHeight = 291
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgOpciones: TsPageControl
    Left = -4
    Top = 2
    Width = 286
    Height = 253
    ActivePage = pgPartidas
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object pgPartidas: TsTabSheet
      Caption = 'Partidas'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object GroupPageRange: TGroupBox
        Left = 2
        Top = 3
        Width = 267
        Height = 121
        Caption = ' Rango Partidas  '
        TabOrder = 0
        object DescrL: TLabel
          Left = 15
          Top = 83
          Width = 249
          Height = 29
          AutoSize = False
          Caption = 
            'Escribe numeros de partidas separadas por comas(,) Ejemplo: 1,3,' +
            '5,17'
          WordWrap = True
        end
        object optTodas: TRadioButton
          Left = 12
          Top = 20
          Width = 153
          Height = 17
          HelpContext = 108
          Caption = 'Todas'
          TabOrder = 0
        end
        object OptReportadas: TRadioButton
          Left = 12
          Top = 40
          Width = 153
          Height = 17
          HelpContext = 118
          Caption = 'Reportadas'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object opcPartidas: TRadioButton
          Left = 10
          Top = 60
          Width = 77
          Height = 17
          HelpContext = 124
          Caption = 'Partidas:'
          TabOrder = 2
          OnExit = opcPartidasExit
        end
        object EditPartidas: TEdit
          Left = 92
          Top = 58
          Width = 165
          Height = 21
          HelpContext = 133
          TabOrder = 3
          OnEnter = EditPartidasEnter
        end
      end
      object GroupQuality: TGroupBox
        Left = 2
        Top = 123
        Width = 267
        Height = 89
        Caption = 'Condiciones'
        TabOrder = 1
        object Label1: TLabel
          Left = 121
          Top = 22
          Width = 113
          Height = 13
          Caption = 'Seleccionar Porcentaje:'
        end
        object chkMayor: TCheckBox
          Left = 12
          Top = 21
          Width = 103
          Height = 17
          Caption = 'Mayor o Igual a'
          TabOrder = 0
        end
        object chkMenor: TCheckBox
          Left = 12
          Top = 40
          Width = 117
          Height = 17
          Caption = 'Menor o Igual a'
          TabOrder = 1
        end
        object chkIgual: TCheckBox
          Left = 12
          Top = 60
          Width = 117
          Height = 17
          Caption = 'Igual a'
          TabOrder = 2
        end
        object ComboPorciento: TComboBox
          Left = 173
          Top = 41
          Width = 64
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          Text = 'ComboPorciento'
          OnChange = ComboPorcientoChange
        end
      end
    end
    object pgEstructura: TsTabSheet
      Caption = 'Estructura'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 2
        Top = 3
        Width = 267
        Height = 149
        Caption = 'Paquetes'
        TabOrder = 0
        object Label2: TLabel
          Left = 13
          Top = 79
          Width = 249
          Height = 69
          AutoSize = False
          Caption = 
            'Escribe el n'#250'mero de paquetes antes de la partida que requieres ' +
            'visualizar en el Reporte. Ejemplo : 1 visualizar'#225' un paquete y s' +
            'eguido el numero de partida, 2 se imprimen dos paquetes y seguid' +
            'o el numero de partida.'
          WordWrap = True
        end
        object optTodosPaquetes: TRadioButton
          Left = 12
          Top = 20
          Width = 153
          Height = 17
          HelpContext = 108
          Caption = 'Todos'
          TabOrder = 0
        end
        object optNingunPaquete: TRadioButton
          Left = 12
          Top = 38
          Width = 153
          Height = 17
          HelpContext = 118
          Caption = 'Ninguno'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object optNumeroPaquetes: TRadioButton
          Left = 12
          Top = 57
          Width = 77
          Height = 17
          HelpContext = 124
          Caption = 'Paquetes:'
          TabOrder = 2
        end
        object EditPaquetes: TEdit
          Left = 92
          Top = 53
          Width = 165
          Height = 21
          HelpContext = 133
          TabOrder = 3
          OnEnter = EditPaquetesEnter
        end
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 156
        Width = 262
        Height = 58
        Caption = 'Buscar Paquete (ISOMETRICO)'
        TabOrder = 1
        object chkAllPaquetes: TRadioButton
          Left = 10
          Top = 17
          Width = 153
          Height = 17
          HelpContext = 108
          Caption = 'Todos'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object chkEspPaquete: TRadioButton
          Left = 10
          Top = 35
          Width = 77
          Height = 17
          HelpContext = 124
          Caption = 'Isometrico:'
          TabOrder = 1
        end
        object txtIsometrico: TEdit
          Left = 90
          Top = 29
          Width = 165
          Height = 21
          HelpContext = 133
          TabOrder = 2
          OnEnter = txtIsometricoEnter
        end
      end
    end
    object pgAlcances: TsTabSheet
      Caption = 'Alcances'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 3
        Top = 3
        Width = 267
        Height = 166
        Caption = ' Rango Alcances  '
        TabOrder = 0
        object Label3: TLabel
          Left = 15
          Top = 108
          Width = 249
          Height = 45
          AutoSize = False
          Caption = 
            'Escribe escribe el numero de alcance que desees tomar en cuenta ' +
            'para la sumatoria de volumenes.'
          WordWrap = True
        end
        object optTodosAlcances: TRadioButton
          Left = 12
          Top = 20
          Width = 153
          Height = 17
          HelpContext = 108
          Caption = 'Todos'
          TabOrder = 0
        end
        object optUltimoAlcance: TRadioButton
          Left = 12
          Top = 40
          Width = 153
          Height = 17
          HelpContext = 118
          Caption = 'Ulimo Alcance'
          TabOrder = 1
        end
        object optNumeroAlcance: TRadioButton
          Left = 12
          Top = 83
          Width = 77
          Height = 17
          HelpContext = 124
          Caption = 'Numero:'
          TabOrder = 2
          OnExit = optNumeroAlcanceExit
        end
        object txtNumeroAlcance: TEdit
          Left = 92
          Top = 81
          Width = 165
          Height = 21
          HelpContext = 133
          TabOrder = 3
          OnEnter = txtNumeroAlcanceEnter
        end
        object optNingunAlcance: TRadioButton
          Left = 12
          Top = 61
          Width = 153
          Height = 17
          HelpContext = 118
          Caption = 'Ningun Alcance'
          Checked = True
          TabOrder = 4
          TabStop = True
        end
      end
    end
  end
  object CmdOk: TButton
    Left = 126
    Top = 262
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = CmdOkClick
  end
  object CmdCancel: TButton
    Left = 207
    Top = 261
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object mdReporte: TRxMemoryData
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sWbs'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sNumeroActividad'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia1'
        DataType = ftFloat
      end
      item
        Name = 'Dia2'
        DataType = ftFloat
      end
      item
        Name = 'Dia3'
        DataType = ftFloat
      end
      item
        Name = 'Dia4'
        DataType = ftFloat
      end
      item
        Name = 'Dia5'
        DataType = ftFloat
      end
      item
        Name = 'Dia6'
        DataType = ftFloat
      end
      item
        Name = 'Dia7'
        DataType = ftFloat
      end
      item
        Name = 'Dia8'
        DataType = ftFloat
      end
      item
        Name = 'Dia9'
        DataType = ftFloat
      end
      item
        Name = 'Dia10'
        DataType = ftFloat
      end
      item
        Name = 'Dia11'
        DataType = ftFloat
      end
      item
        Name = 'Dia12'
        DataType = ftFloat
      end
      item
        Name = 'Dia13'
        DataType = ftFloat
      end
      item
        Name = 'Dia14'
        DataType = ftFloat
      end
      item
        Name = 'Dia15'
        DataType = ftFloat
      end
      item
        Name = 'Dia16'
        DataType = ftFloat
      end
      item
        Name = 'Dia17'
        DataType = ftFloat
      end
      item
        Name = 'Dia18'
        DataType = ftFloat
      end
      item
        Name = 'Dia19'
        DataType = ftFloat
      end
      item
        Name = 'Dia20'
        DataType = ftFloat
      end
      item
        Name = 'Dia21'
        DataType = ftFloat
      end
      item
        Name = 'Dia22'
        DataType = ftFloat
      end
      item
        Name = 'Dia23'
        DataType = ftFloat
      end
      item
        Name = 'Dia24'
        DataType = ftFloat
      end
      item
        Name = 'Dia25'
        DataType = ftFloat
      end
      item
        Name = 'Dia26'
        DataType = ftFloat
      end
      item
        Name = 'Dia27'
        DataType = ftFloat
      end
      item
        Name = 'Dia28'
        DataType = ftFloat
      end
      item
        Name = 'Dia29'
        DataType = ftFloat
      end
      item
        Name = 'Dia30'
        DataType = ftFloat
      end
      item
        Name = 'Dia31'
        DataType = ftFloat
      end>
    Left = 37
    Top = 256
    object mdReportesContrato: TStringField
      FieldName = 'sContrato'
      Size = 25
    end
    object mdReportesNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Size = 25
    end
    object mdReportemDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object mdReportedCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object mdReportesMedida: TStringField
      FieldName = 'sMedida'
    end
    object mdReporteDia1: TFloatField
      FieldName = 'Dia1'
    end
    object mdReporteDia2: TFloatField
      FieldName = 'Dia2'
    end
    object mdReporteDia3: TFloatField
      FieldName = 'Dia3'
    end
    object mdReporteDia4: TFloatField
      FieldName = 'Dia4'
    end
    object mdReporteDia5: TFloatField
      FieldName = 'Dia5'
    end
    object mdReporteDia6: TFloatField
      FieldName = 'Dia6'
    end
    object mdReporteDia7: TFloatField
      FieldName = 'Dia7'
    end
    object mdReporteDia8: TFloatField
      FieldName = 'Dia8'
    end
    object mdReporteDia9: TFloatField
      FieldName = 'Dia9'
    end
    object mdReporteDia10: TFloatField
      FieldName = 'Dia10'
    end
    object mdReporteDia11: TFloatField
      FieldName = 'Dia11'
    end
    object mdReporteDia12: TFloatField
      FieldName = 'Dia12'
    end
    object mdReporteDia13: TFloatField
      FieldName = 'Dia13'
    end
    object mdReporteDia14: TFloatField
      FieldName = 'Dia14'
    end
    object mdReporteDia15: TFloatField
      FieldName = 'Dia15'
    end
    object mdReporteDia16: TFloatField
      FieldName = 'Dia16'
    end
    object mdReporteDia17: TFloatField
      FieldName = 'Dia17'
    end
    object mdReporteDia18: TFloatField
      FieldName = 'Dia18'
    end
    object mdReporteDia19: TFloatField
      FieldName = 'Dia19'
    end
    object mdReporteDia20: TFloatField
      FieldName = 'Dia20'
    end
    object mdReporteDia21: TFloatField
      FieldName = 'Dia21'
    end
    object mdReporteDia22: TFloatField
      FieldName = 'Dia22'
    end
    object mdReporteDia23: TFloatField
      FieldName = 'Dia23'
    end
    object mdReporteDia24: TFloatField
      FieldName = 'Dia24'
    end
    object mdReporteDia25: TFloatField
      FieldName = 'Dia25'
    end
    object mdReporteDia26: TFloatField
      FieldName = 'Dia26'
    end
    object mdReporteDia27: TFloatField
      FieldName = 'Dia27'
    end
    object mdReporteDia28: TFloatField
      FieldName = 'Dia28'
    end
    object mdReporteDia29: TFloatField
      FieldName = 'Dia29'
    end
    object mdReporteDia30: TFloatField
      FieldName = 'Dia30'
    end
    object mdReporteDia31: TFloatField
      FieldName = 'Dia31'
    end
    object mdReportesWbs: TStringField
      FieldName = 'sWbs'
      Size = 30
    end
    object mdReportedTotal: TFloatField
      FieldName = 'dTotal'
    end
    object mdReporteMes: TStringField
      FieldName = 'Mes'
    end
    object mdReporteAnio: TStringField
      FieldName = 'Anio'
    end
    object mdReportedIdFecha: TDateField
      FieldName = 'dIdFecha'
    end
    object mdReportesWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
    end
    object mdReportedFechaInicio: TDateField
      FieldName = 'dFechaInicio'
    end
    object mdReportedFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object mdReporteFase: TIntegerField
      FieldName = 'Fase'
    end
    object mdReportesDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object mdReportedTotalAnt: TFloatField
      FieldName = 'dTotalAnt'
    end
  end
  object mdDatosAux: TRxMemoryData
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sWbs'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sNumeroActividad'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia1'
        DataType = ftFloat
      end
      item
        Name = 'Dia2'
        DataType = ftFloat
      end
      item
        Name = 'Dia3'
        DataType = ftFloat
      end
      item
        Name = 'Dia4'
        DataType = ftFloat
      end
      item
        Name = 'Dia5'
        DataType = ftFloat
      end
      item
        Name = 'Dia6'
        DataType = ftFloat
      end
      item
        Name = 'Dia7'
        DataType = ftFloat
      end
      item
        Name = 'Dia8'
        DataType = ftFloat
      end
      item
        Name = 'Dia9'
        DataType = ftFloat
      end
      item
        Name = 'Dia10'
        DataType = ftFloat
      end
      item
        Name = 'Dia11'
        DataType = ftFloat
      end
      item
        Name = 'Dia12'
        DataType = ftFloat
      end
      item
        Name = 'Dia13'
        DataType = ftFloat
      end
      item
        Name = 'Dia14'
        DataType = ftFloat
      end
      item
        Name = 'Dia15'
        DataType = ftFloat
      end
      item
        Name = 'Dia16'
        DataType = ftFloat
      end
      item
        Name = 'Dia17'
        DataType = ftFloat
      end
      item
        Name = 'Dia18'
        DataType = ftFloat
      end
      item
        Name = 'Dia19'
        DataType = ftFloat
      end
      item
        Name = 'Dia20'
        DataType = ftFloat
      end
      item
        Name = 'Dia21'
        DataType = ftFloat
      end
      item
        Name = 'Dia22'
        DataType = ftFloat
      end
      item
        Name = 'Dia23'
        DataType = ftFloat
      end
      item
        Name = 'Dia24'
        DataType = ftFloat
      end
      item
        Name = 'Dia25'
        DataType = ftFloat
      end
      item
        Name = 'Dia26'
        DataType = ftFloat
      end
      item
        Name = 'Dia27'
        DataType = ftFloat
      end
      item
        Name = 'Dia28'
        DataType = ftFloat
      end
      item
        Name = 'Dia29'
        DataType = ftFloat
      end
      item
        Name = 'Dia30'
        DataType = ftFloat
      end
      item
        Name = 'Dia31'
        DataType = ftFloat
      end>
    Left = 8
    Top = 256
    object StringField10: TStringField
      FieldName = 'sContrato'
      Size = 25
    end
    object StringField11: TStringField
      FieldName = 'sNumeroActividad'
      Size = 25
    end
    object MemoField3: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object FloatField1: TFloatField
      FieldName = 'dCantidad'
    end
    object StringField12: TStringField
      FieldName = 'sMedida'
    end
    object FloatField2: TFloatField
      FieldName = 'Dia1'
    end
    object FloatField3: TFloatField
      FieldName = 'Dia2'
    end
    object FloatField5: TFloatField
      FieldName = 'Dia3'
    end
    object FloatField6: TFloatField
      FieldName = 'Dia4'
    end
    object FloatField7: TFloatField
      FieldName = 'Dia5'
    end
    object FloatField8: TFloatField
      FieldName = 'Dia6'
    end
    object FloatField9: TFloatField
      FieldName = 'Dia7'
    end
    object FloatField10: TFloatField
      FieldName = 'Dia8'
    end
    object FloatField11: TFloatField
      FieldName = 'Dia9'
    end
    object FloatField12: TFloatField
      FieldName = 'Dia10'
    end
    object FloatField13: TFloatField
      FieldName = 'Dia11'
    end
    object FloatField14: TFloatField
      FieldName = 'Dia12'
    end
    object FloatField15: TFloatField
      FieldName = 'Dia13'
    end
    object FloatField16: TFloatField
      FieldName = 'Dia14'
    end
    object FloatField17: TFloatField
      FieldName = 'Dia15'
    end
    object FloatField18: TFloatField
      FieldName = 'Dia16'
    end
    object FloatField19: TFloatField
      FieldName = 'Dia17'
    end
    object FloatField20: TFloatField
      FieldName = 'Dia18'
    end
    object FloatField21: TFloatField
      FieldName = 'Dia19'
    end
    object FloatField22: TFloatField
      FieldName = 'Dia20'
    end
    object FloatField23: TFloatField
      FieldName = 'Dia21'
    end
    object FloatField24: TFloatField
      FieldName = 'Dia22'
    end
    object FloatField25: TFloatField
      FieldName = 'Dia23'
    end
    object FloatField26: TFloatField
      FieldName = 'Dia24'
    end
    object FloatField27: TFloatField
      FieldName = 'Dia25'
    end
    object FloatField28: TFloatField
      FieldName = 'Dia26'
    end
    object FloatField29: TFloatField
      FieldName = 'Dia27'
    end
    object FloatField30: TFloatField
      FieldName = 'Dia28'
    end
    object FloatField31: TFloatField
      FieldName = 'Dia29'
    end
    object FloatField32: TFloatField
      FieldName = 'Dia30'
    end
    object FloatField33: TFloatField
      FieldName = 'Dia31'
    end
    object StringField13: TStringField
      FieldName = 'sWbs'
      Size = 30
    end
    object FloatField34: TFloatField
      FieldName = 'dTotal'
    end
    object StringField14: TStringField
      FieldName = 'Mes'
    end
    object StringField15: TStringField
      FieldName = 'Anio'
    end
    object DateField1: TDateField
      FieldName = 'dIdFecha'
    end
    object mdDatosAuxsWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
    end
    object mdDatosAuxdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
    end
    object mdDatosAuxdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object mdDatosAuxFase: TIntegerField
      FieldName = 'Fase'
    end
    object mdDatosAuxsDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
  end
  object Q_Detalle: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 90
    Top = 256
  end
  object Detalle: TRxMemoryData
    FieldDefs = <
      item
        Name = 'sContrato'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sWbs'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'sNumeroActividad'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'mDescripcion'
        DataType = ftMemo
      end
      item
        Name = 'dCantidad'
        DataType = ftFloat
      end
      item
        Name = 'sMedida'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Dia1'
        DataType = ftFloat
      end
      item
        Name = 'Dia2'
        DataType = ftFloat
      end
      item
        Name = 'Dia3'
        DataType = ftFloat
      end
      item
        Name = 'Dia4'
        DataType = ftFloat
      end
      item
        Name = 'Dia5'
        DataType = ftFloat
      end
      item
        Name = 'Dia6'
        DataType = ftFloat
      end
      item
        Name = 'Dia7'
        DataType = ftFloat
      end
      item
        Name = 'Dia8'
        DataType = ftFloat
      end
      item
        Name = 'Dia9'
        DataType = ftFloat
      end
      item
        Name = 'Dia10'
        DataType = ftFloat
      end
      item
        Name = 'Dia11'
        DataType = ftFloat
      end
      item
        Name = 'Dia12'
        DataType = ftFloat
      end
      item
        Name = 'Dia13'
        DataType = ftFloat
      end
      item
        Name = 'Dia14'
        DataType = ftFloat
      end
      item
        Name = 'Dia15'
        DataType = ftFloat
      end
      item
        Name = 'Dia16'
        DataType = ftFloat
      end
      item
        Name = 'Dia17'
        DataType = ftFloat
      end
      item
        Name = 'Dia18'
        DataType = ftFloat
      end
      item
        Name = 'Dia19'
        DataType = ftFloat
      end
      item
        Name = 'Dia20'
        DataType = ftFloat
      end
      item
        Name = 'Dia21'
        DataType = ftFloat
      end
      item
        Name = 'Dia22'
        DataType = ftFloat
      end
      item
        Name = 'Dia23'
        DataType = ftFloat
      end
      item
        Name = 'Dia24'
        DataType = ftFloat
      end
      item
        Name = 'Dia25'
        DataType = ftFloat
      end
      item
        Name = 'Dia26'
        DataType = ftFloat
      end
      item
        Name = 'Dia27'
        DataType = ftFloat
      end
      item
        Name = 'Dia28'
        DataType = ftFloat
      end
      item
        Name = 'Dia29'
        DataType = ftFloat
      end
      item
        Name = 'Dia30'
        DataType = ftFloat
      end
      item
        Name = 'Dia31'
        DataType = ftFloat
      end>
    Left = 64
    Top = 256
    object StringField1: TStringField
      FieldName = 'sContrato'
      Size = 25
    end
    object DetallesWbs: TStringField
      FieldName = 'sWbs'
    end
    object StringField7: TStringField
      FieldName = 'sWbsAnterior'
    end
    object StringField2: TStringField
      FieldName = 'sNumeroActividad'
      Size = 25
    end
    object MemoField1: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object StringField3: TStringField
      FieldName = 'sMedida'
    end
    object FloatField4: TFloatField
      FieldName = 'dCantidad'
    end
    object DateField2: TDateField
      FieldName = 'dIdFecha'
    end
    object DetalledAvanceActual: TFloatField
      FieldName = 'dAvanceActual'
    end
    object StringField5: TStringField
      FieldName = 'Mes'
    end
    object StringField6: TStringField
      FieldName = 'Anio'
    end
    object DetalledFechaInicio: TDateField
      FieldName = 'dFechaInicio'
    end
    object DetalledFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object DetalleFase: TIntegerField
      FieldName = 'Fase'
    end
    object DetallesDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object DetalledCantidadAnterior: TFloatField
      FieldName = 'dCantidadAnterior'
    end
    object DetalledAvanceAnterior: TFloatField
      FieldName = 'dAvanceAnterior'
    end
  end
end
