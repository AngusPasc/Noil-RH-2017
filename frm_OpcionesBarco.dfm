object frmOpcionesBarco: TfrmOpcionesBarco
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Opciones de Reporte'
  ClientHeight = 290
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgOpciones: TsPageControl
    Left = 1
    Top = 3
    Width = 286
    Height = 253
    ActivePage = pgPartidas
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object pgPartidas: TsTabSheet
      Caption = 'Opciones'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object GroupPageRange: TGroupBox
        Left = 3
        Top = 80
        Width = 271
        Height = 140
        Caption = 'Embarcaciones'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object ChkTodo: TCheckBox
          Left = 14
          Top = 107
          Width = 147
          Height = 17
          Caption = 'Detallar Plataformas'
          TabOrder = 0
        end
        object optTodas: TRadioButton
          Left = 10
          Top = 24
          Width = 87
          Height = 17
          Caption = 'Todas'
          TabOrder = 1
        end
        object optEmbarcacion: TRadioButton
          Left = 10
          Top = 46
          Width = 87
          Height = 17
          Caption = 'Embarcacion'
          TabOrder = 2
        end
        object tdEmbarcacionExist: TDBLookupComboBox
          Left = 29
          Top = 69
          Width = 139
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'sIdEmbarcacion'
          ListField = 'sDescripcion'
          ListSource = ds_embarcaciones2
          ParentFont = False
          TabOrder = 3
        end
        object chkExistencias: TCheckBox
          Left = 178
          Top = 17
          Width = 74
          Height = 17
          Caption = 'Existencias'
          TabOrder = 4
          OnClick = chkExistenciasClick
          OnEnter = chkExistenciasEnter
        end
        object chkConsumoEQ: TCheckBox
          Left = 178
          Top = 32
          Width = 87
          Height = 17
          Caption = 'Consumos EQ'
          TabOrder = 5
          OnClick = chkConsumoEQClick
          OnEnter = chkConsumoEQEnter
        end
        object chkConsumos: TCheckBox
          Left = 178
          Top = 48
          Width = 91
          Height = 17
          Caption = 'Consumo Emb.'
          TabOrder = 6
          OnClick = chkConsumosClick
          OnEnter = chkConsumosEnter
        end
        object chkRecibido: TCheckBox
          Left = 178
          Top = 64
          Width = 91
          Height = 17
          Caption = 'Recibido'
          TabOrder = 7
          OnClick = chkRecibidoClick
          OnEnter = chkRecibidoEnter
        end
        object chkProducido: TCheckBox
          Left = 178
          Top = 80
          Width = 91
          Height = 17
          Caption = 'Producido'
          TabOrder = 8
          OnClick = chkProducidoClick
          OnEnter = chkProducidoEnter
        end
      end
      object GroupQuality: TGroupBox
        Left = 3
        Top = -1
        Width = 271
        Height = 75
        Caption = 'Periodo:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 20
          Width = 57
          Height = 13
          Caption = 'Fecha Inicio'
        end
        object Label3: TLabel
          Left = 16
          Top = 46
          Width = 54
          Height = 13
          Caption = 'Fecha Final'
        end
        object Fi: TDateTimePicker
          Left = 79
          Top = 16
          Width = 86
          Height = 22
          Date = 39643.494468472220000000
          Time = 39643.494468472220000000
          TabOrder = 0
        end
        object Ff: TDateTimePicker
          Left = 79
          Top = 41
          Width = 86
          Height = 22
          Date = 39643.494607534730000000
          Time = 39643.494607534730000000
          TabOrder = 1
        end
        object RArribo: TRadioButton
          Left = 185
          Top = 19
          Width = 63
          Height = 17
          Caption = 'Arribo'
          TabOrder = 2
        end
        object RDisposicion: TRadioButton
          Left = 185
          Top = 42
          Width = 74
          Height = 17
          Caption = 'Disposicion'
          TabOrder = 3
        end
      end
    end
  end
  object CmdOk: TButton
    Left = 126
    Top = 261
    Width = 75
    Height = 25
    Caption = 'Aceptar'
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
  object Embarcaciones2: TZReadOnlyQuery
    Connection = connection.zConnection
    AutoCalcFields = False
    SQL.Strings = (
      
        'select sIdEmbarcacion, sIdTipoEmbarcacion,sDescripcion from emba' +
        'rcaciones'
      'Where sContrato =:Contrato and sAplicaDiesel = '#39'Si'#39
      'order by sDescripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 4
    Top = 261
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object StringField4: TStringField
      FieldName = 'sIdEmbarcacion'
      Required = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
  end
  object ds_embarcaciones2: TDataSource
    AutoEdit = False
    DataSet = Embarcaciones2
    Left = 36
    Top = 261
  end
  object mExistencias: TRxMemoryData
    FieldDefs = <>
    Left = 80
    Top = 264
  end
  object qry_MuestraAgua: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select r.*, e.iIdRecursoExistencia, e.sMedida, e.sDescripcion '
      'from recursos r'
      'inner join recursosdeexistencias e'
      'on (r.iIdRecursoExistencia = e.iIdRecursoExistencia)'
      'where r.dIdFecha = :Fecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
    Left = 88
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end>
  end
  object ds_MuestraAgua: TDataSource
    Left = 120
    Top = 120
  end
  object qry_MuestraMov: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      '')
    Params = <>
    Left = 88
    Top = 152
  end
  object ds_MuestraMov: TDataSource
    DataSet = qry_MuestraMov
    Left = 120
    Top = 152
  end
end
