object frmActualizacionRemota: TfrmActualizacionRemota
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Actualizacion Remota de Avances Fisicos del Contrato'
  ClientHeight = 504
  ClientWidth = 648
  Color = clFuchsia
  TransparentColor = True
  TransparentColorValue = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxGridSinc: TNextGrid
    Left = 0
    Top = 0
    Width = 648
    Height = 481
    Align = alClient
    Color = 16697018
    Options = [goHeader, goSelectFullRow]
    TabOrder = 0
    TabStop = True
    OnMouseMove = NxGridSincMouseMove
    OnMouseUp = NxGridSincMouseUp
    object NxTreeColumn1: TNxTreeColumn
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Color = clActiveBorder
      Header.Caption = '-/+'
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Actividad'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 200
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Informacion'
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 200
    end
    object NxCheckBoxColumn1: TNxProgressColumn
      DefaultValue = '0'
      DefaultWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Progreso de Importacion'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      ParentFont = False
      Position = 3
      SortType = stNumeric
      Width = 300
      HideWhenEmpty = False
      LowValueColor = clBlack
      ProgressStyle = psCylinder
      RoundCorners = True
      ShowText = True
    end
    object NxProgressColumn1: TNxCheckBoxColumn
      DefaultValue = '0'
      DefaultWidth = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Exito'
      ParentFont = False
      Position = 4
      SortType = stBoolean
      Width = 50
    end
    object NxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 5
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn4: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 6
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn5: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 7
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn6: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 8
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn7: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 9
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn8: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 10
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn9: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 11
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn10: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = 12
      SortType = stAlphabetic
      Visible = False
    end
  end
  object NxFlipPanel1: TNxFlipPanel
    Left = 0
    Top = 481
    Width = 648
    Height = 23
    Align = alBottom
    CollapseGlyph.Data = {
      7A010000424D7A01000000000000360000002800000009000000090000000100
      2000000000004401000000000000000000000000000000000000604830406048
      30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
      90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
      30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
      A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
      C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
      30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
      F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
      A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
    ExpandGlyph.Data = {
      7A010000424D7A01000000000000360000002800000009000000090000000100
      2000000000004401000000000000000000000000000000000000604830406048
      30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
      90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
      30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
      A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
      C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
      30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
      30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
      FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
      A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    InnerMargins.Left = 0
    InnerMargins.Top = 0
    InnerMargins.Bottom = 0
    InnerMargins.Right = 0
    FullHeight = 23
    object AdvGlowButton2: TAdvGlowButton
      Left = 16
      Top = 23
      Width = 89
      Height = 33
      AntiAlias = aaAntiAlias
      Caption = 'Agregar Base de Datos Esclavo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Trimming = StringTrimmingEllipsisCharacter
      TabOrder = 0
      OnClick = AdvGlowButton2Click
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
    object AdvGlowButton3: TAdvGlowButton
      Left = 120
      Top = 23
      Width = 89
      Height = 33
      AntiAlias = aaAntiAlias
      Caption = 'Importar Avance'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Trimming = StringTrimmingEllipsisCharacter
      TabOrder = 1
      OnClick = AdvGlowButton3Click
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
  end
  object PpMGrid: TPopupMenu
    Alignment = paCenter
    Left = 168
    Top = 128
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      OnClick = Eliminar1Click
    end
  end
end
