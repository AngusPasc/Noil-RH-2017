object frmformatogenerador: Tfrmformatogenerador
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FORMATO GENERADOR'
  ClientHeight = 300
  ClientWidth = 746
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 257
    Height = 57
    Caption = 'FORMATO GENERADOR'
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 35
      Width = 78
      Height = 13
      Caption = 'Grupo Perimetro'
    end
    object cmbFormatosGenerador: TDBLookupComboBox
      Left = 95
      Top = 33
      Width = 145
      Height = 21
      KeyField = 'iIdGrupo'
      ListField = 'sDescripcion'
      ListSource = dsgenerador
      TabOrder = 0
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 8
    Top = 71
    Width = 730
    Height = 221
    DataSource = dsperimetros
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object BtnNuevo: TAdvGlowButton
    Left = 321
    Top = 40
    Width = 65
    Height = 29
    Caption = 'Nuevo Renglon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnNuevoClick
    Appearance.BorderColor = 12631218
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.Color = 14671574
    Appearance.ColorTo = 15000283
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 14144974
    Appearance.ColorMirrorTo = 15197664
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object BtnModificar: TAdvGlowButton
    Left = 392
    Top = 40
    Width = 65
    Height = 29
    Caption = 'Modificar Renglon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BtnModificarClick
    Appearance.BorderColor = 12631218
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.Color = 14671574
    Appearance.ColorTo = 15000283
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 14144974
    Appearance.ColorMirrorTo = 15197664
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object dsgenerador: TDataSource
    DataSet = zgrupo
    Left = 136
    Top = 8
  end
  object zgrupo: TZQuery
    Connection = connection.zConnection
    AfterScroll = zgrupoAfterScroll
    SQL.Strings = (
      'select  * from gruposperimetros order by iidgrupo')
    Params = <>
    Left = 168
    Top = 8
    object zgrupoiIdGrupo: TIntegerField
      FieldName = 'iIdGrupo'
    end
    object zgruposDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object zgruposSimbolo: TStringField
      FieldName = 'sSimbolo'
      Required = True
    end
  end
  object mdperimetros: TRxMemoryData
    FieldDefs = <
      item
        Name = 'mdperimetrosField7'
        DataType = ftVarBytes
        Size = 16
      end
      item
        Name = 'mdperimetrosField8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mdperimetrosField9'
        DataType = ftSmallint
      end>
    Left = 224
    Top = 40
  end
  object dsperimetros: TDataSource
    AutoEdit = False
    DataSet = mdperimetros
    Left = 256
    Top = 40
  end
end
