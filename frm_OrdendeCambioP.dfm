object frmOrdendeCambioP: TfrmOrdendeCambioP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Orden de Cambio -> Afectacion de Partidas'
  ClientHeight = 406
  ClientWidth = 847
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label35: TLabel
    Left = 351
    Top = 10
    Width = 56
    Height = 14
    Caption = 'OFICIO No.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label36: TLabel
    Left = 580
    Top = 12
    Width = 102
    Height = 14
    Caption = 'ORDEN CAMBIO No.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 6
    Top = 10
    Width = 205
    Height = 14
    Caption = '&CEDULA NOTIFICACI'#211'N DE CAMBIO No.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tsOrdenOficio: TEdit
    Left = 413
    Top = 7
    Width = 161
    Height = 22
    Color = clBtnHighlight
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object tsOrdenCambio: TEdit
    Left = 685
    Top = 7
    Width = 161
    Height = 22
    Color = clBtnHighlight
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object grDetalle: tNewGroupBox
    Left = 5
    Top = 29
    Width = 841
    Height = 372
    Align = alCustom
    Caption = 'Detalle de Partidas'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    HighLightColor = clBtnHighlight
    ShadowColor = clBtnFace
    Arc = 15
    Bevel = bnRaisedLine
    Title.Offset = 0
    Title.Width = 185
    Title.HighLightColor = clBlack
    Title.ShadowColor = clBlack
    Title.Arc = 15
    Title.Shape = tsRect
    Title.Separation = 3
    Title.Bevel = bnRaised
    Title.Border = True
    Title.TextAlign = ttCenter
    Title.Align = taTop
    Title.Height = 18
    Title.BkColor = clGray
    TransparentMode = True
    Border = True
    Shape = tsRect
    object Label1: TLabel
      Left = 8
      Top = 55
      Width = 78
      Height = 14
      Caption = 'Especificaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 259
      Top = 55
      Width = 50
      Height = 14
      Caption = 'Costo DLL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 263
      Top = 33
      Width = 46
      Height = 14
      Caption = 'Costo MN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 265
      Top = 98
      Width = 44
      Height = 14
      Caption = 'Precio Dll'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 261
      Top = 77
      Width = 48
      Height = 14
      Caption = 'Precio MN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 8
      Top = 215
      Width = 57
      Height = 14
      Caption = 'Descripcion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EtiquetaPU1: TLabel
      Left = 8
      Top = 75
      Width = 40
      Height = 14
      Caption = 'Medida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 97
      Width = 66
      Height = 14
      Caption = 'Cant. Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 33
      Width = 81
      Height = 14
      Caption = '&Concepto/Part.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tmDescripcion: TDBMemo
      Left = 85
      Top = 113
      Width = 348
      Height = 248
      Color = clBtnFace
      Ctl3D = False
      DataField = 'mDescripcion'
      DataSource = ds_PartidasEfectivas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 8
    end
    object tdVentaDLL: TRxDBCalcEdit
      Left = 313
      Top = 89
      Width = 120
      Height = 20
      Margins.Left = 5
      Margins.Top = 2
      DataField = 'dVentaDLL'
      DataSource = ds_PartidasEfectivas
      Color = clBtnFace
      Ctl3D = False
      DisplayFormat = ',0.0#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      ZeroEmpty = False
    end
    object tdVentaMN: TRxDBCalcEdit
      Left = 313
      Top = 71
      Width = 120
      Height = 20
      Margins.Left = 5
      Margins.Top = 2
      DataField = 'dVentaMN'
      DataSource = ds_PartidasEfectivas
      Color = clBtnFace
      Ctl3D = False
      DisplayFormat = ',0.0#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      ZeroEmpty = False
    end
    object tdCostoDLL: TRxDBCalcEdit
      Left = 313
      Top = 50
      Width = 120
      Height = 20
      Margins.Left = 5
      Margins.Top = 2
      DataField = 'dCostoDll'
      DataSource = ds_PartidasEfectivas
      Color = clBtnFace
      Ctl3D = False
      DisplayFormat = ',0.0#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      ZeroEmpty = False
    end
    object tdCostoMN: TRxDBCalcEdit
      Left = 313
      Top = 28
      Width = 120
      Height = 20
      Margins.Left = 5
      Margins.Top = 2
      DataField = 'dCostoMN'
      DataSource = ds_PartidasEfectivas
      Color = clBtnFace
      Ctl3D = False
      DisplayFormat = ',0.0#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      ZeroEmpty = False
    end
    object tdCantidadAnexo: TRxDBCalcEdit
      Left = 85
      Top = 92
      Width = 120
      Height = 20
      Margins.Left = 5
      Margins.Top = 2
      DataField = 'dCantidadAnexo'
      DataSource = ds_PartidasEfectivas
      Color = clBtnFace
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = ',0.0###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      ZeroEmpty = False
    end
    object tsEspecificacion: TDBEdit
      Left = 85
      Top = 50
      Width = 120
      Height = 20
      CharCase = ecUpperCase
      Color = clBtnFace
      Ctl3D = False
      DataField = 'sEspecificacion'
      DataSource = ds_PartidasEfectivas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object tsMedida: TDBEdit
      Left = 85
      Top = 71
      Width = 58
      Height = 20
      Color = clBtnFace
      Ctl3D = False
      DataField = 'sMedida'
      DataSource = ds_PartidasEfectivas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object btnInsert: TAdvGlowButton
      Left = 439
      Top = 115
      Width = 67
      Height = 25
      ImageIndex = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DF60000000000000076000000280000001000000010000000010004000000
        0000800000000000000000000000100000001000000000000000000080000080
        000000808000800000008000800080800000C0C0C000808080000000FF0000FF
        000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077777777777777777777
        7777777777777777777777777777777770777777777777777007777777777777
        7000777777777777700007777777777770000077777777777000000777777777
        7000007777777777700007777777777770007777777777777007777777777777
        70777777777777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btnInsertClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnDelete: TAdvGlowButton
      Left = 439
      Top = 146
      Width = 67
      Height = 25
      ImageIndex = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DF60000000000000076000000280000001000000010000000010004000000
        0000800000000000000000000000100000001000000000000000000080000080
        000000808000800000008000800080800000C0C0C000808080000000FF0000FF
        000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0077777777777777777777
        7777777777777777777777777777777777777707777777777777700777777777
        7777000777777777777000077777777777000007777777777000000777777777
        7700000777777777777000077777777777770007777777777777700777777777
        77777707777777777777777777777777777777777777}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnDeleteClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object btnClose: TAdvGlowButton
      Left = 439
      Top = 177
      Width = 67
      Height = 25
      ImageIndex = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DF60000000000000076000000280000001000000010000000010004000000
        000080000000C40E0000C40E0000000000000000000000000000000080000080
        00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
        000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0088888888088888888888
        88800888888888888804088888888888804E08888888000004EE000000008888
        0EEE0770888888880EE00770888888880EE00770888888880EEE077088888888
        0EEE0770888888880EEE0770888888880EEE0770888888880EE4077088888888
        0E407770888888880407777088888888000000008888}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnCloseClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object Grid_Bitacora: TRxDBGrid
      Left = 512
      Top = 28
      Width = 302
      Height = 333
      Color = 15138559
      Ctl3D = False
      DataSource = dsPartidasOC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      TitleButtons = True
      Columns = <
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'sWbs'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Wbs'
          Width = 92
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'sNumeroActividad'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'No. Partida'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taRightJustify
          Title.Caption = 'Cantidad'
          Width = 99
          Visible = True
        end>
    end
    object tsNumeroActividad: TRxDBLookupCombo
      Left = 85
      Top = 27
      Width = 122
      Height = 22
      DropDownCount = 8
      Color = clBtnFace
      EmptyItemColor = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ListStyle = lsDelimited
      LookupField = 'sNumeroActividad'
      LookupDisplay = 'sNumeroActividad'
      LookupSource = ds_PartidasEfectivas
      ParentFont = False
      TabOrder = 0
    end
  end
  object tiCedulaProcedencia: TCurrencyEdit
    Left = 218
    Top = 7
    Width = 121
    Height = 22
    Margins.Left = 4
    Margins.Top = 1
    AutoSize = False
    Color = clBtnHighlight
    DecimalPlaces = 0
    DisplayFormat = '####0'
    Enabled = False
    TabOrder = 3
  end
  object QryPartidasEfectivas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT sWbs, sNumeroActividad, mDescripcion, sEspecificacion, sM' +
        'edida, dCantidadAnexo, dCostoMN,'
      'dCostoDLL, dVentaMN, dVentaDLL FROM actividadesxanexo'
      
        'WHERE sContrato = :Contrato And sIdConvenio = :Convenio and sTip' +
        'oActividad = "Actividad" Order By iItemOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
    Left = 310
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end>
  end
  object ds_PartidasEfectivas: TDataSource
    AutoEdit = False
    DataSet = QryPartidasEfectivas
    Left = 309
    Top = 165
  end
  object dsPartidasOC: TDataSource
    DataSet = QryPartidasOC
    Left = 546
    Top = 133
  end
  object QryPartidasOC: TZQuery
    Connection = connection.zConnection
    BeforeInsert = QryPartidasOCBeforeInsert
    BeforeDelete = QryPartidasOCBeforeDelete
    SQL.Strings = (
      
        'select * from ordendecambio_p where sContrato = :Contrato And iC' +
        'edulaProcedencia = :Cedula Order By sWbs')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cedula'
        ParamType = ptUnknown
      end>
    Left = 581
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cedula'
        ParamType = ptUnknown
      end>
    object QryPartidasOCsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object QryPartidasOCiCedulaProcedencia: TIntegerField
      FieldName = 'iCedulaProcedencia'
      Required = True
    end
    object QryPartidasOCsWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 40
    end
    object QryPartidasOCsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
    end
    object QryPartidasOCdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      DisplayFormat = '##,###.#####'
    end
  end
end
