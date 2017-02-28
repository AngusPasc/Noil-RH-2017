object frmSeleccionarAnexoCotemar: TfrmSeleccionarAnexoCotemar
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Seleccionar Paquete'
  ClientHeight = 459
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grupoExistente: TGroupBox
    Left = 22
    Top = 25
    Width = 585
    Height = 144
    Caption = 'Seleccionar Paquete'
    Color = clInactiveCaption
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 62
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Paquete:'
    end
    object Label4: TLabel
      Left = 48
      Top = 36
      Width = 58
      Height = 13
      Caption = 'Descripcion:'
    end
    object RadioButton1: TRadioButton
      Left = 264
      Top = -24
      Width = 113
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 0
    end
    object RadioButton3: TRadioButton
      Left = 432
      Top = -24
      Width = 113
      Height = 17
      Caption = 'RadioButton3'
      TabOrder = 1
    end
    object mDescripcion: TDBMemo
      Left = 126
      Top = 38
      Width = 443
      Height = 89
      DataField = 'mDescripcion'
      DataSource = dsPaquetes
      ReadOnly = True
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 126
      Top = 16
      Width = 221
      Height = 21
      DataField = 'sNumeroActividad'
      DataSource = dsPaquetes
      ItemHeight = 13
      ReadOnly = True
      TabOrder = 3
    end
  end
  object grupoNuevo: TGroupBox
    Left = 22
    Top = 175
    Width = 585
    Height = 245
    Caption = 'Crear Paquete (Estara ligado al paquete principal)'
    TabOrder = 1
    object Label2: TLabel
      Left = 48
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Descripcion:'
    end
    object Label3: TLabel
      Left = 6
      Top = 21
      Width = 100
      Height = 13
      Caption = 'Numero deActividad:'
    end
    object Label6: TLabel
      Left = 48
      Top = 175
      Width = 58
      Height = 13
      Caption = 'Fecha Final:'
    end
    object Label5: TLabel
      Left = 45
      Top = 156
      Width = 61
      Height = 13
      Caption = 'Fecha Inicio:'
    end
    object Label7: TLabel
      Left = 60
      Top = 202
      Width = 46
      Height = 13
      Caption = 'Duracion:'
    end
    object sDescripcion: TMemo
      Left = 126
      Top = 40
      Width = 443
      Height = 106
      TabOrder = 0
    end
    object sNumeroActividad: TEdit
      Left = 126
      Top = 18
      Width = 221
      Height = 21
      TabOrder = 1
    end
    object dFechaInicio: TDateTimePicker
      Left = 126
      Top = 152
      Width = 83
      Height = 21
      Date = 40830.682135833330000000
      Time = 40830.682135833330000000
      TabOrder = 2
      OnChange = dFechaInicioChange
    end
    object dFechaFinal: TDateTimePicker
      Left = 126
      Top = 177
      Width = 83
      Height = 21
      Date = 40830.682135833330000000
      Time = 40830.682135833330000000
      TabOrder = 3
    end
    object Duracion: TRxCalcEdit
      Left = 126
      Top = 202
      Width = 83
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 4
    end
  end
  object chkSeleccionar: TRadioButton
    Left = 135
    Top = 8
    Width = 113
    Height = 17
    Caption = 'Seleccionar Paquete'
    Checked = True
    TabOrder = 2
    TabStop = True
    OnClick = chkSeleccionarClick
  end
  object chkCrear: TRadioButton
    Left = 335
    Top = 8
    Width = 113
    Height = 17
    Caption = 'Crear Paquete'
    TabOrder = 3
    OnClick = chkCrearClick
  end
  object cmdCancelar: TButton
    Left = 532
    Top = 426
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 4
    OnClick = cmdCancelarClick
  end
  object dsPaquetes: TDataSource
    DataSet = qryPaquetes
    Left = 480
    Top = 40
  end
  object qryPaquetes: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sNumeroActividad,sWbs,sWbsAnterior,mDescripcion,iNivel fr' +
        'om'
      'actividadesxanexo where sContrato = :contrato'
      'and sTipoActividad= '#39'Paquete'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 528
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
  end
end
