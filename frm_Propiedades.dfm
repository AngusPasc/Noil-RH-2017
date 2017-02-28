object FrmPropiedades: TFrmPropiedades
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Propiedades...'
  ClientHeight = 363
  ClientWidth = 445
  Color = 16776176
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 445
    Height = 13
    Align = alTop
    Caption = '  Propiedades'
    Color = clActiveCaption
    ParentColor = False
    ExplicitWidth = 65
  end
  object NextInspector1: TNextInspector
    Left = 0
    Top = 16
    Width = 445
    Height = 322
    Align = alBottom
    SplitterPosition = 274
    Style = psOffice2007
    TabOrder = 0
    object NxToolbarItem2: TNxToolbarItem
      Caption = 'Gr'#225'fica'
      ReadOnly = True
      Buttons = <>
      ParentIndex = -1
      object NxComboBoxItem1: TNxComboBoxItem
        Caption = 'Tipo de gr'#225'fica'
        Value = 'Diaria'
        ItemIndex = 0
        Lines.Strings = (
          'Diaria'
          'Semanal'
          'Quincenal'
          'Mensual'
          'Anual')
        ParentIndex = 0
      end
      object NxCheckBoxItem2: TNxCheckBoxItem
        Caption = 'Mostrar l'#237'neas de divisi'#243'n horizontal'
        Value = 'false'
        AllowAllUp = True
        Buttons = <
          item
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
              AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
              AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
              AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
              AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
            Text = 'true'
          end>
        ParentIndex = 0
      end
      object NxCheckBoxItem3: TNxCheckBoxItem
        Caption = 'Mostrar l'#237'neas de divisi'#243'n vertical'
        Value = 'false'
        AllowAllUp = True
        Buttons = <
          item
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
              AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
              AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
              AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
              AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
            Text = 'true'
          end>
        ParentIndex = 0
      end
      object NxColorItem1: TNxColorItem
        Caption = 'Color de fondo para la gr'#225'fica'
        Hint = 'Selecci'#243'n de color para el fondo de la gr'#225'fica de Gantt'
        ShowHint = True
        ShowPreview = True
        ParentIndex = 0
      end
      object NxColorItem2: TNxColorItem
        Caption = 'Color general de barras de actividad'
        Hint = 'Selecci'#243'n de color general de barras de actividad'
        ShowHint = True
        ShowPreview = True
        ParentIndex = 0
      end
      object NxColorItem3: TNxColorItem
        Caption = 'Color general de barras concentradoras (Paquetes)'
        Hint = 'Selecci'#243'n de color general de barras concentradoras'
        ShowPreview = True
        ParentIndex = 0
        object NxDateItem1: TNxDateItem
          NoneCaption = 'None'
          TodayCaption = 'Today'
          ParentIndex = 6
        end
      end
    end
    object NxToolbarItem1: TNxToolbarItem
      Caption = 'Barras'
      ReadOnly = True
      Buttons = <>
      ParentIndex = -1
      object NxSpinItem1: TNxSpinItem
        Caption = 'Degradado:'
        ShowSuffix = True
        SuffixStyle = ssReadOnly
        SuffixValue = '%'
        Value = '50'
        Max = 100.000000000000000000
        Increment = 1.000000000000000000
        ParentIndex = 8
      end
      object NxCheckBoxItem1: TNxCheckBoxItem
        Caption = 'Usar colores espec'#237'ficos'
        Value = 'false'
        AllowAllUp = True
        Buttons = <
          item
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
              AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
              AAAAAAAAAA0AAAAAAAAAAAAAA000AAAAAAAAAAAA00000AAAAAAAAAAA00A000AA
              AAAAAAAA0AAA000AAAAAAAAAAAAAA00AAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAA
              AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
            Text = 'true'
          end>
        ParentIndex = 8
      end
    end
    object NxToolbarItem3: TNxToolbarItem
      Caption = 'Calendario'
      ReadOnly = True
      Buttons = <>
      ParentIndex = -1
      object NxComboBoxItem2: TNxComboBoxItem
        Caption = 'La semana inicia el d'#237'a:'
        Lines.Strings = (
          'Lunes'
          'Martes'
          'Miercoles'
          'Jueves'
          'Viernes'
          'Sabado'
          'Domingo')
        ParentIndex = 11
      end
      object NxSpinItem2: TNxSpinItem
        Caption = 'Sangr'#237'a en fechas'
        Value = '0'
        Max = 10.000000000000000000
        Increment = 1.000000000000000000
        ParentIndex = 11
      end
      object NxComboBoxItem4: TNxComboBoxItem
        Caption = 'Formato de fechas'
        ParentIndex = 11
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 338
    Width = 445
    Height = 25
    Align = alBottom
    Color = clActiveBorder
    ParentBackground = False
    TabOrder = 1
    object Button1: TButton
      Left = 243
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 317
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
