object frmDiarioTurno: TfrmDiarioTurno
  Left = 194
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reporte Diario'
  ClientHeight = 541
  ClientWidth = 1122
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupPrincipal
  Position = poDefault
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PgDiario: TPageControl
    Left = 0
    Top = 310
    Width = 1122
    Height = 231
    ActivePage = TabRDiario
    Align = alBottom
    Images = connection.ImageList1
    TabOrder = 1
    OnChange = PgDiarioChange
    object TabRDiario: TTabSheet
      Caption = 'Caratula del Reporte Diario'
      Enabled = False
      ImageIndex = 10
      PopupMenu = PopupPrincipal
      object Label3: TLabel
        Left = 3
        Top = 71
        Width = 81
        Height = 14
        Caption = 'Inicio de Jornada'
      end
      object Label4: TLabel
        Left = 3
        Top = 161
        Width = 53
        Height = 14
        Caption = 'Transporte'
      end
      object Label8: TLabel
        Left = 251
        Top = 182
        Width = 25
        Height = 14
        Caption = 'Tema'
      end
      object Label7: TLabel
        Left = 3
        Top = 50
        Width = 77
        Height = 14
        Caption = 'Numero de Folio'
      end
      object Label6: TLabel
        Left = 3
        Top = 6
        Width = 88
        Height = 14
        Caption = 'Fecha del Reporte'
      end
      object Label2: TLabel
        Left = 3
        Top = 139
        Width = 75
        Height = 14
        Caption = 'Edo. del Tiempo'
      end
      object Label5: TLabel
        Left = 3
        Top = 182
        Width = 104
        Height = 14
        Caption = 'Platicas de Seguridad'
      end
      object Label9: TLabel
        Left = 3
        Top = 94
        Width = 76
        Height = 14
        Caption = 'Tiempo Efectivo'
      end
      object Label10: TLabel
        Left = 187
        Top = 93
        Width = 129
        Height = 14
        Caption = 'Tiempo Muerto de la Orden'
      end
      object Label12: TLabel
        Left = 187
        Top = 71
        Width = 94
        Height = 14
        Caption = 'Termino de Jornada'
      end
      object Label14: TLabel
        Left = 185
        Top = 184
        Width = 8
        Height = 14
        Caption = 'A'
      end
      object Label11: TLabel
        Left = 3
        Top = 29
        Width = 121
        Height = 14
        Caption = 'Turno/Origen del Reporte'
      end
      object lblError: TLabel
        Left = 336
        Top = 158
        Width = 409
        Height = 14
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 1
        Top = 115
        Width = 131
        Height = 14
        Caption = 'Tiempo Muerto del Contrato'
      end
      object lblError2: TLabel
        Left = 365
        Top = 88
        Width = 384
        Height = 43
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object JvLabel1: TJvLabel
        Left = 262
        Top = 3
        Width = 137
        Height = 14
        Caption = 'Ajustes de tiempo de barco:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object tsNumeroReporte: TEdit
        Left = 139
        Top = 44
        Width = 260
        Height = 22
        Hint = 'N'#250'mero de folio.'
        CharCase = ecUpperCase
        Color = clWhite
        ReadOnly = True
        TabOrder = 0
        OnEnter = tsNumeroReporteEnter
        OnExit = tsNumeroReporteExit
        OnKeyPress = tsNumeroReporteKeyPress
      end
      object tsTiempo: TEdit
        Left = 138
        Top = 132
        Width = 192
        Height = 22
        Hint = 'Estado del tiempo.'
        CharCase = ecUpperCase
        Color = clWhite
        ReadOnly = True
        TabOrder = 6
        OnEnter = tsTiempoEnter
        OnExit = tsTiempoExit
        OnKeyPress = tsTiempoKeyPress
      end
      object tsTransporte: TEdit
        Left = 138
        Top = 154
        Width = 192
        Height = 23
        Hint = 'Transporte.'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        OnKeyPress = tsTransporteKeyPress
      end
      object tsTema: TEdit
        Left = 295
        Top = 177
        Width = 461
        Height = 22
        Hint = 'Tema.'
        CharCase = ecUpperCase
        Color = clWhite
        ReadOnly = True
        TabOrder = 10
        OnEnter = tsTemaEnter
        OnExit = tsTemaExit
        OnKeyPress = tsTemaKeyPress
      end
      object tsHoraInicio2: TMaskEdit
        Left = 139
        Top = 66
        Width = 40
        Height = 23
        Hint = 'Hora de inicio de jornada.'
        CharCase = ecUpperCase
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '00:00'
      end
      object tsTiempoEfectivo: TMaskEdit
        Left = 139
        Top = 88
        Width = 40
        Height = 23
        Hint = 'Tiempo efectivo en horas.'
        CharCase = ecUpperCase
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '00:00'
      end
      object tsTiempoMuerto: TMaskEdit
        Left = 323
        Top = 88
        Width = 40
        Height = 23
        Hint = 'Tiempo muerto en horas.'
        CharCase = ecUpperCase
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '00:00'
      end
      object tsInicioPlatica: TMaskEdit
        Left = 138
        Top = 176
        Width = 42
        Height = 22
        Hint = 'Hora de inicio de practicas de seguridad.'
        CharCase = ecUpperCase
        Color = clWhite
        EditMask = '!90:00;1;_'
        MaxLength = 5
        ReadOnly = True
        TabOrder = 8
        Text = '00:00'
        OnEnter = tsInicioPlaticaEnter
        OnExit = tsInicioPlaticaExit
        OnKeyPress = tsInicioPlaticaKeyPress
      end
      object tsFinalPlatica: TMaskEdit
        Left = 197
        Top = 176
        Width = 42
        Height = 22
        Hint = 'Hora de t'#233'rmino de pr'#225'cticas de seguridad.'
        CharCase = ecUpperCase
        Color = clWhite
        EditMask = '!90:00;1;_'
        MaxLength = 5
        ReadOnly = True
        TabOrder = 9
        Text = '00:00'
        OnEnter = tsFinalPlaticaEnter
        OnExit = tsFinalPlaticaExit
        OnKeyPress = tsFinalPlaticaKeyPress
      end
      object tsHoraFinal2: TMaskEdit
        Left = 323
        Top = 66
        Width = 40
        Height = 23
        Hint = 'Hora del t'#233'rmino de jornada.'
        CharCase = ecUpperCase
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '00:00'
      end
      object tsTiempoMuertoContrato: TMaskEdit
        Left = 139
        Top = 110
        Width = 40
        Height = 23
        Hint = 'Tiempo muerto en horas.'
        CharCase = ecUpperCase
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = '00:00'
      end
      object tsIdTurno: TDBLookupComboBox
        Left = 139
        Top = 22
        Width = 260
        Height = 22
        Hint = 'Seleccione un turno.'
        Color = clWhite
        KeyField = 'sIdTurno'
        ListField = 'sDescripcion'
        ListSource = ds_turnos
        ReadOnly = True
        TabOrder = 11
        OnEnter = tsIdTurnoEnter
        OnExit = tsIdTurnoExit
        OnKeyPress = tsIdTurnoKeyPress
      end
      object ChkPartidasAnteriores: TCheckBox
        Left = 185
        Top = 113
        Width = 174
        Height = 17
        Caption = 'Mostrar Partidas Anteriores'
        TabOrder = 12
      end
      object tdIdFecha: TDBDateTimePicker
        Left = 139
        Top = 0
        Width = 86
        Height = 22
        Hint = 'Seleccione una fecha de reporte.'
        Date = 40721.792285127320000000
        Time = 40721.792285127320000000
        Checked = False
        Color = 15138559
        TabOrder = 13
        OnEnter = tdIdFechaEnter
        OnExit = tdIdFechaExit
        OnKeyPress = tdIdFechaKeyPress
      end
      object ComboBox1: TComboBox
        Left = 405
        Top = 0
        Width = 300
        Height = 22
        Style = csDropDownList
        ItemHeight = 14
        ItemIndex = 0
        TabOrder = 14
        Text = '0 - Al factor m'#225's grande'
        OnChange = ComboBox1Change
        Items.Strings = (
          '0 - Al factor m'#225's grande'
          '1 - Al factor m'#225's chico'
          '2 - Negativo al factor m'#225's grande, positivo al m'#225's chico'
          '3- Positivo al factor m'#225's grande, negativo al m'#225's chico'
          '4 - Al primer periodo del d'#237'a'
          '5 - Al '#250'ltimo periodo del d'#237'a')
      end
      object GroupBox3: TGroupBox
        Left = 405
        Top = 23
        Width = 339
        Height = 147
        Padding.Left = 6
        Padding.Right = 6
        TabOrder = 15
        object Memo1: TMemo
          Left = 8
          Top = 16
          Width = 323
          Height = 129
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          ParentColor = True
          TabOrder = 0
        end
      end
    end
    object TabFotografico: TTabSheet
      Caption = 'Reporte Fotografico'
      ImageIndex = 1
      OnShow = TabFotograficoShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label13: TLabel
        Left = 433
        Top = 3
        Width = 153
        Height = 15
        Caption = 'Descripci'#243'n de la Actividad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 15
        Top = 99
        Width = 71
        Height = 15
        Caption = 'Descripcion '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 23
        Top = 107
        Width = 71
        Height = 15
        Caption = 'Descripcion '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 430
        Top = 166
        Width = 316
        Height = 35
        Caption = 'Fase de la Partida'
        TabOrder = 14
        object chkInicio: TCheckBox
          Left = 34
          Top = 14
          Width = 56
          Height = 17
          Caption = 'Inicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = chkInicioClick
        end
        object chkDesarrollo: TCheckBox
          Left = 113
          Top = 14
          Width = 80
          Height = 17
          Caption = 'Desarrollo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = chkDesarrolloClick
        end
        object chkConclusion: TCheckBox
          Left = 212
          Top = 16
          Width = 85
          Height = 14
          Caption = 'Conclusi'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = chkConclusionClick
        end
      end
      object CheckIncluye: TCheckBox
        Left = -3
        Top = 176
        Width = 88
        Height = 19
        Caption = 'Inc. en Reporte Diario'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 12
        Visible = False
        WordWrap = True
      end
      object btnPreview: TBitBtn
        Left = 0
        Top = 148
        Width = 76
        Height = 23
        Caption = '&Preview'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        Visible = False
        OnClick = btnPreviewClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888800000888800000880F00088880F000880F00088880F0008800000088000
          0008800F000000F00008800F000800F00008800F000800F00008880000000000
          00888880F00880F008888880000880000888888800088000888888880F0880F0
          8888888800088000888888888888888888888888888888888888}
      end
      object Grid_Imagenes: TRxDBGrid
        Left = 82
        Top = 0
        Width = 95
        Height = 194
        Color = clGradientActiveCaption
        Ctl3D = False
        DataSource = ds_ReporteFotografico
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnEnter = Grid_ImagenesEnter
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iImagen'
            Title.Alignment = taCenter
            Title.Caption = '#'
            Width = 19
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lIncluye'
            Title.Alignment = taCenter
            Title.Caption = 'Incluye'
            Width = 43
            Visible = True
          end>
      end
      object tsDescripcion: TMemo
        Left = 431
        Top = 20
        Width = 321
        Height = 147
        Hint = 'Descripci'#243'n general'
        Color = 15138559
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
        OnExit = tsDescripcionExit
      end
      object btnGrabar: TBitBtn
        Left = 0
        Top = 46
        Width = 80
        Height = 23
        Caption = '&Grabar'
        Enabled = False
        TabOrder = 2
        OnClick = btnGrabarClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          00000000000000000000000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000848400008484000084840000848400008484000084
          84000084840000848400008484000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          00000000000000000000008484000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object btnEliminar: TBitBtn
        Left = 0
        Top = 92
        Width = 80
        Height = 23
        Caption = '&Eliminar'
        TabOrder = 3
        OnClick = btnEliminarClick
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888888888888881F88881F8888888888888991F8888889F8888191F888881
          F888888199F88891F8888888191F819F88888888819199F88888888888919F88
          88888888891911F888888888191F89F88888889191F88819F88881919F888881
          9F88891F8888888819F88888888888888888}
      end
      object btnExaminar: TBitBtn
        Left = 0
        Top = 0
        Width = 80
        Height = 23
        Caption = '&Adicionar'
        TabOrder = 4
        OnClick = btnExaminarClick
        Glyph.Data = {
          22010000424D22010000000000004A0000002800000012000000120000000100
          040000000000D8000000120B0000120B000005000000050000007F00000000FF
          FF00BFBFBF007F7F7F0000000000222222222222222222004004222333333333
          3322220022222244444444444332220022232243333333333433220022442244
          3333333333433200224322414333333333343200224422411433333333334200
          2241224111433333333342002241224111144444444442002241224111111111
          4222220022412241111444444222220022412224444222222200020022412222
          2222222222200200222422222222220222020200222222222222222000222200
          2222222222222222222222002222222222222222222222002222222222222222
          222222002222}
      end
      object btnEditar: TBitBtn
        Left = 0
        Top = 23
        Width = 80
        Height = 23
        Caption = '&Editar'
        TabOrder = 5
        OnClick = btnEditarClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000000
          00008888880FFFFFFFF000800000FF0F00F0E00BBBBB0FFFFFF0E0BBBB000FFF
          F0F0E0BBBBBBB0F00FF0E0BBBB00000C0FF0E0BBBBBBBBB0FFF0E0BB0000000F
          FFF0000BBB00C0FF00F08880000C0FFFFFF0888880C0FFFF000088880C0FF00F
          0FF08880C00FFFFF0F08880C080FFFFF00888880880000000888}
      end
      object btnCancelar: TBitBtn
        Left = 0
        Top = 69
        Width = 80
        Height = 23
        Caption = '&Cancelar'
        Enabled = False
        TabOrder = 6
        OnClick = btnCancelarClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888888888888888888888888888888
          8888888888888887488888444448888847888844448888888488884448888888
          8488884484888888848888488844888847888888888844447888888888888888
          8888888888888888888888888888888888888888888888888888}
      end
      object GroupBox1: TGroupBox
        Left = 179
        Top = -1
        Width = 252
        Height = 200
        Caption = 'Imagen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object bImagen: TImage
          Left = 2
          Top = 16
          Width = 246
          Height = 153
          Align = alCustom
          Stretch = True
          OnClick = bImagenClick
        end
        object Label22: TLabel
          Left = 5
          Top = 177
          Width = 42
          Height = 15
          Caption = 'Partida:'
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object btnComentarios: TBitBtn
          Left = 164
          Top = 174
          Width = 84
          Height = 23
          Caption = 'Co&mentarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnComentariosClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888800000888800000880F00088880F000880F00088880F0008800000088000
            0008800F000000F00008800F000800F00008800F000800F00008880000000000
            00888880F00880F008888880000880000888888800088000888888880F0880F0
            8888888800088000888888888888888888888888888888888888}
        end
        object cbPartida: TDBLookupComboBox
          Left = 45
          Top = 174
          Width = 105
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'sWbs'
          ListField = 'sNumeroActividad'
          ListSource = ds_partidas
          ParentFont = False
          TabOrder = 1
          OnEnter = cbPartidaEnter
          OnExit = cbPartidaExit
        end
        object pnl2: TPanel
          Left = 224
          Top = -384
          Width = 185
          Height = 41
          Caption = 'pnl2'
          TabOrder = 2
        end
      end
      object btnSaveImage: TBitBtn
        Left = 0
        Top = 115
        Width = 80
        Height = 23
        Caption = '&Backup'
        TabOrder = 8
        OnClick = btnSaveImageClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          00000000000000000000000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000848400008484000084840000848400008484000084
          84000084840000848400008484000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          00000000000000000000008484000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
          00000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object btnUp: TBitBtn
        Left = 39
        Top = 148
        Width = 40
        Height = 22
        Hint = 'Subir Fotografia'
        TabOrder = 9
        OnClick = btnUpClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB33212B63813B83F13BC4614BF5116C5
          5B18C9641ACF7129D47B39D98649DD8F58E19C6AFFFFFFFFFFFFFFFFFFFFFFFF
          CE806EC35E30DA9461DC9A68DEA070E1A578E3AC82E6B18CE8B894EABC99E196
          61EFC9B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF826AC96A36DD9D6CDB9765DC
          9966DEA070E5AE85E8B998E5A579EEC8ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD48B6AD0763CE1A87BE1A375E3AA80E8B998E1A375ECC3A5FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79265D68447E5
          B28AE8B794E09F70E8B998FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFDD9D6CDC945EE19C6AE6B58FFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1
          A578DD9563FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object btnDown: TBitBtn
        Left = 39
        Top = 172
        Width = 40
        Height = 22
        Hint = 'Bajar Fotografia'
        TabOrder = 10
        OnClick = btnDownClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9563E1A578FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6B58FE1
          9C6ADC945EDD9D6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE8B998E09F70E8B794E5B28AD68447D79265FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC3A5E1A375E8B998E3
          AA80E1A375E1A87BD0763CD48B6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFEEC8ACE5A579E8B998E5AE85DEA070DC9966DB9765DD9D6CC96A36CF82
          6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC9B0E19661EABC99E8B894E6B18CE3
          AC82E1A578DEA070DC9A68DA9461C35E30CE806EFFFFFFFFFFFFFFFFFFFFFFFF
          E19C6ADD8F58D98649D47B39CF7129C9641AC55B18BF5116BC4614B83F13B638
          13B33212FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object Panel: TNxFlipPanel
        Left = 433
        Top = 1
        Width = 324
        Height = 198
        Caption = 'COMENTARIOS / NOTAS REPORTE DIARIO'
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
        HeaderFont.Name = 'Arial'
        HeaderFont.Style = [fsBold]
        HeaderHeight = 17
        InnerMargins.Top = 4
        ParentHeaderFont = False
        Visible = False
        FullHeight = 198
        object mReporte: TMemo
          Left = -1
          Top = 18
          Width = 322
          Height = 152
          Hint = 'Descripci'#243'n general'
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object tBuscar: TEdit
          Left = 2
          Top = 169
          Width = 192
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = tBuscarKeyPress
        end
        object cmdAceptar: TButton
          Left = 201
          Top = 170
          Width = 55
          Height = 19
          Caption = 'Buscar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cmdCancelar: TButton
          Left = 260
          Top = 170
          Width = 59
          Height = 19
          Caption = 'Ca&ncelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = cmdCancelarClick
        end
      end
    end
  end
  object grid_reportes: TcxGrid
    Left = 71
    Top = 33
    Width = 929
    Height = 277
    Align = alClient
    PopupMenu = PopupPrincipal
    TabOrder = 3
    OnEnter = grid_1Enter
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxgrdbtblvwGrid1DBTableView1CellClick
      DataController.DataSource = ds_reportediario
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'dIdFecha'
        Width = 81
      end
      object cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Convenio'
        DataBinding.FieldName = 'sDescripcion_1'
        Width = 87
      end
      object cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Turno/Origen'
        DataBinding.FieldName = 'sDescripcion'
        Width = 127
      end
      object cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'No. Reporte'
        DataBinding.FieldName = 'sNumeroReporte'
        Width = 84
      end
      object cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'lStatus'
        Width = 86
      end
      object cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Creador'
        DataBinding.FieldName = 'sIdUsuario'
        Width = 90
      end
      object cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = 'Autoriza'
        DataBinding.FieldName = 'sIdUsuarioAutoriza'
        Width = 89
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  inline frmBarra1: TfrmBarra
    Left = 0
    Top = 33
    Width = 71
    Height = 277
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alLeft
    TabOrder = 0
    ExplicitTop = 33
    ExplicitWidth = 71
    ExplicitHeight = 277
    inherited AdvPanel1: TAdvPanel
      Width = 71
      Height = 277
      ParentShowHint = False
      ShowHint = True
      ExplicitWidth = 71
      ExplicitHeight = 277
      FullHeight = 0
      inherited btnEdit: TcxButton
        Top = 27
        OnClick = frmBarra1btnEditClick
        ExplicitTop = 27
      end
      inherited btnPost: TcxButton
        Top = 52
        OnClick = frmBarra1btnPostClick
        ExplicitTop = 52
      end
      inherited btnCancel: TcxButton
        Top = 77
        OnClick = frmBarra1btnCancelClick
        ExplicitTop = 77
      end
      inherited btnDelete: TcxButton
        Top = 102
        Height = 26
        OnClick = frmBarra1btnDeleteClick
        ExplicitTop = 102
        ExplicitHeight = 26
      end
      inherited btnPrinter: TcxButton
        Top = 127
        Height = 26
        OnClick = frmBarra1btnPrinterClick
        ExplicitTop = 127
        ExplicitHeight = 26
      end
      inherited btnRefresh: TcxButton
        Top = 152
        OnClick = frmBarra1btnRefreshClick
        ExplicitTop = 152
      end
      inherited btnExit: TcxButton
        Top = 177
        OnClick = frmBarra1btnExitClick
        ExplicitTop = 177
      end
      inherited btnAdd: TcxButton
        Top = 1
        Hint = 'Agregar registro (CTRL + I)'
        OnClick = frmBarra1btnAddClick
        ExplicitTop = 1
      end
    end
    inherited IconosBarra: TcxImageList
      FormatVersion = 1
    end
    inherited dxbrmngrPrincipal: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        0)
    end
    inherited ImgBtns: TImageList
      Bitmap = {
        494C010108000900900010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
        0000000000003600000028000000400000003000000001002000000000000030
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000008F8F8F001C1C
        1C00262626002626260026262600262626002626260026262600262626002626
        26001C1C1C009F9F9F0000000000000000000000000000000000000000000000
        000000000000F4F7FB00A0B6D900000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EFF0FC00303E
        D600CFD2F500000000000000000000000000000000000000000000000000CFCF
        F4003030CE00EFEFFB00000000000000000000000000303030001C1C1C005757
        5700000000000000000000000000F9F9F900F2F2F200E5E5E500DFDFDF00D8D8
        D800555555001C1C1C0030303000000000000000000000000000000000000000
        000000000000F4F4F6002F69BC001B7DF000165EC000D5DCEB00000000000000
        00000000000000000000000000000000000053575500B3B9B700BAC0BE00BDC3
        C100BEC4C200BFC5C300BFC5C300BFC5C300BFC5C300BFC5C300BDC2C0000000
        00000000000000000000000000000000000000000000EFF0FC003042D600144B
        EC00101ECD00CFD2F50000000000000000000000000000000000CFD0F4001010
        C7000000E9003030CE00EFEFFB0000000000BFBFBF0094949400B7B7B700CACA
        CA00F6F6F600F6F6F600F6F6F600F5F5F500EFEFEF00E3E3E300DDDDDD00D6D6
        D600CACACA00AAAAAA0094949400BFBFBF000000000000000000000000000000
        000085A0CF00306DC100166BD200228AFF00238CFF001761C500648AC500E2E8
        F4000000000000000000000000000000000053575500AEAEAE00B0B1B100AFB5
        B300CACFCE00D1D5D400D3D7D500D3D7D600D3D7D600D3D7D600CFD4D2000000
        000000000000000000000000000000000000000000003045DA001C59ED003371
        FE001246EB00101ECD00CFD2F5000000000000000000CFD0F4001013C8000000
        E9000000FE000000E9003030CE000000000050505000B8B8B8008A8A8A000000
        00008E8E8E0096969600969696009696960095959500909090008D8D8D008A8A
        8A000000000082828200B8B8B80060606000000000000000000000000000CDD6
        E9001A7DEB00228FFF00248FFF00278FFF001E8DFF0078BAFF00245DB200CFD7
        EB000000000000000000000000000000000053575500ABABAB00ABABAB00ABAB
        AB00999A9900AFB1B100DADDDC00E4E6E600E5E8E700E5E8E700E0E2E2000000
        00000000000000000000000000000000000000000000CFD5F700102BD4001E5E
        EE003371FE002B68FE001246EB00CFD2F500CFD1F500031CEA000219FE00000A
        FE000000E9001010C700CFCFF4000000000020202000CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC002020200000000000F4F5F900346DBD00218E
        FD0061B1FF00549DEF002668C000B4E2FF0096C7F700D6DAEC00000000000000
        00000000000000000000000000000000000053575500ABABAB00AAAAAA00A4A4
        A4009C9C9C009B9B9B0096969600C5C6C600F1F2F200F2F3F200DFE0DF00E7E7
        E7000A0AA900E8E8E800F7F7F700000000000000000000000000CFD5F700102B
        D4003B7AFE003371FE002B68FE00101ECD00101DCC000B34FE000628FE000219
        FE001013C800CFD0F40000000000000000001F1F1F00D6D6D600D6D6D600D6D6
        D600D9D9D900DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9
        D900D6D6D600D6D6D600D6D6D6001F1F1F00000000008AA4D000197CE800369E
        FF00337ED7006488C400B9BEDC0094C7F800396EBA000000000000000000F4F7
        FB00D3DAEA00D1DAEA00EBEFF7000000000053575500ABABAB00AAAAAA00A1A1
        A100989898009090900096969600C5C5C500F7F7F700E7E7E700D0D1D1000A0A
        A8003535D300CCCCCC00DDDDDD00EFEFEF00000000000000000000000000CFD5
        F7001E5EEE003B7AFE003371FE00144AEE001042EE00103FFE000B34FE00031C
        EA00CFD0F4000000000000000000000000001D1D1D00E5E5E500E9E9E900ECEC
        EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
        ED00EDEDED00E9E9E900E5E5E5001D1D1D00000000002F6CBF002898FF0064B9
        FF006F8DC60000000000FBFBFC003B71BC00E9EBF4000000000000000000B5C5
        E1001565D1000D5BCD006188C6000000000053575500ABABAB00A8A8A8009F9F
        9F00959595008A8A8A0091919100EFF0F000FCFCFC00EBEBEB000909A8003030
        D6003A3AD8004242D9004646DA000303A5000000000000000000000000000000
        0000CFD5F700102BD4002464F1003371FE002B68FE001042EE00101DCC00CFD1
        F5000000000000000000000000000000000050505000D5EDD50032A13200B5D2
        B500FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
        FC00FCFCFC00FCFCFC00FCFCFC005050500000000000177BE7004FB7FF0078BB
        F60000000000000000000000000000000000000000000000000000000000D4DA
        EA00258FFF001D7EFF004477C4000000000053575500ABABAB00A5A5A5009C9C
        9C0093939300BFBFBF0085858500EEEFEF00FCFCFC000C0CAB002D2DD5000000
        CC000000CC000000CC000000CC000303A6000000000000000000000000000000
        0000CFD5F700102ED600296BF1003B7AFE003371FE00144AEE00101ECD00CFD2
        F500000000000000000000000000000000009F9F9F00E5ECE500D7EBD700EDF4
        ED00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000F5F5F5009F9F9F00000000001882EF0055C0FF007FB8
        ED0000000000000000000000000000000000000000000000000000000000AEBE
        DC00238BFF001A7AFC005782C5000000000053575500ABABAB00A3A3A3009A9A
        9A009191910094949400A9A9A900EEEFEF00E5E5F4004040CB003737D7003A3A
        D8004040D9003939D7003D3DD8000303A600000000000000000000000000CFD8
        F800347CF00065A0FE005E9AFE00296BF1002464F1003371FE002B68FE001246
        EB00CFD2F50000000000000000000000000000000000BFBFBF00505050003F3F
        3F00000000000000000000000000F9F9F900F1F1F100E3E3E300DBDBDB00D4D4
        D4003838380050505000BFBFBF000000000000000000376FBA005184C5003E75
        BE00000000000000000000000000497EC000177BD20000000000869FCD001B7E
        DA003F93FF001D61C500D3DAEA000000000053575500AAAAAA00A0A0A0009797
        97008E8E8E0076767600BBBBBB00EEEEEE00FCFCFC00E6E7F5005151CD005656
        DE005858DD005B5BDE005555DD000303A6000000000000000000CFD9F900103E
        E00077ADFE006FA7FE0065A0FE00102ED600102BD4003B7AFE003371FE002B68
        FE00101ECD00CFD2F50000000000000000000000000000000000EFEFEF001919
        1900636363007B7B7B0078787800727272006F6F6F0068686800656565004949
        490019191900EFEFEF00000000000000000000000000F8F8FA00F7F7F900F7F7
        FA000000000000000000E8E9F40030B0F4002EACF200618EC9001D83DB002497
        FF005197F6005A83C300000000000000000053575500A8A8A8009E9E9E009595
        95008C8C8C00AAAAAA008E8E8E00EDEEEE00FCFCFC00FCFCFC00E6E7F3005959
        CF00A5A5EC000E0EAB000E0EAB002929B40000000000CFDAFA001044E400448F
        F3007FB3FE0077ADFE00347CF000CFD5F700CFD5F7001E5EEE003B7AFE003371
        FE001246EB00101ECD00CFD2F500000000000000000000000000000000009F9F
        9F00C5C5C500FAFAFA00F4F4F400E8E8E800E2E2E200D5D5D500CFCFCF007979
        79009F9F9F000000000000000000000000000000000000000000000000000000
        000000000000DFE2F0003473BC003BC7FF0033B3F80029A4FB00279CFF004C9F
        FF003068BD00DEE2EF00000000000000000053575500A6A6A6009B9B9B009292
        9200898989007F7F7F0083838300EDEEEE00FCFCFC00FCFCFC00F8F9F900F1F1
        FA005858CC00000000000000000000000000000000003066EC004F9CF600A1CB
        FE00448FF300103EE000CFD8F8000000000000000000CFD5F700102BD4001E5E
        EE003371FE00144BEC00303ED600000000000000000000000000000000000000
        0000BCBCBC000000000000000000F4F4F400EEEEEE00E2E2E200DBDBDB007272
        7200000000000000000000000000000000000000000000000000000000000000
        00002A61B10031B3F40046DBFF0034C2FF005FC8FF008ECBFE00659DE3004374
        BD000000000000000000000000000000000053575500A3A3A300979797008989
        890080808000767676007B7B7B00EBECEC00FCFCFC00FCFCFC00F8F9F9000000
        0000F5F5FB0000000000000000000000000000000000EFF3FE003066EC004F9C
        F6001044E400CFD9F90000000000000000000000000000000000CFD5F700102B
        D4001C59ED003042D600EFF0FC00000000000000000000000000000000000000
        0000B7B7B7000000000000000000FAFAFA00F4F4F400E8E8E800E2E2E2006F6F
        6F00000000000000000000000000000000000000000000000000000000000000
        0000C0CFE7005283C300247DC70065D7FF0090E0FF004C79BD009EB0D700F6F6
        F90000000000000000000000000000000000535755009A9A9A008A8A8A007E7E
        7E00747474006C6C6C0072727200E8E9E900FBFCFC00FCFCFC00F8F8F8000000
        0000000000000000000000000000000000000000000000000000EFF3FE003066
        EC00CFDAFA00000000000000000000000000000000000000000000000000CFD5
        F7003045DA00EFF0FC0000000000000000000000000000000000000000000000
        0000B2B2B200000000000000000000000000FAFAFA00EEEEEE00E8E8E8006C6C
        6C00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C8CFE600367DC3008FCEF900C8CCE500000000000000
        0000000000000000000000000000000000005357550090909000818181007676
        76006B6B6B006363630067676700E1E3E300F7F8F800F8F9F900F5F6F6000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000181818001818180018181800181818001818180018181800181818001212
        1200000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000F3F6FA00000000000000
        000000000000000000000000000000000000A8AAA90053575500535755005357
        55005357550053575500565A5800676A680074777600757977006D706E000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000084777300847773008477
        7300847773008477730084777300847773008477730084777300847773008477
        7300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000ECEAEAFFE2DDDCFFE3DFDFFF00000000000000000000
        000000000000000000000000000000000000DED3CF00FAF7F500FAF7F500FAF7
        F500EDE9E700ECE7E500ECE7E500E8E0DE00F1EAE800F1E9E700F0E8E600EEE6
        E300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000534B4AFF262626FF1D1D1DFFE4E0DFFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F7005E70A800E2DDDB00E1DBD900E0D8D600E0D8D600EAE2E000F1E9E700F0E7
        E500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFF5EF00005A
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000BAD0E200DAE9F60000000000000000000000000000000000000000000000
        000000000000000000007F7978FF565656FF303030FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F700818BA2006680C000E1DBD900E0D8D600E0D8D600DCD3D100DED5D300E6DD
        DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000009FC19F00006C
        0000609860000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EAF0F400186D
        B4002399F7002194F400B5D3ED00000000000000000000000000000000000000
        00000000000000000000595453FF383838FF404040FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F700C9E7FE00A5E1FE0088C9F800E0D8D600E0D8D600DCD3D100DBD2D000DAD0
        CF00E8E6E600E8E6E600EDECEC00FFFFFF0000000000000000001065100000BA
        000000C0000000760000307A3000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000E6ECF200356B99001052
        8B00218EE5002297F70053A1E100000000000000000000000000000000000000
        00000000000000000000837E7CFF676767FF3E3E3EFFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
        F70076E2FE0059D4FE0060CBFE00AFB0CD00E0D9D700DBD2D000DAD1CF00D8CF
        CD00E8E6E600E8E6E600E8E6E600EAE9E90000000000AFCDAF000075000000D1
        000000D1000000D10000008A0000EFF5EF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B2C6D700104C
        800012558E00259BF800249AF800000000000000000000000000FCFCFCFFFCFB
        FBFFFCFBFBFFFCFBFBFF747171FF606060FF565656FFD1CBCAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFDFDFDFF0000000000000000DED3CF00FAF8F600FAF8F600FAF8
        F60061EFFE0050D1FE004DCBFE00688BD200F4EDEB00E0D8D600DAD0CF00DAD0
        CF00E8E6E600E8E6E600E8E6E600E8E6E6000000000070AA700000A0000000DA
        000000DA000000DA000000DA000010711000CFE3CF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FBFCFD00104C
        8000104D8300279DF800269BF8000000000000000000CAB5B2FF242424FF1B1B
        1BFF202020FF1F1F1FFF555555FF626262FF686868FF201F1FFF1F1F1FFF2020
        20FF262626FF3B3635FFFBFBFBFF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF0038C0F90040E7FE0036C4FE0044A4FE005C77C200EDE4E100EDE4E100EBE2
        DF00F5F4F400EAE9E900E8E6E600FAFAFA0000000000007B000000EC000000EC
        000000D6000000E5000000EC000000EC000000BF00009FCB9F00000000000000
        000000000000000000000000000000000000000000003869930014578D003CB3
        FA003AB1F90035A1E700429FDE0000000000000000000000000000000000104C
        8000115289002AA0F800299FF8000000000000000000C2B3B0FF7F7F7FFF6B6B
        6BFF676767FF797979FF646464FF666666FF696969FF6F6F6FFF7F7F7FFF7979
        79FF7F7F7FFF525252FFF5F4F4FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF009FD2F9002EE2FD002ECFFE0035A4FE002971DC00ECE3E000EBE2DF00E9DF
        DC00FFFFFF00FFFFFF00F8F7F700FFFFFF000000000000A8000000F6000000F6
        0000108210000081000000B7000000F6000000F60000008200009FCD9F000000
        000000000000000000000000000000000000000000000F4A7C00155A91003DB4
        FA003CB3FA0039ADF5007FB5DD0000000000000000000000000000000000104C
        8000196AAA002CA2F8002BA1F8000000000000000000EBD9D6FFD2D2D2FFD2D2
        D2FFCACACAFFC4C4C4FFACACACFF9E9E9EFFB1B1B1FFCCCCCCFFC5C5C5FFC7C7
        C7FFD3D3D3FFC1C0C0FFFAF9F9FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF007FC5F70019E7FE0017B4FE002392FE00E3D9D500E3D7D400E2D6
        D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8EF002AF72A0017D31700108F
        100000000000000000000000000060B46000028E020027F827002AF72A000B9D
        0B0000000000000000000000000000000000000000000F4A7C001860960040B7
        FA003FB6FA003DB4FA0045A7E4000000000000000000000000008AA8C2002689
        D00031A8F9002FA5F900399AE3000000000000000000FCFBFBFFEAE8E7FFEAE8
        E8FFEAE8E8FFEAE8E8FFC2BDBCFFB0B0B0FF999999FFD1CBCAFFEBE9E9FFEBE9
        E9FFEBE9E9FFF4F3F3FF0000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EEF6FC0008B6F70011B0FE00149EFE008992BF00DCD0CC00DBCF
        CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFDCAF0035D5350010941000CFE9
        CF0000000000000000000000000000000000DFF0DF000594050028C728004FF1
        4F0040AA4000EFF8EF000000000000000000000000000F4A7C001A649B003CAE
        EF0040B7F9003EB6FA003DB4FA005EABDF009EC9E7009EC3DF002376B40034AB
        F90033AAF90031A7F80090C0E400000000000000000000000000000000000000
        00000000000000000000C3BDBCFF9D9D9DFFB3B3B3FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FEFEFD005EB0F2000BB1FE000AAAFE001F51C400DACDC900D9CC
        C800FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BC6000109B1000CFEACF000000
        00000000000000000000000000000000000000000000DFF1DF0060BC6000089B
        08002DB52D0030A83000EFF8EF0000000000000000000F4A7C00276799001157
        9300125894003FB5F60040B7FA003EB5FA003DB4FA003BB2FA0039B0FA0037AE
        F90036ADF900DAEAF50000000000000000000000000000000000000000000000
        00000000000000000000D4CFCEFFCDCDCDFFB1B1B1FFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FDFCFB00FBF9F80000DFFE0002A6FE000E73FE003F6CD200C8B6
        B100FFFFFF00FFFFFF00FFFFFF00FFFFFF0040B8410000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000DFF3DF0060C4600000A10300CFEED000000000006F92B000E6ECF2002B6B
        A100125A98001969A800339BDC003FB7FA003EB6FA003CB3FA003BB2FA0038AD
        F60056A5DC000000000000000000000000000000000000000000000000000000
        00000000000000000000E4E0DFFFDDDDDDFFBEBEBEFFE4DFDEFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FDFCFB00FBF8F70000C5F80000BEFE000587FE000959E400BFC7
        E600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DFF4E10010B326000000000000000000000000000000
        0000000000007AA5CA003879B1001461A3001964A50084ADD000DDEAF4000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000E2D3D0FFF6E2DDFFF3DEDAFFFCFCFBFF000000000000
        000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
        FF00FEFEFD00FBF9F800F9F5F30037ADE80000DBFE000AA0FE002E8CFE006584
        D100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F3F7FA00F7F9FC0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DDD1CD00DED3CF00DED3CF00DED3
        CF00DED3CF00DACEC900D5C8C300C8B6B1002088DF004D77CA009FAAD900FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000424D3E000000000000003E000000
        2800000040000000300000000100010000000000800100000000000000000000
        000000000000000000000000FFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000FFFFC003F9FFFFFFC7E38E01F83F001F
        83C10000F00F001F81810000E00F001F80010000803F0001C003000080610000
        E007000084610000F00F00008FE10000F00F0FFC8FE10000E0078E018E410000
        C003C0038C0300008001E007F80300078181F60FF00F001783C1F60FF00F001F
        C7E3F70FFC3F001FFFFFF00FFFBF001FFFFF8000FFFFFFFFFC7F0000FFFFFFFF
        FC3F0000CFFFFFF3FC3F0000C7FFFFC1FC3F0000C1FFFF81FC3F000080FFFFC1
        C0030000807FFFC180010000803F81E180010000801F81E1800100000E0F81C1
        800300000F038001FC3F00001F818003FC3F00007FF08007FC3F0000FFFCF81F
        FC3F0000FFFFFE7FFFFF0000FFFFFFFF00000000000000000000000000000000
        000000000000}
    end
  end
  object PanelProgress: TPanel
    Left = 277
    Top = 193
    Width = 380
    Height = 41
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Label15: TLabel
      Left = 10
      Top = 2
      Width = 134
      Height = 16
      Caption = 'Procesando espere...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 199
      Top = 4
      Width = 80
      Height = 15
      Caption = 'Transcurridos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label17: TLabel
      Left = 327
      Top = 4
      Width = 49
      Height = 15
      Caption = 'minutos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label18: TLabel
      Left = 284
      Top = 4
      Width = 12
      Height = 15
      Caption = '....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 19
      Width = 366
      Height = 17
      TabOrder = 0
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 0
    Width = 1122
    Height = 33
    Align = alTop
    ParentBackground = False
    TabOrder = 4
    object ts1: TLabel
      Left = 5
      Top = 10
      Width = 85
      Height = 14
      Caption = 'Frente de Trabajo'
    end
    object lblMigracion: TLabel
      Left = 470
      Top = 9
      Width = 197
      Height = 15
      Caption = 'Porcenta de Migraci'#243'n de Avances'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object tsNumeroOrden: TDBLookupComboBox
      Left = 96
      Top = 4
      Width = 189
      Height = 22
      Hint = 'Seleccione un frente de trabajo.'
      Color = clWhite
      KeyField = 'sNumeroOrden'
      ListField = 'sNumeroOrden'
      ListSource = ds_ordenesdetrabajo
      TabOrder = 0
      OnEnter = tsNumeroOrdenEnter
      OnExit = tsNumeroOrdenExit
      OnKeyPress = tsNumeroOrdenKeyPress
    end
    object PBMigracion: TProgressBar
      Left = 675
      Top = 7
      Width = 104
      Height = 17
      TabOrder = 1
      Visible = False
    end
  end
  object pnl1: TPanel
    Left = 1000
    Top = 33
    Width = 122
    Height = 277
    Align = alRight
    TabOrder = 5
    object btn6: TcxButton
      Left = 3
      Top = 1
      Width = 100
      Height = 33
      Caption = 'Jornadas y'#13#10'Tiempos'
      TabOrder = 0
      OnClick = btn6Click
      OptionsImage.Glyph.Data = {
        9A0B0000424D9A0B00000000000036000000280000001B0000001B0000000100
        200000000000640B000000000000000000000000000000000000000000010000
        000400000006000000090000000B0000000E000000140000001A000000110000
        0001000000000403010B0704011505020019070401140403010A000000000000
        00000000000C000000150000000D000000080000000500000002000000000000
        0000000000000000000100000004000000090000000C00000010000000130000
        00130000001106040239261C0984564012AE836312C58F6E1ED6877555DD906E
        1DD6846410C4564212AA251B097F050302320000000A0000000C0000000A0000
        0008000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000231A094BA87F22CCF1B827FFF2B926FFE9A9
        05FFF4C142FFFFFFFFFFF4C340FFE9AD02FFF2BE1FFFF3C120FFAA841FCC241B
        094E000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000110D06148E6B23A7F0BA2EFEEAB1
        26FFDBA122FFD39922FFC78509FFD19B39FFF4E7D0FFCF9836FFC48104FFCF92
        1AFFD79F15FFE9B916FFF4C721FF8F7021A7120E061500000000000000000000
        00000000000000000000000000000000000000000000000000001B15091DC397
        33CEE0AE29FFD7A126FFD19625FFD19424FFD19423FFD0911EFFCE901AFFCE8F
        1CFFCC8B18FFCC8B18FFCB8B1BFFCA881AFFC98A16FFD2A011FFDFBC12FFC6A0
        2DCF1B140A1E0000000000000000000000000000000000000000000000000000
        00001711091BB38D32D7D9AA2EFFD9A02CFFD59C29FFD59B29FFD29721FFD092
        19FFD0931FFFCF9424FFCD8E1AFFCE9120FFCB8C1AFFC9870FFFCA8B15FFCC8C
        1BFFC98719FFCE9314FFD4B311FFB7982AD81712091C00000000000000000000
        0000000000000000000000000000917330AAE0B137FFDAA42FFFD8A02DFFD7A1
        2CFFD49922FFD39A25FFDEAC4AFFE7BC68FFEBC273FFECC57AFFEBC172FFE6B9
        66FFD9A443FFCB8C18FFCA8811FFCC8C1BFFC9851AFFCC9214FFDCBC16FF927A
        2CAB000000000000000000000000000000000000000046381C53E1B743FFDEAB
        35FFDBA530FFDAA32FFFD79E26FFD9A333FFE8BC63FFF1C672FFEFBF5FFFEDBA
        53FFEDB84EFFEDBA53FFF0C060FFF1C673FFE5B760FFCF9123FFC98812FFCC8D
        1AFFCA871AFFD19D13FFDDC327FF47391B540000000000000000000000000403
        0205AC8D42C4E2B63FFFDCA934FFDDA834FFDAA42CFFDCA735FFEABC62FFEEBC
        59FFE9AF3FFFE8AE3FFFE8B144FFE8B245FFE8B144FFE7AE3DFFE8AF3EFFEFBE
        5AFFE8B95EFFCF9122FFCB8B14FFCC8D1AFFCA8917FFD8B11AFFAB9433C40302
        01030000000000000000372D1940E6BF54FFE2B23CFFDFAC37FFDEAA34FFDCA8
        33FFE6B64FFFEBB64FFFE6AD3CFFE6AF43FFE9B246FFEBB141FFE8B044FFEAB2
        41FFE9B145FFE6AD42FFE5AC3CFFEDB850FFE1AC47FFCC8D1AFFCD8D19FFCC8A
        1BFFD19A18FFE1C636FF44381B4F17120A1B000000006F5C357EEBC357FFE4B4
        3EFFE0AE39FFDFAB35FFE1AF40FFE7B34BFFE6AD3DFFE5AE41FFE8B146FFDFA4
        2FFFD49720FFE6AA35FFD59820FFDEA32FFFE7B046FFE3AB40FFE5AB3DFFE6B3
        4AFFD59A2CFFCC8C19FFCD8D1CFFCF921DFFDFBF30FF938037A7554823620706
        04089F8749B1E7B83CFFE3AE2BFFE1B13BFFE1AF3BFFE2AE41FFE3AC3FFFE3AB
        3BFFE5AC3DFFE4A72EFFD5AF61FFD0BB91FFCA9836FFD0B98CFFD7AE63FFE2A5
        2DFFE2AA3BFFE1A83AFFE3AC3FFFDBA234FFCE901FFFCE8E1CFFC98406FFD5A6
        12FFC7B142E08B7C359C231E1224AE985BC4C3A65BFFC9A54DFFE3B33EFFE5B2
        3CFFE1AA3BFFE1A739FFE1A83AFFE0A634FFDB9A1CFFEED29AFFFFFFFFFFE5DF
        D4FFFEFFFFFFEFD298FFDB981AFFDFA433FFDFA537FFE0A638FFDBA133FFD293
        1FFFCF911FFFB88735FFB89742FFD2C056F6A29543B72A25142DC2B286CCF0EE
        E9FFF0E8D5FFE5B742FFE3B135FFE0A939FFDEA435FFDFA636FFDEA639FFE1A3
        2BFFD19317FFE9DEC8FFFFFFFFFFEAE0CBFFCF9016FFE1A127FFDDA437FFDDA2
        33FFDEA334FFDAA032FFCF8F17FFD29423FFECE2D1FFEFECE7FFEDE299FEB3A9
        5FC1221F1724B9A876C4F1CF72FFECC35AFFE5B841FFE5B73FFFDEA836FFDBA1
        30FFDBA133FFE0A533FFD08C07FFC8A561FFF6F4F0FFF5E2BFFFF9F8F7FFC7A7
        6AFFCB8704FFDFA22DFFD99E2FFFDA9F2FFFD99D2DFFD29523FFD19422FFD8A0
        3EFFE1B757FFE2CF67F6A99D4EB707070508A5956EB1EAC452FFE5B533FFE6BA
        43FFE7BA46FFE0A935FFD79D2CFFDDA130FFD18E0DFFC8A661FFF7F8FBFFE9BC
        67FFCF8400FFE9C172FFFBFEFFFFC9A769FFCD8805FFDB9E2CFFD69B2CFFD79A
        2AFFD59928FFD29422FFCE8910FFD8A92EFFC9B554E08D7F3E9C000000007468
        517EF4DB8EFFEABF47FFE7BA40FFE9BB43FFE3B13CFFD89C28FFD28E0BFFC69F
        53FFEDE9E2FFE7BA63FFCD8700FFD4941DFFCD8500FFE9BE6DFFF7FBFFFFC6A5
        64FFCB8600FFDA9B27FFD89C2DFFD69B2AFFD49625FFD69B30FFE5C45EFF9583
        44A7564A2662000000003933283FF6E6B7FFEECA60FFE9BD46FFE9BE4AFFEBC0
        4DFFDCA125FFC29035FFE1D1B2FFE3B559FFCE8805FFD39824FFD49B2AFFD395
        21FFCD8601FFE7BB69FFEDEAE5FFBE9444FFD18C07FFDDA431FFD79D2BFFD599
        28FFDBA840FFE8CF6DFF453A1D4F1713091B0000000004040305B9AE98C4F9E9
        B3FFEECC69FFEECB6AFFEEC862FFE0C06AFFE2CEA6FFDDAA4DFFCA8604FFD195
        21FFD29523FFD29522FFD19522FFD19321FFC77F00FFDCA745FFE6DCCCFFC89F
        4BFFD89817FFDBA12EFFD99F33FFE5C064FFB09C57C403020103000000000000
        0000000000004B423353FDFAEEFFF9EAB9FFF2D88DFFF0D691FFF3E2B2FFF5D9
        8FFFDBA533FFCD8F1BFFCC8C18FFCC8D19FFCC8D19FFCC8D19FFCC8D1BFFCD8F
        1DFFD18C07FFEAB954FFE3D1AAFFCD9F43FFDA9D25FFE3B559FFEBD282FF483D
        1E5300000000000000000000000000000000000000009F937FAAFFFFFFFFFAEF
        CDFFF8E9BFFFF7E4B0FFF1D17CFFECC45AFFE2AF3AFFD9A02CFFD49926FFD196
        23FFD49825FFD79E2AFFDEAA37FFE4AE3EFFDC9F20FFE5B44CFFDDBD7CFFD8AD
        57FFEDCF81FF99874DAA00000000000000000000000000000000000000000000
        000018140D1BCABDA7D7FFFFFFFFFDF9E6FFF5E1A9FFF0D27FFFECC55BFFEBBE
        48FFE9BD48FFE9BA43FFEBB83BFFE7B542FFE5B543FFE5B33FFFE3AF3DFFE2AC
        3CFFDFA631FFE9BE66FFEFD9A8FFC4AD69DA1814091C00000000000000000000
        00000000000000000000000000000000000019160E1DC1B39BCEFFFFFFFFFEF7
        DCFFF3D98FFFEDC65BFFE9BC47FFECBD45FFE5B644FFCBA342FFE3B442FFE9B6
        40FFE4B240FFE4B242FFE6B751FFECC97CFFF0D698FFBDA66ACF1B160A1F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000120F0A1497876CA5F9F1E4FFFDF6DCFFF7E09BFFF1CE70FFEEC250FFEDC8
        6CFFEDE7D7FFEBC56AFFEABC4DFFECC66BFFEFCD7FFFF2D99FFFEFD9A3FF9581
        51A6131007160000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000004D422E57B6A583C5F3E5
        C9FDF7E9C4FFF5DEA3FFF8E4B2FFFFFFFFFFF7E2AEFFF2D898FFF4DFAFFFEED7
        A7FDB29A65C44C40225700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000483C2552998357ABCCB58BDDE5D0A8F6EEDCB6FEE4CE
        A0F6CAB37FDD98814DAB483B2052000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000018130B1B584A2B658C7B
        599BA89573B8B09D75C1A7956DB88C79519B584926651713091B000000000000
        000000000000000000000000000000000000000000000000000000000000}
    end
    object btn2: TcxButton
      Left = 3
      Top = 33
      Width = 100
      Height = 33
      Caption = 'Firmantes'
      TabOrder = 1
      OnClick = btn2Click
      OptionsImage.Glyph.Data = {
        9A150000424D9A15000000000000360000002800000025000000250000000100
        2000000000006415000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000303032D1111115B101010590808083E0202021900000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000005000000070000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000181A1A1A8A313131B82222
        22AD1818189B0E0E0E72050505450101011E0000000700000002000000000000
        0000000000000000000000000000000000000000000000000009000000170000
        00160000000D0000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000404042E353535CF202020E40202028F0909098A0F0F0FB20E0E
        0EBB090909A30505057C030303510000002A0000000D00000002000000010000
        0000000000000000000000000023000000500000002700000000000000010000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000020000000200000000000000000000000000000000000000020D0D
        0D780C0C0CE600000080010101160101011E010101490101016E020202880404
        0498020202930000007A0000005B0000003C000000200000000A000000000000
        000A000000290000002C00000005000000000000000000000000000000000000
        0000000000000000000000000000030303310909095F131313920C0C0C7E0505
        05450101010B0000000000000000000000000000000705050580030303D90000
        00770000000C0000000000000008000000130000002800000044000000590000
        0069000000710000006B0000005B000000480000002F00000027000000430000
        0033000000050000000000000000000000000000000000000000000000000000
        0000040404400D0D0D9B0C0C0CF2060403B10504048B0404048B010101770000
        003100000003000000000000000801010175000000D9000000A70000002C0000
        000000000000000000000000000200000009000000100000001B0000002C0000
        003900000043000000440000003F0000003E000000320000000B000000000000
        000000000000000000000000000000000000000000000101010B010101300000
        007A000000360101011A0100003B0000007E0000009F0000008D0000004B0000
        000A000000040000004B000000B9000000C5000000610000000E000000000000
        00000000000000000000000000000000000100000005000000090000000D0000
        000E0000000A0000000800000002000000000000000000000000000000000000
        0000000000000000000000000000000000021A1E225F0F2D46AB000409400000
        0000000000120000002C000000670000009200000087000000500000000E0000
        001900000075000000B30000008E000000350000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002020203818B8D9A80CBEDFC103A59B90001022C00000008000000020000
        000A00000023000000450000006F0000007100000047000000370000006E0000
        00AA0000009E0000005305050510000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000292F333B4184
        A8CF3088C7FE0B1B2D95000000360000002B000000270000000B000000000000
        00150000002A00000044000000520202025B0B0B0B90151515BB1F1F1FBF4F4F
        4FAE222222540000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000050D19381F78B2DF36A3D8FA082C
        3C9F000102440000003500000044000000390000002700000019000000110000
        00170000001C0202022F0C0C0C572E2E2E8C868686D54646469F010101160000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000A324D7C48CDEEF440BEE3F90E4A60B50005085C0000
        002F00000035000000450000004B000000350000000D00000000000000000101
        01060808081723232335181818330101010B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000006
        0B144993AFC884E4FFFF57CFF5FF196A92DB031C2E8F0002054E0000002F0000
        002E00000045000000380000000D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000314F6384B0DCEAF585D2
        EEFF38A7E1FF137FC1F4145983D3425664B3222327770202033A0000003A0000
        00300000000B0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000B1B273A9AC3CFDCA5D9EEFF53A2CEFF1F91D3FF25A4
        E6FF9FEEFFFF9ABAC1E610131761000000250000003A0000002E000000200000
        0011000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000103
        0507588EA5BD99E5FDFF95C9E3FF8BB0CDFF5AAAD3FF4FCCE8FF80EEFFFF3045
        4F9D01000026000000280000003C000000380000002D00000018000000060000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000029647E9767D0F6FDA4D2
        E5FFB7B4B7FF80AFC9FF5CBEE6FF5DE0FFFF3D85A0D006090C400000001B0000
        003B00000032000000310000002E000000210000000F00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001B59748C69CBEFF97CCBEAFF80B1C6FF92CBE1FF8CDF
        FDFF58D3F7FF33B1ECFF0A202F70000000080000002A000000360000002D0000
        002C0000002D00000026000000180000000A0000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004365
        7483BFE5EEF597E6FFFF79D6FAFFC0EDFDFF8DEFFFFF2DC5F0FF22AFF6FF1654
        7EAF02070B1F000101080000002D000000310000002A00000025000000260000
        00250000001E0000001100000005000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000292D2F3280898C929DD1E4EFAAE8
        FBFFE0F6FFFFACEDFDFF2AC1F9FF10AAF6FF289DE2F70B2D4461000000000000
        0009000000210000002C00000029000000210000001F000000210000001E0000
        0015000000090000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000008090A0B33464F5A86ACBBC9D9F4FBFDD4F0FDFF5DC5
        F7FF0AA7F2FF1AAEFBFF145C8AAD01060C290000000000000005000000170000
        0023000000240000001F0000001B0000001A0000001A000000150000000C0000
        0004000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001C2B32385E8797A3BFDAE9F2B0DCF8FF2EB4F8FF009DF4FF0D81
        C6F0274E7ABB151E366D0102051C000000000000000C000000190000001F0000
        001C000000170000001500000014000000120000000D00000006000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000811
        14173B677881A3CEE1E56DC0F0FF2EA2E3FF228DCAFF7EC8EBFF90AAC1F00D0E
        1561000000000000000000000004000000100000001800000018000000150000
        0012000000100000000F0000000F0000000A0000000500000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002653627081A9
        C7EFC7DFEFFF96CFECFF6AA7C7FF777D7FFF322C27BD0202022B000000000000
        0000000000010000000800000011000000130000000F0000000C0000000B0000
        000C0000000D0000000C00000008000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000E2E3C5871ABBCE2F3FFFFFFE1E2E4FF4A55
        5DFF0E0F11FF63605DFF303030A9000000190000000000000000000000000000
        0004000000070000000500000004000000040000000400000004000000060000
        0007000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000091721445F8D9BCDAEC7C6FF8A7E7BFE302826FC000000FB313031FD6867
        68FD222222910101010B00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1D24425759
        5ACD555151FF2F2E30F2000000E5000000E1343434EF585858EC131313770000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000013141452585657E0747377EE1F1E
        20CD000000CA010201C4373637DE4B4A4CD20808095400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000317171773717074D6555457C5141415B2000000B00706
        07AC343335C4343436AB04040438000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01182F2E2F8669696BBD3A3A3DA01817199A06050695080708952D2D2DAA2524
        2687010102210000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000707072C3939398A5453
        569C36353783232224810909097B0A0A0A7E2524258C13131464000000110000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A3A4645467E474748782C2C2D6A1E1D
        1F680D0D0D610A0A0B641211136E060606450000000500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000A1C1C1C43444444662D2C2E57202022501818194C080708460101
        014A0707084E0303032900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000004040411201F
        203C303030471F1F203A1616173609090A310101022C0101022F040404300101
        0117000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000050505111B1B1B2A1A1A1B2A0E0E
        0F25090909240505052201010121010101260303032800000013000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020404040C050505120202021102020211020202120101
        0113000000140000001800000014000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000}
    end
    object btn5: TcxButton
      Left = 3
      Top = 65
      Width = 100
      Height = 33
      Caption = 'Permisos'
      TabOrder = 2
      OnClick = btn5Click
      OptionsImage.Glyph.Data = {
        36190000424D3619000000000000360000002800000028000000280000000100
        2000000000000019000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000003000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000004000000030000
        0003000000030000000300000003000000030000000300000003000000030000
        0003000000030000000300000003000000030000000300000003000000030000
        0003000000030000000300000003000000030000000300000005000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000001020B000C1775000F1F9B000F1FA2000F1EA2000F
        1EA2000E1EA2000E1EA2000D1EA2000D1DA2000D1DA2000D1DA2000D1DA2000D
        1DA2000C1DA2000C1DA2000C1DA2000D1DA2000D1DA2000D1DA2000D1DA2000D
        1DA2000D1EA2000E1EA2000E1EA2000F1EA2000F1EA2000F1FA3001020A0000D
        197C0000000D0000000000000000000000000000000000000000000000000000
        0000000000000000000005080C1F043C72FF094074FF0B467DFF0C4B82FF0D4D
        85FF0D4F88FF0D5189FF0F548AFF0F568DFF105890FF105A91FF115D93FF115E
        94FF115F95FF115F95FF115F95FF115E94FF115D93FF105B92FF105A90FF0F57
        8EFF0F548CFF0D528AFF0D4F88FF0D4D85FF0C4B84FF0B467EFF0B4275FF033D
        77FF0001032A0000000000000000000000000000000000000000000000000000
        0000000000000000000008080823093159F40C3C6BFF0C4071FF0A3F71FF0B42
        74FF0C4375FF0C4578FF0C4678FF0D4678FF0D4778FF0C4676FF0D4779FF0D4B
        7DFF0D4A7DFF0D4A7BFF0D4A7BFF0D4979FF0D4778FF0D4778FF0D4678FF0C46
        77FF0C4578FF0B4376FF0B4375FF0C4275FF0B4173FF0C4072FF0E3D6AFF0538
        68FF0002032E0000000000000000000000000000000000000000000000000000
        000000000000000000000A0A0B27123F66F2337AB7FF3A91D8FF358FD9FF338C
        D4FF358FD7FF3691D8FF3691D7FF3690D8FF338DD6FF3289D3FF3288D1FF338B
        D6FF3389D4FF3288D1FF3289D4FF348BD2FF348CD5FF338BD4FF348CD4FF348C
        D3FF348DD6FF348ED8FF338CD5FF348FD9FF3692DDFF3A92DAFF3C87C6FF1750
        83FF0000012E0000000000000000000000000000000000000000000000000000
        00000000000000000000161617271D5482F23B8AC5FF327BB3FF2479B9FF1161
        9CFF105F99FF0F5D96FF105D96FF0F5E97FF0D5A94FF0E5B96FF0D5A95FF0D58
        94FF0C5995FF0C5994FF0C5995FF0E5D97FF0E5D97FF0E5B95FF0F5C95FF105F
        99FF0F5C94FF105E99FF105D98FF0F5C96FF1E6EAAFF3481B9FF459DE0FF1E62
        9CFF0000012E0000000000000000000000000000000000000000000000000000
        000000000000000000000D0E0E27174E7BF245A4F0FF276DA6FF527188FF6E7F
        8AFF647784FF667887FF677887FF697B8BFF6B7D8CFF6C7E8DFF6E8190FF6F83
        92FF708493FF708392FF6F8392FF6F8392FF6E8190FF6C7F8EFF6B7D8CFF697C
        8BFF687A89FF667889FF657887FF6A7986FF5A7388FF296FAEFF429EEDFF1655
        8CFF0000012E0000000000000000000000000000000000000000000000000000
        000000000000000000000E0E0F27164B77F23D9BEBFF2472B4FF92999EFFD6C7
        BAFFC7C0BBFFC9C3BDFFCDC6C1FFD2CBC5FFD6CFC9FFD9D2CDFFDDD6D0FFDFD8
        D2FFE0D9D3FFE0D9D4FFE0D9D4FFDFD8D2FFDDD6D0FFD9D2CDFFD6CFC9FFD3CC
        C7FFCEC7C2FFCBC4BEFFC7C0BAFFCFC3B9FFA4A5A8FF2167AAFF3D96E8FF1858
        8DFF0000012E0000000000000000000000000000000000000000000000000000
        00000000000000000000121313271C537FF2419DE7FF1565A5FFAFBECAFFF4F3
        F2FFF6F6F6FFF8F8F8FFF4F4F4FFF3F3F3FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5
        F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3
        F3FFF3F3F3FFF2F2F2FFF2F2F2FFF3F2F2FFCBD2D8FF1D619DFF429CECFF1B5B
        92FF0000012E0000000000000000000000000000000000000000000000000000
        000000000000000000000B0C0C271A507AF2449FEEFF1260A5FFBBC9D7FFFFFF
        FFFFF6F6F6FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCE4EAFF1E61A0FF4399E8FF1C5C
        90FF0000012E0000000000000000000000000000000000000000000000000000
        0000000000000000000007080827195079F2459FEEFF1462A4FFB9C8D4FFFFFF
        FFFFCACACAFFC1C1C1FFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DDE4FF1F62A0FF459EECFF1E61
        95FF0000012E0000000000000000000000000000000000000000000000000000
        000000000000000000000B0B0B271C557FF24BA6F0FF1968A8FFBBCAD6FFFFFF
        FFFFC1C1C1FFBABABAFFCBCBCBFFFFFFFFFFDEDEDEFFD8D8D8FFD5D5D5FFE0E0
        E0FFDADADAFFE1E1E1FFCCCCCCFFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7DEE4FF256AA4FF4DA5EDFF2267
        9AFF0001012E0000000000000000000000000000000000000000000000000000
        000000000000000000001718192726638DF252ABEBFF2273AAFFBBCBD5FFFFFF
        FFFFE4E4E4FFDADADAFFF4F4F4FFFFFFFFFFE8E8E8FFE3E3E3FFE1E1E1FFEAEA
        EAFFE5E5E5FFEAEAEAFFDADADAFFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8DFE5FF2B70A4FF54A9EEFF256B
        9EFF0001022E0000000000000000000000000000000000000000000000000000
        00000000000000000000191A1B272B6A94F25AB2F0FF2775ABFFBCCCD8FFFFFF
        FFFFDBDBDBFFD7D7D7FFEBEBEBFFFFFFFFFFE0E0E0FFD8D8D8FFD8D8D8FFD6D6
        D6FFD0D0D0FFDADADAFFE1E1E1FFDCDCDCFFD2D2D2FFD3D3D3FFD2D2D2FFD6D6
        D6FFCECECEFFD2D2D2FFFAFAFAFFFFFFFFFFD9E0E5FF2D70A6FF54A9EEFF266B
        9CFF0001012E0000000000000000000000000000000000000000000000000000
        00000000000000000000161718272A6A92F25CB1EFFF2A77ADFFBFCDD9FFFFFF
        FFFFBFBFBFFFC8C8C8FFCECECEFFFFFFFFFFF9F9F9FFF7F7F7FFF7F7F7FFF7F7
        F7FFF6F6F6FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF8F8F8FFF7F7F7FFF8F8
        F8FFF7F7F7FFF7F7F7FFFEFEFEFFFFFFFFFFD8DEE4FF2E71A6FF57ACF1FF286D
        9DFF0001022E0000000000000000000000000000000000000000000000000000
        00000000000000000000161717272B6B93F25FB3F0FF2C77ABFFBCCBD5FFFFFF
        FFFFE2E2E2FFD9D9D9FFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8DEE3FF2F71A6FF5BACF1FF2970
        9EFF0001022E0000000000000000000000000000000000000000000000000000
        00000000000000000000111213272A6A90F261B4F2FF2E76ACFFBDCAD5FFFFFF
        FFFFE5E5E5FFD4D4D4FFF6F6F6FFFFFFFFFFDEDEDEFFDCDCDCFFD9D9D9FFD5D5
        D5FFD1D1D1FFD6D6D6FFDADADAFFD6D6D6FFCCCCCCFFDADADAFFD4D4D4FFDADA
        DAFFCDCDCDFFD9D9D9FFEFEFEFFFFFFFFFFFD9E0E5FF3573A6FF5EADF0FF2C74
        A2FF0000002E0000000000000000000000000000000000000000000000000000
        00000000000000000000151617272D6D95F263B3EFFF3077ABFFBECCD6FFFFFF
        FFFFC9C9C9FFC5C5C5FFD8D8D8FFFFFFFFFFE8E8E8FFE7E7E7FFE4E4E4FFE1E1
        E1FFDEDEDEFFE2E2E2FFE5E5E5FFE2E2E2FFDBDBDBFFE5E5E5FFE1E1E1FFE5E5
        E5FFDCDCDCFFE4E4E4FFF4F4F4FFFFFFFFFFDAE0E5FF3571A4FF60AFF0FF2D73
        A1FF02090E2D0000000000000000000000000000000000000000000000000000
        000000000000000000001F202127357AA0F26EBBF0FF3A7DACFFC0CDD6FFFFFF
        FFFFD3D3D3FFC4C4C4FFDADADAFFFFFFFFFFDDDDDDFFDBDBDBFFD8D8D8FFD4D4
        D4FFCFCFCFFFD4D4D4FFD9D9D9FFD4D4D4FFCBCBCBFFD9D9D9FFD3D3D3FFD9D9
        D9FFCCCCCCFFD8D8D8FFEFEFEFFFFFFFFFFFDAE0E6FF3A77A9FF67B7F7FF2F74
        A1FF030F162D0000000000000000000000000000000000000000000000000000
        00000000000000000000191B1B2731769CF272BEF3FF3D82B1FFBFCBD4FFFFFF
        FFFFF6F6F6FFE8E8E8FFFFFFFFFFFFFFFFFFF8F8F8FFF8F8F8FFF7F7F7FFF6F6
        F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFF7F7F7FFF6F6F6FFF7F7
        F7FFF5F5F5FFF7F7F7FFFCFCFCFFFFFFFFFFDAE1E6FF3F7CABFF6EBBF8FF3177
        A4FF020E152D0000000000000000000000000000000000000000000000000000
        000000000000000000000B0C0D2729688EF26CB7F1FF3779ABFFC0CDD7FFFFFF
        FFFFBDBDBDFF9C9C9CFFE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0E5FF417CA8FF70B9F3FF3278
        A5FF020F162D0000000000000000000000000000000000000000000000000000
        000000000000000000000E0F10272D6E94F276C0F7FF3E7EAEFFC1CDD7FFFFFF
        FFFFD6D6D6FFCBCBCBFFADADADFFF3F3F3FFE2E2E2FFDCDCDCFFDBDBDBFFDDDD
        DDFFCECECEFFCFCFCFFFD5D5D5FFDFDFDFFFCECECEFFDBDBDBFFD6D6D6FFD8D8
        D8FFD0D0D0FFD4D4D4FFF4F4F4FFFFFFFFFFDBE1E6FF4781ADFF7BC3FAFF357D
        A9FF0210172D0000000000000000000000000000000000000000000000000000
        000000000000000000000C0D0E272C6E93F277C0F5FF3D7DABFFBECBD3FFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEEEFFF6F6F6FFE9E9E9FFE5E5E5FFE4E4E4FFE6E6
        E6FFDADADAFFDBDBDBFFDFDFDFFFE7E7E7FFDADADAFFE4E4E4FFE0E0E0FFE2E2
        E2FFDCDCDCFFDFDFDFFFF7F7F7FFFFFFFFFFDBE1E6FF4984AEFF7CC3F9FF337B
        A6FF020F162D0000000000000000000000000000000000000000000000000000
        000000000000000000000B0D0D272B6C91F276BFF5FF4282B2FFC1CED7FFFFFF
        FFFFD1D1D1FFB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE1E5FF4F87ACFF85C8F8FF3881
        ADFF0210172D0000000000000000000000000000000000000000000000000000
        000000000000000000000E0F10272D7097F27BC4F9FF4180AEFFC2CFD7FFFFFF
        FFFFC9C9C9FFACACACFFB2B2B2FFFAFAFAFFF5F5F5FFEBEBEBFFEBEBEBFFEDED
        EDFFECECECFFEBEBEBFFEDEDEDFFEEEEEEFFE9E9E9FFE9E9E9FFEEEEEEFFEAEA
        EAFFE8E8E8FFEAEAEAFFF5F5F5FFFFFFFFFFDCE2E6FF558AB0FF8CCCFAFF3B86
        B1FF0211182D0000000000000000000000000000000000000000000000000000
        000000000000000000000D0E0F272C6F96F27EC4F6FF4885B2FFC2CDD5FFFFFF
        FFFFFFFFFFFFF9F9F9FFCDCDCDFFF2F2F2FFE6E6E6FFCFCFCFFFCDCDCDFFD2D2
        D2FFD1D1D1FFCDCDCDFFD2D2D2FFD6D6D6FFC8C8C8FFC9C9C9FFD5D5D5FFCCCC
        CCFFC7C7C7FFCACACAFFE8E8E8FFFFFFFFFFDDE3E7FF518AB2FF85C9FBFF387F
        ABFF020F172D0000000000000000000000000000000000000000000000000000
        000000000000000000001113132730759CF287CBFAFF4F8BB5FFC3CED7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE2E7FF5187ADFF88C9F9FF3982
        AEFF0210172D0000000000000000000000000000000000000000000000000000
        000000000000000000001011122730759CF28BCFFDFF508BB4FFC4CED6FFFFFF
        FFFFFEFEFEFFFBFBFBFFFCFCFCFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFD
        FDFFFCFCFCFFFAFAFAFFFDFDFDFFFFFFFFFFDCE1E6FF5789ACFF93CFFAFF3D86
        B2FF0211182D0000000000000000000000000000000000000000000000000000
        000000000000000000000D0E0F272F7299F28DCEFCFF518CB5FFC3CDD4FFFFFF
        FFFFF4F4F4FFD4D4D4FFB4B4B4FF9B9B9BFF9E9E9EFFA0A0A0FF9F9F9FFF9E9E
        9EFF9A9A9AFF9A9A9AFF9B9B9BFF9C9C9CFF9E9E9EFF9E9E9EFF9E9E9EFF9B9B
        9BFFACACACFFD0D0D0FFF0F0F0FFFFFFFFFFDEE3E7FF5D8DB0FF99D3FCFF3E88
        B3FF0211192D0000000000000000000000000000000000000000000000000000
        0000000000000000000016181927377EA5F298D3FCFF598DB0FFC5CFD4FFFFFF
        FFFFFDFDFDFFDEDEDEFFD8D8D8FFD0D0D1FFBFBFC0FFD7D7D7FFDDDDDEFFE3E3
        E3FFE9E9E9FFEDEDEDFFF0F0F0FFDBDBDBFFDEDEDEFFD3D3D3FFC7C7C7FFD3D3
        D3FFDEDEDEFFD8D8D8FFFDFDFDFFFFFFFFFFDDE3E6FF5D8FB0FF96D2FCFF3B84
        AEFF0210182D0000000000000000000000000000000000000000000000000000
        00000000000000000000121415273379A0F292CFF7FF6095B9FFDBE0E3FFFFFF
        FFFFFFFFFFFFFFFFFCFFEAE3DEFFE6DFDBFFDCD4D0FFE9E3DFFFDEDDDDFFEAEB
        EBFFE4E4E4FFE0E0E1FFE1E1E1FFE5E5E5FFDFDFDFFFF3EEEAFFE9E1DCFFF0E9
        E4FFF5EDE8FFFFFAF5FFFFFFFFFFFFFFFFFFF1F0F1FF5A94BBFF8CCCFAFF377D
        A9FF020F172D0000000000000000000000000000000000000000000000000000
        00000000000000000000030506272B6B94F28CCCF9FF71ABD2FF9FBED3FFAEC5
        D4FFAEC4D4FFAEC4D4FF8BA2B1FF879EAEFF86A1B2FF8EA1AFFFE7E7E7FFF5F4
        F3FFB0B0B0FF6F6F70FF989899FFF4F4F4FFF4F2F1FF99A9B5FF809AABFF8EA5
        B6FF87A0AFFFACC3D3FFADC4D4FFADC5D5FFA1C0D4FF6AA6CEFF8CCDFAFF367B
        A7FF020E162D0000000000000000000000000000000000000000000000000000
        0000000000000000000010111227377CA4F391C5E8FF86B7D8FF7EB7DDFF70AA
        D0FF6EA8D0FF6BA4CCFF6BA3CAFF5B95BBFF518EB5FF40789FFFA9BAC7FFFFFF
        FDFFF2F2F1FFD9D9D9FFE6E4E4FFFFFFFFFFB3C4CFFF3B759CFF4A89B4FF5796
        BFFF67A5CEFF67A2CBFF63A0C9FF63A2CBFF6DACD5FF78A8C9FF91C3E6FF458D
        B9FF020F162A0000000000000000000000000000000000000000000000000000
        00000000000000000000121516283882A9FF94C2DDFF9CCEEDFF9DD1F0FF9FD3
        F2FF9ED1F3FF9ED3F4FFA2D4F4FFA6D8F7FFA9DBFAFF98CCECFF84B9D9FF6A9E
        BDFFC7D4DCFFFFFFFFFFDCE5EBFF6D9CB8FF81B2D0FF97CEF0FFAADEFEFFA1D8
        F8FF9DD2F4FF9BD0F1FF98CFF0FF97CDEEFF9ACFF1FF9ACCE9FF94BCD1FF3D86
        ADFF03121A290000000000000000000000000000000000000000000000000000
        00000000000000000000090A0A161A5571AE207298D2237399D2207096D22170
        96D2217096D2217197D2227498D2237698D2217297D2247AA1D21D759CD20035
        5AD5B3C0CBFD626678EFA2ABB4FB00456CD8237FA9D2247398D2227398D22274
        98D2227498D2217398D2217398D2227398D2227398D226789CD2247599D21958
        77B3030A0D140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000A4A3A2CEBFBFBEF7A19995D6000101070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000171717565C5C5CA220202160000000050000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001020202200B0B0B4403030324000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btn1: TcxButton
      Left = 3
      Top = 97
      Width = 100
      Height = 33
      Caption = 'Avisos de'#13#10' Embarque'
      TabOrder = 3
      OnClick = btn1Click
      OptionsImage.Glyph.Data = {
        36190000424D3619000000000000360000002800000028000000280000000100
        2000000000000019000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000330000007700000047000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000001A00000057000000A322333DF7141E25D2000000620000
        0014000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000350000007E090E10C8436172F742697FFF172830F30E171CE00508
        0A93000000250000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000160000
        0056040404A11C2A32E41C3645FF6595AEFF5D88A1FE253D4FF9172F3DFF131F
        26F0080B0DB90000004700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000340000007C131A
        1FC82A495BFC344F5CFF3B5561FF3C617BFF345E83FF466F96FF2F4A62FC192E
        3DFF11222CFF121A1FE0030405770000000A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001200000054050606A419282FED203D
        4EFF366075FF405E6FFF3E6381FF345778FF657B8FFF547694FF335778FF3859
        77FF22384AFB19303DFF0E1B22FA070A0CAB0000002500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000350000007A0A0F12CD46697CFE6698B3FF213F
        4FFF3D627AFF375B7CFF366088FF5B7E9DFF6A869CFF487398FF345573FF3858
        75FF426686FF294157FD1B313FFF13252FFF0E161ADB02030455000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000001D00000052050607AA1C2E37EF2E5266FF487389FF517D95FF355A
        77FF315273FF476F95FF4B749AFF48749BFF487BA8FF4C79A1FF375775FF3555
        72FF3B5D7BFF33506BFF385A78FF284156FE19303DFF101F27FF060C0F960000
        000A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000F00000059090D0FCE1D323EFF2E5264FF3A5F73FF355E7CFF22415EFF3B5D
        7EFF4B759BFF466E92FF497398FF4B78A0FF507EA8FF5685AFFF446B8FFF3C5F
        80FF3D6182FF395A76FF385977FF3E6283FF324E67FF1F3A4CFF0C181EB90000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        0010161F2396557F96FF2D4755FF3C6177FF345B7CFF4E6984FF507494FF3E67
        89FF3F6584FF41688CFF4A769CFF5180ABFF5889B5FF507CA4FF487399FF4A74
        9AFF416586FF3A5C79FF395C7BFF375977FF3C5E7DFF3D5F7EFF121A21B00000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00071722278C57859FFF385D7AFF32587CFF507394FF728CA3FF446A89FF3558
        78FF315284FF4773A0FF5586B0FF4E7BA4FF477195FF416687FF365775FF3F65
        88FF476F95FF416687FF3A5D7DFF375978FF365774FF3E6283FF2C4357E10101
        014E000000820000007700000021000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000018262FA3355C7DFF3D6285FF4A749AFF4E769CFF4C7DA5FF386189FF2845
        85FF3256A0FF4B78A2FF467093FF3F6382FF33526DFF456C8EFF385774FF2B46
        5EFF33526FFF3F6485FF41688BFF436B8FFF3D6181FF406788FF395976FF0406
        07B7000000D80C0A0AFF070302E00000004A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000232E3899416D96FF487196FF487197FF4A779EFF5282A7FF40689BFF2C4D
        92FF395F8DFF3E6281FF3F6482FF466D8FFF42698BFF4B769BFF3B5D7DFF3351
        6CFF335169FF2D4860FF2F4D69FF456F95FF4D789FFF42688AFF395C7BF90A0E
        13D80E0905FD1F1F20FF182D3AFF080D11D50000003000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000394B5BAA366285FF3D6186FF49739AFF5383ADFF5587B1FF3E658DFF385A
        7BFF3D5E75FF446A8AFF477094FF487298FF4F7CA5FF4F7BA3FF395A79FF3454
        71FF3D6080FF304C64FF233A4FFF335370FF3E6284FF456D93FF416A8EFB1E24
        29F8251B14FF25282DFF0B577FFF215060FF030000AD000000610000000E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000415362B31C4377FF40689BFF5687B0FF4E7BA3FF3F698EFF32536FFF3857
        6FFF406585FF456E91FF477197FF4A759CFF4E7BA3FF527FA8FF3F6485FF3352
        6FFF3A5C7CFF395A78FF365672FF365572FF2D4861FF32506BFF3D6991FF354D
        60FF3E342CFF37302BFF0D4461FF116290FF11202BE30B344EF0061119C10000
        0022000000000000000000000000000000000000000000000000000000000000
        0000384A6ABF1B4096FF436D9EFF48728FFF345C7EFF486C89FF446581FF284D
        6EFF396287FF497298FF49749BFF4D7BA2FF5382A8FF507DA6FF477096FF3F65
        87FF3E6283FF3C5F7EFF375876FF3B5E7DFF375774FF35536EFF2D4962FF2851
        6DFF302E2BFF341A0BFF1E1919FF0E3754FF13191DFF1C628DFF3EC4FFFF1436
        46E0000000430000000000000000000000000000000000000000000000000000
        00002C4367C8365E95FF3B5F7FFF386081FF5A7A94FF73889AFF3C6387FF4F68
        7EFF5A7A96FF44729DFF4F7DA2FF49749BFF3F6796FF4F7CA9FF497397FF3E64
        85FF3F6587FF3E6383FF3A5C7BFF3A5D7DFF355572FF3C5F7DFF384D62FF235C
        84FF031E34FF243A49FF284153FF0C0000FF0A0000FF0E2032FF2698CFFF44DB
        FFFF256885F70000004700000000000000000000000000000000000000000000
        00002B4254D2446C8AFF456B8BFF436E95FF5A7D9CFF48739AFF456C8EFFB8B5
        ACFF7E99AEFF356795FF3B6290FF3E6598FF5686BBFF74ADE0FF71A8DAFF5786
        AFFF406488FF385A79FF395B78FF3D6182FF3B5F7FFF3B5F7FFF405973FF2A58
        7CFF1471AAFF3EC8FFFF46D6FFFF205372FF010000FF163F5EFF155E92FF0D55
        7AFF37BAF7FF163D52DD0000008D0000002D0000000000000000000000000000
        0000415B71E1416D93FF477196FF4B7399FF45739DFF3F729FFF597C9BFF7A8E
        9EFF466E8FFF426D9EFF517FB6FF6EA7DBFF7BB9EBFF76B1E4FF72ADE4FF6EA8
        E3FF6499CDFF5481A9FF385A79FF365979FF477196FF416688FF40678AFF3242
        54FF182B2EFF33B1EBFF4CDFFFFF53F3FFFF3697C4FF1B5F8FFF237FBCFF0B2E
        4AFF1668A2FF2F83B7FF0E0000FF070607D90000002400000000000000000808
        090E3D5E7BF03E6889FF42688AFF4A759CFF4F7DA5FF507DA6FF395D7FFF2A52
        77FF4F81AFFF6EA7D8FF77B4E5FF71ACDFFF6CA4D6FF679DD1FF5E95CBFF649B
        CFFF6EA9DEFF6EA8DCFF5F91BFFF5683ACFF487297FF3C5E7EFF3E6588FF3E57
        6EFF261309FF2784A9FF40CFFFFF40BFF8FF3BBAF7FF1B648FFF1D6693FF1F6D
        A2FF1A78B8FF3A97CEFF1C2F3AFF1A4A60FF0405034900000000000000001515
        151D325571FF2F5381FF3E6593FF4C789EFF49759CFF5484ADFF5382ADFF5E93
        C6FF6DAADEFF6CA7D8FF639ACEFF6197CBFF679DCFFF659CCEFF659CCCFF6298
        C6FF5F94C3FF679DCDFF76B0E3FF80BDF1FF6FA6D8FF5785B2FF446B92FF3255
        72FF251008FF266680FF36D2FFFF37B6EEFF3BB8F1FF309ACDFF1B6594FF1B63
        97FF15669EFF34A0E5FF294E63FF0D5375FF10222B9C00000000000000001012
        132C2C4E83FF26458FFF436B97FF5382A9FF6095C3FF70ABDDFF7AB8ECFF6CA6
        D9FF6095C8FF5B8EBFFF598DBFFF6096C7FF6097C5FF5B90BEFF5E94C3FF659C
        CCFF6EA6D6FF73ACDEFF71A9DCFF69A0D3FF6EA7DDFF7CBFFCFF76BCF9FF527D
        A5FF32241DFF18313DFF013D5BFF125475FF2CA8E0FF49E4FFFF42C4F8FF287F
        B3FF0A416BFF2396E7FF3C617DFF10161CFF10293AD800000000000000001518
        1B37204487FF385F9CFF5D90BEFF70ABDCFF76B3E7FF6FAADDFF6BA3D7FF69A2
        D8FF689FD4FF659BCEFF5C90BEFF588AB7FF5688B6FF5D93C2FF6AA3D4FF6CA5
        D9FF639BD0FF669CCEFF6CA4D9FF73B3EEFF70AFE7FF5989B2FF55728DFF3E45
        4DFF2D2824FF1F1E20FF03284AFF0F3F67FF011520FF156B92FF37BFF6FF43CD
        FFFF2993C8FF32A7E5FF4CAED8FF1D0D0DFF0A0000C200000000000000002627
        28394073A6FF62A7DFFF6DB3EDFF66A3DAFF6097CCFF649BCEFF659DCFFF629A
        CCFF6198C7FF629ACAFF659DCFFF6CA5D7FF6DA6D8FF669CCFFF5D91C4FF568A
        BEFF65A1DAFF72B3EDFF649DCEFF497093FF2B3947FF130D0AFF130800FF100A
        04FF191412FF2A2624FF2A92D0FF2FA3E9FF070C12FF000000FF093855FF1E7B
        AEFF2481ACFF339BC5FF4BE9FFFF3FC1F1FF0E1B268C00000000000000000000
        00000F10111D36424D734D7294D54D85BCFF5D9CD8FF6DACE3FF5F98C7FF5C91
        C0FF629ACBFF6BA4D6FF6FA9DCFF6FA9DEFF6CA4DAFF65A0D8FF5C9CD8FF66A4
        DCFF5886AEFF2D455BFF24272BFF0D0704FF0E0500FF080707FF030404FF0909
        09FF121212FF2D221DFF123241FF1283B6FF2AA7E4FF102736FF0F3556FF349F
        EEFF2E84C5FF115688FF105F8CFF39CDF9FF3ACEFEFF2D33374A000000000000
        0000000000000000000000000000141617262A333B6D3D5C76CC5B93C6FF5599
        D4FF5DA0DDFF5F9AD2FF659DD0FF619ED7FF5193CFFF5F96C6FC40556896323F
        4AD20A0706FF000000EF1B1613EF1B1A19FF161616FF1B1B1BFF636363FF5555
        54FF282929FF333334FF1B0905FF060202FF064F6EFF259FD0FF2583B4FF39B0
        EEFF52E8FFFF2A7BAEFF052F58FF125177E605090A2C00000000000000000000
        00000000000000000000000000000000000000000000000000000D0E1025434F
        5B774F6B87C14D85BAFF538FC5FF547A9BDC38454F790B0C0C12000000002C27
        22BC000000FF1011119C16161692181818FF171717FF2B2B2BFF5F6061FF5A59
        58FF241A15FF232222FF232524FF080000FF070000FF217392FF2DA3DDFF0333
        50FF236A83FF33AFE4FF2E99D3FF185485FF0101012000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001D1F202F22262B48020202030000000000000000000000002121
        21AF0D0D0DFF131313C1191919B9111111FF1A191AFF1D1D1DFE050201EE1F25
        27D70D2531F8111212FF2C2B2AFF090706FF362923FF2E82A8FF2BBBFCFF0A2B
        3FFF030000FF15272DFF2BA8DBFF31A4DCFF1518193500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002323
        23A10C0C0CFF0C0C0CFF1B1B1BFF121111FF151515FF1C1C1CFF070706670000
        00000D374BA41C3643FF2A211DFF171617FF41291FFF3E85A1FF39EEFFFF2A60
        74FF192D35FF225872FF161514F0030B0D360000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003636
        3692000000FF030303FF191818FF151415FF171717FF242323FF030403600000
        0000010304171C292FE92A2624FF181919FF381C17FF4F8389FF44FFFFFF1D5D
        76FF2E4147F7368CADB502020325000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003939
        3984000000FF0C0C0CF61F1F1FF01E1E1EEB151515E1292929FF0B0B0B760000
        000000000000161413D72C2D2EFF1F2020FF2D221EFF40565DFF1F3C475F3846
        4C9C2B1F1BE20000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001A1A
        1A7D121212FF141414E21B1B1BA6232423E0151515C5232323FF070707880000
        00000303030C1C1C1CF0242424FF262626FF282A2BFF262222E2000000001613
        125B202121FF0404040600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002323
        2376101110FF131313FE1D1D1EC8222322D8171717C61C1B1BFF0102029C0000
        00000E0E0F1F242524F6131313CE333233FF0A0A0A6A00000000000000001616
        1657171717FF0D0D0D1900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003737
        376C010101FF131313FF1B1A1AE11F1F1FED101010F2232323FF010101A90000
        00002525253D191919DC08080844303030FF1010107B00000000000000002626
        263F0E0E0EFF1717172B00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002727
        2764090A0AFF0F0F0FFF111111FE1E1E1DFE0C0C0CFF272727FF101010BF0F0F
        0F373B3B3BBC252524FF343434FA313131FF282829FF060506C5010101060303
        0308181818FF1C1C1C4200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001111
        115C181818FF0F0F0FFF101010FF1F201FFF101010FF222222FF2C2C2CFF2F2F
        2FFF222222FF343434FF313131FF323131FF333333FF282929FF373736F51717
        1794030203FC2929294E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002929
        2955050505FF0D0D0DFF0E0E0EFF1F1F1FFF0B0B0CFF272727FF393939FF3332
        32FF303030FF2E2F2FFF302F2FFF323132FF353535FF383838FF2B2B2BFF2525
        25FF1A1A19FF0808085000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001D1D
        1D3F0E0D0EFF0B0C0CFF121212FF1C1C1CFF141414FF1D1D1DFF232323FF3233
        33FF323332FF333333FF323232FF2F3030FF383738FF242424FF141414DF1616
        16B31919197F0C0C0C1200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001C1C1CC4060606FF1C1D1DFF262626FF282828FA1B1B1BC31313138F2122
        21CD313131FF2E2F2FFF242425E4151515A6050505640909092F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000909095C131313C50F0F0F94080808420101010B00000000000000000000
        00000303032A0303032900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btn4: TcxButton
      Left = 3
      Top = 194
      Width = 100
      Height = 33
      Caption = 'Volumen '#13#10'Obra Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn4Click
      OptionsImage.Glyph.Data = {
        7A2F0000424D7A2F000000000000360000002800000037000000370000000100
        200000000000442F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001615151B03030305000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000404
        0405312F2C3B0A0A0A0F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000020202039465069AC6F88
        AAFF6E6F70AE0505050700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001F1F1C2C42425196595C89F51C479EFF0F4AA8FF5962
        91FF64625F930101010200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001212
        111A4B4B548F3B3F70E441549AFF173B94FF244C9EFF113B92FF2D4D9CFF6064
        8FFF5453537B0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A080D46464B773B3F6DE13F4F
        94FF20439AFF1B479FFF0B3A98FF09328AFF113585FF123C93FF35549FFF6D71
        8DF2454443670000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000808080A3534375853546BC62F3D88FF3050A0FF15429EFF1040
        9CFF003090FF0D3486FF485881FF91847BFF394D81FF033293FF425C9EFF7B7C
        8BE13636344F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001817
        19425B5B6CB23A4588FF243F93FF2E5AABFF073A99FF023599FF042F87FF2F49
        82FF837E80FFD4C0A9FFF1D9BEFFAC9F95FF1B3779FF063290FF4D619FFF7978
        82D4343432350000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000222220344848579B5A6199FF122E
        8BFF335EAFFF1045A1FF02369BFF002E90FF254282FF747586FFCDB79EFFEBD6
        BFFFC1AE9BFFB49F8CFFEBD4BBFFA19894FF113179FF073190FF485A9AFF8584
        89C70D0D0C1D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001C1C1A2944444D8F474C7FF0243A91FF204AA7FF1F55AEFF0037
        99FF00339BFF123984FF6A7086FFC2AD9BFFF3D5B6FFE8D2BFFFC0AD9BFF9882
        6EFF8B7560FFB2A08CFFECD6BAFF908A8FFF0E307EFF062F8DFF2F4287FF7B79
        7DB20E0E0D110000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000C0C0B104848
        4A7F3A406EE233438DFF1C44A1FF1D53AFFF063FA0FF00369AFF083891FF4D5D
        82FFADA199FFEACFADFFF0DAC1FFDCC7B8FFBEA998FF9A8571FF86705BFF8069
        54FF8D7863FFC1AC99FFEBD3B5FF7F7D88FF0D3282FF0A328FFF2D3A7FFF5C59
        5C950808080C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000004030305393F3E60515675D324347FFF2E50
        A4FF1346A7FF104CACFF00359AFF053B99FF3A5386FF989293FFDAC3AAFFEED4
        BCFFE2CFBEFFD3C1AEFFBAA592FF9E8874FF8E7762FF7F6753FF7C6450FF826C
        56FF9A856FFFCDB8A1FFE3CBAEFF6E7083FF083088FF173A90FF313875FC4746
        497F040404070000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000040404062E2F2D48626071BE213076FB344F9DFF1C50ADFF0946ADFF003A
        A5FF00389CFF294D90FF88868DFFD5BEA9FFEBD2B7FFE6D3BEFFDCCAB9FFCCB8
        A6FFAF9985FF9A846FFF907965FF7E6752FF88715EFFCCBAA9FFAB9785FF816B
        55FFA38E7AFFD2BCA8FFE0C8AAFF616580FF032D89FF224293FF383F71EF3C3B
        3D6C000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002828253A5051
        5FA63E4984FD213F94FF3662B7FF0946AAFF003FAAFF0B419EFF254E97FF6C73
        8CFFC9B199FFE4C9B0FFDCC7B3FFD4C0AEFFCAB5A4FFB7A390FFA08A76FF957E
        6AFF8C7560FF826A56FF9B8573FFD6C5B5FFF5E4D4FFEAD8C9FFA38E7CFF8871
        5CFFA8927EFFD5C0ABFFDDC5A9FF525B7CFF022B8AFF304E9AFF3F4574E62524
        2555000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002322202E484A56954B5285F9233C91FF2B57
        AEFF1B58B6FF0039A7FF0038AAFF254C92FF686873FFA58D75FFC5A88CFFBAA5
        91FFB29B89FFAD9783FFA58E7BFF9A836EFF95806BFF927A66FF846B56FF8E78
        65FFB7A493FFEFDFD3FFF2E4D6FFDBCAB9FFDDCABBFFE4D2C3FF9D8774FF8F78
        63FFAC9884FFD9C5B1FFD7BFA6FF3E4C78FF082F8AFF3D589FFF353965DD2D2D
        2C39000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000F0F0E134C4D507E444775EB384992FF143D9EFF2C65BDFF0042ABFF0038
        ACFF00399DFF4A6292FF8A7667FF9D805FFFA48D77FF9F8A79FF8D7660FF876F
        5AFF876F58FF866D57FF856C55FF806850FF8D745FFFAE9989FFDACCBFFFFCEF
        E5FFE3D3C6FFBCA796FF9D8775FFA18A79FFD9C6B6FFE1CEBEFF97816EFF9680
        6BFFAF9D89FFDECAB4FFC4B29FFF2C3F75FF0C348CFF3F569DFF40425FC60B0B
        0A1F000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000030303064A4946664D51
        6ED03C4689FF1E439EFF1E56B5FF1055B9FF0038AAFF0039A6FF325391FF9794
        9BFFB59776FF977C5DFFA99583FFCCBBACFFA08E7EFFB5A293FFBEA999FFC3B1
        A2FFC7B5A7FFCABBADFFD0BFB2FFDBCEC2FFEFE3D9FFE5D7CBFFB8A595FF9F8A
        78FFB3A192FFD3C5B9FFCDBEB2FFAF9A89FFDDCABBFFD6C3B4FF947E6AFF9A85
        70FFB4A08EFFE3CDB4FFB3A49AFF233976FF10358BFF364991FF4A4B5CA80E0E
        0D16000000000000000000000000000000000000000000000000000000000000
        000000000000000000000101010133333157575B70C738468BFF2E4B9BFF184D
        AFFF1758BCFF003DAEFF003AA7FF1F4D9AFF848896FFD5C0A8FFCCAC8AFF8D73
        5DFF988372FFD0BFB2FFF6E6DAFFD9C2B0FF94C7D0FFA4CBD8FFC6B2A6FFC1AF
        A0FFC7B7ABFFCEBFB4FFC8B9ABFFB3A091FFAA9787FFC7B8ADFFDED3CAFFF0E6
        DEFFFDF5EFFFFCF3EBFFCDBFB2FFAF9B89FFE0CFC0FFD2BFAFFF967F6BFF9C84
        70FFBAA592FFE6CFB4FFAA9F97FF1E3878FF10368EFF31438AFF3A3A47940909
        0810000000000000000000000000000000000000000000000000000000000202
        02032B2B2A3C676670B6425291F9244296FF2C5CB4FF094CB5FF0045B6FF0039
        A7FF154DA1FF6E7A95FFCCB8A6FFEDD0B4FFC6AC8FFF88715AFFA4907EFFA692
        80FFE4D4C8FFF4E4D9FFFFE3D4FFC0DDD4FF41BBF2FF49A0E9FFB5BBBFFFE0D5
        C8FFDBD0C6FFD7CBC2FFE5DBD3FFECE3DBFFF7EEE8FFFBF4EEFFF7EEE7FFF3E9
        E1FFF3E9DFFFF2E8DFFFC3B3A4FFAF9A88FFE6D4C4FFCFBCACFF967D69FFA189
        74FFBFAA96FFE7CFB2FFA09795FF16357BFF11358CFF283780FF333340830303
        03050000000000000000000000000000000000000000131312185D5D649B5A60
        8CF9172B85FF3A65B6FF1356BAFF0044B4FF0038B0FF0941A1FF567098FFC4B0
        9CFFF3D6BAFFE7CEB6FFBBA18DFF866D57FFA7937FFFBAA796FFBCA999FFECDC
        D0FFEFE0D4FFEFE0D4FFFEE1CFFF9FDAE7FF3279C2FF6D6488FFC4AFA3FFF0EB
        E2FFFAF1ECFFF8F1EBFFF7F1EAFFF5ECE6FFF4EBE3FFF3EAE0FFF2E7DEFFF1E5
        DCFFF2E6DDFFEEE3D8FFB8A797FFAC9683FFEBD9C9FFCEB9A8FF967C67FFA68F
        79FFC3AD9AFFE9D0B2FF908A8EFF0A2C7DFF13368CFF26327BFE2C2B346E0000
        0000000000000000000000000000000000001E21335B263A86FF284BA2FF306A
        C5FF0040B2FF0038B4FF0038A7FF375B9CFFA69E99FFF8D8B2FFF0D9C3FFD8BF
        ABFFB09782FF826953FFA18C76FFD3C3B4FFA4917FFFDACABCFFF4E6DAFFEEDF
        D3FFEEDFD3FFEEDFD3FFF9EADBFFBF7767FF810000FF8A3531FFC3B6ABFFF3ED
        E3FFF8EFE6FFF4EAE2FFF3E9E1FFF2E7E0FFF1E6DCFFF0E4DAFFEEE2D8FFEFE0
        D6FFF3E6DBFFEEE2D8FFAD9A8BFFAA9582FFEFDDCFFFC4B09EFF957C66FFAC93
        7FFFC7B4A0FFE8CFB2FF7B7A86FF03287FFF1F3F91FF242D71F41D1C21520000
        00000000000000000000000000001E2C57852D60BAFF0953BCFF0037B1FF0039
        AEFF2D559CFF8A8D9DFFE6CAAAFFFAE0C4FFDFC8B4FFC6AC97FFA38A73FF8468
        52FFA5907CFFDCCEBFFFAD9B89FFB7A494FFF0E1D5FFF0E1D5FFEEDFD3FFEEDF
        D3FFEEDFD3FFEFDFD3FFF4EBDEFFBB8179FF810908FF8C3F3AFFC8BEB3FFF1EA
        DEFFF4E9E0FFF1E6DDFFF0E5DBFFF0E1D8FFEFE0D4FFECDED4FFECDED2FFECDD
        D3FFF3E7DEFFEFE2D8FFA39280FFAE9A88FFEFDECEFFBEA997FF987F6AFFB09A
        87FFD0BAA9FFE6CDAEFF6D6E83FF082D83FF2E4C98FF1C2264ED2020233E0000
        0000000000000000000019304D60003DB3FF003FB0FF1A4EA2FF82889CFFDCC3
        AAFFFFDFBBFFE7D0B6FFC7B19BFFB09781FF977C66FF8C7059FFB6A291FFDED0
        C2FFB5A493FFA89583FFEEDFD4FFF5E8DDFFEDDFD3FFEEE0D4FFEEDFD3FFEEDF
        D3FFEEDFD3FFF1E5D9FFF0E6D9FFB87971FF810606FF8E4641FFC8BFB2FFECE3
        D7FFF3E7DCFFEFE3D8FFEEE0D5FFEDDFD2FFEBDBD0FFEBDBCFFFECDCD1FFEBDC
        D1FFF6EAE0FFEEE1D5FFA08D7CFFB6A190FFECDACBFFBFA998FF9F8671FFB7A1
        8CFFD5C0ADFFE0CAADFF636982FF113487FF36509EFF22284EC60E0E0D170000
        00000000000000000101001537671A4EABFFB3A79EFFFFDBB3FFE7C9AFFFC6AD
        97FFB1977FFF9F836CFF977A62FFA28873FFD0C0B2FFDDD0C3FFB3A18FFFAD9B
        8AFFEDE0D5FFF7EAE0FFEFE2D6FFEFE1D6FFEFE0D5FFEEE0D4FFEEDFD3FFEEDF
        D3FFEEDFD3FFF4EADDFFE9DBCDFFAE645DFF820A0BFF904C45FFC8BBAEFFECE1
        D5FFF1E4D9FFEEE0D5FFEDDED3FFEBDBCFFFEADACEFFEADACDFFEBDACEFFEADB
        CEFFF6E9DDFFE7D8CDFFA18E7CFFB7A08EFFD2BAA5FFAC937CFFA58D78FFC0AA
        97FFE0CAB5FFDEC8ACFF596183FF0D328CFF2C3D6ACB131313250707070A0000
        000000000000000000000317445C546C9DF7C9AC92FFBD9A7FFFA08169FF9A7B
        62FFA58A74FFCBB8A9FFE9DED3FFD6CABDFFAD9A88FFB6A594FFF1E4DAFFF8EB
        E2FFF1E4DAFFF1E4D9FFF1E3D8FFF0E2D7FFEFE1D6FFEFE0D5FFEEE0D5FFEEE0
        D3FFEFE1D4FFF6EEE1FFDFC6B9FFA14A45FF830D0DFF955650FFCABFB3FFEBE1
        D4FFF0E2D7FFEEDED3FFECDCD0FFEBDACEFFEADACDFFEADACCFFEADACDFFEADA
        CDFFF2E4D8FFDECFC3FF988679FF807777FF968476FFA38467FFB7A18EFFCCB9
        AAFFAA9F9AFF5A617FFF13317DEC2E374B7C0A0A0A0F0F0F0F15040403050000
        0000000000000000000000113A5138517DD79F8570FFAF9078FFC7B4A3FFF6F0
        E7FFF0E8DFFFC3B5A8FFA89685FFBEAE9FFFF3E9DFFFF7ECE2FFF3E7DEFFF2E7
        DDFFF2E6DBFFF1E5DAFFF1E4DAFFF1E3D8FFF0E3D7FFF0E1D6FFEFE1D5FFEFE0
        D5FFF0E0D5FFF8F3E6FFD3ADA3FF983936FF851210FF99635BFFCFC9BBFFEFE1
        D4FFF0E2D7FFECDDD2FFEBDBCFFFEBDACDFFE9DACDFFE9D9CDFFEADACDFFEBDC
        CEFFF3E3D4FFC2C3CEFF146BEAFF2F6CCCFFA08770FFB7946FFF696979EE3045
        7AD7303C58922425273819191922101010170B0B0B1007070709000000000000
        000000000000000000002E476893B5B5BCFFFBF1E6FFFFFBF4FFDFD6CBFFAE9D
        8CFFAC9988FFD2C5B8FFFAF2EAFFF8EFE7FFF5ECE2FFF5EAE1FFF4E8DFFFF4E9
        DEFFF3E8DDFFF2E7DCFFF2E6DCFFF1E3DAFFF0E3D8FFF0E2D7FFF0E2D7FFEFE2
        D5FFEFE0D5FFF9F4E8FFCEA59BFF942F2CFF83110FFF9D6C62FFD7C8B5FFF3E3
        D4FFF0E2D9FFECDED2FFECDCD1FFEBDDD0FFEBDCD0FFEADBCFFFEBDCD0FFEFDF
        D2FFF6E4D5FF83ABE9FF005BFFFF357BD9FFB28E6AFF816F66D82B2A2A3A1D1D
        1D251F1F1E291414141C0E0E0E130707070A0404040600000000000000000000
        00000000000065594B6CFFFFF6FFFFFFFFFFD6CABDFFA28F7DFFB8A898FFEBE4
        DCFFFFFBF4FFFAF1E9FFF7EFE7FFF7EEE5FFF6ECE3FFF5EBE2FFF5EBE1FFF4EA
        E0FFF4E8DFFFF3E8DEFFF1E6DCFFF2E5DBFFF1E4DAFFF1E3D9FFF0E3D8FFF0E2
        D7FFF0E0D6FFFAF5E9FFCDA39BFF9B2922FF800609FF777F9AFFD3CEC0FFFAE2
        CEFFEEE3D9FFEDDFD5FFEDDFD4FFECDED2FFECDDD2FFECDED3FFECDED4FFF6E5
        D4FFFBEBD4FF5894EEFF0055FFFF578BD1FFB7926DFF827263B21F1F1F291A1A
        1A22121212170B0B0B0F05050507000000000000000000000000000000000000
        0000000000004B434055F7EDE6FFDED3CAFFC8B9ACFFFDFAF2FFFFFFFBFFF9F3
        ECFFFAF2EAFFF9F1EAFFFAF0E9FFF8EEE7FFF7EEE5FFF7EDE5FFF6ECE4FFF6EB
        E2FFF5EAE1FFF3E8DFFFF4E9DFFFF3E8DEFFF1E6DCFFF2E5DBFFF2E6DBFFF0DF
        D4FFEFDFD3FFFAF4E8FFBF9B96FF657FA1FF567BABFF686F95FFBBCBD3FFFBE3
        CFFFF0E4DCFFEEE2D8FFEEE1D7FFEEE0D6FFEEE1D6FFEEE1D7FFEBE0D8FFFCED
        D6FFFAEFD9FF4582F3FF005CFFFF7791B8FFB9997AFF68605684111110151010
        10140C0C0C0E0606060801010102000000000000000000000000000000000000
        0000000000003E3C3B4DEBE1D7FBEBE2DAFFF5EFE9FFFEFBF5FFFCF6EFFFFBF5
        EDFFFBF4EDFFFAF3EBFFF9F2EBFFF9F1E9FFF8F0E8FFF8EFE7FFF7EEE5FFF7ED
        E5FFF6EBE3FFF5EBE1FFF5EAE0FFF4EADFFFF4E8DFFFF3E7DEFFF0DFD3FFF0E2
        D6FFF5E8DBFFE4ECE8FF8CD2F0FF90656DFF780313FF4C7DB9FFB7D2E1FFFAE6
        D3FFF1E6DCFFF1E4DBFFF1E4DAFFF0E4DBFFF0E4DBFFF0E5DDFFEFE4DEFFFFF5
        DDFFEDE7E2FF2D77F9FF0761FFFF737E94E13F3934560F0F0F120D0D0D0F0808
        080A060606080404040500000000000000000000000000000000000000000000
        0000000000003F3C3845E0D6CCF2E4DAD1FFF0E8E2FFFFFCF7FFFDF8F2FFFCF6
        F0FFFBF6EFFFFBF4EDFFFAF3ECFFFAF2EBFFF9F1EAFFF9F0E9FFF8EFE8FFF8EE
        E6FFF6EDE4FFF6EDE4FFF5EBE2FFF6EDE3FFF0DED2FFEFDBCFFFF4EBE1FFF1E5
        DBFFF7EFE5FFE7D6CEFFBA746CFFA22E27FF78191DFF4F8CC6FFBFD8E3FFFFEB
        DAFFF6ECE4FFF4ECE3FFF5EBE4FFF4EBE4FFF5EDE5FFF7EEE8FFF7EDE8FFFFF8
        E3FFBDCEE7FF156AEDF6185FC3D621211F2D0B0B0B0E0B0B0B0D070707090505
        0506040404050000000000000000000000000000000000000000000000000000
        00000000000033302D38D3C9C1E4E5DCD3FFEEE8DFFFFFFEF8FFFEF9F3FFFDF8
        F1FFFCF6F0FFFCF5EFFFFBF4EEFFFAF3EDFFFAF3EBFFFAF2EAFFF8F0E8FFF8F0
        E7FFF7EEE7FFF7EFE8FFF5E8DFFFF1DCD1FFF7EFE6FFF1E3D8FFF0E2D7FFF5EB
        E1FFFBF3E7FFE3CABFFFAD6460FF9A2E2AFF722B32FF4D98D2FCC1D7E3FAF6E3
        D3F9F0E9E2FFF5ECE5FFF4EDE6FFF2E9E2FFE5DCD5F4CBC5C1DABDB8B3D3958E
        86AE43413E551516171D0D0D0C100D0D0C0E0A0A0A0B07070709040404050202
        0202000000000000000000000000000000000000000000000000000000000000
        0000000000002624212BBFB7ADCEE5DCD2FFEDE6DDFFFFFFFAFFFEF8F3FFFCF7
        F2FFFCF6F1FFFCF7F1FFFCF6EFFFFCF5EEFFFBF5EDFFFAF3EBFFF9F1EAFFF9F2
        ECFFF8F0E8FFF1DED3FFF6EBE2FFF6EBE2FFEFDACEFFF3E7DDFFF2E2D8FFF5E8
        DFFFFFFEF3FF8F8295F5712537F8A9372CFF613C49F8389CD8E66E7C86A18E84
        7DA294908EAE8F8D88A775726E8C4E4B49601817171D060707080808080A0909
        090B0A0A0A0C0A0A0A0C0909090B0909090A0505050701010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000E0D0C109D958DAAE3D8CDFFEEE5DDFFFFFFFDFFFDFAF5FFFDF9
        F3FFFDF8F3FFFDF8F2FFFDF8F1FFFCF6F0FFFBF4EEFFFCF7F1FFFAF1EAFFF1DC
        D1FFF3E3D9FFFAF6EFFFF3E0D5FFF5E7DFFFF8F0E8FFF1DBD0FFFDF1E7FFE1D2
        C8F359626A8448383C78A84B44FE9F3228FF55435CF52E45637A010101011111
        11150909090B070707080B0B0B0D12121216101010140D0D0D100B0B0B0D0909
        090B0808080A0707070803030305000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000857F7992E1D5CBFFEBE4DCFFFFFFFDFFFFFBF6FFFFFA
        F5FFFEFAF4FFFEF8F3FFFEF8F2FFFFFDF9FFF8EBE3FFF3DFD4FFF6E7DEFFFEFB
        F6FFF6E7DDFFF5E4D9FFFCF9F3FFF3E1D6FFF7ECE4FFF8EFE6FFA7A09AC32C2B
        2A36292C2B3051343481AD3E32FC9A1C19FF384D81DF27343D490D0C0B0E1414
        1419111111150E0E0D110C0C0C100B0B0B0E0A0A0A0B0808080A070707090606
        0607040404040000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000007E786E89E3D4CBFFEAE2D9FFFFFEF9FFFFFDF8FFFFFB
        F6FFFFFBF6FFFEFBF5FFF4E1D7FFF3E1D5FFFCF4EDFFFFFBF5FFF7E9E0FFF4E2
        D6FFFCF8F2FFF4E4D9FFF4E3D9FFFDF7EFFFD9D3CBEB42413F55292A2A33292A
        2A331918181F425476B25BB2DCFF537798FF3C29316E000000000D0D0D100C0C
        0C0F0A0A0A0D0909090B0909090B0808080A0808080905050506020202030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000006A656077E5D7C8FEECE1D7FFFDF9F4FFFFFFFCFFFEF8
        F2FFF6E7DEFFF9EEE5FFFEFAF5FFFCF7F1FFF6E3D9FFF7E9E2FFFDF8F3FFF6E7
        DEFFF4E4DAFFFDF8F1FFFAF2EBFF7E7874951919191F2323232B1C1C1C231616
        161A1B20242A283A4A632F2627551610101E080808090A0A0A0C0909090B0808
        080A070707090808080906060608060606070303030400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000005857496DD8C8C3FDE6DBD0FFFCF9F4FFFFFEFAFFFEFA
        F5FFFDF7F1FFFAEFE7FFF3DDD2FFFDF5F0FFFDFAF5FFF4E3D9FFF6E5DBFFFFFB
        F6FFFFFCF6FFBDB7AFD220201F291818181D1616161B14141418101010140B0A
        0A0D0909090B070707090808080A0A0A0A0C0707070907070709070707080606
        0607060606070606060703030303000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000049464664E7D5C6FCDFD1C5FFFCF8F3FFFFFFFFFFF8EB
        E3FFF6E4DCFFFFFFFAFFFAF1EAFFF6E3DAFFF6E5DCFFFFFEFAFFFFFFFBFFE9DF
        D7F22F2D2B3A0C0C0C0F101010140E0E0E120D0D0C100C0C0C0F0B0B0B0E0A0A
        0A0C0909090C0909090A07070708060606070505050604040405040404050303
        0305020202020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004E494551C8B7A8ECDFD5C8FFFEFFFDFFFFFFFBFFFFFF
        FCFFF9EBE2FFF4E1D6FFFBF1EAFFFFFFFEFFFFFFFFFFEAE4DCF2413E3C4F0404
        04050B0B0B0E0A0A0B0D0909090C0909090B0808080A0909080A080808090606
        0608060606070505050604040405030303040303030403030303000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003835323EB89C8BE1E6C3B6FFFFFFFFFFFFFFFAFFFAED
        E5FFFFFCF7FFFFFFFEFFFFFFFAFFBDB6ADCB2C2A283600000000050505060808
        080A0909080A0707070807070708070707080606060706060607050505060505
        0506040404050404040503030304020202020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000008070708C38C75F2CB7B62FFE5C0B1FFFFFCF7FFFFFFFFFFFFFF
        FBFFF9F2E9FF7B76708E12111116000000000303030405050506040404050303
        0304030303040404040504040405040404050404040504040405040404050404
        0405030303030101010100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001C1B1B1CC38F78F4CB7D65FFC97C62FFDFB09EFFF0E6DFF6A9A197BC2E2B
        2935030302030000000004040405030303040303030403030304030303040303
        0304040404050404040504040405040404050404040503030303010101010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        0101352A2742B6836EE4B97D68E69F7E6EC0322C293D05050506000000000101
        0101040404050303030403030304030303040303030404040405040404050404
        0405040404050303030402020203010101010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000191613201D19172400000000000000000101020205050506040404050404
        0405040404050404040503030304030303040404040503030304020202030101
        0102010101010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010101010404040404040405040404050404
        0405030303040404040502020203020202020101010100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010101010202020403030304030303030101
        0102020202020101010100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010101030303030301010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000}
    end
    object btn3: TcxButton
      Left = 3
      Top = 129
      Width = 100
      Height = 33
      Caption = 'Alcances x '#13#10'Partida'
      TabOrder = 5
      OnClick = btn3Click
      OptionsImage.Glyph.Data = {
        C6160000424DC616000000000000360000002800000026000000260000000100
        2000000000009016000000000000000000000000000000000000000000000000
        00000000000000000000000000000601003E0701005106000047060100470601
        0047060100470601004706010047060100470601004706010047060100470601
        0047060100470601004706010047060100470601004706010047060100470601
        00470601004706010047060100470601004706000047070100510601003E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000270D007A331100A12C0F008C2C10008C2C10008C2C11008C2C10
        008C2C0F008C2C11008C2C10008C2C0F008C2C11008C2C11008C2C0F008C2C10
        008C2C11008C2C0F008C2C10008C2C11008C2C10008C2C10008C2C11008C2C10
        008C2C10008C2C11008C2C0E008C341200A1280E007A00000000000000000000
        000000000000000000000000000000000000000000000000000000000000D465
        1DDEFA8F40FFFFBC7EFFFFA053FFFF9D4EFFFFA257FFFFA052FFFF9D4EFFFFA2
        56FFFFA054FFFF9D4EFFFFA155FFFFA155FFFF9D4EFFFFA053FFFFA256FFFF9E
        4EFFFF9F52FFFFA257FFFF9E4FFFFF9F50FFFFA257FFFF9E50FFFF9D4DFFFFA4
        5AFFFFBB7DFFFA9344FFD46820DE000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C3773FDEF4B98DFFFFEC
        D9FFFFDBBDFFFFD6B4FFFFD2AEFFFFCEA9FFFFCDA6FFFFCFA9FFFFCBA3FFFFCB
        A3FFFFCAA1FFFFD0ABFFFFCDA7FFFFCAA2FFFFCDA5FFFFCAA1FFFFD2AEFFFFD1
        ACFFFFD1ACFFFFC89FFFFFCBA2FFFFCDA7FFFFD7B7FFFFD6B6FFFFEFDCFFF4B8
        89FFC3763CDE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C16F33DEF2A268FFFFCDA8FFFDB580FFFDB3
        7DFFFDBD90FFFDBB8CFFFDBA88FFFDBF92FFFDBB8CFFFDB27CFFFDB785FFFDB9
        87FFFDB37CFFFDB480FFFDB37EFFFDB580FFFDB682FFFDB989FFFDB987FFFDBC
        8DFFFDBB8AFFFDBB8BFFFDBB8AFFFDB885FFFFCEA9FFF2A36AFFC17034DE0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C26F32DEF19F63FFFFC59BFFFCB37EFFFED4B6FFFEC69EFFFEBD
        8FFFFEC399FFFEBF91FFFEB886FFFECBA7FFFED4B7FFFED3B4FFFECCA8FFFED2
        B3FFFED2B4FFFED4B6FFFED4B5FFFEC7A0FFFEB581FFFEC197FFFEC094FFFEC6
        9DFFFEDDC5FFFCBB8DFFFFC79FFFF1A166FFC27033DE00000000000000000000
        000000000000000000000000000000000000000000000000000000000000C26A
        28DEF19C5DFFFFCAA4FFFCB27DFFFEDEC6FFFED0AFFFFEC9A3FFFECEACFFFEC8
        A3FFFEC49BFFFEDABFFFFEDEC8FFFEDFC9FFFEDEC6FFFEDEC8FFFEE3D1FFFEDC
        C3FFFEDAC0FFFED1B2FFFECCA7FFFECBA6FFFED2B3FFFED0AEFFFEDDC3FFFCBB
        8DFFFFC59BFFF19D60FFC26C2CDE000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C26B2CDEF09C5FFFFFCC
        A7FFFAAD76FFFBAC74FFFBB684FFFBB582FFFBB27DFFFCB888FFFBBB8EFFFBB3
        80FFFCB98AFFFCBA8CFFFBB584FFFBB888FFFCB889FFFBB684FFFBB786FFFCB8
        89FFFBB482FFFBB481FFFBB787FFFBB380FFFBAE77FFFBB17CFFFFCDA8FFF09D
        61FFC26D2DDE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C36E2FDEF19D60FFFFCAA4FFFAAE78FFF9A7
        6EFFFAAB73FFF9A970FFF9A66BFFFAAC76FFFAB98BFFF9AF79FFFBBA8CFFFBBA
        8DFFFAB380FFFAB989FFFAB98AFFFABB8EFFFABD8FFFFAB685FFF9A66BFFF9A8
        6FFFFAAB73FFF9A86EFFF9A76DFFFAB17DFFFFD1AFFFF19F64FFC36E2FDE0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C26725DEEE9759FFFFCCA7FFF7AB73FFF7A76CFFF8AA73FFF7A9
        70FFF7A76BFFF8AD76FFF9B382FFFABD91FFFAB98BFFFAB88BFFF9B686FFF9BA
        8DFFF9BB8DFFF8AE77FFFAB98CFFF9B381FFF7A76CFFF7A86EFFF8AA73FFF7A8
        6EFFF7A76DFFF9AD77FFFFC9A3FFEE995CFFC26828DE00000000000000000000
        000000000000000000000000000000000000000000000000000000000000C267
        26DEEE9759FFFECAA7FFF6A972FFF6A86EFFF8AD77FFF7AB74FFF7A970FFF8AD
        79FFF7B483FFF8BA8DFFF8B88AFFF8B98BFFF7B585FFF8B98BFFF9B98CFFF7B0
        7CFFF8B98CFFF8B584FFF7A970FFF7AA72FFF8AC76FFF7AB74FFF6A86FFFF7AC
        75FFFECAA5FFEE995CFFC26828DE000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C36A2ADEEE995CFFFDC6
        A0FFF7B585FFFAC7A3FFFAC299FFF9C6A1FFFAC197FFFAC198FFF9C39CFFF9C2
        9CFFFAC094FFF9C39CFFFABF94FFFABD92FFFABE92FFF9C49DFFFAC299FFF9CC
        ABFFF9C59FFFFAC095FFFAC29AFFF9CAA7FFFAC8A4FFF7B381FFFCCDACFFEE9B
        5FFFC36A2ADE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C26522DEED9555FFFCC59EFFF8BA8CFFF8BA
        8DFFF29C5DFFF4A165FFF39E60FFF4A165FFF4A266FFF49F62FFF3A167FFF4A2
        67FFF39F61FFF4A165FFF4A268FFF49F62FFF4A065FFF3A469FFF49F61FFF49E
        62FFF3A369FFF29959FFF9B688FFF9BB8FFFFCC7A0FFED9758FFC26624DE0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C3621EDEEC9252FFFBC7A2FFF7B180FFFCC59FFFF8BB90FFF9BB
        90FFF8BD94FFF8C39DFFF9BD93FFF9BB8FFFF9BD92FFF9BD92FFF8BA8FFFF8B8
        8CFFF9BC91FFF9BA8EFFF8BB90FFF8BB90FFF8BE95FFF8BD94FFF8BA8FFFF7BC
        91FFFBCCAAFFF7B587FFFBC69FFFEC9455FFC36320DE00000000000000000000
        000000000000000000000000000000000000000000000000000000000000C365
        22DEEC9557FFF9CFB0FFF6B586FFF9C199FFF5B384FFF6B486FFF5B587FFF6B9
        8EFFF6B588FFF5B384FFF6B588FFF6B486FFF6B98DFFFAD2B7FFF7B98EFFF6B9
        8DFFF7B98DFFF7BA8EFFF6BA90FFF7BA8FFFF7B98DFFF6B88BFFFACAA9FFF7B8
        8DFFFACAA8FFED985BFFC46825DE000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C3621EDEEB9151FFF9C1
        99FFF5B586FFF5B586FFEF995BFFF09D62FFF09B5EFFF19E63FFF09E63FFF09B
        5FFFF19F64FFF09D61FFF1A067FFF9CBAAFFF7C7A4FFF6C09AFFF7BA8FFFF7BD
        93FFF7BA8FFFF7BB92FFF7BE94FFF7B88BFFF9C9A6FFF5B88CFFF8CBA9FFEB94
        55FFC3621EDE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C36019DEEA8E4CFFF8BD95FFF4B181FFF5B4
        86FFEE9A5FFFEF9E65FFEF9C62FFF0A068FFEF9F66FFEF9C62FFF09F68FFEE96
        59FFF09F67FFF7C39EFFEF9C62FFEF9B60FFEF9D63FFF09F67FFEF9C61FFEF9C
        62FFF09F67FFED9557FFF6B990FFF5B98FFFF7C39DFFEA9050FFC3611ADE0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C4641EDEEA9150FFF7BF97FFF4B283FFF4B587FFEE9C62FFEFA0
        68FFEE9F65FFEFA16AFFEFA169FFEE9E63FFEF9F67FFF4C09BFFF3B88CFFF5C1
        9BFFEE9D64FFEF9E65FFEF9E65FFEEA068FFEF9D63FFEF9D62FFEE9F67FFED98
        5AFFF4C099FFF4BC94FFF7BE94FFEB9454FFC56620DE00000000000000000000
        000000000000000000000000000000000000000000000000000000000000C461
        1BDEE98D4DFFF6BD95FFF3B284FFF4B58AFFEC995EFFED9D65FFED9B62FFEE9F
        67FFED9E66FFED9A61FFEC975BFFF5CBADFFF7D6BEFFF8D8BFFFF0AE7FFFEEA0
        69FFF1B285FFF2BB94FFF2B88FFFF3BF9AFFF5C8A7FFEC975CFFF3B88FFFF3B8
        8EFFF6C4A1FFE99051FFC4611BDE000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C35C13DEE88946FFF5BA
        90FFF1AF81FFF2B488FFEA9558FFEC995FFFEB975BFFEC9B62FFEC9A60FFEC97
        5BFFEB995FFFEC9C63FFEFA470FFF5C4A1FFEEA774FFED9D66FFEEA875FFEFAE
        7FFFF0AF83FFF0AD7FFFEEAA7AFFEA9152FFF3B68CFFF1B58BFFF4C29EFFE88C
        4AFFC35C13DE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C55F18DEE88C4BFFF4BE97FFF1B68BFFF1B6
        8BFFE88E4DFFE99558FFE99355FFEA985CFFE99558FFE99255FFEA975CFFE894
        56FFEA9A61FFF4C3A0FFE99354FFE99457FFEDA775FFEDAD7DFFEFB286FFEEAB
        7CFFECA16CFFE78A47FFF2B488FFF3B88DFFF4BC94FFE88F4EFFC5611ADE0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C55F16DEE88B48FFF4BD95FFEEAB7AFFF6C8A7FFF4BD95FFF4BB
        91FFF3B98FFFF4BA90FFF3BF9AFFF3BB92FFF5BB92FFF4BB92FFF4BC95FFF7C7
        A5FFF5BB91FFF3BC95FFF2BD97FFF4B88FFFF1B88EFFF2B98FFFF5B88DFFF3BC
        95FFF6CFB2FFF0B388FFF3C4A3FFE88D4DFFC55F16DE00000000000000000000
        000000000000000000000000000000000000000000000000000000000000C459
        0DDEE68541FFF2B992FFEEA775FFF2B58AFFEEA978FFEEA978FFEDA776FFEEA9
        78FFEEAA7AFFECA16DFFEDA572FFEDA573FFECA16DFFEB9F6AFFEDA674FFECA4
        70FFEDA776FFEDA674FFECA572FFECA572FFEDA573FFEAA06CFFF3BB94FFF0AF
        82FFF2C29FFFE68845FFC4590DDE000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C65B11DEE68745FFF1BE
        99FFEFB084FFEDA775FFE9985FFFE99C64FFE99B63FFE99C65FFE8985FFFE386
        43FFE48C4CFFE48C4DFFE48948FFE48D4DFFE48E50FFE48846FFE48947FFE48E
        50FFE48947FFE48846FFE48E50FFE17F3AFFF0AD7DFFF1B489FFF1BB94FFE78A
        48FFC65C13DE0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C55C11DEE68845FFF1BA96FFECA674FFF3C3
        A0FFEFB48AFFF0B58CFFF0B68DFFEFB88FFFF0B285FFF1B387FFF0B991FFF1B8
        8FFFF0B285FFF1B489FFF1B58AFFF1B78DFFF0BC98FFF0B58BFFF1B488FFF0BA
        93FFF0B78EFFF0B58CFFF4C29DFFEDAB7CFFF0BE9CFFE68A49FFC65D12DE0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C65408DEE5823DFFF1C1A1FFE6945AFFEAA575FFEDAD80FFECAA
        7BFFECAB7EFFEDAD81FFEDA878FFECA777FFEDAC80FFEDAC7EFFECA675FFEDA9
        7AFFEDA97BFFECAA7CFFECAF85FFEDAA7BFFECA879FFEDAD81FFEEAC7EFFEEAD
        82FFEBA271FFE89860FFF2C09EFFE58441FFC6560ADE00000000000000000000
        000000000000000000000000000000000000000000000000000000000000C657
        0ADEE4833FFFF0C4A5FFE5945BFFE08342FFEAAB7FFFE4955CFFE18545FFE38C
        4FFFE28C4FFFE1884AFFE38B4FFFE38C4FFFE1884AFFE28B4FFFE38D51FFE188
        49FFE2894AFFE38D51FFE2894BFFE3884AFFE38C51FFE1894AFFE48A4BFFE595
        5DFFECB894FFE1823FFFC6580ADE000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C65A0EDEE58441FFF1BD
        99FFE4955DFFE18B4EFFEDB994FFEBB38BFFE28E51FFE4945CFFE28F54FFE089
        4AFFE28C50FFE38E52FFE28B4EFFE28D51FFE38E54FFE1894BFFE38D50FFE391
        56FFDF8F56FFCF8450FFBD7B4EFFBE7848FFBB7341FFBF7E50FFDCAF8DFFE081
        40FFBD5A16DB0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C65406DEE37E39FFEFB892FFE28F56FFE08B
        4FFFE18C51FFE8A679FFE28F56FFE28E54FFE6A170FFE9AB80FFE9AC82FFE7A6
        78FFE6A070FFE8A577FFE8A779FFE9AA7FFFE7A374FFE8A170FFD48249FFBE74
        42FFCF7F4AFFD78D58FFD29260FFDA9968FFE2A072FFA15527C33F1E0C500000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C65406DEE37E3AFFEFBC99FFE29056FFE08A4FFFE18D52FFE396
        61FFE6A070FFE18C4FFFE59E6BFFE6A475FFE8A77AFFE6A271FFE69D6BFFE7A1
        72FFE7A272FFE6A577FFE69F6EFFE89E6BFFD68349FFBF7644FFF4A469FFFFBD
        82FFFFC28BFFF2A470FFA3582EC4120904170000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000C756
        0ADEE3823EFFEEC4A5FFE2935BFFE08D52FFE29258FFE09056FFE19159FFE291
        58FFE6A575FFE5A271FFE9B086FFE8A97BFFE8AB80FFEAAF85FFE6A373FFE8AB
        80FFE8A97BFFE79E6AFFDB884EFFB57344FFF2AD77FFFFB881FFE29562FFA058
        2CC8120904170000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C65000DEDF782EFFEBBB
        97FFDD8749FFDB8040FFDC8546FFDB8241FFDA7E3DFFDC8546FFDC8546FFDB81
        41FFDD8445FFDC8546FFDB8142FFDC8445FFDD8546FFDB8142FFDC8343FFDF87
        48FFD47B3CFFB06834FFEFAF7BFFEAA06DFFA7592CD00F080413000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C85B0FDEEA9459FFF3C6A6FFECAF84FFEBAD
        81FFEBB38AFFECB289FFEBAE83FFECB188FFECAE82FFEBAD81FFEBB48CFFECB2
        88FFEBAC7FFFECB188FFECB48DFFEBAE83FFECB38CFFEDB186FFDDA780FFCE9D
        77FFE69A68FFAE5F2FD4130A0418000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C95B11DEE88E50FFF0C09CFFE8A473FFE7A16FFFE8A677FFE7A5
        75FFE6A271FFE8A576FFE8A371FFE6A16FFFE7A778FFE8A675FFE7A16EFFE7A6
        75FFE7A879FFE6A270FFE7A677FFE8A575FFDB9B6DFFE19966FFAB5F31CD160B
        051C000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000AE40
        04C1E55D09FFCB631BDEC7570ADEC65507DEC85A0FDEC7560ADEC65406DEC75A
        0EDEC7580CDEC65406DEC8590CDEC8590DDEC65406DEC7580BDEC8590EDEC654
        06DEC75609DEC75B10DECE5402E6A34913BF1A0E072100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
    end
    object btn7: TcxButton
      Left = 3
      Top = 161
      Width = 100
      Height = 33
      Caption = 'Personal y '#13#10'Equipo'
      TabOrder = 6
      OnClick = btn7Click
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        00000000000000000000000000020000000A0000000A0000000A0000000A0000
        000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
        000A0000000A0000000A0000000A0000000A0000000A0000000A000000070000
        0002000000050000000000000000000000000000000000000000000000000000
        00000000000000000001010101500000003A0000003B0000003B0000003B0000
        003B0000003B0000003B0000003B0000003B0000003B0000003B0000003B0000
        003B0000003B0000003B0000003B0000003B0000003B00000037000000390101
        269A090D64C51014559501020F28000000000000000000000000000000000000
        0000000000000F0F0F802A2A2AEF00000020000000030000000E0000000D0000
        000D0000000D0000000D0000000D0000000D0000000D0000000D0000000D0000
        000D0000000D0000000D0000000D0000000D000000080000000707083AAD1015
        9BFF131DB5FF586DF0FF95A8E8F8101228560000000000000000000000000000
        00000B0B0B8D484848FF4D4D4DFF1E1E1EC50000001400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000106073DA021269FFF080C
        98FF1F2EBDFF697FECFFBBD3FFFFABBFECF90303163700000000000000000000
        0082141414FF2F2F2FFF464646FF4C4C4CFF1A1A1AC60000000F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000060640A0222799FF070B93FF101B
        AFFF4559DEFF5E71E3FF7D93F1FF758AFAFF1E246FAB01011232000000100000
        0081020202F0212121FF2B2B2BFF464646FF4C4C4CFF1C1C1CC20000000E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000006073E9E22279AFF080B93FF0D18ADFF3F53
        DEFF4454D7FF3747CBFF394BD3FF2331C5FF121A91DE03042C66000000000000
        000000000039090909E9101010FF2D2D2DFF444444FF4E4E4EFF1C1C1CC90000
        001A000000000000000000000000000000000000000000000000000000000000
        0000000000000000010406073D9F20269AFF060992FF0D18ADFF3E52DEFF404F
        D6FF2B3BC7FF2839C9FF2530BCFF0C1098FF020355B800011840000000000000
        00000000000000000030010101EF1A1A1AFF2C2C2CFF454545FF4C4C4CFF1D1D
        1DCA0000000D0000000000000000000000000000000000000000000000000000
        00000000000005063FA523299AFF070A92FF0C17ADFF3B4FDDFF4151D7FF2938
        C6FF2233C8FF232DB8FF101496FF00005FE500000B2200000000000000000000
        000000000000000000000000003D0E0E0EF1111111FF2F2F2FFF464646FF4E4E
        4EFF191919BD0000000B00000000000000000000000000000000000000000000
        000005073B9921279AFF080B92FF0D17ACFF3D52DEFF4252D8FF2A3AC7FF2233
        C8FF232DB8FF111494FF00005EE800000F2F0000000000000000000000000000
        00000000000000000000000000000000003D000000EA171717FF2D2D2DFF4343
        43FF4B4B4BFF1C1C1CC800000018000000000000000000000000000001040506
        3C9C212699FF060A93FF0D17ACFF3E51DEFF3F4ED5FF2939C7FF2232C6FF242D
        B8FF111495FF000055D900000B23000000000000000000000000000000000000
        0000000000000000000000000000000000000000002D0D0D0DEC131313FF2D2D
        2DFF464646FF515151FF1F1F1FCD000000100000000000000000000036A10F12
        7BFF070B93FF0D19AEFF3D51DEFF404FD6FF2A3AC8FF2232C7FF242DB8FF0F12
        93FF00005AE100000A2000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000041010101F31313
        13FF2F2F2FFF454545FF4A4A4AFF171717B90000000900000000040761BA0A11
        ABFF111DB5FF3A4EDBFF4252D9FF2A39C7FF2132C7FF232DB8FF121695FF0000
        60E9000010310000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000003A0C0C
        0CE81A1A1AFF2B2B2BFF474747FF4D4D4CFF181816AC01010F2B06083D773349
        EBFF4E6BEAFF4D62DEFF2B3AC7FF2232C7FF232DB7FF121596FF000059DC0001
        0825000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        002F010101E9101010FF2A2A29FF484848FF25265CFC171E9DFA414FB9E78DAC
        F7FF9BBBFAFF6181EDFF273ACFFF202AB6FF0E1291FF000059DF000009200000
        000620201E590000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000041060606F621211EFF2F2D3FFF212BB3FF0015B1FF5673EAFFC5D1
        F6FFAFC9FBFF4D6BF4FF1824C8FF0A0C88FF000059E500001030000000000000
        00004A47459E1211104B00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000300202027A613300DA8C5E56FF6D83EBFF3C82FCFF6B93
        F6FF6477D8F60F155E9C090E7CCF000154D700000B2600000000000000000000
        00002B2A29767C7168DE01010105000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000703001777480FDCC2BFBBFF8AA8F9FF0D30
        CFFF1724B7FF03042654000000000000030A0000000000000000000000000000
        00002726266DBBAEA3FF221D1A72000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000014141434ADB2B9EF967347F2906351FF2C3C
        D6FF372D63FF1009073B00000000000000000000000000000000000000000000
        0000585756A2C4B9B1FF63564CD2000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001212122DABACACF13F4041860C0502298C4600EC7E4C
        37FFD0800CFFC78E19E31413124900000000000000000000000000000000090A
        0A35C9C5C2F4B4A9A1FFA59B93F60606061A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000014141432ACACACF23D3D3D830000000000000000170900479A4F
        00F8B9731BFFECDFC7FFB4ACA7FD46423EA40E0E0D45090808322D2D2D74CDCA
        C8F1BFB5AEFFC8C0B9FFDCDAD6FB0C0C0C230000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001919193DBBBBBBFD3E3E3E84000000000000000000000000000000001F10
        0360D6CBB9FFBDB8B6FFAEA299FFBAAFA6FFC0B6AFFFC8C1BBFFD1C9C2FFB5AB
        A3FFC5BDB7FFF3F0EEFFC5C5C5DF010101070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001010
        1029ACACACF34343438C00000000000000000000000000000000000000000000
        0000635D5AC0B4A89FFFB0A59CFFB0A59CFFAFA49BFFAEA299FFAEA39AFFC6BE
        B7FFEAE7E5FFFFFFFFFF41414179000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000013131331A8A8
        A8F0414141880000000000000000000000000000000000000000000000000000
        00000C0C0B40B2A89FFFB0A59CFFB0A59CFFAFA49BFFB1A69DFFC8C0BAFFECE8
        E6FFFFFFFFFF5C5C5B9900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000018181839B8B8B8FC4242
        4289000000000000000000000000000000000000000000000000000000000000
        000000000000716C67CAB9AEA5FFAFA49BFFB2A79EFFC8C0B9FFEDEAE8FFFFFF
        FFFF5F5F5E9A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000E0E0E2AB8B8B8F93A3A3A810000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000004D4C4A9EC4BAB2FFAFA49CFFC9C1BBFFEBE8E6FFFFFFFFFF6868
        67A1000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000D0D0D4CA1A1A1EE4747478D000000000000
        0000000000000000000000000000000000000000000000000000000000000505
        05260707072DA2A19FDABAB0A7FFC6BEB8FFECE9E7FFFFFFFFFF6363629E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000038383882E6E6E6FF4A4A4AA200000000000000000000
        000000000000000000000000000000000000000000000000000010101146C6C3
        C0F0C0BAB5F6C6BDB7FFC6BEB7FFEFECEAFFFFFFFFFF6464649F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000016161652FFFFFFFF868686C60101011500000000000000000000
        000000000000000000000000000000000000000000000D0D0D40DCD9D6F9BDB3
        AAFFB0A59CFFC7BFB8FFB6B1AFE1DFDEDEEE5656569200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000033333368666666AE0101010D0000000000000000000000000000
        000000000000000000000000000000000000000000000B0B0A3AAEA39AFEB0A5
        9CFFC7BFB8FFF3EFEDFF7B7A79AD050505130101010900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000024211E76C3B9
        B2FFF2EFECFFFFFFFFFF42424276000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002B2A
        2A5DD8D7D6EA3232326000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000151515300202020800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  object ds_ordenesdetrabajo: TDataSource
    AutoEdit = False
    DataSet = ordenesdetrabajo
    OnStateChange = ds_ordenesdetrabajoStateChange
    Left = 344
  end
  object ds_reportediario: TDataSource
    AutoEdit = False
    DataSet = ReporteDiario
    Left = 392
    Top = 83
  end
  object ds_turnos: TDataSource
    DataSet = Turnos
    Left = 725
    Top = 123
  end
  object PopupPrincipal: TPopupMenu
    Images = frmBarra1.IconosBarra
    Left = 153
    Top = 264
    object Insertar1: TMenuItem
      Tag = 1
      Caption = '&Insertar'
      ImageIndex = 0
      ShortCut = 16457
      OnClick = Insertar1Click
    end
    object Editar1: TMenuItem
      Tag = 2
      Caption = '&Editar'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16453
      OnClick = Editar1Click
    end
    object bkReporte: TMenuItem
      Tag = 1
      Caption = 'Copiar Reporte'
      ImageIndex = 11
      OnClick = bkReporteClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Registrar1: TMenuItem
      Caption = '&Registrar'
      Enabled = False
      ImageIndex = 2
      ShortCut = 121
      OnClick = Registrar1Click
    end
    object Can1: TMenuItem
      Caption = '&Cancelar'
      Enabled = False
      ImageIndex = 3
      ShortCut = 123
      OnClick = Can1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 6
      ShortCut = 116
      OnClick = Refresh1Click
    end
    object Eliminar1: TMenuItem
      Tag = 3
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16452
      OnClick = Eliminar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Imprimir1: TMenuItem
      Tag = 4
      Caption = 'Imprimir'
      ImageIndex = 5
      ShortCut = 16464
      OnClick = Imprimir1Click
    end
    object ImprimirReportedeVisita1: TMenuItem
      Caption = 'Imprimir Reporte de Visita de Obra '
      ImageIndex = 5
      Visible = False
      OnClick = ImprimirReportedeVisita1Click
    end
    object ImprimirPersonalEqyHerramienta1: TMenuItem
      Tag = 4
      Caption = 'Imprimir Personal  Equipo y Herramienta'
      ImageIndex = 5
      OnClick = ImprimirPersonalEqyHerramienta1Click
    end
    object ConsolidadodePersonal: TMenuItem
      Tag = 4
      Caption = 'Consolidado de Personal/Equipos'
      ImageIndex = 10
      OnClick = ConsolidadodePersonalClick
    end
    object impAnalisis: TMenuItem
      Tag = 4
      Caption = 'Analisis Financiero'
      ImageIndex = 12
      OnClick = impAnalisisClick
    end
    object HistorialdeReprogramaciones1: TMenuItem
      Tag = 4
      Caption = 'Historial de Reprogramaciones'
      ImageIndex = 16
      OnClick = HistorialdeReprogramaciones1Click
    end
    object ReporteDiarioConsolidado1: TMenuItem
      Caption = 'Reporte Diario Consolidado'
      ImageIndex = 14
      object SoloFrente1: TMenuItem
        Tag = 4
        Caption = 'Solo Frente'
        OnClick = SoloFrente1Click
      end
      object Plataforma1: TMenuItem
        Tag = 4
        Caption = 'Plataforma'
        OnClick = Plataforma1Click
      end
      object ierra1: TMenuItem
        Tag = 4
        Caption = 'Tierra'
        OnClick = ierra1Click
      end
      object ierraPlataforma1: TMenuItem
        Tag = 4
        Caption = 'Tierra/Plataforma'
        OnClick = ierraPlataforma1Click
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Tag = 4
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object Paste1: TMenuItem
      Tag = 1
      Caption = 'Pegar'
      ImageIndex = 12
      ShortCut = 16470
    end
    object N4: TMenuItem
      Caption = '-'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      ImageIndex = 7
      ShortCut = 16472
      OnClick = Salir1Click
    end
  end
  object rDiario: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 41293.668521087970000000
    ReportOptions.Picture.Data = {
      0A544A504547496D616765C88E0000FFD8FFE000104A4649460001010100C800
      C80000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC00011080124042103012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
      A28A2800A2909C570DE23F8EFF000D7C1DACDC691AF7C41F0B689AB5BEDF3AC7
      51D66DE09E2DCA197723B861956523239041EF401DD515574BD56CB5CD36D351
      D36EE0D434FBB8927B7BAB5904914D1B00CAE8CA4865208208E08356A800A28A
      2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
      2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2B2
      FC4BE28D1BC19A35C6AFE20D5AC743D26DF6F9D7DA8DC25BC116E60ABB9DC851
      966503279240EF587E10F8C7E01F883A949A7785FC6DE1DF11EA11C4677B5D27
      5582EA558C10A5CAA3921416519E9961EB401D85145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      145140051451400514514005145140051451401F9D7FF055CFDA635DF05C1A4F
      C28F0E5DCFA62EB7A7B5FEB775128569ED5DDA38EDD240D90AC639BCC1B46E5D
      8BB8AB48A7F2CC924E49C9F7AFA63FE0A4673FB67FC42FFB87FF00E9BEDABE67
      ACDEE6C9687B9FECA7FB55F8AFF66CF881A4DD5A6AD7D2F8364BB0758D043196
      09E1728B3491C2CEAA27088BB24CA9CA2AB128594FEF62B06504742335FCD057
      F429FB3173FB36FC29FF00B1534AFF00D248A9C499A3D328A28AB330A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A6C876A311D403401F057EDBDFF00
      051EFF008545AD5CF80FE183596A5E29B7F321D5B599D3CE834D936951144B9D
      AF708C43316DC8857632BB1758FE41F0D7FC14E7F680D0B5AB6BEBDF14597886
      D62DDBF4DD4749B64826CA903718123906090C36B8E40CE4641F9A3C57E23D47
      C63E28D635ED5EE3ED7AB6A97935EDE5C6C54F36691CBBB6D501465989C0000C
      F00565D67766CA28FE803F663FDA6FC2DFB50780135FD01FEC7A9DB6D8B56D12
      69034FA7CC41C027037C6D8629200030078565745F60AFC96FF823DF89351B5F
      8DDE32D022B8DBA4DF787CDF5C5BEC53BE682E22489B76370DAB7130C0201DFC
      83818FD69AB4EE66D598514514C90A28A2800A28A2800A28A2800A28A2800A28
      A2800AA9AAEAB67A1E9779A96A175058D859C2F71717573208E2863452CCEECC
      4055001249380055BAF33FDA77FE4DB7E2B7FD8A9AAFFE924B401F883FB48FED
      17E25FDA4BE23EA3E24D6E79ED74E6998E9DA18BB926B6D3A3DA89B620C70198
      4685D95543BE5B68E00F33D2B55BDD0B53B4D474DBB9EC350B49527B7BAB590C
      72C32290CAE8CA4156040208E4115568AC8E83F71FF604FDA6F51FDA5FE0DCD7
      BE237B2FF84B343BBFECFBF36B2287B94F2D5A2BA78401E5799975C0F94B4521
      5DA3E45FA66BF33FFE08C9FF003577FEE13FFB795FA615A2D8C1E8C28A28A620
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A4240193C0A005A2B0BC21E3BF0D7C41D365D43C2DE21D2FC496114A6DE4B
      AD26F63BA8924003142D1B101806538EB861EB5BB40051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      140051451401F86FFF000523FF0093CFF885FF0070FF00FD37DB57CCF5F4C7FC
      148FFE4F3FE217FDC3FF00F4DF6D5F33D64F7375B057F429FB317FC9B6FC29FF
      00B1534AFF00D248ABF9EBAFE853F662FF00936DF853FF0062A695FF00A49155
      4499EC7A65145156641457CF3FB41FEDD9F0AFF671D68687AFDF5EEB1E235F2D
      A6D1B4381669EDE3756657959D9234E02FC85F7E2446DBB5B7561FC14FF828DF
      C1FF008DBE2C83C356975AA786759BC9520B083C416C90ADEC8C1B091C91BC88
      1B2A000E54B33A2A6E2714AE3B33EA2A28A42428C9381EF4C42D15F3D7C44FDB
      F3E04FC37F3E2BAF1ED96B57A968D7515AF87D5B50F3F1BB11ACB1030AC8C548
      0AEEB8CA96DAA41AF20FF87BE7C1DFFA16FC6DFF0080369FFC954AE87667DC94
      57CA9F0F3FE0A69F027C79E4C575AF5EF846F67BB5B58AD7C4162D1EECEDC48D
      2C5E6451C796C16775C6D62D85C13F50E97AAD96B9A6DA6A3A6DDC1A869F7712
      4F6F756B209229A360195D19490CA410411C106985AC5AA28A28105325FF0054
      FF00434E2715C278A3E3BFC35F07EAB75A3EBDF107C2DA2EAD6E079D61A8EB36
      F04F16E50CBB91DC30CAB29191C820F7A00FE7765FF5AFF534DA74873231F734
      DAC8E83EE4FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAFC66FF00825978
      EFC35F0F7F680D7F51F14F8834BF0DE9F2F86A7812EB56BC8ED62790DD5AB040
      D2100B10AC71D70A7D2BF537FE1A77E0F1FF009AADE09FFC286D3FF8E55AD8CA
      5B9E994520218641C8F6A5AA2028A28A0028A4240192703DEBC5FE23FED9BF05
      7E146A434EF11FC42D2E2BF12CB0496B61E65FCB6F24442C8932DBAB9898138C
      3ED2486C6769C007B4D15F126A9FF0571F83161A95DDAC1A478BF5282195E34B
      CB6B0B7114EA090244124EAE1580C8DCAAD83C8078A34BFF0082B8FC18BFD4AD
      2D67D23C5FA6C134A91BDE5CD85B98A0524032388E7672AA0E4ED566C0E013C5
      2BA2B959F6DD15E2DF0E3F6CDF82BF15F523A77873E216972DF9962823B5BFF3
      2C25B892525634856E150CAC48C6137104AE71B867DA0104641C8F6A648B4514
      50015E67FB4EFF00C9B6FC56FF00B15355FF00D2496BD32BCCFF0069DFF936DF
      8ADFF62A6ABFFA492D035B9FCF5D1451591B9FA61FF0464FF9ABBFF709FF00DB
      CAFD30AFCCFF00F82327FCD5DFFB84FF00EDE57E98568B63196E14514532428A
      28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A4240193C
      0AF873F6A9FF00829EF85BE167DA3C3FF0CFEC5E36F14AF92C753DE26D1E056C
      B3AF991C81A69028518421419397DC8D195B0D2B9F50FC6BF8F9E09FD9FBC273
      EBBE32D6A0B05589E4B5D3D6453797ECA5418EDE224191B2E80FF0AEE058AAE5
      87E4B7ED5DFF00050EF1B7C7FB8BED07C3D2CFE0FF0001F9B2A4769692B4779A
      840C9E5EDBC756219482E4C4B84FDE61BCC28AF5F38FC44F89BE2AF8B3E259F5
      FF00186BD7DE20D5A5DC3ED17B297F2D0BB3F971AFDD8E30CEC446802AEE3802
      B99A86EE6AA363D0BE0A7C7CF1B7ECFDE2C835EF06EB53D83ACA925D69ED231B
      3BF550C04771102048B877033F32EE254AB6187EB4FECA3FF050EF04FC7FB7B1
      D07C432C1E0FF1E795124969772AC767A84ECFE5EDB37662598928444D87FDE6
      17CC08CF5F8A940241C8E0D09D81A4CFE9828AFC83FD95BFE0A7BE29F859F67F
      0FFC4CFB6F8DBC2CBE730D4F799B58819B0C8BE6492059A30C1861C86024E1F6
      A2C67F557E1DFC4DF0AFC59F0D41AFF83F5EB1F106932ED1F68B2943F96E515F
      CB917EF47205752637019770C81569DCC9A68E9E8A28A620A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803
      F0DFFE0A47FF00279FF10BFEE1FF00FA6FB6AF99EBE98FF8291FFC9E7FC42FFB
      87FF00E9BEDABE67AC9EE6EB60AFE853F662FF00936DF853FF0062A695FF00A4
      9157F3D75FD0A7ECC5FF0026DBF0A7FEC54D2BFF004922AA8933D8F4CAE63E28
      78CFFE15C7C35F1678B05A7F681D0B49BAD4FEC9E6797E7F930B49B37E0EDCED
      C670719CE0D74F5E67FB4EFF00C9B6FC56FF00B15355FF00D2496ACC8FE7FBC5
      3E25D47C67E26D5BC41AC5C7DAF56D56EE5BEBCB8D8A9E6CD239776DAA028CB3
      13800019E00ACC048391C1A28AC8E83F687F657FDAC74DB4FD86ADFE2378F75F
      BDD6EE7C2FE769FACDCF90D25D3CCB305B68B2401248D1CD6A3CC2704BE5DC10
      E47E7B7ED7FF00B6FF008ABF697F12DDD969F757DE1EF87B17EE6D341498A7DA
      903AB09AEC29DB2485911829CAC7B405C9DCEFE07278E75E93C110783CEA738F
      0CC3A849AAAE98A42C46E9E3489A5603EF3048D546ECED05B6E37B66D7C3CF86
      7E2AF8B3E248740F07E837DE21D5A5DA7ECF65117F2D0BAA799237DD8E30CEA0
      C8E42AEE19229DC9492D4E668AFB6B4BFF0082477C67BFD36D2EA7D5FC21A6CF
      344923D9DCDFDC1960620131B98E0642CA4E0ED665C8E091CD7907C78FD87FE2
      CFECF3A6DE6B1E23D120BEF0CDACB142DAF69172B3DB6E900DA4A9DB2A2EE3B3
      73C6ABBF0013B9772B31DD1E095ED3FB347ED61E36FD997C5B697DA25F4F7FE1
      C3296D43C357170C2CEED5828760BC88E6C226D940DC3680772EE46F16A2819F
      D137C17F8D1E15F8F9E00B0F177846FF00ED9A6DCFC92C3200B3DA4C002F04C8
      09D922E46464820AB29656563DD57E337FC12E3E364BF0DBF6844F0A5D5C430E
      85E338BEC531B8992254BB895DED5C33292CC4992158C32EE6B81F78AA8AFD99
      AD13B98B5667C23FF0564F8D9AF7C3DF85FE1AF06E87713E9EBE2E96E9750BDB
      7982335A40B187B6236E76C86742C432FCB19421964615F91A492724E4FBD7EF
      27ED97FB2CD9FED53F0B97468EEA0D2FC4DA64A6F347D4A68832AC9B4AB43236
      D2EB0C831BB67219236C3ECDA7F317C4DFF04C7F8FFA0EB3736567E17B2F105A
      C5B76EA5A76AD6C904D9504ED13BC720C1254EE41CA9C646099699716AC7CAB4
      50460907A8A2A4B0A2BB9F841F04BC69F1E7C4B73A0781746FEDCD5ADAD1AFA5
      B7FB4C36FB6157442DBA57553F3488300E79E9C1AF68D2FF00E09A3FB42EA1A9
      5A5ACFE0A834D86695237BCB9D62CCC502920191C472B39551C9DAACD81C0278
      A2C2BA3DCFFE090FF163C4B73F10BC4BF0FEEB529EF7C329A236A56B6B733C92
      2D9491DCA2910296D91AB9BA919C05CB32A1C8C1CFEA657C95FB0CFEC3317ECB
      56FA8F887C43A8C1AC78F35289ACE496C247FB1DA5A6F56F2E3DC14BB3944667
      6518C0550006693EB5AD16C652D58578FF00ED37FB4E7857F65FF00BEBFAFBFD
      B353B9DD1695A2432059F509801900E0EC8D72A5E420850470CCC88DD37C71F8
      B1A77C0DF84DE26F1CEA89E75B68F68664B7CB2FDA26621218772AB15DF2B226
      EDA42EEC9E01AFC12F8D1F1A3C55F1F3C7F7FE2EF175FF00DB352B9F92286305
      60B4841252085093B235C9C0C92496662CCCCC46EC11573D0FF68FFDB53E247E
      D1FA9DFC3A9EAF3E8DE109652D6FE18D3E5D96D1C7942AB33285370C0C68DBA4
      C80FB8A2A03B4781939A2BD5BF677FD99FC6DFB4DF8B27D0FC1F6B0AA5A45E75
      EEA97ECD1D9D9A9076091D558EE720855552C70C71B55D973DCD763CA68AFD5F
      F07FFC11DFC0565A6489E29F1CF88758D40CA5927D26282C2258F030A6391672
      5B3B8EEDC06081B4632733E23FFC11DFC3573A687F0178E754D3F508A294983C
      451477515CC981E52F9912C6615C8219B6C870C085F970CECC5CC8FCB30715EF
      9FB387EDA9F123F670D4EC21D33579F59F0845286B8F0C6A12EFB6923CB96585
      9831B7626476DD1E017DA5D5C0DA78FF008EFF00B3978EFF00671F1245A478DB
      48FB17DABCC6B1BFB7904B6B7B1A3ED2F1483FE0276305750E8595770CF99D2D
      87B9FD007ECC9FB4E7857F6A0F00A6BFA03FD8F53B6DB16ABA24D2069F4F9883
      804E06F8DB0C524000600F0ACAE8BEC15FCF17C03F8D9AF7ECFDF14745F19683
      713AB5A4CAB7B6714C235BFB42CA65B6725586D703192A76B0570372A91FBEDF
      0CFE21E8FF00167C01A0F8C3409BCED2759B44BB872C8CF1EE1F346FB1994488
      DB91D413B595876AD13B994958E9EBCCFF0069DFF936DF8ADFF62A6ABFFA492D
      7A65799FED3BFF0026DBF15BFEC54D57FF004925A625B9FCF5D1451591B9FA61
      FF000464FF009ABBFF00709FFDBCAFD30AFCCFFF0082327FCD5DFF00B84FFEDE
      57E98568B63196E14514532428A28A0028A28A0028A28A0028A28A0028A28A00
      28A29090064F028016BCF3E35FC7CF04FECFDE139F5DF196B50582AC4F25AE9E
      B229BCBF652A0C76F1120C8D97407F857702C5572C3E5EFDAA7FE0A7BE16F859
      F68F0FFC33FB178DBC52BE4B1D4F789B47815B2CEBE6472069A40A1461085064
      E5F723467F2A7E227C4DF157C59F12CFAFF8C35EBEF106AD2EE1F68BD94BF968
      5D9FCB8D7EEC7186762234015771C0152D96A37DCFA3BF6AEFF828778DBE3FDC
      5F683E1E967F07F80FCD9523B4B495A3BCD42064F2F6DE3AB10CA4172625C27E
      F30DE61457AF92E8A2A0D12B05145140C28A28A002BD0BE0A7C7CF1B7ECFDE2C
      835DF06EB53D832CA925D69ED231B3BF550C04771102048B87703F897712A55B
      0C3CF68A00FDABFD947FE0A1DE09F8FF006F63A0F886583C1FE3CF2A2492D2EE
      558ECF509D9FCBDB66ECC4B31250889B0FFBCC2F98119EBEB5AFE67C120E4706
      BEE4FD95BFE0A7BE29F859F67F0FFC4CFB6F8DBC2CBE730D4F799B58819B0C8B
      E6492059A30C1861C86024E1F6A2C6693EE66E3D8FD7CA2B98F877F137C2BF16
      7C3506BFE0FD7AC7C41A4CBB47DA2CA50FE5B9457F2E45FBD1C815D498DC065D
      C320574F56661451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      450014514500145145007E1BFF00C148FF00E4F3FE217FDC3FFF004DF6D5F33D
      7D31FF000523FF0093CFF885FF0070FF00FD37DB57CCF593DCDD6C15FD0A7ECC
      5FF26DBF0A7FEC54D2BFF4922AFE7AEBFA14FD98BFE4DB7E14FF00D8A9A57FE9
      245551267B1E995E67FB4EFF00C9B6FC56FF00B15355FF00D2496BD32BCCFF00
      69DFF936DF8ADFF62A6ABFFA492D599ADCFE7AE8A28AC8DCE9BE19FC3CD63E2C
      F8FF0041F07E810F9DAB6B3769690E55D923DC7E691F62B308D1773BB0076AAB
      1ED5FBDBFB3FFECFFE15FD9E7C01A6787BC3DA658C57D1DA430EA5ABC16A229F
      5399012D34AC4B31CBBC8CAA598207DAB850057E687FC122BC31FDABFB446BDA
      C4DA4FDAEDB4AF0FCDE5DFBDBEF4B4B992685530E4612478C5C0182095120191
      BABF5F2AE26527D02AA6ABA5596BBA5DDE9BA8DA417FA7DE42F6F716B7318922
      9A3605591D5810CA412083C106ADD15441FCF17ED0BF0B25F829F1B3C63E0A78
      E78E0D2750923B43732A492C968DF3DB48EC9F2EE685E36380305B0429040F3C
      AFB47FE0ACDE1BD3B43FDA8AD6F6C6DFC9B9D63C3F6B7D7CFBD9BCE99649A00D
      82485FDDC112E1703E5CE32493F17564CDD6C74FF0BBC65FF0AEBE25F84FC57F
      64FED0FEC3D5AD353FB2799E5F9FE4CCB26CDF83B776DC670719CE0D7F470ADB
      941F519AFE68A2FF005A9F515FD2DC5FEA93E82AA244C7D325FF0054FF00434F
      A64BFEA9FE86ACCCFE6925FF005AFF00534DA74BFEB5FEA69B591D07DC9FF048
      3FF9392F127FD8A971FF00A57695FAF95F907FF0483FF9392F127FD8A971FF00
      A57695FAF9571D8CA5B85145213815441F967FF0579F8D92EA7E2CF0D7C2DB0B
      885F4FD3225D6B52114C9231BA903A431BAEDDD1B245B9F1BBE65B95257E5527
      F3B2BD57F6ACF1C4BF117F690F88FAEC9A9C1AC4336B77305A5F5B14314B6B13
      986DCA327CACA218E3018677019249249F2AAC9EE6E9591A7E16F0D6A3E33F13
      693E1FD1EDFED7AB6AB77158D9DBEF54F36691C222EE621465980C9200CF2457
      F413F00FE09E85FB3F7C2ED17C1DA15BC08B690AB5EDE45098DAFEECAA896E5C
      1663B9C8CE0B1DAA1501DAAA07E4FF00FC12C7C1ABE27FDAC2C3536BC16A3C3B
      A55E6A7E518F77DA3728B5D99C8DB8FB56FCE0FDCC639C8FDA1F353FBEBF9D5C
      4893E83E8A679A9FDF5FCE8F353FBEBF9D5199E57FB50FC0CB2FDA23E0A788BC
      1B3AC09A84F0FDA34BBA9C002DAF63F9A17DC51CA293F23951B8C724807DEAFC
      00D574BBCD0F53BBD3751B49EC350B399EDEE2D6E6331CB0C8A4AB23A9C15604
      1041E4115FD29F9A9FDF5FCEBF077F6F0F08D97827F6B8F893A7D84B34D04FA8
      2EA4CD3B066125D431DCC801000DA1E660A3A8503249C93123483E878257EA1F
      FC120BE344FA968BE2DF861A95FF009BFD9DB758D22DDC4AEEB0BB6CBA50C494
      48D64303041B4969E46F9B276FE5E57D57FF0004C6F126A3A17ED81E16B2B1B8
      F26DB58B4BEB1BE4D8ADE742B6D24E172412BFBC8226CAE0FCB8CE09052DCA96
      C7EDAD799FED3BFF0026DBF15BFEC54D57FF004925AF4CAF33FDA77FE4DB7E2B
      7FD8A9AAFF00E924B5A192DCFE7AE8A28AC8DCFD30FF0082327FCD5DFF00B84F
      FEDE57E9857E67FF00C1193FE6AEFF00DC27FF006F2BF4C2B45B18CB70A28A29
      921451450014514500145145001451450014521214649C0F7AFCFF00FDABFF00
      E0A8DA178360BEF0CFC23783C49AEBC52C327894E4D9E9D287D9989197172D80
      EC181F2B98D81941650AF61A573EB4F8EFFB46F813F671F0D45ABF8D757FB19B
      9F316C6C2DE332DD5EC889B8A4518FF808DEC5514BA0665DC33F92FF00B4DFFC
      144BE217ED096AFA2E9EBFF082F849B70934DD2EEE469EF11E208F1DCCE36F9B
      19CC9FBB088A43E18395561F38F8E3C73AF7C4AF166A7E26F13EA93EB1AE6A52
      99AEAF2E08DCED8C0000C0550005555015540500000561543773551B05145148
      A0A28A2800A28A2800A28A2800A28A2800A28A2803D0BE0A7C7CF1B7ECFDE2C8
      35DF06EB53D832CA925D69ED231B3BF550C04771102048B87703F897712A55B0
      C3F5A7F651FF0082877827E3FDBD8E83E21960F07F8F3CA8924B4BB9563B3D42
      767F2F6D9BB312CC4942226C3FEF30BE60467AFC54A0120E47069A7625A4CFE9
      828AFC83FD95BFE0A7BE29F859F67F0FFC4CFB6F8DBC2CBE730D4F799B58819B
      0C8BE6492059A30C1861C86024E1F6A2C67F557E1DFC4DF0AFC59F0D41AFF83F
      5EB1F106932ED1F68B2943F96E515FCB917EF47205752637019770C81569DCC9
      A68E9E8A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2803F0DFFE0A47FF00279FF10BFEE1FF00FA6FB6AF99EBE98FF8291FFC9E7F
      C42FFB87FF00E9BEDABE67AC9EE6EB60AFE853F662FF00936DF853FF0062A695
      FF00A49157F3D75FD0A7ECC5FF0026DBF0A7FEC54D2BFF004922AA8933D8F4CA
      F33FDA77FE4DB7E2B7FD8A9AAFFE924B5E995E67FB4EFF00C9B6FC56FF00B153
      55FF00D2496ACCD6E7F3D745145646E7E987FC1193FE6AEFFDC27FF6F2BF4C2B
      F33FFE08C9FF003577FEE13FFB795FA615A2D8C65B8514514C93F20FFE0AF9FF
      002725E1BFFB152DFF00F4AEEEBE1BAFB93FE0AF9FF2725E1BFF00B152DFFF00
      4AEEEBE1BACDEE6EB61D17FAD4FA8AFE96E2FF00549F415FCD245FEB53EA2BFA
      5B8BFD527D05389131F4C97FD53FD0D3E992FF00AA7FA1AB333F9A497FD6BFD4
      D369D2FF00AD7FA9A6D64741F727FC120FFE4E4BC49FF62A5C7FE95DA57EBE57
      E41FFC120FFE4E4BC49FF62A5C7FE95DA57EBE55C763296E14C97FD53FD0D3E9
      B20CC6C3D8D5107F3472FF00AD7FA9A6D5BD634CBCD1756BDD3F50B49EC2FED2
      7782E2D6E6331CB0C8AC5591D480558104107904554AC8E800C54F048FA53BCD
      7FEFB7E75EE1FB20FECCBFF0D57F12752F09FF00C247FF0008C7D8F4A9353FB5
      FD8BED7BF64D0C7B3679898CF9D9CE7F8718E723EBEFF87327FD55DFFCB6FF00
      FBAA9D989B48FCD1F35FFBEDF9D1E6BFF7DBF3AFD2EFF87327FD55DFFCB6FF00
      FBAA8FF87327FD55DFFCB6FF00FBAA8B317323F347CD7FEFB7E74D249392727D
      EBF4C3FE1CC9FF005577FF002DBFFEEAA3FE1CC9FF005577FF002DBFFEEAA2CC
      3991F99F5F5F7FC12DFE1DEB3E2BFDA9B4AF1159418D23C316973757F72E8FB0
      79D0496F14618295F319A52C1588CAC52119DB83F4C782FF00E08E9E0EB0377F
      F0967C40D6F5ADDB3ECDFD8F690E9FE5E33BF7F99E7EFCFCB8C6DC60E776463E
      DAF855F08BC21F04BC271F86BC13A241A168E92BCE60899DDA4918FCCEF23967
      76C0032C490AAAA385003489725D0EC2BCCFF69DFF00936DF8ADFF0062A6ABFF
      00A492D7A65799FED3BFF26DBF15BFEC54D57FF4925AB216E7F3D745145646E7
      E987FC1193FE6AEFFDC27FF6F2BF4C2BF33FFE08C9FF003577FEE13FFB795FA6
      15A2D8C65B8514514C90A28A2800A28A2800A28A42428C9381EF400B5E65F1DF
      F68DF027ECE3E1A8B57F1AEAFF0063373E62D8D85BC665BABD91137148A31FF0
      11BD8AA29740CCBB867E4BFDABFF00E0A8DA178360BEF0CFC23783C49AEBC52C
      327894E4D9E9D287D9989197172D80EC181F2B98D81941651F97BE38F1CEBDF1
      2BC59A9F89BC4FAA4FAC6B9A94A66BABCB82373B630000301540015554055501
      40000152D96A37DCF7BFDAA3F6F4F1DFED306E3471FF0014AF8164F25BFE11DB
      4944BE6BC793BE79F62B4B9739098541B233B4B2EF3F33D14541ADAC14514500
      1451450014514500145145001451450014514500145145001451450015E85F05
      3E3E78DBF67EF1641AEF8375A9EC1965492EB4F6918D9DFAA86023B88810245C
      3B81FC4BB8952AD861E7B45007ED5FECA3FF00050EF04FC7FB7B1D07C432C1E0
      FF001E795124969772AC767A84ECFE5EDB37662598928444D87FDE617CC08CF5
      F5AD7F33E090723835F727ECADFF00053DF14FC2CFB3F87FE267DB7C6DE165F3
      986A7BCCDAC40CD8645F324902CD1860C30E4301270FB5163349F73371EC7EBE
      515C77C2BF8BDE10F8DBE138FC4BE09D720D7747795E03344AC8D1C8A7E6478D
      C2BA3608386504AB2B0E1813D8D5998514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      145140051451401F86FF00F0523FF93CFF00885FF70FFF00D37DB57CCF5F4C7F
      C148FF00E4F3FE217FDC3FFF004DF6D5F33D64F7375B057F429FB317FC9B6FC2
      9FFB1534AFFD248ABF9EBAFE853F662FF936DF853FF62A695FFA491554499EC7
      A65799FED3BFF26DBF15BFEC54D57FF4925AF4CAF33FDA77FE4DB7E2B7FD8A9A
      AFFE924B5666B73F9EBA28A2B2373F4C3FE08C9FF3577FEE13FF00B795FA615F
      99FF00F0464FF9ABBFF709FF00DBCAFD30AD16C632DC28A28A649F907FF057CF
      F9392F0DFF00D8A96FFF00A57775F0DD7DC9FF00057CFF009392F0DFFD8A96FF
      00FA57775F0DD66F7375B0E8BFD6A7D457F4B717FAA4FA0AFE6922FF005A9F51
      5FD2DC5FEA93E829C4898FA64BFEA9FE869F4D9066361EC6ACCCFE68E5FF005A
      FF00534DAB7AC69979A2EAD7BA7EA1693D85FDA4EF05C5ADCC6639619158AB23
      A900AB020820F208AA9591D07DC9FF000483FF009392F127FD8A971FFA57695F
      AF95F8A7FF0004C1F89165F0FF00F6A9D36D2FC411C1E25D3EE3445B9B8B910A
      C123149A3C6461D9DE0589532096946092029FDABCF19ED571D8CA5B8B4533CD
      4FEFAFE74E0735441F825FB70F82FF00E102FDAC7E2669BF6BFB6F9FAAB6A7E6
      F95E5E3ED6AB75B31939D9E7ECCE79DB9C0CE0786D7EAB7FC15B7E017FC243E0
      CD1FE2C6990E6F741D9A66ADF37DEB3924FDCBFCCE00F2E690AE150B37DA7248
      58EBF2A6B37B9BA7747D09FB01FC44FF00856FFB58F80AEA59EF63B2D4EECE8D
      710D93E3CFFB4A98625906E01A3599A1720E71E58600B2815FBB95FCCF825482
      3822BF65FF00610FDBBECBF684D320F06F8C6782C3E24D9C2763E04716B31A8C
      99620301660012F10E300BA0DBB962716449753EC9A28A2ACCC2AAEA9AA59687
      A6DDEA3A8DDC161A7DA44F3DC5DDD48238A18D41667766202A800924F000ACCF
      1C78E741F86BE13D4FC4DE27D520D1F43D362335D5E5C13B51738000192CC490
      AAAA0B3310A01240AFC83FDBBBF6EFBDFDA17529FC1DE0D9E7B0F86D69282CE4
      18E5D66453959655382B08201488F3901DC6EDAB126EC52573EBEF8A9FF055DF
      863E04F1649A1E83A4EA9E324B4D412DAF754B278A3B33063F7B2DB396267653
      C2A95447C1224DBB59BE85FD9E3F697F04FED37E13B8D73C1F753ABDA4BE4DEE
      977EAB1DE59B127619115986D700956562A70C33B95D57F9F5AFD00FF823BE9D
      AF49F16FC737F6ED38F0CC3A22437AAB38111BB79D4DB168F3F33048EEB0D83B
      416191BF0653D4A71491FAC15E67FB4EFF00C9B6FC56FF00B15355FF00D2496B
      D32BCCFF0069DFF936DF8ADFF62A6ABFFA492D590B73F9EBA28A2B2373F4C3FE
      08C9FF003577FEE13FFB795FA615F99FFF000464FF009ABBFF00709FFDBCAFD3
      0AD16C632DC28A28A648514514005148485192703DEBF3FF00F6AFFF0082A368
      5E0D82FBC33F08DE0F126BAF14B0C9E2539367A74A1F6662465C5CB603B0607C
      AE63606505942BD8695CFAD3E3BFED1BE04FD9C7C3516AFE35D5FEC66E7CC5B1
      B0B78CCB757B2226E291463FE0237B15452E8199770CFE427ED51FB7A78EFF00
      698371A38FF8A57C0B2792DFF08EDA4A25F35E3C9DF3CFB15A5CB9C84C2A0D91
      9DA59779F04F1C78E75EF895E2CD4FC4DE27D527D635CD4A5335D5E5C11B9DB1
      8000180AA000AAAA02AA80A00000AC2A86EE6AA360A28A291414514500145145
      0014515D0F82FC03AD78FB506B4D22D7CDF2F699A776DB1C2A4E01663F89C0C9
      201C03835955AB4E8C1D4AB24A2B76CDA8D1A988A8A9528B949EC96ACE7A8009
      E8335F56780FF65CD074E804BE2395F5ABB75E618DDA1823276F4DA43310430D
      C48041FBA0D7BA7873C2DA378744BFD95A4D8E99E763CCFB1DB245BF19C6EDA0
      671938CFA9AF82C6F19E0F0F271C3C1D4B75D97EAFF03EEB0BC1B8CA9152C4CD
      53F2DDFE8BF13F383637F74FE541523A835FA9B668BB4FCA3F2ABB7BA2E9FAEE
      9F258EA5636DA8594B8F32DAEA259237C10465581070403F502BC397882A1ACB
      0BA7F8FF00FB5359F0838A76AFFF0092FF00F6C7E52515FA23E38FD917C01E39
      B6B992CEC3FE11AD524F992EF4CF9630C10AA8307DCDB9DA4850A491F786493F
      2D7C63FD93FC63F0ADE7BCB5B797C4BE1C8E3121D52CA1C18805667F36205990
      2ED625F94C15CB02768FA0CA38DB28CDE6A8A9FB3A8FECCF4BFA3D9F92BDDF63
      E671B9262F057935CD1EEBF55BFE9E6789D14515F7C780145145001451450014
      51450014514500761F0AFE2F78BFE0978B23F12F8275C9F42D6122780CD12ABA
      C91B0F991E370C8EB900E19480CAAC395047EB47ECA1FF000523F087C759EC7C
      35E2F8E0F05F8E2E258AD6D602EEF67A9C8C9C98A42B8898BAB0114849F9A355
      7919881F8CF4038A69D84D267F4BE0E696BF19FF00650FF8291F8BFE054163E1
      AF17C73F8D3C0F6F1456B6B01744BCD32357E4C5215CCAA119808A4207CB1AAB
      C6AA41FD67F857F17BC21F1B7C271F897C13AE41AEE8EF2BC06689591A3914FC
      C8F1B85746C1070CA0956561C3026D3B9934D1D8D14514C90A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2803F0DFF00E0A4631FB67FC42FFB87FF00E9BEDABE67AFD55F
      F82A4FECA9E29F89D77E1FF88FE0CD2AF7C457BA7DA0D2753D2EC54CD3887CD6
      782586154DCF879650F82480632176ABB0FCAA208383C1ACDEE6C9E815FD0A7E
      CC5C7ECDBF0A7FEC54D2BFF4922AFC5EFD94FF00654F15FED27F10349B5B4D26
      FA2F06C77606B1AF053141042851A68E3999194CE51D764786397566010330FD
      EC550AA00E80629C499B16BCCFF69DFF00936DF8ADFF0062A6ABFF00A492D7A6
      554D574AB3D734BBCD3750B582FAC2F217B7B8B5B98C4914D1BA956475604329
      048208C106ACCCFE6AA8AF60FDA73F664F157ECC1F1024D075E8FED9A65C9797
      4AD6E18CAC17F082391C9D922E543C6492A48E59591DBCA74AD2AF75DD4ED34E
      D36D27BFD42EE5482DED6D63324B348C42AA22A82598920003924D64741FA4DF
      F0464FF9ABBFF709FF00DBCAFD30AF99BF604FD99351FD9A3E0DCD65E234B2FF
      0084B35CBBFED0BF16B1A97B64F2D562B579813E6F97876C8F9434B205DC3E76
      FA66B45B183D58514514C47E41FF00C15F3FE4E4BC37FF0062A5BFFE95DDD7C3
      75FB0BFF000532FD9475DF8E7E12D1BC61E0DB182FFC45E198674BAD3E1B706F
      351B462AC16371CBB4455D9623F7BCD936FCD857FC7A20A9C1183EF59BDCDA2F
      41D17FAD4FA8AFE96E2FF549F415F889FB06FECA1AF7C7FF008A3A56BD358C31
      F80FC3BA84173AA5DEA36FE6DBDE346CB27D8910F12B38C0707E5446CB64B223
      FEDE8181551226C5A28A2A883F06BF6EBF87179F0CFF006A9F1FDA5D19E58354
      D41F5BB5B996D8C2B347744CC76649DEA8EF245BC1C1689B8072A3C12BF71FF6
      D6FD8C74EFDAABC356371A7DCD9685E36D2B77D93579EDD9FED10EC722D25656
      044664646DE55CC787DAA77B03F8E5F15FE0678F3E07EB49A5F8E3C317DA05CC
      99F2649943C17185466F2A64263936891376C63B4B60E0F159B46D1773850715
      E85A67ED15F15B45D36D74ED3FE2678BEC74FB4892DEDED6DB5DBA8E28635015
      51144802A8000007000AF3DA00CD228779AFFDF6FCEBF5C3FE0937F1B35EF885
      F0BFC4BE0DD72E27D417C232DAAE9F7B7130765B49D64096C06DCED8CC0E5496
      6F9640802AC6A2BF31FE147C0CF1E7C70D6DF4AF03F862FB5FB98F1E7490A048
      2DF2AECBE6CCE4471EE11BEDDEC3715C0C9E2BF683F630FD9234EFD94BC01716
      8F79FDABE2DD6BCA9B5ABF8D9BC82E81BCB861538C471F98F8620339666381B5
      12A244AD63DEF55D2ACB5DD2EEF4DD46D20BFD3EF217B7B8B5B98C4914D1B02A
      C8EAC0865209041E0835F873FB65FEC6BAF7ECB3E2D13C267D63C07A94C4697A
      D328DC8D82DF66B8C00166001208016450594021D13F746B0BC71E06D07E2578
      4F53F0CF89B4C8358D0B5288C37567700ED75C82082305581019594865601810
      40354D5C84EC7F3795674BD52F743D4AD351D3AEE7B0D42D2549EDEEED6431CB
      0C8A432BA329055810082390457E857ED21FF049CD774ED4B50D73E105E41ABE
      9734A644F0BDFCC21B9B6525008E19E46D92A82D21FDE3232A228CCAC727E25F
      885F02BE21FC2833378BFC17AE6816D15DB58FDB6F2C645B59261BBE58E7C797
      2642310518860A48247359DAC6A9A67B97C3CFF829A7C76F01F9315D6BD65E2E
      B282D16D62B5F1058AC9B71B71234B17972C92617059DDB3B98B65B0474DE24F
      F82B37C6CD7345B8B1B2B5F0BF87EE65DBB351D3B4E91E7870C09DA279648F90
      0A9DC878638C1C11F171041C1183EF45176164773F15FE38F8F3E38EB29AA78E
      7C4F7DE20B98B3E4C73B0482DF2A8ADE54280471EE11A6ED8A3715C9C9E6B86A
      D4F0DF8575AF196B36FA4681A45F6B7AADCEEF26C74EB679E7976A966DA880B1
      C2AB1381C004F6AFAABE017FC1327E29FC5D316A1E2587FE15C787DB3FBED620
      66BE93FD60F92D32AC30E8A0F9AD1FCAE19778E28DC2E91F2F781BC0DAF7C4AF
      16E99E19F0CE993EB1AE6A52886D6CEDC0DCED8C9249C0550016666215541624
      004D7EED7EC87FB3BC5FB32FC14D33C24F3C17BAD4B2BDFEAF796DBFCA9EEE4C
      03B039CED4448E30405DC23DC554B11567F67BFD953E1EFECD3A2FD93C27A579
      BA9BF982E35FD45639751B85765631B4CA8B88C6C4C46A157E40C4162CC7D82A
      D2B19CA570AF33FDA77FE4DB7E2B7FD8A9AAFF00E924B5E9955355D2ACF5CD2E
      F34DD42D60BEB0BC85EDEE2D6E631245346EA5591D5810CA4120823041AA20FE
      6AA8AF60FDA73F664F157ECC1F1024D075E8FED9A65C97974AD6E18CAC17F082
      391C9D922E543C6492A48E59591DBCA74AD2AF75DD4ED34ED36D27BFD42EE548
      2DED6D63324B348C42AA22A82598920003924D64741FA4DFF0464FF9ABBFF709
      FF00DBCAFD30AF99BF604FD99351FD9A3E0DCD65E234B2FF0084B35CBBFED0BF
      16B1A97B64F2D562B579813E6F97876C8F9434B205DC3E76FA66B45B183D5851
      4521214649C0F7A6216BCCBE3BFED1BE04FD9C7C3516AFE35D5FEC66E7CC5B1B
      0B78CCB757B2226E291463FE0237B15452E8199770CFC97FB57FFC151B42F06C
      17DE19F846F078935D78A5864F129C9B3D3A50FB331232E2E5B01D8303E5731B
      03282CA3F2F7C71E39D7BE2578B353F13789F549F58D735294CD75797046E76C
      60000602A8002AAA80AAA02800002A5B2D46FB9EF7FB547EDE9E3BFDA60DC68E
      3FE295F02C9E4B7FC23B692897CD78F277CF3EC56972E72130A8364676965DE7
      E67A28A835B5828A28A0028A28A0028A28A0028A2B77C11E1793C5FE25B3D394
      3085DB74F22FF04639639C1C1EC3231923D6B3A95234A0EA4DE8B537C3D0A98A
      AB1A1495E52692F566F7C2EF85973F10AF1A5797EC9A55BC8AB3CB83BDF2092B
      1F1B49E067278DC0E0F43F5D787348B3D074CB7B0B0B74B5B48142C7120E00FE
      A49E493C92493589E1ED2ED344B0B7B1B1812DAD6150A91A7403FA927924F249
      24D74F65D07E15F8A6799A55CC6A6BA416CBF57E7F91FD2392E414323A165AD5
      7F14BF45E4BF1DDF96C59F6ADBB5E82B12CFB56DDAF415F0B5373D0AA6DD9FDD
      35B16DD0563D9FDD35B16DD0579189F819E255DCD6B2E82B7ECC64006B02CBA0
      ADFB2E83EB5F9EE2373CAAC7C9BFB4E7EC516977A4CFE29F86DA6FD9EFA0DF2D
      EE836F965B8524B17B75E76B8C9FDD2FCA54008030DAFF000AF4AFDBCB1E7F5A
      FCEDFDB97F66CB7F857AFDB78C3C3563159784F57904335B472002D6F48772A9
      1E06D8DD54B28190A55C7C8BB16BF79F0EF8D6A626AAC9733A9CD27FC393DDF7
      8B6DEAFF0097AEEAFB23F34CE72F8D37EDE8AB2EABF5FF0033E55A28A2BFA24F
      920A28A2800A28A2800A28A2800A28A2800AEC3E15FC5EF17FC12F1647E25F04
      EB93E85AC244F019A2557592361F323C6E191D7201C32901955872A08E3E8A00
      FD98FD943FE0A47E10F8EB3D8F86BC5F1C1E0BF1C5C4B15ADAC05DDECF539193
      931485711317560229093F346AAF233103EC70735FCD0038AFB23F650FF8291F
      8BFE054163E1AF17C73F8D3C0F6F1456B6B01744BCD32357E4C5215CCAA11980
      8A4207CB1AABC6AA41A4FB99B8F63F6628AE3BE15FC5EF087C6DF09C7E25F04E
      B906BBA3BCAF019A256468E453F323C6E15D1B041C32825595870C09EC6ACCC2
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A002BF1BFE0F785F46F197FC151F5CD1F5FD26C75BD2
      6E3C57E22F3AC351B749E0976A5E32EE47054E19548C8E0807B57EC857E3CFC0
      AD52CF48FF0082AD6A53DF5DC1650BF8C3C4102C971204532482F238D013FC4E
      ECAAA3A96600649152CB8F53F5F34BD2ACB43D36D34ED36D20D3F4FB48920B7B
      5B58C471431A80AA88AA0055000000E00156A8A2A880A28A28032FC4BE17D1BC
      67A35C691E20D26C75CD26E36F9D63A8DBA5C412ED60CBB91C15386552323820
      1ED587E10F839E01F87DA949A8F85FC13E1DF0E6A1244607BAD274A82D6568C9
      0C50B22025495538E9951E95D8514005145140051451400570BE24F811F0D7C6
      3AD5C6AFAF7C3EF0B6B7AB5CEDF3AFF51D1ADE79E5DAA15773BA163855503278
      000ED5DD51401574BD2ACB43D36D34ED36D20D3F4FB48920B7B5B58C471431A8
      0AA88AA0055000000E00156A8A2800A28A2800A6B22BFDE00FD453A8A00F33FF
      008662F83C7FE694F827FF0009EB4FFE375674CFD9D7E14E89A95A6A1A7FC33F
      0858DFDA4A93DBDD5B6856B1CB0C8A432BA304055810082390457A1D140EE22A
      85E800FA0A5A28A04145145001485430E403F5A5A280385F11FC08F86BE31D66
      E357D7BE1F785B5BD5AE36F9D7DA8E8D6F3CF2ED50ABB9DD0B1C2AA8193C0007
      6ACDFF008662F83BFF0044A7C13FF84F5A7FF1BAF4CA281DCA9A5E9163A1E9D6
      9A7E9D676F61616912416F6B6B12C71431A80AA88AA0055000000E00156E8A28
      10514514005145140197E25F0BE8DE33D1AE348F1069363AE69371B7CEB1D46D
      D2E20976B065DC8E0A9C32A9191C100F6AC3F087C1CF00FC3ED4A4D47C2FE09F
      0EF87350922303DD693A5416B2B4648628591012A4AA9C74CA8F4AEC28A0028A
      42428C9381EF5F9FFF00B57FFC151B42F06C17DE19F846F078935D78A5864F12
      9C9B3D3A50FB331232E2E5B01D8303E5731B03282CA15EC34AE7D69F1DFF0068
      DF027ECE3E1A8B57F1AEAFF63373E62D8D85BC665BABD91137148A31FF00011B
      D8AA29740CCBB867F213F6A8FDBD3C77FB4C1B8D1C7FC52BE0593C96FF008476
      D2512F9AF1E4EF9E7D8AD2E5CE4261506C8CED2CBBCF8278E3C73AF7C4AF166A
      7E26F13EA93EB1AE6A5299AEAF2E08DCED8C0000C05500055550155405000005
      61543773551B05145148A0A28A2800A28A2800A28A2800A28A2800AFA13E04F8
      7DB4AF0DBDECD16C9EFE4DE09CE4C4A3099078EA58823A861CFA7CF63935F5D7
      86EC534CD36D2CE22CD1DBC4B1297EA4280067DF8AF94E21ACE1878D25F69FE5
      FD23F57F0F7031AF8DAB8B97FCBB492F595D5FEE4D7CCEAACFA8ADDB2E83F0AC
      2B3EA2B76CBA0FC2BF20C56E7ED758D8B3ED5B76BD056259F6ADBB5E82BC0A9B
      9E2D536ECFEE9AD8B6E82B1ECFEE9AD8B6E82BC8C4FC0CF12AEE6B597415BF65
      D07D6B02CBA0ADFB2E83EB5F9EE2773CAAC74361DBF1AABF133E1BD8FC5DF86B
      AF7847506F2A0D52D8C493619BC99461A29768652DB24546DB901B6E0F04D5AB
      0EDF8D74DA6FF0FD6BE7E55EAE16AC311465CB3834D35D1A774FE4CF9DC5C54A
      2E2F667E126A5A75D68FA8DD585F5B4D677B6B2B433DBDC21492291490CACA79
      56041041E41155EBDBFF006D6D02C7C37FB4FF008EAD34E83ECF6F25CC378C9B
      D9B32CD6F1CD2B65893F34923B63A0CE0000015E215FE87E578D59960286352B
      2AB08CADDB9927FA9F96D487B39B876760A28A2BD3330A28A2800A28A2800A28
      A2800A28A2800A28A2803B0F857F17BC5FF04BC591F897C13AE4FA16B0913C06
      68955D648D87CC8F1B86475C8070CA4065561CA823F5A3F650FF008291F843E3
      ACF63E1AF17C70782FC71712C56B6B01777B3D4E464E4C5215C44C5D5808A424
      FCD1AABC8CC40FC67A01C534EC26933FA5F0734B5F8CFF00B287FC148FC5FF00
      02A0B1F0D78BE39FC69E07B78A2B5B580BA25E6991ABF26290AE65508CC04521
      03E58D55E35520FEB3FC2BF8BDE10F8DBE138FC4BE09D720D7747795E03344AC
      8D1C8A7E6478DC2BA3608386504AB2B0E181369DCC9A68EC68A28A6485145140
      0514514005145140051451400514514005145140051451400514514005145140
      0514514005145140051451400514514005145140051451400514514005145140
      0514514005145140051451400514514005145140051451400514514005145140
      057E0D7C60F105E7C21FDB8FC53E25BED267927D13C7736B6BA7DC66DDAE235B
      D3711E18A9DAB226D2AF820AB86008233FBCB5E1BF127F625F831F177C69A878
      B3C59E0EFED5D7F50F2FED377FDA7790F99B2358D3E48E655184451C01D3279C
      D26AE545D8F907FE1F37FF00548BFF002E4FFEE5A3FE1F37FF00548BFF002E4F
      FEE5AFA63FE1DB9FB3AFFD13DFFCACEA1FFC7E8FF876E7ECEBFF0044F7FF002B
      3A87FF001FA5A8EF13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522
      FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB
      3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF8
      7CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9F
      B3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968
      FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87
      FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD52
      2FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3
      A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522
      FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF
      0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F
      13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E
      7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67
      FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96B
      E98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CA
      CEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522
      FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB
      3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF8
      7CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9F
      B3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968
      FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87
      FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD52
      2FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3
      A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522
      FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF
      0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F
      13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E
      7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67
      FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96B
      E98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CA
      CEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13F33FF006A7FDBD3C79FB4C7DA3471FF0014AF81A4F25BFE11DB
      4944BE6C91E4EF9E7D8AD2FCE72130A8364676965DE7E67AFD2FFDAA3FE09518
      171E22F8283FE78A3783AEA7FAAC924175349FEE318E43FF003D087FB91D7E6D
      6ABA55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB0208
      20F208A977EA5AB742AD145148A0A28A2800A28A2800A28A2800A28A2800A28A
      2801F0B22CC8655678C302CA8DB491DC038383EF835EBD6DFB427D9801FD83BB
      1FF4F98FFD92BC787515F49587C22F09CCA0BE95BBFEDE25FF00E2ABE7B379E0
      E9A83C5C1CB7B5BE57EA8FD1784686755E35D6515A34D2E5E6E64B5BF35ADEEC
      B6B3EDB9CFC3FB4DF958FF008A733FF6FBFF00DAEAF43FB577923FE458CFFDBF
      FF00F6BAEAEDBE09782E4C6ED1B3FF006F337FF175AB6DF013C0B201BB43CFFD
      BDCFFF00C5D7C556C570FAF8F0F37F37FF00C99F695303C5CBE2C5D3FB97FF00
      2B38B87F6BEF2BFE654CFF00DC47FF00B555E8BF6D1F2BFE650CFF00DC4BFF00
      B557716DFB3CFC3F93EF6819FF00B7C9FF00F8BAD5B7FD9AFE1CBE3778773FF6
      FB71FF00C72BCB963385FAE167F7BFFE5879F3C1F13AF8B150FB97FF002072BE
      0DFDB1BFE123F14E8FA37FC225F67FED1BC86D3CFF00ED1DDE5EF70BBB6F9433
      8CE71915F555B7415E3DA07ECE7F0F746D4ECF52B3F0FF00937B67325C412FDB
      276D8EA4329C19307040E08C57B0DB7415F0F9FD6CB2B59E5949C15B5BF57FF8
      148ECC0D2C7D284963EA29BBE96EDF7235ACBA0ADFB2E83EB58165D056FD9741
      F5AFC7F13B9758E86C3B7E35D369BFC3F5AE66C3B7E35D369BFC3F5AF98C4EC7
      CFE24FCDAFF829E8FF008BF3A07FD8B507FE94DD57C835F477FC14175FBED67F
      69FF0010DA5DCFE75BE956D6767669B1479511B7498AE40C9FDE4D2364E4FCD8
      CE0003E71AFEF4E0AA32C3F0E60612DFD9C5FF00E04B997E0CFCC714EF5E6FCC
      28A28AFB539428A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BB0
      F857F17BC5FF0004BC591F897C13AE4FA16B0913C0668955D648D87CC8F1B864
      75C8070CA4065561CA8238FAFAD3F651FF008278F8DBE3FDC58EBDE218A7F07F
      80FCD89E4BBBB89A3BCD42064F33759A3290CA4140256C27EF32BE61464A109F
      99EE5A5FFC165EF21D32D23D47E14C175A82C28B713DB6BA618A49001B99236B
      7728A4E4852CC40E371EA6D7FC3E6FFEA917FE5C9FFDCB5F63F81FF635F831E0
      5F09E99A0C3F0EFC3DAC258C4233A86B5A5DBDE5E5C3672D24B2BA12CC49278C
      28CE142A80A377FE198BE0EFFD129F04FF00E13D69FF00C6EAF533BC7B1F0DFF
      00C3E6FF00EA917FE5C9FF00DCB47FC3E6FF00EA917FE5C9FF00DCB5F727FC33
      17C1DFFA253E09FF00C27AD3FF008DD1FF000CC5F077FE894F827FF09EB4FF00
      E3746A178F63E1BFF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE
      E4FF008662F83BFF0044A7C13FF84F5A7FF1BA3FE198BE0EFF00D129F04FFE13
      D69FFC6E8D42F1EC7C37FF000F9BFF00AA45FF009727FF0072D1FF000F9BFF00
      AA45FF009727FF0072D7DC9FF0CC5F077FE894F827FF0009EB4FFE3747FC3317
      C1DFFA253E09FF00C27AD3FF008DD1A85E3D8F86FF00E1F37FF548BFF2E4FF00
      EE5A3FE1F37FF548BFF2E4FF00EE5AFB93FE198BE0EFFD129F04FF00E13D69FF
      00C6E8FF008662F83BFF0044A7C13FF84F5A7FF1BA350BC7B1F0DFFC3E6FFEA9
      17FE5C9FFDCB47FC3E6FFEA917FE5C9FFDCB5F727FC3317C1DFF00A253E09FFC
      27AD3FF8DD1FF0CC5F077FE894F827FF0009EB4FFE3746A178F63E1BFF0087CD
      FF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BEE4FF866
      2F83BFF44A7C13FF0084F5A7FF001BA3FE198BE0EFFD129F04FF00E13D69FF00
      C6E8D42F1EC7C37FF0F9BFFAA45FF9727FF72D1FF0F9BFFAA45FF9727FF72D7D
      C9FF000CC5F077FE894F827FF09EB4FF00E3747FC3317C1DFF00A253E09FFC27
      AD3FF8DD1A85E3D8F86FFE1F37FF00548BFF002E4FFEE5A3FE1F37FF00548BFF
      002E4FFEE5AFB93FE198BE0EFF00D129F04FFE13D69FFC6E8FF8662F83BFF44A
      7C13FF0084F5A7FF001BA350BC7B1F0DFF00C3E6FF00EA917FE5C9FF00DCB47F
      C3E6FF00EA917FE5C9FF00DCB5F727FC3317C1DFFA253E09FF00C27AD3FF008D
      D1FF000CC5F077FE894F827FF09EB4FF00E3746A178F63E1BFF87CDFFD522FFC
      B93FFB968FF87CDFFD522FFCB93FFB96BEE4FF008662F83BFF0044A7C13FF84F
      5A7FF1BA3FE198BE0EFF00D129F04FFE13D69FFC6E8D42F1EC7C37FF000F9BFF
      00AA45FF009727FF0072D1FF000F9BFF00AA45FF009727FF0072D7DC9FF0CC5F
      077FE894F827FF0009EB4FFE3747FC3317C1DFFA253E09FF00C27AD3FF008DD1
      A85E3D8F86FF00E1F37FF548BFF2E4FF00EE5A3FE1F37FF548BFF2E4FF00EE5A
      FB93FE198BE0EFFD129F04FF00E13D69FF00C6E8FF008662F83BFF0044A7C13F
      F84F5A7FF1BA350BC7B1F0DFFC3E6FFEA917FE5C9FFDCB47FC3E6FFEA917FE5C
      9FFDCB5F727FC3317C1DFF00A253E09FFC27AD3FF8DD1FF0CC5F077FE894F827
      FF0009EB4FFE3746A178F63E1BFF0087CDFF00D522FF00CB93FF00B968FF0087
      CDFF00D522FF00CB93FF00B96BEE4FF8662F83BFF44A7C13FF0084F5A7FF001B
      A3FE198BE0EFFD129F04FF00E13D69FF00C6E8D42F1EC7C37FF0F9BFFAA45FF9
      727FF72D1FF0F9BFFAA45FF9727FF72D7DC9FF000CC5F077FE894F827FF09EB4
      FF00E3747FC3317C1DFF00A253E09FFC27AD3FF8DD1A85E3D8F86FFE1F37FF00
      548BFF002E4FFEE5A3FE1F37FF00548BFF002E4FFEE5AFB93FE198BE0EFF00D1
      29F04FFE13D69FFC6E8FF8662F83BFF44A7C13FF0084F5A7FF001BA350BC7B1F
      0DFF00C3E6FF00EA917FE5C9FF00DCB47FC3E6FF00EA917FE5C9FF00DCB5F727
      FC3317C1DFFA253E09FF00C27AD3FF008DD1FF000CC5F077FE894F827FF09EB4
      FF00E3746A178F63E1BFF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB
      96BEE4FF008662F83BFF0044A7C13FF84F5A7FF1BA3FE198BE0EFF00D129F04F
      FE13D69FFC6E8D42F1EC7C37FF000F9BFF00AA45FF009727FF0072D1FF000F9B
      FF00AA45FF009727FF0072D7DC9FF0CC5F077FE894F827FF0009EB4FFE3747FC
      3317C1DFFA253E09FF00C27AD3FF008DD1A85E3D8F86FF00E1F37FF548BFF2E4
      FF00EE5AE9BE187FC15A3FE163FC49F0A784FF00E1577F67FF006EEAB6BA67DA
      FF00B7FCCF23CE9963DFB3ECC376DDD9C646718C8EB5F5F7FC3317C1DFFA253E
      09FF00C27AD3FF008DD7E5E7C61F0C68FE0DFF0082A3E87A3E81A4D9687A4DBF
      8AFC3BE4D869D6E96F045B92CD9B6A200A32CCC4E072493DE8D50D599FB1F451
      4551985145140051451400514514005145140051451400514514005145140051
      4514005145140051451400514514005145140051451400514514005145140051
      4514005145140051451400514514005145140051451400514514005145140057
      867ED35FB1FF0080FF0069FD15FF00B76CFF00B3FC536F68D6DA6F88ED41F3ED
      32C1D43A821668C303F23F40F26C28CC5ABDCE8A00FC11FDA6BF63FF001E7ECC
      1AD3FF006ED9FF0068785AE2EDADB4DF11DA81E45DE143A87504B4321527E47E
      A524D85D54B5786D7F4ABAAE9565AEE9977A76A56905FE9F7713C1716B751892
      29A3605591D5810CA412083C106BF36BF6A9FF008254FF00C7C788FE0A0FF9E2
      8DE0EBA9FEAB24905D4D27FB8C6390FF00CF421FEE4750D1AA9773F33E8AB5AA
      E957BA16A777A76A5693D86A1692BC1716B75198E5864525591D5802AC082083
      C822AAD4961451450014514500145145001451450015F4CFC20D65759F06581C
      A996D81B6902820294002F5EA76ED3C7AFE15F3357A57C11F192E83AF1D2EE9D
      85A6A0CA91E016093670BC6780D9C138EA17A006BC0CEB0CF11846E2B58EBFE6
      7DEF05E671CBB3451AAED0A8B95FAEE9FDFA7CCFA6ACFA8ADDB2E83F0AC2B3ED
      5BB65D07E15F8A62B73FA16B1B167DAB6ED7A0AC4B3ED5B76BD057815373C5AA
      6DD9FDD35B16DD0563D9FDD35B16DD0579189F819E255DCD6B2E82B7ECBA0FAD
      60597415BF65D07D6BF3DC4EE79558E86C3B7E35BBFDA36BA3E9D717F7D730D9
      D95AC6D34F7170E1238A355CB3331E1540049278005615876FC6BE63FDBFFE3D
      47E0CF010F87DA55CCB16BFAFC6B2DDB46AEA22B0DCC18070C39919366DF9814
      12860372E70CAB27AD9F6634B2FA0B59BD5F68F57F25FE47CBE615A3429CAA4B
      A1F9FDF10FC55FF09D78FBC49E24FB37D8BFB6352B9D43ECDE6799E579B2B3EC
      DD81BB1BB19C0CE3A0AE7E8A2BFD04A54A1429C6953568C524BD1688FCC1B6DD
      D8514515A8828A28A0028A28A0028A28A0028A28A0028A28A002BA6F877F0CBC
      55F167C4B0681E0FD06FBC41AB4BB4FD9ECA22FE5A1754F3246FBB1C619D4191
      C855DC32457D1DFB28FF00C13C7C6DF1FEE2C75EF10C53F83FC07E6C4F25DDDC
      4D1DE6A1032799BACD19486520A012B613F7995F30A3257EB4FC14F807E09FD9
      FBC270685E0DD160B0558923BAD41A353797ECA58892E2500191B2EE47F0AEE2
      142AE1434AE4B958F97BF656FF008261785BE167D9FC41F133EC5E36F14AF9CA
      34CD826D1E056C2A37972461A69028639701419384DC8B21FB8C00060702968A
      BD8C9BB851452138A62168AF99BF686FF8281FC2BF805F6CD37FB4BFE12EF164
      1BE3FEC4D11D64F2651E62EDB89BEE438923D8EB96957703E5915F0E7C49FF00
      82B77C53F137F685B784F46D13C19653F97F66B8F2DAFAFADB1B4BFEF24C44FB
      8861CC3C2B607CC0352BA2945B3F5F28AFC07F187ED9FF001C7C71A9477DA8FC
      4FF115BCD1C42109A4DD9D3A22A093931DB79685B2C7E623711819C00061FF00
      C34EFC62FF00A2ADE36FFC286EFF00F8E52E62B90FE8528AFC1AF07FEDE3F1EF
      C0FA6C963A77C49D52E609263316D5D21D4650C4018125CA48E170A3E5076839
      38C924FD31F0DFFE0B11E25B6D48C7E3DF03697A869F24B1289FC3B2C96B2DBC
      793E6B7972B48266C1055774632A416F9B2A732172B3F5368AF29F81BFB50FC3
      7FDA234D59FC1BE2282E75058BCDB8D1AEBF737F6C3085B7C2DC955322A99137
      465B80E6BD5AA880A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A2BF3AFF00E0A17FB7A78BFE
      127C46B7F879F0D7518348D434E863BAD67546B549E512488592D95268CA0511
      B472175DC497550576386F8234CFDABFE33E93A9DADFC1F153C5EF3DB4CB322D
      CEB5713C45948203C723B23AE472AC0A91C1041C54B65A8B67F417457CBBFB00
      FED5979FB4E7C2FBD5F1118078CFC3B2C76BA93DBA145BA8DD4986E4AED088CE
      5255644240688B6115D547D45544B560A28A28105145140057E41FED0BFF0029
      61D2FF00EC6BF0DFFE8AB2AFD7CAFC83FDA17FE52C3A5FFD8D7E1BFF00D15655
      2CB8EE7EBE514515440514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      400514514005145140051451401E19FB4D7EC7FE03FDA7F457FEDDB3FECFF14D
      BDA35B69BE23B507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84FDA6BF
      63FF001E7ECC1AD3FF006ED9FF0068785AE2EDADB4DF11DA81E45DE143A87504
      B4321527E47EA524D85D54B57EF7554D574AB2D774CBBD3B52B482FF004FBB89
      E0B8B5BA8C4914D1B02AC8EAC0865209041E08349AB94A563F9AAA2BF4C3F6A9
      FF008254FF00C7C788FE0A0FF9E28DE0EBA9FEAB24905D4D27FB8C6390FF00CF
      421FEE475F9B3AAE957BA16A777A76A5693D86A1692BC1716B75198E58645255
      91D5802AC082083C822B36AC6A9DCAB45145030A28A2800A28A2800A28A2803E
      98F82DF14A0F13DA41A3DFC9E56B30205567627ED4AA3EF02792F81961DF9238
      C85F69B2E83F0AF80ADEE25B4B88E782478668983A491B156560720823A107BD
      7D05F0C3F68F823805978B9DD660C766A5143952BC9C488A32083800A839C8C8
      1824FE619F70F54BBC460D5D758ADD7A775E5BF6F2FDA387F8BE9D5A71C26632
      B4968A4F66BFBDD9F9ECFAEBBFD2767DAB6ED7A0AE6F43D4AD357B48EEEC6EA1
      BCB5933B26B7903A360907047079047E15D25AF415F93554E3269AD4FBEA9252
      5CD1774CDBB3FBA6B62DBA0AC7B3FBA6B62DBA0AF1F13F033C6ABB9AD65D056F
      D9741F5AC0B320004F02BC3FE30FEDA7E18F87D6AD63E157B6F16EBADB94B432
      9FB25B6532AED228C4BCB2FC887B382C840CFCA61328C76735FEAF81A4E72F2D
      979B7B25EBF99E0E3B13470B073AD2B2FEB63DA3E33FC74D03E03F83DF57D5DB
      ED37D36E8F4FD2E270B2DE4A00E075DA8320B3904282382C555BF283C59E2CD5
      FC73E23BFD775DBF9752D56FA432CF7331F998F40001C0000002800280000000
      2AE78F3E21F887E26EBEFAD789B549755D45A35884B20555445E8AA8A02A8E49
      C2819249EA493CED7F52F0770851E17C3CA536A75E7F14BA25FCB1BEB6EEF793
      D5EC92FCA332CC258EA9A2B456CBF561451457E8C78E14514500145145001451
      45001451450014515F4C7ECAFF00B05F8EFF0069836FAC1FF8A57C0B279CBFF0
      915DC425F35E3C0D9041BD5A5CB9C17CAA0D920DC5976102F63C13C0FE06D7BE
      2578B34CF0CF8634B9F58D735294436B676E06E76C64924E02A800B33310AAA0
      B120026BF50BF650FF00825CE85E0D82C7C4DF17120F126BAF145347E1AE4D9E
      9D287DF895D5B172D808A548F2B99148941561F5A7C08FD9CBC09FB38F86A5D2
      3C15A47D8CDCF96D7D7F712196EAF6444DA1E590FF00C08EC50A8A5DCAAAEE39
      F4DAB48C9CAFB08000303814B4515440514555D5354B3D0F4CBBD4751BB82C34
      FB485EE2E2EAE6411C50C6A0B33BB1202A800924F000A00CCF1CF8E741F86BE1
      2D4FC4DE26D4E0D1F43D362335D5E5C13B51738000192CC490AAAA0B3310A012
      40AFC84FDABFFE0A47E2FF008EB05F786BC211CFE0BF03DC452DADD401D1EF35
      38D9F832C81731294550628C91F348ACF22B00399FDBBFF6BCBDFDA4FE234FA7
      689A9CEDF0DB47940D26D0C460175204DAF752A924B3125C26E00AC647CA8CD2
      6EF976A1B358C7B8139A28AFA17F664FD883E21FED3176977616BFF08EF84D76
      BC9E22D5619160953CD31BADB003FD2245DB2700850536B3A165CC97B1F3D515
      FB0BF0AFFE0939F09FC216F1CBE30BCD53C7BA8189E3956599AC2CF717CAC891
      C2C24560A02FCD2B29CB1C0CA85F43FF00876E7ECEBFF44F7FF2B3A87FF1FA7C
      AC8E647E1BD15FABFF0015FF00E090DE09D5F4DD46EBE1F789754F0FEB2F2C93
      DBD9EAEEB756014872B6E085595177141E6334AC141CAB939AFCD9F8D1F05BC5
      5F00FC7D7FE11F17D87D8F52B6F9E39A325A0BB849212785C81BE36C1C1C0208
      6560ACACA06AC52699C8695AADEE85A9DA6A3A6DDCF61A85A4A93DBDD5AC8639
      61914865746520AB0201047208AFD42FD8CFFE0A6F67E21B73E15F8D7ABC161A
      C9940B0F13B4022B7BA0EE008AE046A121652DC4B858F603BCA95DD27E59D00E
      0D24EC0D5CFE97C1C8A5AF86BFE09A3FB5FEB1F1BB45D47C01E33BBFB7F8A740
      B44B9B2D4E42ED3EA1661823198E36992266894B96DD2091490595DDBEE5AD16
      A62D5828A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
      28A2800A28A2800A28A2803F9F4FDABB54BCD5FF0069AF8A93DF5DCF7B3A789B
      508164B890BB08E3B878E3404FF0A222AA8E815401800579557A67ED3BFF0027
      25F15BFEC6BD57FF004AE5AF33AC8E83EE4FF82419FF008C92F127FD8A971FFA
      57695FAF95F907FF000483FF009392F127FD8A971FFA57695FAF9571D8CA5B85
      145154405145140057E41FED0BFF002961D2FF00EC6BF0DFFE8AB2AFD7CAFC83
      FDA17FE52C3A5FFD8D7E1BFF00D156552CB8EE7EBE5145154405145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      40057867ED35FB1FF80FF69FD15FFB76CFFB3FC536F68D6DA6F88ED41F3ED32C
      1D43A821668C303F23F40F26C28CC5ABDCE8A00FC11FDA6BF63FF1E7ECC1AD3F
      F6ED9FF68785AE2EDADB4DF11DA81E45DE143A87504B4321527E47EA524D85D5
      4B5786D7F4ABAAE9565AEE9977A76A56905FE9F7713C1716B75189229A360559
      1D5810CA412083C106BF36BF6A9FF8254FFC7C788FE0A0FF009E28DE0EBA9FEA
      B24905D4D27FB8C6390FFCF421FEE4750D1AA9773F33E8AB5AAE957BA16A777A
      76A5693D86A1692BC1716B75198E5864525591D5802AC082083C822AAD496145
      1450014514500145145006B7877C5DAD784AE7CFD1F54BAD39CBA3B08242AB21
      5395DEBD180C9E1811C9F5AF4FD13F6B0F1CE916CD14E74ED55CB96135E5B156
      5181F28F2D90638CF233C9E7A63C6A8AF371396E0F18EF88A5193EED6BF7EE7A
      187CC7178456A156515D93D3EED8FA22CBF6D6F1441617693687A4CB78DB3ECD
      32095638F07E7DE85897C8E06197079E7A54173FB6D78F66B39A18ACB43B5924
      4645B88ADA52F192301943485723A8C8238E41AF9FA8AF33FD5BCA2EDBC3C7F1
      3AE59DE633567599DAF8CBE34F8DFC7F0B41AEF892F6EED5D1637B48D8430385
      6DC37451854621B9C904F039E0638AA28AF730F86A18487B3C3C1423D92497DC
      8F26A55A95A5CD524DBEEDDC28A28AE9320A28A2800A28A2800A28A2800A28A2
      800ADDF03F81B5EF895E2CD33C33E18D2E7D635CD4A510DAD9DB81B9DB192493
      80AA002CCCC42AA82C48009AF7BFD95FF60BF1DFED306DF583FF0014AF8164F3
      97FE122BB884BE6BC781B20837AB4B97382F9541B241B8B2EC3FAF7F023F672F
      027ECE3E1A9748F05691F63373E5B5F5FDC4865BABD91136879643FF00023B14
      2A29772AABB8E5A5725CAC7C97FB287FC12E742F06C163E26F8B89078935D78A
      29A3F0D726CF4E943EFC4AEAD8B96C0452A4795CC8A44A0AB0FD000028C0181E
      D4B455DAC64DDC28A28A620A28A2800AF86FFE0AA5FB437FC2BBF84D6DF0EF47
      BDF2B5FF0016E7ED9E4CB8920D350FCF9DAE197CE7C4632AC8E8B70A7915F719
      3815F825FB6C7C5AFF0085CDFB4BF8D75C82EBED3A4DB5D9D2F4D31DEFDAA0FB
      35BFEE95E171F288E56579805E333372D92C65951576786D1452AA9660075271
      506C7D55FB027EC81FF0D2DE3F9B53F12DA5EC7F0F344F9EF2E211B12FAE4152
      B6424C8619562EEC8095500650C88C3F6AF4AD2ACB43D32D34ED3AD20B0D3ED2
      24B7B7B4B68C471431A80AA88AA0055000000E0015E65FB2F7C0DB3FD9E3E09F
      873C1B02C0FA8410FDA354BA84022E6F64F9A67DC110BA83F22161B8471C60FD
      DAF57AD12B18B770A28A299215E65FB46FC07D1BF68EF84FABF82B5897EC46EB
      6CD67A924092C965728731CA81BF15600A9647750CBBB23D368A00FE717E26FC
      3BD67E1378FF005EF07EBF0791AB68F76F693611D524DA7E5923DEAAC6375DAE
      8C40DCACA7BD7335FAD3FF000551FD98E7F883E0CB6F8ABA147E66AFE17B436F
      AA5B2472C925CD819372BA05CAAF90CF2BB7CA328EECCE3CB507F25AB36AC6E9
      DD1E87FB3CFC539BE0A7C6CF06F8D239278E1D2B518E4BB16D12492C96ADF25C
      468AFF002EE685E45192305B20A9008FE8714EE507D466BF9B5F0A786F51F18F
      8A347D0747B7FB66ADAA5E4365676FBD53CD9A47088BB9885196603248033C91
      5FD24C636A283D4015512263A8A28AA330A2B98F889F137C2BF09BC353EBFE30
      D7AC7C3FA4C5B87DA2F6509E638467F2E35FBD248551888D0166DA700D7E687C
      7DFF0082B6F88BC43E7699F09F47FF00845EC8E3FE279AC471CF7CDFEADBE487
      E6862E44887719772B023CB6149BB0D26CFD55660BD481F535E7BA9FED15F0A7
      44D4AEF4FD43E267842C6FED25782E2D6E75DB58E5864525591D4B82AC082083
      C822BF027C67F14BC65F118DA1F15F8B35CF137D8F7FD9BFB5F519AEBC8DFB77
      ECF318EDDDB5738EBB467A0AE609CD4F317C87F43BA67ED15F0A75BD4AD34FD3
      FE267842FAFEEE5482DED6DB5DB59259A462155114392CC490001C926BD09583
      7420FD0D7F3400E2BB0F873F18BC6FF08F5237DE0DF156ABE1D9DA58A6956C6E
      9922B868893189A3CEC954166F95C3290CC0820904E60E43FA30A2BF2A7E017F
      C15B7C45E1F31699F16346FF0084A2C867FE279A3C71C17CBFEB1BE787E5865E
      4C683698B6AA927CC635FA71E06F1CE83F12BC27A6789BC33A9C1AC687A94226
      B5BCB7276BAE70410705581055958065605480411549DC869A37A8A28A620A28
      A2800A2BE2EFDAABFE0A5DE15F81BAD6ABE11F0969BFF09878CACB30CF299426
      9D6336D7051DD4969648DC26F89428F9994C8AEACA3F3AFE247EDD7F1C7E266A
      42E6F3C7FAA6890472CB24167E1D94E9D142B2107CBCC3B5E4550005F359D80C
      F3966265B2945B3F78BCD4FEFAFE74A1D5BA303F435FCD1F9AFF00DF6FCEB73C
      23E3EF137C3FD4A4D43C31E22D57C397F2C4607BAD26F64B595E3243142C8C09
      52554E3A6547A52E62B90FE90A8AFC66F827FF000547F8B1F0DAE2DED7C56F07
      C44D0A38921106A1B6DEF11511954ADD2292CC4942ED32CACDB3AA962D5FA99F
      023F68DF027ED1DE1A9758F04EAFF6D36DE5ADF584F198AEACA474DC1258CFFC
      086F52C8C51C2B36D38A4EE4B4D1F871FB4EFF00C9C97C56FF00B1AF55FF00D2
      B96BCCEBD33F69DFF9392F8ADFF635EABFFA572D799D666C7DC9FF000483FF00
      9392F127FD8A971FFA57695FAF95F907FF000483FF009392F127FD8A971FFA57
      695FAF9571D8CA5B8514515440515E65F1DFF68DF027ECE3E1A8B58F1B6AFF00
      62373E62D8D8411996EAF6444DC5228C7FC046F62A8A5D0332EE19FCB3F8D9FF
      000547F8B1F126E2E2D7C28F07C3BD0A489E13069FB6E2F1D5D1558B5D3A82AC
      08728D0AC4CBBFAB150D49BB149367EC76A9ABD8E87A75DEA1A8DE5BD8585A44
      F3DC5D5D4AB1C50C6A0B33BB31015400492780057E38FC75F1DF86B57FF829AE
      9BE29B1F106977BE194F13787E76D66DEF237B311C71D9891CCC0ECDA855B71C
      E06D39C60D7C99E24F156B5E32D66E357D7F57BED6F55B9DBE75F6A372F3CF2E
      D50ABB9DC963855503278000ED59750DDCB51B1FD17F847E327807E206A5269F
      E18F1BF877C477F144677B5D275582E6548C10A5CAA3921416519E9961EB5D80
      208C8391ED5FCD0062A78247D2BD5BE167ED55F167E0B431DB7843C75AAE9B61
      144F0C5A74CEB756712BBF98C52DE60F1A316C9DCAA1BE66E7E66CBE61721FD0
      5515F047ECC7FF000551F0EFC40BB4D0BE2ADB59782B577DAB6FACDAB4874EB9
      91A52A11D5B735B61593E777643B646668F0AA7EF6041191C8AABDC86AC2D145
      14C4145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      450014514500145145007867ED35FB1FF80FF69FD15FFB76CFFB3FC536F68D6D
      A6F88ED41F3ED32C1D43A821668C303F23F40F26C28CC5ABF213F69AFD8FFC79
      FB306B4FFDBB67FDA1E16B8BB6B6D37C476A079177850EA1D412D0C8549F91FA
      9493617552D5FBDD55355D2ACB5DD32EF4ED4AD20BFD3EEE2782E2D6EA312453
      46C0AB23AB02194824107820D26AE52958FE6AA8AFD30FDAA7FE0953FF001F1E
      23F8283FE78A3783AEA7FAAC924175349FEE318E43FF003D087FB91D7E6CEABA
      55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB020820F2
      08ACDAB1AA772AD145140C28A28A0028A28A0028A28A0028A28A0028A28A0028
      A28A0028A28A0028A2BE98FD95FF0060BF1DFED306DF583FF14AF8164F397FE1
      22BB884BE6BC781B20837AB4B97382F9541B241B8B2EC205EC782781FC0DAF7C
      4AF16699E19F0C6973EB1AE6A52886D6CEDC0DCED8C9249C0550016666215541
      624004D7EA17ECA1FF0004B9D0BC1B058F89BE2E241E24D75E28A68FC35C9B3D
      3A50FBF12BAB62E5B0114A91E5732291282AC3EB4F811FB397813F671F0D4BA4
      782B48FB19B9F2DAFAFEE2432DD5EC889B43CB21FF00811D8A1514BB9555DC73
      E9B56919395F61000A300607B52D14551014514500145145001451450071DF19
      3C5D79F0FF00E1178DFC4FA7C704D7FA2E897BA8DBC772A5A2792181E450E010
      4A92A3201071DC57F3A0C77313EA735FBA3FF0512D52F348FD8E3E224F63773D
      94CF15A40D25BC8518C725E411C8848FE17466561D0AB107826BF0BAA246B0D8
      2BDC7F61FF0005FF00C27BFB587C33D33ED7F62F23555D4FCDF2BCCDDF6456BA
      D98C8FBFE46CCE78DD9C1C60F8757DA3FF000499F0DE9DAE7ED45757B7D6FE75
      CE8FE1FBABEB17DECBE4CCD243016C02037EEE79570D91F3671900895B94F63F
      63E8A28AD4C028A28A0028A28A004203020F20D7C13F167FE0915E04F166B697
      DE06F13DEF816D9F3E7E9B3DB9D4E01F2A05F28BCA922721D9B7BC992FC6D030
      7EF7A295AE34DA3E5DFD953F600F04FECC7A97FC242D7B3F8BBC6662685756BD
      81628AD558B6E36D082DE5B321546667762030528AECA7EA2A28A60DDC2B98F8
      9BF11346F84DE00D7BC61AFCFE4693A3DA3DDCD874579368F9638F7B2A991DB6
      A2292373328EF5D3D7E54FFC15B7E3EFFC241E34D1BE13E992E6CB41D9A9EADF
      2FDEBC923FDCA7CC808F2E190B655CAB7DA704068E937604AECF953F69BFDA6F
      C55FB5078FDF5FD7DFEC7A65B6E8B49D12190B41A7C248E07037C8D852F2100B
      1038555445F20A2800B100724D666E0016380327DABDEFC1FF00B07FC7BF1C69
      925FE9DF0DB54B782394C257567874E94B000E44772F1B95C30F980DA4E46720
      81FA39FB087EC2165FB3DE97078C7C63041A87C49BC84ED4C8922D1A36183144
      46434C4121E51C609443B77349F64D52899B9763F06BC61FB07FC7BF03E991DF
      EA3F0DB54B88249442174978751943104E4C76CF2385C29F988DA0E0672403E0
      8410707835FD3057C5BFB6FF00FC13F746F8DBA25D78AFC01A6D8E87F10ADBCC
      9E482044B7835BDCC5DD65C6145C16662B31FBC4ED90E0ABC638829773F1C6BD
      83F663FDA73C55FB2FF8FE3D7B4193ED9A65CED8B56D12690AC17F082783D764
      8B96292004A9278656746F1F20A920F045152687F485E06F1CE85F12BC25A678
      9BC33A9C1AC687A94226B6BCB7276BAE704107055810559580656054804115BD
      5F953FF0492F8FBFF08FF8D359F84FA9CB8B2D7B7EA7A4FCBF76F238FF007C9F
      2A127CC8630D9670ABF66C005A4AFD56AD13B98356615F03FF00C147BF6DED47
      E1187F861E03B9FB2F8A2FAD166D535BB7994C9A6C32676C31053B92E1D46EDC
      D8288E8C9967578FEC8F8C1F11ECFE10FC2DF14F8CEF840F0E8BA7CD78B05C5C
      8B75B89554F97089083B5A47DB1AF0496700024807F9E2F14F89751F19F89B56
      F106B171F6BD5B55BB96FAF2E362A79B348E5DDB6A80A32CC4E0000678029365
      455CCC249393C9A28AEE7E0BFC17F14FC7CF1FD87843C2363F6CD4AE7E792590
      9582D2104079E6700EC8D72327049255543332A9835387552C700127DABD2BFE
      198BE30E33FF000AA7C6DFF84F5DFF00F1BAFDABFD9A3F64FF00047ECCDE12B4
      B1D16C20D43C44622BA87896E2DD45E5E33152EA1B931C3944DB103B46D04EE6
      DCEDED555CA67CE7F340CA54E0820FBD771F05FE3478ABE01F8FEC3C5DE11BFF
      00B1EA56DF24B0C80B41770920BC1320237C6D819190410ACA5595587EE87C72
      FD97BE1BFED0FA6341E31F0EC173A82C462B7D66D47937F6C30E1764CBC95532
      3B88DF7465B9286BF133F698FD9DF5EFD993E28DD783F5C9E1BF46885E69FA8D
      BE02DE5A3332A485324C6D9475643D194E0B2ED664D58A4D338EF89DE33FF858
      FF00127C57E2CFB1FF0067FF006EEAB75A9FD93CCF33C8F3A669366FC0DDB776
      33819C6703A573545148A3EE4FF8241FFC9C97893FEC54B8FF00D2BB4AFD7CAF
      C83FF8241FFC9C97893FEC54B8FF00D2BB4AFD7CAB8EC652DC2BCA7F698FDA23
      41FD993E175D78C35C826BF769459E9FA75BE435E5DB2B32465F0446B8476673
      D154E0336D56F56AFC5DFF00829B7C7DFF0085BBF1F66F0D69F2EFF0FF0082BC
      DD322F971E65E161F6B7E515861D122C12CBFB8DEA70E69B76125767CF5F1A3E
      3478ABE3E78FEFFC5DE2EBFF00B66A573F2450C60AC1690824A410A127646B93
      8192492CCC599998F0D45773F03BE13EA3F1CBE2CF867C0DA5BF9373AC5D885E
      E30ADF67854179A6DACCA1B644AEFB7702DB703922B336D83E13FC0EF1DFC71D
      65F4BF037866FBC4173163CE92050905BE55D97CD99C88E3DC237DBBD86E2B81
      93C57D43A5FF00C123BE33DFE9B69753EAFE10D3679A2491ECEE6FEE0CB03100
      98DCC703216527076B32E47048E6BF533E0BFC17F0AFC03F00587847C2361F63
      D36DBE796690869EEE620079E67006F91B0327000015542AAAA8EEAAF94C9CBB
      1F849F19FF0060BF8CBF042D6FB51D53C33FDB5A059F326B3A049F6B80279464
      79190013471A0560D2491AA82BD70549F9E88C57F4BE466BF2F3FE0AA3FB2A69
      BE1A16BF17BC25A57D923BEBB3078961B556F2FCE9398AEF62AED4DEC192472C
      033BC5F29777629A294AFB9F9C75FA4DFF0004CDFDB4EF06A765F07FC77AB40D
      60D108BC35A95F4A44A9202AA9A796C10CA413E56E20A95F2C6EDD1AA7E6CD5A
      D2B54BCD0F53B4D4B4EBB9EC350B3992E2DEEADA431CB0C8A432BA30C1560402
      08E411529D8A6AE7F4AD457997ECD3F17FFE17CFC0CF0878E5ADFEC973AA5A1F
      B5C213622DCC4ED0CFB06E6223F3237299627695CE0E457A6D6A601451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450015E19FB4D7EC7FE03FDA7F457FEDDB3FECFF0014DBDA35B69B
      E23B507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AF73A2803F047F69AFD8
      FF00C79FB306B4FF00DBB67FDA1E16B8BB6B6D37C476A079177850EA1D412D0C
      8549F91FA9493617552D5E1B5FD2AEABA5596BBA65DE9DA95A417FA7DDC4F05C
      5ADD46248A68D815647560432904820F041AFCDAFDAA7FE0953FF1F1E23F8283
      FE78A3783AEA7FAAC924175349FEE318E43FF3D087FB91D4346AA5DCFCCFA2AD
      6ABA55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB0208
      20F208AAB5258514514005145140051451400514514005145140056EF81FC0DA
      F7C4AF16699E19F0C6973EB1AE6A52886D6CEDC0DCED8C9249C0550016666215
      541624004D7BDFECAFFB05F8EFF69836FAC1FF008A57C0B279CBFF000915DC42
      5F35E3C0D9041BD5A5CB9C17CAA0D920DC59761FD7BF811FB397813F671F0D4B
      A4782B48FB19B9F2DAFAFEE2432DD5EC889B43CB21FF00811D8A1514BB9555DC
      72D2B92E563E4BFD943FE0973A178360B1F137C5C483C49AEBC514D1F86B9367
      A74A1F7E25756C5CB60229523CAE64522505587E800014600C0F6A5A2AED6326
      EE14514531051451400514514005145140051451401F33FF00C148FF00E4CC3E
      217FDC3FFF004E16D5F86F5FBDDFB707833FE13CFD93BE2669BF6CFB0F91A536
      A7E6F97E66EFB232DD6CC647DFF236673C6ECE0E307F046A246B0D82BEE4FF00
      8241FF00C9C97893FEC54B8FFD2BB4AF86EBEBEFF8257F8CFF00E117FDAC6C34
      DFB1FDA7FE122D2AF34CF37CCD9F67DAA2EB7E307767ECBB3191F7F39E3052DC
      A7B1FB454514568601451450014514500145213815F217C44FF82A4FC14F0178
      967D1ED65D6FC5DE46E596FF00C3F691C96AB22BB294579658FCCFBB90E81908
      652AC79C034AE7D7D45781FECF1FB6DFC30FDA4E7B8B1F0FEA3368FAEC72F971
      E89AF7956F7972BB0BF990A2C8E255015F3B4965D84B05054B7BE502D8466DAA
      4FA0CD7F3A1F18BE235E7C5CF8A7E2AF195F09D27D6B519AED60B8B9370D6F1B
      31F2E11210372C69B635E000A800000007EF6FED15A9DE68BFB3F7C4CD434FBB
      9EC2FED3C33A94F6F756D218E58645B59195D181055810082390457F3C44E4D4
      48D2015F50FF00C1373E15C5F143F6A9F0F49771C1369FE1A8A4F104F14B2BA3
      3342556029B3AB2DC4903ED2429546CE7EEB7CBD5FA3BFF046BF0DE9D75E25F8
      9FAFCB6FBB56B1B4B0B1B7B8DEC36433BCCF2AEDCED3B9ADE1392091B3823272
      96E5BD8FD43A28A2B4300A28A2803F103FE0A47F0AE2F85FFB54F8864B48E087
      4FF12C51F88208A295DD95A62CB397DFD19AE239DF682542BAE31F757E5EAFD1
      DFF82CA786F4EB5F12FC30D7E2B7DBAB5F5A5FD8DC5C6F63BE181E178976E768
      DAD7131C8009DFC93818FCE2ACDEE6EB63B0F83BF11AF3E11FC53F0AF8CAC44E
      F3E8BA8C376D05BDC9B76B88D58799099003B5644DD1B70415720820907FA2F5
      6DCA0FA8CD7F3400E0D7F43BFB3AEA779AD7ECFDF0CF50D42EE7BFBFBBF0CE9B
      3DC5D5CC86496691AD636677624966249249E4934E244CF9EBFE0AB7E30BCF0D
      7ECACDA75B4703C3E20D6ED34DBA69549648D449720A608C36FB6419391B4B71
      9208FC67AFD30FF82CD9FF009245FF00716FFDB3AFCCFA4F72A3B057EB4FFC12
      47E0BC1E1BF84FACFC47BEB0DBAB788EEDECEC6E64313FFA040769319037A6F9
      C4A1D588DDE44476F00B7E4B57F403FB20786F4EF0A7ECBBF0BACB4BB7FB2DB4
      BE1FB4BE74DECF99AE2313CCD9624FCD24AED8E83760000001C452D8F5FA28A2
      ACC82BE37FF82A3FC138BE24FECF6FE2BB5B79A6D77C192FDB6116F0BCACF692
      B225D215560154011CCD2156DAB6E7EE86635F64560F8FBC2367F103C0BE22F0
      C6A124F0D86B5A75C69D7125B30595239A368D8A12080C031C1208CF63498D3B
      33F9BDA295C6D761E87149599B9F727FC120FF00E4E4BC49FF0062A5C7FE95DA
      57EBE57E41FF00C120FF00E4E4BC49FF0062A5C7FE95DA57EBE55C763296E731
      F143C67FF0AE7E1A78B3C57F64FED0FEC2D26EF53FB2799E5F9DE4C2D26CDF83
      B73B719C1C673835FCE86ABAADE6B9AA5E6A5A85D4F7D7F7933DC5C5D5CC8649
      6691D8B33BB312598924924E4935FB8FFF000512D52F348FD8E3E224F63773D9
      4CF15A40D25BC8518C725E411C8848FE17466561D0AB107826BF0BA948A8057E
      97FF00C11D3E1B7FC940F1FDD69DFF003C344D3F50F3BFEDB5D45E586FFAF36D
      CCBECA7EF8AFCD0AF5FF00841FB5B7C56F80DE1AB9D03C0BE29FEC4D26E6EDAF
      A5B7FECFB5B8DD3322216DD2C4CC3E58D0601C71D3934968535747F403457E1B
      FF00C3C8FF0068AFFA285FF946D3FF00F8C51FF0F23FDA2BFE8A17FE51B4FF00
      FE3155CC8CF919FB915C2FC75F87BFF0B5FE0D78D3C20B0D94F73AC693736B6B
      FDA2BBA08EE4C67C891BE5623649B1C3004A950472057E38FF00C3C8FF0068AF
      FA285FF946D3FF00F8C521FF0082917ED144107E21707FEA0DA7FF00F18A3990
      72B3E6861B588F438A28272493D4D1506A7EAB7FC11D3C69F6FF0086DF103C27
      F64D9FD97AAC1A9FDAFCDCF99F6987CBD9B31C6DFB1E73939F33181B79FD0AAF
      CD8FF823469779169BF15B517B49D34F9E5D36086E9A32229248C5CB488ADD0B
      28923240E4075CFDE19FD27AD16C632DC28A28A6485145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451401E19FB4D7EC7FE03FDA7F457FEDDB3FECFF0014DBDA35B69BE23B50
      7CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84FDA6BF63FF1E7ECC1AD3F
      F6ED9FF68785AE2EDADB4DF11DA81E45DE143A87504B4321527E47EA524D85D5
      4B57EF7554D574AB2D774CBBD3B52B482FF4FBB89E0B8B5BA8C4914D1B02AC8E
      AC0865209041E08349AB94A563F9AAA2BF4C3F6A9FF8254FFC7C788FE0A0FF00
      9E28DE0EBA9FEAB24905D4D27FB8C6390FFCF421FEE475F9B3AAE957BA16A777
      A76A5693D86A1692BC1716B75198E5864525591D5802AC082083C822B36AC6A9
      DCAB45145030A28A2800A28AFA63F657FD82FC77FB4C1B7D60FF00C52BE0593C
      E5FF00848AEE212F9AF1E06C820DEAD2E5CE0BE5506C906E2CBB0817B1E09E07
      F036BDF12BC59A67867C31A5CFAC6B9A94A21B5B3B70373B6324927015400599
      988555058900135FA85FB287FC12E742F06C163E26F8B89078935D78A29A3F0D
      726CF4E943EFC4AEAD8B96C0452A4795CC8A44A0AB0FAD3E047ECE5E04FD9C7C
      352E91E0AD23EC66E7CB6BEBFB890CB757B2226D0F2C87FE0476285452EE5557
      71CFA6D5A464E57D840028C0181ED4B451544051451400514514005145140051
      451400514514005145140197E2AF0DE9FE32F0C6AFA06AF6FF006BD2B55B496C
      6EEDF7B279B0C8851D77290C32AC46410467822BF9C7F15786F50F06F89F57D0
      357B7FB26ABA55DCB63776FBD5FCA9A3728EBB9495386523209071C135FD2657
      E337FC151FE09CBF0DBF6847F15DADBC30E85E338BEDB08B7852254BB89512E9
      0AAB12CC498E6690AAEE6B83F78AB1A9917067C715E99FB33FC48FF8547F1FBC
      07E2B7D43FB2ACAC35687EDD77E4F9DE5D9BB79773F26D62730BCA3E505B9CAF
      CD8AF33A2A0D4FE97C10C011C834B5F2A7FC1397F684D3BE33FC03D2B40FF53E
      24F05DA5BE93A85BAC2C919855592D65462CC1B747161B9077A3FCAAA533F55D
      6A60F40A28A2810514521200C9E05007CA9FF051FF008FFA8FC0CF802F0F87B5
      2FECDF147892ED74CB4B882E962BAB6876979E789482C70AAB16E5DA50DC2306
      0C173F8964E4D7D69FF0523FDA3ECFE3C7C6B8B4BF0FEA106A5E10F0AC4D6765
      756CC1E2BAB87DAD733236C04A92A918F99908837A1C495F25D66F7368AB2353
      C2BE25D47C19E26D23C41A45C7D9356D2AEE2BEB4B8D8AFE54D1B8746DAC0A9C
      3283820838E41AFE8BBC05E2FB3F883E07F0F78A34F8E786C35BD3ADF52B78EE
      542CAB1CD1AC8A1C024060186402467B9AFE747C2BE1BD43C65E27D2340D22DF
      ED9AAEA9790D8DA5BEF54F36691C222EE621465980C9200CF2457F483A469769
      A1E9567A769F690585859C296F6F6B6D188E2863550AA88A000AA0000003000A
      7126679F7ED3BFF26DBF15BFEC54D57FF4925AFE7AEBFA55D5F4BB4D734ABCD3
      B50B482FEC2F217B7B8B5B98C4914D1B2956475208652090411820D7F37DE2AF
      0DEA1E0DF13EAFA06AF6FF0063D574BBC9AC6EEDF7ABF95346E51D77292A70CA
      464120E382689040CBAFD2FF00F82321E7E2EFFDC27FF6F2BF342BEC7FF8252F
      8C6CFC33FB54AE9D751CEF3788344BBD36D5A200AA48A63B925F2461765B4832
      327715E3049096E54B63F6668A28AD0C428A28A00FCCEFF82CD9E7E117FDC5BF
      F6CEBF342BEC7FF82AD78C6CFC4DFB54B69D6B1CE93787F44B4D36E9A5002BC8
      C64B905304E5765CC632707706E30013F1C566F7368EC15FD0A7ECC5C7ECDBF0
      A7FEC54D2BFF004922AFE7FF00C29E1BD47C63E28D2341D22DFED7AAEA9790D9
      5A5BEF54F36691C222EE621465980C9200CF2457F49518DB1A8F414E24CCFCD1
      FF0082CDFF00CD22FF00B8B7FED9D7E67D7EC2FF00C15ABC0F2F88BF670D375E
      B5D320B99BC3FADC335C5F30412DADACA8F0B0563F36D699AD8155CE48524613
      23F1EA93DCA8EC15FD09FECC273FB367C29FFB1534AFFD248ABF9ECAFD98FF00
      82567C48B3F177ECC36FE1C410C3A8785750B8B39A15B90F2C91CD235CC73347
      80635632C918CE41303107A857114B63EC8A28A2ACC82A9EB1A9D9E8BA4DEEA1
      A85DC161616903CF717573208E2863552CCEEC480AA002493C002AE5781FEDD7
      F11ECFE19FECADE3FBBBA104B3EA9A7BE896B6D2DC885A692E8184ECC83BD911
      E49760192B137206580347E0EC873231F734DA28AC8DCFB93FE0907FF2725E24
      FF00B152E3FF004AED2BF5F2BF20FF00E0907FF2725E24FF00B152E3FF004AED
      2BF5F2AE3B194B73E67FF8291FFC9987C42FFB87FF00E9C2DABF0DEBFA1DFDA2
      3C112FC48F811E3FF0D5B69906B17FA8E89770D959DC04DAF75E531B720BE155
      84A23656246D601B2319AFE7888C120F514A454360AF5FF841FB24FC56F8F3E1
      AB9D7FC0BE16FEDBD26DAEDAC65B8FED0B5B7DB32A2395DB2CAAC7E5910E40C7
      3D7835E415FA87FF000473F887F68F0D7C41F02CF35947F64BB8359B487762EA
      6F353CA9DB05BE68D3C9B7190BF2997927728096A537647CA9FF000EDCFDA2BF
      E89EFF00E5674FFF00E3F47FC3B73F68AFFA27BFF959D3FF00F8FD7EE45155CA
      8CF9D9F86FFF000EDCFDA2BFE89EFF00E5674FFF00E3F47FC3B73F68AFFA27BF
      F959D3FF00F8FD7EE451472A0E767E1BFF00C3B73F68AFFA27BFF959D3FF00F8
      FD7A67C36FF8248FC53F131D3AE7C5BACE89E0CB29BCCFB4DBF98D7D7D6D8DC1
      3F771E227DC429E26E15B27E6056BF5EC90064F02BC87FE1AFBE0A7FC24BFD85
      FF000B47C2FF006EFB2FDB3CDFED28FECBB37ECDBF69CF93E667FE59EFDF8F9B
      6EDE68B20E6674BF05FE0BF85BE01F802C3C21E11B1FB1E9B6DF3C92C8434F77
      31003CF338037C8D819380000AAA15555477548082323914B544051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      514005145140051451400514514005145140057867ED35FB1FF80FF69FD15FFB
      76CFFB3FC536F68D6DA6F88ED41F3ED32C1D43A821668C303F23F40F26C28CC5
      ABDCE8A00FC11FDA6BF63FF1E7ECC1AD3FF6ED9FF68785AE2EDADB4DF11DA81E
      45DE143A87504B4321527E47EA524D85D54B5786D7F4ABAAE9565AEE9977A76A
      56905FE9F7713C1716B75189229A3605591D5810CA412083C106BF36BF6A9FF8
      254FFC7C788FE0A0FF009E28DE0EBA9FEAB24905D4D27FB8C6390FFCF421FEE4
      750D1AA9773F33EB77C0FE06D7BE2578B34CF0CF8634B9F58D735294436B676E
      06E76C64924E02A800B33310AAA0B120026BE85FD9AFFE09F1F11FE3EEA8F3EA
      5693F81BC2B6F35CDADCEB1AA5B6651710B6C7863B66647761265589DA8A5241
      BB7A6C3FAE3F023F672F027ECE3E1A9748F05691F63373E5B5F5FDC4865BABD9
      1136879643FF00023B142A29772AABB8E52571B958F92FF650FF00825CE85E0D
      82C7C4DF17120F126BAF145347E1AE4D9E9D287DF895D5B172D808A548F2B991
      48941561FA00005180303DA968ABB58C9BB8514514C414514500145145001451
      45001451450014514500145145001451450015E19FB687C031FB45FC02D77C37
      6B1799E20B4C6A9A2FCD8CDE44ADB539745FDE2349165CED5F377E09515EE745
      01B1FCD46A9A5DE687A9DDE9DA8DA4F61A85A4CF6F716B73198E5864525591D4
      80558104107904556AFD56FF008281FF00C13F7FE138FED2F89DF0C74EFF008A
      97E6B8D6BC3F6A9FF212EED71028FF00978EA5907FADE48FDE644BF952410707
      8359356374EE773F05FE3478ABE01F8FEC3C5DE11BFF00B1EA56DF24B0C80B41
      770920BC1320237C6D819190410ACA5595587ED0FECC9FB6FF00C3CFDA62CD2D
      6C6E87873C58BB525F0EEAB346B3CAFE51776B639FDFC6BB64E400C026E6440C
      B9FC25A0120E41C1F6A69D84D5CFE97C1CD2D7F3FDF0F3F6BCF8CBF0B7C95F0F
      7C44D6E1B682D16C60B2BD9FEDB6B042BB76AC704E1E34DA11402AA081900804
      83DC1FF82917ED1447FC942FFCA369FF00FC62AB988E467EDF6ABAB59685A6DD
      EA3A95E41A7E9F6913DC5C5D5D48B1C50C6A0B33BB31015400492780057E63FE
      D9FF00F0533D3BC63E1BD77E1F7C2B83ED7A4EA9682D2FBC53751B279B0C88C2
      7820B791030CAB2A195F046640A83E492BE09F19FC51F197C47FB27FC259E2CD
      6FC4DF64DFF66FED8D466BAF277EDDFB3CC63B776D5CE3AED19E82B98A4D94A3
      60A28AF5FF00D993F664F157ED41E3F4D03404FB1E996DB65D5B5B9A32D069F0
      92793C8DF23618246082C41E5555DD64B3E85FF8256FECF1FF000B0FE2C5CFC4
      4D62CBCDF0FF0084B1F63F3A2CC771A8B8F931B90AB7929990E195D1DADD8706
      BF5F2B8FF845F0AB41F825F0E744F04F86A39A3D1F4988C711B994C92C8CCECF
      248EDFDE777763801416C2850001D8568958C1BBB0AFC66FF82A3FC1397E1B7E
      D08FE2BB5B7861D0BC6717DB6116F0A44A97712A25D215562598931CCD2155DC
      D707EF15635FB335E65FB46FC08D1FF68EF84DABF82B5797EC66E76CD67A8A40
      92C965728731CA81BF15600A9647750CBBB206AE34ECCFE7B2B4FC2DE25D47C1
      9E26D27C41A3DC7D9356D2AEE2BEB3B8D8AFE54D1B8746DAC0A9C3283820838E
      41AB5E39F036BBF0D7C5BA9F867C4DA64FA3EB9A6CC61B9B3B80372363208232
      1948219594956521812083585599B1FD007ECC7FB4DF857F6A0F0047AF68127D
      8F53B6DB16ADA24D2069F4F9883C1E06F8DB0C524000600F0ACAE8BEC15FCE7F
      C2AF8BBE2FF825E2C8FC4BE09D6E7D0B58489E033C4A8EB246C3E6478DC323AE
      4038604065561CA823EE3F07FF00C163FC4B65A6491F8A7E1C697AC6A0652527
      D275192C2258F030A63912725B3B8EEDC06081B46326D48C9C7B1FA9B5E2DFB5
      7FED2FA0FECC9F0BAFB5BBEBB81BC47770CB0E83A5BA991AEEEC2FCA590329F2
      5095691B70C29001DCC8ADF08F8D3FE0B17E31BF169FF089FC3FD1345DBBFED3
      FDB17736A1E6671B36797E46CC7CD9CEECE4636E0E7E1CF889F137C55F167C4B
      3EBFE30D7AFBC41AB4BB87DA2F652FE5A1767F2E35FBB1C619D888D0055DC700
      50E40A3DCCCF14789752F19F89756F106B171F6CD5B55BB96FAF2E362A79B348
      E5DDB6A80A32CC4E000067802B328ADDF03781B5DF895E2DD33C33E19D327D63
      5CD4A610DB59DB81B9DB19249380AA002CCCC42AA82C48009A8353EAAFF825C7
      C1397E24FED089E2BBAB7866D0BC1917DB661710A4AAF772ABA5AA0566055811
      24CB2056DAD6E3EE96535FB335E65FB397C08D1FF671F84DA4782B4897ED86DB
      74D79A8BC091497B72E7324AE17F05504B1544452CDB727D36B44AC62DDD9E79
      FB42FC2C8BE35FC13F18F829E38249F56D3E48ED0DCCAF1C51DDAFCF6D23B27C
      DB56648D8E01C85C10C0907F9ECD574BBCD0F53BBD3751B49EC350B399EDEE2D
      6E6331CB0C8A4AB23A9C156041041E4115FD2B57E4B7FC150BF654D4BC21E3FB
      BF8B3E1CD2B7F84F5AF2CEB0D6AAB8B1BF276191D1546D8E6F90F984B6666937
      105D032921C5F43E08AF7BFD8D3F6A6BCFD95FE289D664B59F54F0CEA710B3D6
      34E8652ACD1EE05678D770469A339DBBF82AF22E537EE1E094541AEE7F487E06
      F1CE83F12BC25A6789BC33A9C1AC687A94426B5BCB7276BAE704107055810559
      580656054804115BB5FCF5FC20FDA57E267C06FB42F81BC5D7DA25ADC6E32D96
      12E2D599B6664F225568C4988D07981776063382457D2E3FE0AF9F18B1FF0022
      E782BFF006EFFF0092AAF98CB959FAE7AAEAB65A1E9977A8EA37705869F6913D
      C5C5DDCC8238A18D41667766202A800924F000AFC5DFDBFF00F6CA8BF699F16D
      9687E1959E0F01E81348D6B2C8CE8DA9CE405372F11202A80088C32EF0AEE490
      64289E67F1AFF6C5F8B3F1F609EC7C55E2A9FF00B0A595E41A269C8B6B66159D
      5D6364400CCA8513679C5D976E739249F21D2B4ABDD7353B4D3B4EB49EFF0050
      BB952DEDED2DA3324B348C42AA22A82598920003924D26EE528DB72AD15A5E27
      F0DEA3E0DF126ABA06B16FF63D5B4BBB96C6F2DF7ABF95346E51D77292A70CA4
      64120E3826B36A4B3EE4FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAFC83
      FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAB8EC652DC4232083D0D7E097
      EDA1F00CFECEBF1FB5EF0E5AC5E5E81778D5345F9B38B3959B6A72EEDFBB7592
      2CB9DCDE56FC00C2BF7BABE66FDBCFF6571FB4C7C26CE8F6FE6F8EBC3FBEE744
      DD75E4C72EF29E7C0F9054F98918DA4EDC3A265D54BE5B57145D99F8715ED1FB
      21FED0F2FECCBF1AF4CF17496F3DEE8D244F61AB59DB6CF366B49304EC2E3EF2
      3AC72000AEE31ED2CA189AF21D574ABDD0F53BBD3B51B49EC350B495EDEE2D2E
      6331CB0C8A4AB23AB00558104107904555ACCDB73FA43F0378E741F895E12D33
      C4DE19D4E0D6343D4A2135ADE5B93B5D738208382AC082ACAC032B02A40208AD
      DAFC1AFD967F6CBF1B7ECAFA95D47A30835AF0CDFCA92DF6837ECC226605774B
      0B03FBA98A294DF865236EE47D89B7EE4F07FF00C1623C057BA6C8FE29F03788
      B47D404A4241A4CB05FC4D1E0618C92340436770DBB48C00771CE05DCC9C59FA
      0355355D56CB42D32EF51D4AEE0B0D3ED2279EE2EAEA411C50C6A0B33BB31015
      400492780057E7FF008D3FE0B19E0FB1169FF089FC3FD6F5ADDBFED3FDB1770E
      9FE5631B36797E7EFCFCD9CEDC6063764E3E13FDA1FF006BDF891FB4D5C409E2
      DD4E18746B597CFB5D0F4C8BC9B3824D810BE096776C0620C8CC57CC70BB4311
      45C1459ED1FB6F7FC140F59F8DDADDCF857E1FEA57DA1FC3DB6F32092781DEDE
      7D6F7294769718616E55982C27EF03BA4192A91FC5D456EF81BC0DAEFC4AF16E
      99E19F0CE993EB1AE6A53086DACEDC0DCED8C9249C0550016666215541624004
      D46E68958FD85FF825B7C43D67C79FB2EC56BAC4DF69FF008477559F46B399D9
      DE46B658E29515CB31CECF3CC6A06004445038C9FAFAB85F81BF09F4EF81BF09
      BC31E06D2DFCEB6D1ED044F71865FB44CC4BCD36D6662BBE5677DBB885DD81C0
      15DD5688C5EE1451453105145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      514005145140098C52D145001451450014514500145145001451450014514500
      145145001451450014514500145145001451450015F1BFED5DFF0004DCF087C7
      59EFBC4BE11960F05F8E2E2596EAEA708EF67A9C8C9C09630DFBA62EAA4CB182
      7E691992466047D91451B8D3B1FCFAFC72FD97BE247ECF1A9B41E32F0E4F6DA7
      B4BE55BEB36A3CEB0B93970BB265E03308DD846FB640BC9415E535FD2FB28618
      2011EF5E1DE34FD87FE04F8F7EC9FDA5F0CF44B6FB2EFF002FFB1E36D3376EC6
      77FD99A3F33EE8C6ECE39C632731CA5A9F73F0468AFD8FF127FC1267E09EB9AD
      5C5F595D78A3C3F6D2EDD9A769DA8C6F0438500ED33C5249C9058EE73CB1C606
      00CCFF008741FC1DFF00A193C6DFF81D69FF00C8B4B9595CC8FC83AB5A5E957B
      AE6A569A769B693EA1A85DCA905BDADAC664966918855445504B31240007249A
      FD98F067FC12C3E04F85FED9FDA561ADF8BBCFD9E5FF006C6A6D1FD9F1BB3B3E
      CC21CEEC8CEFDDF74631CE7E84F87BF02FE1E7C27F21FC21E0BD13C3F7315A2D
      8FDB6CAC635BA9211B7E5927C799264A2925D8962A0924F34F945CE8FCAAFD99
      3FE0993E3BF8B7769AA78FE1BDF879E164DAEA975001A8DEE252AF1A42C4341F
      2ABFEF255FE28CAA48A491FAABF05FE0BF857E01F806C7C23E10B0FB1E9B6DF3
      C9348434F7731003CF338037C8D819380000AAA15555477545525621B6C28A28
      A64851451401E19FB4DFEC7FE04FDA7F457FEDDB3FECFF0014DBDA35B69BE23B
      507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84F8F9FB17FC54FD9D4CB
      75E23D07EDFE1F4C7FC541A316B9B119F2C7CEDB4343F3C8A83CD54DCC0EDDC0
      66BF7BA9080C304647BD26AE529347F341457EF778D3F61FF813E3DFB27F697C
      33D12DBECBBFCBFEC78DB4CDDBB19DFF006668FCCFBA31BB38E718C9CF8B6A9F
      F048EF8317FA95DDD41ABF8BF4D82695E44B3B6BFB73140A4922343240CE5541
      C0DCCCD81C9279A9E565F323F1EA8AFD85D2FF00E091DF062C352B4BA9F57F17
      EA50432A48F67737F6E229D4104C6E63815C2B0183B595B07820F35ED3E0BFD8
      7FE04F80BED7FD9BF0CF44B9FB56CF33FB6236D4F6EDDD8D9F69693CBFBC73B7
      19E339C0C1CAC3991F907F00FF0062FF008A9FB4518AEBC39A0FD83C3EF9FF00
      8A83592D6D6271E60F91B6969BE78D90F94AFB588DDB41CD7EBDFECC9FB1FF00
      813F660D153FB0ACFF00B43C537168B6DA9788EE81F3EEF0C5D822925618CB11
      F2275091EF2ECA1ABDC800A300607B52D525621C9B0A28A2992155755D2ACB5C
      D32EF4ED46D20BFD3EEE27B7B8B4B98C4914D1B02AC8EAC0865209041E08356A
      8A00FC7AFDB4FF00E09D9AF7C1FD4F56F187C3BB09F5AF874B13DEDC5B2C824B
      9D19411B91813BE58406DC241B99515BCCE13CC7F890820E08C1F7AFE97C8CD7
      907C57FD917E10FC6ED65357F187822C751D5973BAFEDE496CE79BE5451E6BC0
      E8D2E16350BBCB6D030B8C9CCB89A29773F9FF00A2BF5F0FFC120FE0EE7FE463
      F1AFFE075A7FF22D74DE0BFF0082587C09F0B1BBFED2B0D6FC5DE7ECF2FF00B6
      35368FECFB739D9F6610E7764677EEFBA318E733CAC7CC8FC8DF857F087C5FF1
      B7C591F86BC13A1CFAEEB0F13CE6189951638D47CCEF2395445C9032CC016655
      1CB007F5EFF634FD80741FD99A73E26D72F60F14F8F268824778B015B7D31590
      0952DC31259892EA662158A6142A0670FF004BF83FC05E1AF87BA6C9A7785BC3
      DA5F86EC2494CEF6BA4D9476B13C84052E563500B10AA33D70A3D2B7AA92B12E
      573F0B7FE0A0FF000AE5F857FB54F8C2311CE34FD7E5FF008482CE5B8951DA55
      B925A6236E36A8B813A2AB00DB5067390C7E71AFE89BE2C7C0EF027C72D1534B
      F1CF866C7C416D167C99275293DBE5919BCA9908922DC634DDB186E0B8391C57
      CD1E1BFF00824D7C13D0B5BB7BEBDBAF147882DA2DDBB4DD47518D209B2A40DC
      608A39382430DAE39519C8C829C46A48F0DFF823DFC27D4A4F1278CBE25CAFE4
      E930DA1F0F5BA614FDA26778A794E776E5F2D521EAB86F3B83F2115FA87597E1
      AF0BE8DE0CD16DF47F0FE9363A1E936DBBC9B0D3ADD2DE08B73166DA88028CB3
      31381C924F7AD4AA4AC43776145145311F257ED97FB00E83FB4CCE3C4DA1DEC1
      E16F1E4311492F1A02D6FA9AAA11125C0520AB021144C03304CA9570A813F23B
      E2C7C0DF1E7C0ED6934BF1C7862FBC3F73267C992750F05C61519BCA99098E4D
      A244DDB18ED2D8383C57F44D55355D2ACB5CD36EB4FD4ACE0D42C2EE2782E2D6
      EA259229A3605591D5810CA412083C106A5AB94A563F9AAA2BF793C61FB077C0
      4F1C6A51DF6A3F0DB4BB69E38442174879B4E88A824E4C76CF1A16CB1F988DC4
      60670001E2E7FE0907F0773FF231F8D7FF0003AD3FF916972B2F991F907457EC
      2E97FF00048EF83161A95A5D4FABF8BF5282195247B3B9BFB7114EA08263731C
      0AE1580C1DACAD83C1079AF69F05FEC3FF00027C05F6BFECDF867A25CFDAB679
      9FDB11B6A7B76EEC6CFB4B49E5FDE39DB8CF19CE060E561CC8FC83F807FB17FC
      54FDA28C575E1CD07EC1E1F7CFFC541AC96B6B138F307C8DB4B4DF3C6C87CA57
      DAC46EDA0E6BF5CBF659FD8D3C13FB2BE9973268C66D6BC4F7F12457DAF5FAA8
      959405DD142A07EEA12EA5F665989DBB9DF6263DEC00A300607B52D525621C9B
      0A28A29921451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      014514500145145001451450014514500145145007FFD9}
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    If <dsConfiguracion."lLicencia"> = '#39'No'#39' Then'
      '    Begin'
      '         Picture1.DataField := '#39#39';'
      '         Picture2.DataField := '#39#39';'
      '         lblLicencia.Visible := True'
      '    End'
      '    Else'
      '    Begin'
      '         Picture1.DataField := '#39'bImagenPEP'#39' ;'
      '         Picture2.DataField := '#39'bImagen'#39' ;'
      '         lblLicencia.Visible := False'
      '    End ;'
      ''
      '    //PARA MOSTRAR LOS AVANCES POR FRENTE Y TOTAL DE LA OBRA...'
      '      '
      
        '    If (<dsConfiguracion."bAvanceFrente"> = '#39'Si'#39') and (<dsConfig' +
        'uracion."bAvanceContrato"> = '#39'Si'#39') Then'
      '    begin                '
      '          GroupHeader6.Visible := True;'
      
        '          if <dsConfiguracion."lMostrarAvanceProgramado"> = '#39'Si'#39 +
        ' then'
      
        '              GroupHeader14.Visible := True;                    ' +
        '                                                    '
      '    end                  '
      '    else'
      '    begin'
      '        If <dsConfiguracion."bAvanceFrente"> = '#39'Si'#39' Then'
      '        begin                             '
      '           GroupHeader12.Visible := True   ;'
      
        '           if <dsConfiguracion."lMostrarAvanceProgramado"> = '#39'Si' +
        #39' then'
      '              GroupHeader15.Visible := True;  '
      '        end;                                 '
      '        If <dsConfiguracion."bAvanceContrato"> = '#39'Si'#39' Then'
      '        begin                             '
      '           GroupHeader13.Visible := True   ;'
      
        '           if <dsConfiguracion."lMostrarAvanceProgramado"> = '#39'Si' +
        #39' then'
      '              GroupHeader16.Visible := True;  '
      '        end;                                          '
      '    end;'
      ''
      '    //MOSTRAR PERMISOS..'
      '      '
      '    If <dsConfiguracion."bPermisos"> = '#39'No'#39' Then'
      '    begin                         '
      '        GroupHeader17.Visible := False   ;'
      
        '        MasterData7.Visible   := False;                         ' +
        '                                     '
      '    end;                                     '
      '    '
      '    //MOSTRAR COMENTARIOS..'
      ''
      '    If <dsConfiguracion."bComentarios"> = '#39'No'#39' Then'
      '    begin                 '
      '        GroupHeader7.Visible  := False   ;'
      '        MasterData3.Visible   := False;'
      
        '        GroupFooter5.Visible  := False;                         ' +
        '                                   '
      '    end;'
      ''
      ' If <dsReporteDiario."sIdUsuarioResidente"> = '#39#39' Then'
      '    begin                  '
      '        lblResidencia.Visible  := True;'
      
        '        lblResidencia2.Visible := True;                         ' +
        '                                                       '
      '    end                          '
      '    else'
      '    begin                '
      '        lblResidencia.Visible  := False;'
      
        '        lblResidencia2.Visible := False;                        ' +
        '                                                       '
      '    end;                        '
      ''
      '    If <dsReporteDiario."sIdUsuarioValida"> = '#39#39' Then'
      '    begin                '
      '         lblValida.Visible    := True;'
      '         lblValida2.Visible   := True;  '
      '    end                 '
      '    Else'
      '    begin                '
      '         lblValida.Visible    := False ;'
      '         lblValida2.Visible   := False;  '
      '    end;                   '
      ''
      '    If <dsReporteDiario."sIdUsuarioAutoriza"> = '#39#39' Then'
      '    begin'
      '         lblAutoriza.Visible   := True;'
      '         lblAutoriza2.Visible  := True;             '
      '    end                   '
      '    Else'
      '    begin                '
      '         lblAutoriza.Visible := False ;'
      '         lblAutoriza2.Visible:= False;  '
      '    end;'
      ''
      '    //Ocultar Firmas de en medio'
      '    if  <dsConfiguracion."iFirmasReportes"> = 2 then'
      '    begin'
      '        memo31.Visible := False;'
      '        memo36.Visible := False;'
      '       // memo35.Visible := False;'
      ''
      '        memo162.Visible := False;'
      '        memo166.Visible := False;'
      '        memo165.Visible := False;'
      ''
      '        lblAutoriza.Visible := False;'
      '        lblAutoriza2.Visible:= False;            '
      '    end;'
      '      '
      'end;'
      ''
      'procedure Memo41OnBeforePrint(Sender: TfrxComponent);'
      'begin    '
      '    if <dsmBitacora1."sTipo"> = '#39'NotaGerencial'#39' then '
      '    begin'
      
        '       memo41.Visible := True;                                  ' +
        '                                    '
      
        '       memo41.Font.Color := clBlack;                            ' +
        '          '
      '       memo41.Font.Style := Nil;'
      '       memo40.Visible    := True;'
      '    end '
      '    else '
      '    begin'
      
        '        memo41.Font.Color := clWhite;                           ' +
        '                                       '
      '        memo170.Font.Size := 6;'
      '        memo3.Font.Size   := 6;'
      '        memo41.Font.Size  := 6;'
      '        memo41.Font.Style := Nil;'
      '        memo40.Visible    := False;            '
      '    end;              '
      ''
      '    if <dsmBitacora1."sTipo"> = '#39'NotaGerencial'#39' then '
      '    begin      '
      '           memo3.Font.Color   := clWhite;'
      '           memo8.Font.Color   := clWhite;'
      '           memo18.Font.Color  := clWhite;                     '
      '           memo12.Font.Color  := clWhite;'
      '           memo125.Font.Color := clWhite;'
      '           memo11.Font.Color  := clWhite;'
      '           memo126.Font.Color := clWhite;'
      '           memo14.Font.Color  := clWhite;'
      
        '           memo148.Font.Color := clWhite;                       ' +
        '                          '
      '       end'
      '       else'
      
        '       begin                                                    ' +
        '                 '
      '           memo3.Font.Color   := clBlack;'
      '           memo8.Font.Color   := clBlack;'
      '           memo18.Font.Color  := clBlack;                     '
      '           memo12.Font.Color  := clBlack;'
      '           memo125.Font.Color := clBlack;'
      '           memo11.Font.Color  := clBlack;'
      '           memo126.Font.Color := clBlack;'
      '           memo14.Font.Color  := clBlack;'
      '           memo148.Font.Color := clBlack;  '
      '       end;               '
      '    if <dsmBitacora1."sTipo"> = '#39'Paquete'#39' then '
      '    begin          '
      '        memo170.Font.Color  := clWhite;'
      '        memo170.Font.Style := 0;            '
      '        memo41.Font.Color := clBlue;'
      '        memo41.Font.Style := fsBold;'
      '        memo3.Font.Color := clBlue;'
      
        '        memo3.Font.Style := fsBold;                             ' +
        '                             '
      
        '        //Aqui colocamos los colores al paquete..               ' +
        '                                                                ' +
        '                                '
      '        memo41.Color := $00E5E5E5;'
      '        memo170.Color := $00E5E5E5;'
      '        memo3.Color := $00E5E5E5;'
      '        memo18.Color := $00E5E5E5;'
      '        memo8.Color := $00E5E5E5;'
      '        memo12.Color := $00E5E5E5;            '
      '        memo11.Color := $00E5E5E5;'
      '        memo14.Color := $00E5E5E5;'
      '        memo125.Color := $00E5E5E5;'
      '        memo126.Color := $00E5E5E5;'
      '        memo148.Color := $00E5E5E5;'
      ''
      '        memo12.Font.Color := $00E5E5E5;'
      '        memo11.Font.Color := $00E5E5E5;'
      '        memo14.Font.Color := $00E5E5E5;'
      '        //memo125.Font.Color := $00E5E5E5;'
      '        //memo126.Font.Color := $00E5E5E5;'
      '        //memo148.Font.Color := $00E5E5E5;'
      
        '        memo170.Font.Color := $00E5E5E5;                        ' +
        '   '
      '    end '
      '    else'
      '    begin'
      '        memo170.Font.Color := clBlack;'
      '        memo170.Font.Style := fsBold;'
      '        if <dsmBitacora1."sTipo"> = '#39'NotaGerencial'#39' then'
      '           memo170.Font.Style := 0;            '
      '        memo41.Color := clWhite;'
      '        memo170.Color := clWhite;'
      '        memo3.Color := clWhite;'
      '        memo3.Font.Color := clBlack;'
      '        //memo3.Font.Style := 0;'
      '        memo8.Font.Color := clBlack;          '
      '        memo18.Color  := clWhite;'
      '        memo12.Color := clWhite;'
      '        memo8.Color   := clWhite;            '
      '        memo11.Color  := clWhite;'
      '        memo14.Color  := clWhite;'
      '        memo125.Color := $00BBECE9;'
      '        memo126.Color := $00BBECE9;'
      '        memo148.Color := $00BBECE9;                  '
      '        memo12.Font.Color := clBlack;'
      '        memo11.Font.Color := clBlack;'
      '        memo14.Font.Color := clBlack;'
      '        memo125.Font.Color := clBlack;'
      '        memo126.Font.Color := clBlack;'
      '        memo148.Font.Color := clBlack;'
      '        memo170.Font.Color := clBlack;        '
      '    end;'
      ''
      '    if <dsmBitacora1."sTipoAnexo"> = '#39'ADM'#39' then '
      '    begin'
      '        memo8.Font.Color  := clWhite;'
      '        memo11.Font.Color := clWhite;'
      '        memo12.Font.Color := clWhite;'
      '        memo14.Font.Color := clWhite;            '
      '    end'
      '    else'
      
        '        memo8.Font.Color := clBlack;                            ' +
        '    '
      'end;'
      ''
      'procedure Memo60OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsEquipos."sTipoObra"> = '#39'ADM'#39'  then'
      '    begin'
      '        memo60.Visible  := True;'
      '        memo65.Visible  := True;'
      '        memo231.Visible := False;'
      
        '        groupfooter8.Visible := True;                           ' +
        '                           '
      '    end'
      '    else'
      '    begin'
      '        memo60.Visible := False;'
      '        memo65.Visible  := False;'
      '        memo231.Visible := True;'
      
        '        groupfooter8.Visible := False;                          ' +
        '                                                           '
      '    end;              '
      'end;'
      ''
      'procedure Memo40OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                        '
      'end;'
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dsmBitacora1."sTipo"> = '#39'NotaGerencial'#39' then'
      '       memo3.Visible := False '
      '    else '
      
        '       memo3.Visible := True;                                   ' +
        ' '
      'end;'
      ''
      'procedure Memo62OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     if <dsAdmon."TiempoExtra"> > 0 then'
      '     begin'
      '         memo62.Visible := True;'
      
        '         memo35.Visible := True;                                ' +
        '               '
      '     end'
      '     else'
      '     begin'
      '         memo62.Visible := False;'
      '         memo35.Visible := False;  '
      '     end;               '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnDblClickObject = DiarioDblClickObject
    OnGetValue = DiarioGetValue
    Left = 472
    Top = 251
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmDiarioTurno2.dsAdmon
        DataSetName = 'dsAdmon'
      end
      item
        DataSet = frmDiarioTurno2.dsBitacora3
        DataSetName = 'dsBitacora3'
      end
      item
      end
      item
        DataSet = frmDiarioTurno2.dsEquipos
        DataSetName = 'dsEquipos'
      end
      item
        DataSet = frmDiarioTurno2.dsmBitacora1
        DataSetName = 'dsmBitacora1'
      end
      item
        DataSet = frmDiarioTurno2.dsmMovimientos
        DataSetName = 'dsmMovimientos'
      end
      item
        DataSet = frmDiarioTurno2.dsOrden
        DataSetName = 'dsOrden'
      end
      item
        DataSet = frmDiarioTurno2.dsPeriodo
        DataSetName = 'dsPeriodo'
      end
      item
        DataSet = frmDiarioTurno2.dsPermisos
        DataSetName = 'dsPermisos'
      end
      item
        DataSet = frmDiarioTurno2.dsPernoctas
        DataSetName = 'dsPernoctas'
      end
      item
        DataSet = frmDiarioTurno2.dsPersonal
        DataSetName = 'dsPersonal'
      end
      item
        DataSet = frmDiarioTurno2.dsReporteDiario
        DataSetName = 'dsReporteDiario'
      end
      item
        DataSet = frmDiarioTurno2.dsReporteFotografico
        DataSetName = 'dsReporteFotografico'
      end
      item
        DataSet = frmDiarioTurno2.dsSeguridad
        DataSetName = 'dsSeguridad'
      end
      item
        DataSet = frmDiarioTurno2.dsTiempoExtra
        DataSetName = 'dsTiempoExtra'
      end
      item
        DataSet = frmDiarioTurno2.dsTiempoMuerto
        DataSetName = 'dsTiempoMuerto'
      end
      item
        DataSet = frmDiarioTurno2.dsTiempoMuertoPersonal
        DataSetName = 'dsTiempoMuertoPersonal'
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
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 11.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      OnBeforePrint = 'Page1OnBeforePrint'
      object GroupHeader4: TfrxGroupHeader
        Height = 69.921262290000000000
        Top = 891.969080000000000000
        Width = 736.630397000000000000
        Condition = 'dsmBitacora1."sContrato"'
        ReprintOnNewPage = True
        object Shape3: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559060000000000000
          Width = 735.874015750000000000
          Height = 30.236240000000000000
          Visible = False
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo58: TfrxMemoView
          Left = 88.818895200000000000
          Top = 47.244094490000000000
          Width = 311.811023620000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 401.385826770000000000
          Top = 47.244094490000000000
          Width = 46.866141732283500000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.  A INSTALAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 449.173228350000000000
          Top = 47.244094490000000000
          Width = 34.393700790000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 484.062994570000000000
          Top = 37.039370080000000000
          Width = 86.551181100000000000
          Height = 10.204724410000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 571.236220470000000000
          Top = 37.039370080000000000
          Width = 85.039372520000000000
          Height = 10.204724410000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 656.748036380000000000
          Top = 37.039370080000000000
          Width = 80.881887320000000000
          Height = 10.204724410000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 1.889763780000000000
          Top = 26.456597720000000000
          Width = 481.889763780000000000
          Height = 20.787404020000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 483.622054570000000000
          Top = 26.456597720000000000
          Width = 253.984273940000000000
          Height = 10.582677170000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE LA OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 18.141744490000000000
          Top = 3.779530000000000000
          Width = 171.590185040000000000
          Height = 13.220470000000000000
          Visible = False
          ShowHint = False
          AutoWidth = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DETALLE DE MOVIMIENTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 2.078740160000000000
          Top = 47.244094490000000000
          Width = 33.637787950000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PQ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 484.503934570000000000
          Top = 47.244094490000000000
          Width = 45.354330710000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 530.456685590000000000
          Top = 47.244094490000000000
          Width = 40.062999450000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = 12315881
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 570.708661420000000000
          Top = 47.244094490000000000
          Width = 45.354330710000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 616.629911500000000000
          Top = 47.244094490000000000
          Width = 40.062999450000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = 12315881
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 656.125984250000000000
          Top = 47.244094490000000000
          Width = 41.574800710000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 697.700787400000000000
          Top = 47.244094490000000000
          Width = 40.062987240000000000
          Height = 22.677167800000000000
          ShowHint = False
          Color = 12315881
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 35.527551730000000000
          Top = 47.244094490000000000
          Width = 54.803149606299200000
          Height = 22.677167800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 122.795300000000000000
        Top = 1549.607300000000000000
        Width = 736.630397000000000000
        object lblResidencia: TfrxMemoView
          Left = 506.457020000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VBO. RESIDENCIA')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblAutoriza: TfrxMemoView
          Left = 257.008040000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN AUTORIZARIZACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblValida: TfrxMemoView
          Left = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VALIDACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 227.771800000000000000
          Top = 85.338590000000100000
          Width = 510.236550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.000000000000000000
          Top = 85.338589999999800000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsConfiguracion."sWeb"]'
            '[dsConfiguracion."sEmail"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 4.000000000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 25.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 254.905690000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 4.220470000000000000
          Top = 39.928879999999900000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 4.220470000000000000
          Top = 27.031230000001000000
          Width = 226.771653543307000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 255.008040000000000000
          Top = 26.472170000000000000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 308.023810000000000000
          Top = 71.165120000000000000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 506.559370000000000000
          Top = 40.354360000000000000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR_TIERRA]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 506.559370000000000000
          Top = 27.456710000000000000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR_TIERRA]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData7: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 11.338582680000000000
        ParentFont = False
        Top = 1107.402290000000000000
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsPermisos
        DataSetName = 'dsPermisos'
        KeepChild = True
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo78: TfrxMemoView
          Left = 2.267716535433070000
          Width = 94.866141732283500000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPermisos."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 97.133858270000000000
          Width = 641.007874015748000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPermisos."sFolios"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 24.566934020000000000
        Top = 986.457330000000000000
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsmBitacora1
        DataSetName = 'dsmBitacora1'
        KeepChild = True
        KeepFooter = True
        OutlineText = 'dsmBitacora1."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 88.818895200000000000
          Width = 311.811023620000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo3OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsmBitacora1."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 570.708661420000000000
          Width = 45.354330710000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidad"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 656.125984250000000000
          Width = 41.574803150000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadActual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 401.385826770000000000
          Width = 46.866141730000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<dsmBitacora1."sMedida"> ='#39'PAQUETE'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadAnexo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 530.267716540000000000
          Width = 40.062999450000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsmBitacora1."dAvanceAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 616.629911500000000000
          Width = 40.062999450000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsmBitacora1."dAvance"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 697.700787400000000000
          Width = 40.062999450000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsmBitacora1."dAvanceActual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          ShiftMode = smDontShift
          Left = 35.527551730000000000
          Width = 54.803149610000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsmBitacora1."dCantidadActual"> > <dsmBitacora1."dCantidadAnexo' +
            '">'
          Memo.UTF8 = (
            
              '[IIF(<dsmBitacora1."sTipoAnexo"> = '#39'PU'#39', <dsmBitacora1."sAnexo">' +
              '+'#39'.'#39'+<dsmBitacora1."sNumeroActividad">, <dsmBitacora1."sNumeroAc' +
              'tividad">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 483.944874570000000000
          Width = 45.732281020000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 448.834638350000000000
          Width = 34.771653540000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsmBitacora1."sMedida"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 33.637787950000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo41OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsmBitacora1."sPaquete"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 92.708720000000000000
          Width = 644.409663620000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataSet = frmDiarioTurno2.dsmBitacora1
          DataSetName = 'dsmBitacora1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsmBitacora1."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter4: TfrxGroupFooter
        Top = 1141.418060000000000000
        Width = 736.630397000000000000
      end
      object GroupHeader7: TfrxGroupHeader
        Height = 22.897650000000000000
        Top = 1356.851270000000000000
        Width = 736.630397000000000000
        AllowSplit = True
        Condition = 'dsBitacora3."sContrato"'
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.338582680000000000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo48: TfrxMemoView
          Left = 18.141732280000000000
          Top = 3.779527560000000000
          Width = 194.267365040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CRONOLOGIA DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 1402.205630000000000000
        Width = 736.630397000000000000
        AllowSplit = True
        DataSet = frmDiarioTurno2.dsBitacora3
        DataSetName = 'dsBitacora3'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Left = 2.000000000000000000
          Width = 735.874015750000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsBitacora3."mDescripcion"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 156.094517480000000000
        Top = 241.889920000000000000
        Width = 736.630397000000000000
        PrintOnFirstPage = False
        object Memo25: TfrxMemoView
          Left = 1.889763780000000000
          Top = 117.921281810000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 115.275590550000000000
          Top = 117.921281810000000000
          Width = 239.244094490000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 1.889763780000000000
          Top = 131.149628270000000000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 115.275590550000000000
          Top = 131.149628270000000000
          Width = 239.244094490000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 152.401670000000000000
          Top = 0.559069760000000000
          Width = 413.307360000000000000
          Height = 91.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            ''
            '[dsConfiguracion."mDescripcionBarco"]'
            ''
            'CONTRATO No.: [dsConfiguracion."sContratoBarco"]')
          ParentFont = False
          WordBreak = True
        end
        object Picture3: TfrxPictureView
          Left = 567.263400970000000000
          Top = 4.247162020000000000
          Width = 149.669288900000000000
          Height = 69.543307090000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 20.762633870000000000
          Top = 8.736369440000000000
          Width = 109.826840000000000000
          Height = 72.504977420000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 12.139057740000000000
          Top = 63.864922990000000000
          Width = 124.165430000000000000
          Height = 40.284268060000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 557.811380000000000000
          Top = 58.921262280000000000
          Width = 162.401670000000000000
          Height = 41.574830000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 2.000000000000000000
          Width = 736.008350000000000000
          Height = 109.606370000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        Height = 24.220160000000000000
        Top = 1466.457640000000000000
        Width = 736.630397000000000000
        AllowSplit = True
        Columns = 3
        ColumnWidth = 244.157480314961000000
        ColumnGap = 3.779527559055120000
        RowCount = 1
        Stretched = True
        object Subreport1: TfrxSubreport
          Left = 1.000000000000000000
          Top = 2.267716540000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rDiario.Page3
        end
        object Subreport2: TfrxSubreport
          Left = 498.448980000000000000
          Top = 2.385590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rDiario.Page2
        end
        object Subreport3: TfrxSubreport
          Left = 258.889610000000000000
          Top = 2.267716540000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rDiario.Page4
        end
      end
      object GroupHeader8: TfrxGroupHeader
        Height = 47.622061880000000000
        Top = 1164.095240000000000000
        Width = 736.630397000000000000
        Condition = 'dsTiempoMuerto."sNumeroOrden"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559060000000200000
          Width = 736.251968500000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo16: TfrxMemoView
          Left = 20.031498500000000000
          Top = 3.779530000000000000
          Width = 130.015355040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TIEMPOS INACTIVOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 141.354330708661000000
          Top = 23.811030940000000000
          Width = 37.417322834645700000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA'
            'INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 216.566975510000000000
          Top = 23.811030940000000000
          Width = 56.692913390000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 377.952802280000000000
          Top = 23.811030940000000000
          Width = 359.810977240000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 1.889763780000000000
          Top = 23.811030940000000000
          Width = 63.874013310000000000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AREA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 178.771699920000000000
          Top = 23.811030940000000000
          Width = 37.795275590000000000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA'
            'FINAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 273.259888900000000000
          Top = 23.811030940000000000
          Width = 56.314960630000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PERSONAL AFECTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 329.574849530000000000
          Top = 23.811030940000000000
          Width = 48.377508500000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIEMPO MUERTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 65.763777090000000000
          Top = 23.811023620000000000
          Width = 75.590553620000000000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLASIFICACI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter5: TfrxGroupFooter
        Top = 1443.780460000000000000
        Width = 736.630397000000000000
        object Memo140: TfrxMemoView
          Left = 1.889763780000000000
          Width = 735.874015750000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
        end
      end
      object MasterData8: TfrxMasterData
        Height = 14.118120000000000000
        Top = 1235.906310000000000000
        Width = 736.630397000000000000
        AllowSplit = True
        DataSet = frmDiarioTurno2.dsTiempoMuerto
        DataSetName = 'dsTiempoMuerto'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo96: TfrxMemoView
          Left = 141.354377090000000000
          Width = 37.417322830000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sHoraInicio'
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sHoraInicio"]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 178.771699920000000000
          Width = 37.795275590000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sHoraFinal'
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sHoraFinal"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 216.566975510000000000
          Width = 56.692913390000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            
              '[Iif (<dsTiempoMuerto."dPersonal"> <> 0 , <dsTiempoMuerto."dPers' +
              'onal"> , '#39'N/A'#39')]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 273.259888900000000000
          Width = 56.314960630000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            
              '[Iif (<dsTiempoMuerto."dFrente"> <> 0 , <dsTiempoMuerto."dFrente' +
              '"> , '#39'N/A'#39')]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 329.574849530000000000
          Width = 48.377952760000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTiempoMuerto'
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sTiempoMuerto"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 377.952802280000000000
          Width = 359.810977240000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."mDescripcion"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 1.889763780000000000
          Width = 63.874013310000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sArea'
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."sArea"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 65.763779530000000000
          Width = 75.590551180000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcion'
          DataSet = frmDiarioTurno2.dsTiempoMuerto
          DataSetName = 'dsTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sDescripcion"]')
          ParentFont = False
        end
      end
      object GroupFooter6: TfrxGroupFooter
        Height = 18.897632920000000000
        Top = 1273.701610000000000000
        Width = 736.630397000000000000
        object Memo177: TfrxMemoView
          Left = 328.818897640000000000
          Width = 49.133819210000000000
          Height = 13.228346460000000000
          Visible = False
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoAdicional"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 66.141732280000000000
          Width = 262.677165350000000000
          Height = 13.228346460000000000
          Visible = False
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TIEMPO ADICIONAL DE DISPONIBILIDAD DEL SITIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 329.574803150000000000
          Width = 49.133819210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuerto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 66.141732280000000000
          Width = 262.677165350000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TIEMPO INACTIVO REAL EN [DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 201.070878350000000000
        Top = 18.897650000000000000
        Width = 736.630397000000000000
        object Memo181: TfrxMemoView
          Left = 122.834650550000000000
          Top = 182.181121890000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          Visible = False
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuertoReal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo215: TfrxMemoView
          Left = 471.441250000000000000
          Top = 138.519772910000000000
          Width = 113.385838980000000000
          Height = 15.669276690000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'UBICACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          Left = 584.692913390000000000
          Top = 138.669291340000000000
          Width = 151.181102360000000000
          Height = 15.496062990000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."Plataforma"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo214: TfrxMemoView
          Left = 471.441250000000000000
          Top = 153.787411340000000000
          Width = 113.385838980000000000
          Height = 28.346466460000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'PLATICAS DE SEGURIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 122.834494330000000000
          Top = 167.039404250000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoEfectivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 122.834494330000000000
          Top = 180.267750710000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuerto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 1.889763780000000000
          Top = 182.181121890000000000
          Width = 120.944884330000000000
          Height = 13.228346460000000000
          Visible = False
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO INACTIVO DEL CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 1.889763780000000000
          Top = 180.267750710000000000
          Width = 120.944884330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO INACTIVO DE LA ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 1.889763780000000000
          Top = 167.039404250000000000
          Width = 120.944884330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO EFECTIVO DE LA ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 1.889763780000000000
          Top = 112.259869370000000000
          Width = 226.771655980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 1.889763780000000000
          Top = 153.834650550000000000
          Width = 120.944884330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CIERRE DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 122.834494330000000000
          Top = 127.354364880000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPeriodo."dFechaInicio"] AL [dsPeriodo."dFechaFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 122.834494330000000000
          Top = 153.834650550000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sOperacionFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 1.889763780000000000
          Top = 127.354364880000000000
          Width = 120.944884330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PERIODO DEL CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 122.834494330000000000
          Top = 140.606326060000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sOperacionInicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 1.889763780000000000
          Top = 140.606326060000000000
          Width = 120.944884330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'INICIO DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 471.559370000000000000
          Top = 112.259837640000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 471.559370000000000000
          Top = 125.488184090000000000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 584.692913390000000000
          Top = 112.259837640000000000
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 584.692913390000000000
          Top = 125.488184090000000000
          Width = 151.181102360000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 152.181200000000000000
          Top = 0.779530000000000000
          Width = 413.307360000000000000
          Height = 91.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            ''
            '[dsConfiguracion."mDescripcionBarco"]'
            ''
            'CONTRATO No.: [dsConfiguracion."sContratoBarco"]')
          ParentFont = False
          WordBreak = True
        end
        object Picture1: TfrxPictureView
          Left = 567.042930970000000000
          Top = 4.467622260000000000
          Width = 149.669288900000000000
          Height = 69.543307090000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 20.542163870000000000
          Top = 8.956829680000000000
          Width = 109.826840000000000000
          Height = 72.504977420000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 11.918587740000000000
          Top = 64.085383230000000000
          Width = 124.165430000000000000
          Height = 40.284268060000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          Left = 557.590910000000000000
          Top = 59.141722520000000000
          Width = 162.401670000000000000
          Height = 41.574830000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
        object lblLicencia: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 114.385900000000000000
          Top = 9.338590000000000000
          Width = 540.472790000000000000
          Height = 34.015818820000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -43
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          HAlign = haCenter
          Memo.UTF8 = (
            'VERSI'#195#8220'N SIN REGISTRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 1.779530000000000000
          Top = 0.220460240000000000
          Width = 736.008350000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          Left = 584.692913390000000000
          Top = 153.787411340000000000
          Width = 151.181102360000000000
          Height = 28.346449370000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTema"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader6: TfrxGroupHeader
        Height = 49.133870480000000000
        Top = 737.008350000000000000
        Visible = False
        Width = 736.630397000000000000
        Condition = 'dsConfiguracion."sContrato"'
        KeepTogether = True
        object Memo49: TfrxMemoView
          Left = 2.000000000000000000
          Top = 34.015760240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 119.055115670000000000
          Top = 18.897650000000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 252.850391260000000000
          Top = 18.897650000000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 119.055115670000000000
          Top = 34.015760240000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[REAL_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 187.464564490000000000
          Top = 34.015760240000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[REAL_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 252.850391260000000000
          Top = 34.015760240000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[REAL_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 187.464564490000000000
          Top = 18.897650000000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 119.055115670000000000
          Top = 3.779530000000000000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 415.748300000000000000
          Top = 34.015760240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 532.913385830000000000
          Top = 18.897650000000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 665.952755910000000000
          Top = 18.897650000000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 532.913385830000000000
          Top = 34.015760240000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[REAL_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 600.944881890000000000
          Top = 34.015760240000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[REAL_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 665.952755910000000000
          Top = 34.015760240000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[REAL_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 600.944881890000000000
          Top = 18.897650000000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 532.913385830000000000
          Top = 3.779530000000000000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE LA OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader14: TfrxGroupHeader
        Height = 15.118110240000000000
        Top = 808.819420000000000000
        Visible = False
        Width = 736.630397000000000000
        Condition = 'dsConfiguracion."sContrato"'
        KeepTogether = True
        object Memo93: TfrxMemoView
          Left = 2.000000000000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 119.055115670000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 187.464564490000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 252.850391260000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo196: TfrxMemoView
          Left = 415.748300000000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          Left = 532.913385830000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          Left = 600.944881890000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          Left = 665.952755910000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader12: TfrxGroupHeader
        Height = 49.913400480000000000
        Top = 627.401980000000000000
        Visible = False
        Width = 736.630397000000000000
        Condition = 'dsConfiguracion."sContrato"'
        KeepTogether = True
        object Memo24: TfrxMemoView
          Left = 167.000000000000000000
          Top = 34.795290240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 284.055115670000000000
          Top = 19.677180000000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 417.850391260000000000
          Top = 19.677180000000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 284.055115670000000000
          Top = 34.795290240000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 352.464564490000000000
          Top = 34.795290240000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 417.850391260000000000
          Top = 34.795290240000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 352.464564490000000000
          Top = 19.677180000000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 284.055115670000000000
          Top = 4.559060000000000000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader15: TfrxGroupHeader
        Height = 15.118110240000000000
        Top = 699.213050000000000000
        Visible = False
        Width = 736.630397000000000000
        Condition = 'dsConfiguracion."sContrato"'
        KeepTogether = True
        object Memo94: TfrxMemoView
          Left = 167.000000000000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 284.055115670000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 352.464564490000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 417.850391260000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader13: TfrxGroupHeader
        Height = 49.133870480000000000
        Top = 517.795610000000000000
        Visible = False
        Width = 736.630397000000000000
        Condition = 'dsConfiguracion."sContrato"'
        KeepTogether = True
        object Memo131: TfrxMemoView
          Left = 168.299320000000000000
          Top = 34.015760240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 285.464405830000000000
          Top = 18.897650000000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR (%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 418.503775910000000000
          Top = 18.897650000000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO (%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 285.464405830000000000
          Top = 34.015760240000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 353.495901890000000000
          Top = 34.015760240000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          Left = 418.503775910000000000
          Top = 34.015760240000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 353.495901890000000000
          Top = 18.897650000000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL (%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          Left = 285.464405830000000000
          Top = 3.779530000000000000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE LA OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader16: TfrxGroupHeader
        Height = 15.338560710000000000
        Top = 589.606680000000000000
        Visible = False
        Width = 736.630397000000000000
        Condition = 'dsConfiguracion."sContrato"'
        KeepTogether = True
        object Memo192: TfrxMemoView
          Left = 168.299320000000000000
          Top = 0.220450470000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          Left = 285.464405830000000000
          Top = 0.220450470000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          Left = 353.495901890000000000
          Top = 0.220450470000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          Left = 418.503775910000000000
          Top = 0.220450470000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader17: TfrxGroupHeader
        Height = 49.133872910000000000
        Top = 1035.591220000000000000
        Width = 736.630397000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Shape7: TfrxShapeView
          Left = 1.889763780000000000
          Top = 24.944891649999900000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo197: TfrxMemoView
          Left = 2.267716540000000000
          Top = 36.661431969999900000
          Width = 94.866141730000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLASE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          Left = 97.133858270000000000
          Top = 36.661431969999900000
          Width = 641.007874020000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FOLIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          Left = 16.251968500000000000
          Top = 17.007881339999900000
          Width = 145.133475040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PERMISOS UTILIZADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[IMPRIME_AVANCES]')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Left = -804.039890000000000000
        Top = -60.692950000000000000
        Width = 736.008350000000000000
        Height = 128.504020000000000000
        ShowHint = False
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object GroupFooter3: TfrxGroupFooter
        Top = 869.291900000000000000
        Width = 736.630397000000000000
      end
      object MasterData11: TfrxMasterData
        Top = 846.614720000000000000
        Width = 736.630397000000000000
        RowCount = 1
      end
      object MasterData12: TfrxMasterData
        Height = 18.897650000000000000
        Top = 1315.276440000000000000
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsTiempoMuertoPersonal
        DataSetName = 'dsTiempoMuertoPersonal'
        RowCount = 0
        object Subreport4: TfrxSubreport
          Left = 1.000000000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = rDiario.Page6
        end
      end
      object GroupHeader26: TfrxGroupHeader
        Height = 37.795280480000000000
        Top = 457.323130000000000000
        Width = 736.630397000000000000
        Condition = 'dsConfiguracion."sContrato"'
        KeepTogether = True
        object Memo273: TfrxMemoView
          Left = 2.779530000000000000
          Top = 13.897650000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NOMBRE DE LA OBRA')
          ParentFont = False
        end
        object Memo274: TfrxMemoView
          ShiftMode = smDontShift
          Left = 99.267780000000000000
          Top = 13.897650000000000000
          Width = 638.740570000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            '[dsConfiguracion."sTitulo"]')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          Left = 2.779530000000000000
          Top = 0.779530000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ORDEN DE TRABAJO:')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          ShiftMode = smDontShift
          Left = 99.488250000000000000
          Top = 0.779530000000000000
          Width = 166.299320000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 11.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader3: TfrxGroupHeader
        Height = 12.472440940000000000
        Top = 283.464750000000000000
        Width = 736.630397000000000000
        Condition = 'dsPersonal."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo17: TfrxMemoView
          Left = 2.321111750000000000
          Width = 236.222175810000000000
          Height = 12.472440944881900000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsPersonal."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        Height = 12.472440940000000000
        Top = 317.480520000000000000
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsPersonal
        DataSetName = 'dsPersonal'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo20: TfrxMemoView
          Left = 204.850393700000000000
          Width = 33.637795280000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsPersonal."dCantidad"]   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 2.321111750000000000
          Width = 202.993954070000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sPersonal'
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsPersonal."sPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 2.267716540000000000
          Width = 34.015770000000000000
          Height = 12.472440944881900000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsPersonal."sIdPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 12.472440940000000000
        Top = 351.496290000000000000
        Width = 736.630397000000000000
        object Memo52: TfrxMemoView
          Left = 204.850393700000000000
          Width = 33.637795280000000000
          Height = 12.472440944881900000
          ShowHint = False
          Color = 13421772
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPersonal."dCantidad">,MasterData4)]   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 2.267716540000000000
          Width = 201.826771650000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL EN [dsPersonal."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader5: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 226.771800000000000000
        Width = 736.630397000000000000
        Condition = 'dsPersonal."sTipoObra"'
        ReprintOnNewPage = True
        object Memo10: TfrxMemoView
          Left = 204.850393700000000000
          Top = 19.653543310000000000
          Width = 33.693705700000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 2.321111750000000000
          Top = 19.653543310000000000
          Width = 202.696328240000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 236.222175810000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsPersonal."TipoPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 12.472440940000000000
        Top = 385.512060000000000000
        Width = 736.630397000000000000
        object Memo13: TfrxMemoView
          Left = 204.850393700000000000
          Width = 33.637795280000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPersonal."dCantidad">,MasterData4)]   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 2.267716540000000000
          Width = 201.826771650000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader18: TfrxGroupHeader
        Height = 33.370090940000000000
        Top = 18.897650000000000000
        Width = 736.630397000000000000
        Condition = 'dsAdmon."sContrato"'
        ReprintOnNewPage = True
        object Memo221: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 236.220467560000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsAdmon."TipoPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          Left = 2.267716540000000000
          Top = 20.897650000000000000
          Width = 30.031126840000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          Left = 204.794722060000000000
          Top = 20.897650000000000000
          Width = 33.693462040000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo237: TfrxMemoView
          Left = 31.932612460000000000
          Top = 20.897650000000000000
          Width = 173.396180870000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader19: TfrxGroupHeader
        Height = 12.472440940000000000
        Top = 75.590600000000000000
        Width = 736.630397000000000000
        Condition = 'dsAdmon."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo222: TfrxMemoView
          Left = 2.267716540000000000
          Width = 236.220467560000000000
          Height = 12.472440944881900000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsAdmon."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData13: TfrxMasterData
        Height = 12.472440940000000000
        Top = 109.606370000000000000
        Width = 736.630397000000000000
        OnBeforePrint = 'MasterData13OnBeforePrint'
        DataSet = frmDiarioTurno2.dsAdmon
        DataSetName = 'dsAdmon'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo38: TfrxMemoView
          Left = 205.228346460000000000
          Width = 33.637795280000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dsAdmon."dCantidad"]   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 36.283464570000000000
          Width = 168.978184070000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsAdmon."sPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 2.267716540000000000
          Width = 34.015770000000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsAdmon."sIdPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter12: TfrxGroupFooter
        Height = 12.472440940000000000
        Top = 143.622140000000000000
        Width = 736.630397000000000000
        object Memo116: TfrxMemoView
          Left = 205.141737160000000000
          Width = 33.637795280000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 13421772
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[(SUM(<dsAdmon."dCantidad">,MasterData13) - <dsAdmon."TiempoExtr' +
              'a"> )]   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo223: TfrxMemoView
          Left = 2.267716540000000000
          Width = 201.826771650000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL EN [dsAdmon."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter14: TfrxGroupFooter
        Height = 24.811030940000000000
        Top = 177.637910000000000000
        Width = 736.630397000000000000
        object Memo224: TfrxMemoView
          Left = 205.141737160000000000
          Width = 33.637795280000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[(SUM(<dsAdmon."dCantidad">,MasterData13) - <dsAdmon."TiempoExtr' +
              'a"> )]   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo225: TfrxMemoView
          Left = 2.267716540000000000
          Width = 201.826771650000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 205.228346460000000000
          Top = 12.338590000000000000
          Width = 33.637795280000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[(<dsAdmon."TiempoExtra">)]   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 2.267716540000000000
          Top = 12.338590000000000000
          Width = 201.826771650000000000
          Height = 12.472440940000000000
          OnBeforePrint = 'Memo62OnBeforePrint'
          ShowHint = False
          Color = 14218221
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DE HORAS EXTRAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData9: TfrxMasterData
        Height = 12.472440940000000000
        Top = 476.220780000000000000
        Visible = False
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsTiempoExtra
        DataSetName = 'dsTiempoExtra'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo250: TfrxMemoView
          Left = 2.321111750000000000
          Width = 236.222175810000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo251: TfrxMemoView
          Left = 199.220890420000000000
          Top = 0.755905510000000000
          Width = 38.943682470000000000
          Height = 10.960629921259800000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsTiempoExtra."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 2.321111750000000000
          Top = 0.755905510000000000
          Width = 195.434894070000000000
          Height = 10.960629921259800000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsTiempoExtra."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader23: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 419.527830000000000000
        Visible = False
        Width = 736.630397000000000000
        Condition = 'dsTiempoExtra."sContrato"'
        ReprintOnNewPage = True
        object Memo113: TfrxMemoView
          Left = 197.237126650000000000
          Top = 19.653543310000000000
          Width = 41.252765700000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo209: TfrxMemoView
          Left = 2.321111750000000000
          Top = 19.653543310000000000
          Width = 195.137268240000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo210: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055119999980000
          Width = 236.222175810000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIEMPO EXTRA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter13: TfrxGroupFooter
        Height = 19.897642680000000000
        Top = 510.236550000000000000
        Visible = False
        Width = 736.630397000000000000
        object Memo211: TfrxMemoView
          Left = 2.267716540000000000
          Top = 1.000000000000000000
          Width = 236.222175810000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          Left = 199.535560000000000000
          Top = 2.000000000000000000
          Width = 38.943682470000000000
          Height = 9.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' [SUM(<dsTiempoExtra."dCantidad">,MasterData9)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo213: TfrxMemoView
          Left = 3.135767120000000000
          Top = 2.243970000000000000
          Width = 194.759625480000000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 11.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 12.472440940000000000
        Top = 94.488250000000000000
        Width = 736.630397000000000000
        Condition = 'dsEquipos."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo61: TfrxMemoView
          Left = 2.321106440000000000
          Width = 235.466275610000000000
          Height = 12.472440944881900000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEquipos."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData6: TfrxMasterData
        Height = 13.251970940000000000
        Top = 128.504020000000000000
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsEquipos
        DataSetName = 'dsEquipos'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo63: TfrxMemoView
          Left = 2.321106440000000000
          Width = 235.466275610000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 30.684524930000000000
          Top = 0.755905510000000000
          Width = 176.881872680000000000
          Height = 12.472440944881900000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sEquipo'
          DataSet = frmDiarioTurno2.dsEquipos
          DataSetName = 'dsEquipos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[dsEquipos."sEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 3.779530000000000000
          Width = 25.250219470000000000
          Height = 12.472440944881900000
          Visible = False
          OnBeforePrint = 'Memo60OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sIdEquipo'
          DataSet = frmDiarioTurno2.dsEquipos
          DataSetName = 'dsEquipos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEquipos."sIdEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 207.821798300000000000
          Top = 0.779530000000000000
          Width = 24.791718930000000000
          Height = 12.472440940000000000
          ShowHint = False
          DataField = 'dCantidad'
          DataSet = frmDiarioTurno2.dsEquipos
          DataSetName = 'dsEquipos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEquipos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo231: TfrxMemoView
          Left = 4.000000000000000000
          Top = 0.755905510000000000
          Width = 203.716535430000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sEquipo'
          DataSet = frmDiarioTurno2.dsEquipos
          DataSetName = 'dsEquipos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            '[dsEquipos."sEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader11: TfrxGroupHeader
        Height = 19.031496060000000000
        Top = 18.897650000000000000
        Width = 736.630397000000000000
        Condition = 'dsEquipos."sTipoObra"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo66: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 2.267716540000000000
          Top = 6.559055120000000000
          Width = 235.428129830000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEquipos."TipoEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter8: TfrxGroupFooter
        Height = 12.472440940000000000
        Top = 166.299320000000000000
        Width = 736.630397000000000000
        object Memo57: TfrxMemoView
          Left = 2.267716540000000000
          Width = 205.606299210000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            'TOTAL DE EQUIPOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 208.629921260000000000
          Width = 28.724409450000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsEquipos."dCantidad">,MasterData6)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter9: TfrxGroupFooter
        Top = 200.315090000000000000
        Width = 736.630397000000000000
      end
      object GroupHeader20: TfrxGroupHeader
        Height = 12.472440940000000000
        Top = 60.472480000000000000
        Width = 736.630397000000000000
        Condition = 'dsEquipos."sTipoObra"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo233: TfrxMemoView
          ShiftMode = smDontShift
          Left = 2.321106440000000000
          Width = 206.455692450000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo234: TfrxMemoView
          ShiftMode = smDontShift
          Left = 208.555567550000000000
          Width = 29.178424590000000000
          Height = 12.472440940000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter15: TfrxGroupFooter
        Top = 222.992270000000000000
        Width = 736.630397000000000000
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 11.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader2: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 257.008040000000000000
        Width = 736.630397000000000000
        Condition = 'dsSeguridad."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo67: TfrxMemoView
          Left = 2.318536100000000000
          Width = 224.130255950000000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsSeguridad."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 10.897650000000000000
        Top = 291.023810000000000000
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsSeguridad
        DataSetName = 'dsSeguridad'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo68: TfrxMemoView
          Left = 2.318536096097280000
          Width = 224.130255951147000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 195.992522819046000000
          Top = 0.755905510000019000
          Width = 26.273490248857300000
          Height = 9.826771653543310000
          ShowHint = False
          DataField = 'dCantidad'
          DataSet = frmDiarioTurno2.dsSeguridad
          DataSetName = 'dsSeguridad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsSeguridad."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 4.163050255363460000
          Top = 0.755905510000019000
          Width = 187.668479184648000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sEquipo'
          DataSet = frmDiarioTurno2.dsSeguridad
          DataSetName = 'dsSeguridad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsSeguridad."sEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader10: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 200.315090000000000000
        Width = 736.630397000000000000
        Condition = 'dsSeguridad."sContrato"'
        ReprintOnNewPage = True
        object Memo171: TfrxMemoView
          Left = 195.026708040000000000
          Top = 19.653543310000000000
          Width = 31.371264440000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 2.318536096097280000
          Top = 19.653543310000000000
          Width = 192.918752576964000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 224.093946618683000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE EQUIPOS DE SEGURIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter7: TfrxGroupFooter
        Top = 325.039580000000000000
        Width = 736.630397000000000000
      end
      object GroupFooter10: TfrxGroupFooter
        Top = 347.716760000000000000
        Width = 736.630397000000000000
      end
      object GroupHeader21: TfrxGroupHeader
        Height = 33.370090940000000000
        Top = 18.897650000000000000
        Width = 736.630397000000000000
        Condition = 'dsPernoctas."sContrato"'
        ReprintOnNewPage = True
        object Memo256: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 224.881877560000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE ALIMENTACION Y HOSPEDAJE ANEXO 3.5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo257: TfrxMemoView
          Left = 2.267716540000000000
          Top = 20.897650000000000000
          Width = 29.446261780000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PDA.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo258: TfrxMemoView
          Left = 189.871873548330000000
          Top = 20.897650000000000000
          Width = 37.277720540948800000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo259: TfrxMemoView
          Left = 34.016246190000000000
          Top = 20.897650000000000000
          Width = 155.999156630000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader22: TfrxGroupHeader
        Height = 0.559060000000000000
        Top = 75.590600000000000000
        Width = 736.630397000000000000
        Condition = 'dsPernoctas."sTipoPernocta"'
        ReprintOnNewPage = True
        Stretched = True
      end
      object MasterData15: TfrxMasterData
        Height = 10.897650000000000000
        Top = 98.267780000000000000
        Width = 736.630397000000000000
        DataSet = frmDiarioTurno2.dsPernoctas
        DataSetName = 'dsPernoctas'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo260: TfrxMemoView
          Left = 189.871873550000000000
          Width = 37.277720540000000000
          Height = 10.960629920000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo261: TfrxMemoView
          Left = 2.267716540000000000
          Width = 187.086577560000000000
          Height = 10.960629920000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo262: TfrxMemoView
          Left = 193.066651180000000000
          Width = 30.541458750000000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsPernoctas."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo263: TfrxMemoView
          Left = 34.015748030000000000
          Width = 155.188726910000000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8 = (
            '[dsPernoctas."DescribePernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo264: TfrxMemoView
          Left = 3.888489610000000000
          Width = 29.578935260000000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsPernoctas."sIdPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter17: TfrxGroupFooter
        Top = 132.283550000000000000
        Width = 736.630397000000000000
      end
      object GroupFooter18: TfrxGroupFooter
        Height = 22.677172680000000000
        Top = 154.960730000000000000
        Width = 736.630397000000000000
        object Memo265: TfrxMemoView
          Left = 189.732283460000000000
          Width = 37.795275590551200000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo266: TfrxMemoView
          Left = 2.267716540000000000
          Width = 187.198987950000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo267: TfrxMemoView
          Left = 193.083557750000000000
          Top = 2.015748026666670000
          Width = 31.250537970000000000
          Height = 11.863533333333300000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPernoctas."dCantidad">,MasterData15)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo268: TfrxMemoView
          Left = 5.196921480000000000
          Top = 1.952586666666670000
          Width = 182.173228350000000000
          Height = 11.863533333333300000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
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
      Columns = 1
      ColumnWidth = 195.900000000000000000
      ColumnPositions.Strings = (
        '0')
      DataSetName = 'dsExisteFoto'
      PrintIfEmpty = False
      object PageFooter2: TfrxPageFooter
        Height = 122.795300000000000000
        Top = 706.772110000000000000
        Width = 740.409927000000000000
        object lblResidencia2: TfrxMemoView
          Left = 506.457020000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VBO. RESIDENCIA')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 231.551330000000000000
          Top = 85.338589999999900000
          Width = 506.457020000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 3.000000000000000000
          Top = 85.338589999999800000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsConfiguracion."sWeb"]'
            '[dsConfiguracion."sEmail"]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 4.000000000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 25.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          Left = 254.905690000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          Left = 4.220470000000000000
          Top = 39.928880000000200000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 4.220470000000000000
          Top = 27.031230000001000000
          Width = 226.771653543307000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Left = 255.008040000000000000
          Top = 39.369820000000000000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 255.008040000000000000
          Top = 26.472170000000000000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 308.023810000000000000
          Top = 71.165120000000600000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          Left = 506.559370000000000000
          Top = 40.354360000000000000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR_TIERRA]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 506.559370000000000000
          Top = 27.456709999999900000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR_TIERRA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object lblValida2: TfrxMemoView
          Left = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VALIDACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblAutoriza2: TfrxMemoView
          Left = 257.008040000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN AUTORIZARIZACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 185.196970000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo153: TfrxMemoView
          Left = 1.669293780000000000
          Top = 133.480341810000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Left = 115.275590550000000000
          Top = 133.905511810000000000
          Width = 239.244094490000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 1.889763780000000000
          Top = 146.708688270000000000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 115.275590550000000000
          Top = 147.133858270000000000
          Width = 239.244094490000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Left = 155.960730000000000000
          Top = 0.779530000000000000
          Width = 413.307360000000000000
          Height = 72.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mDescripcionBarco"]'
            'CONTRATO No.: [dsConfiguracion."sContratoBarco"]')
          ParentFont = False
          WordBreak = True
        end
        object Picture5: TfrxPictureView
          Left = 570.822460970000000000
          Top = 0.688092260000000000
          Width = 149.669288900000000000
          Height = 69.543307090000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Picture6: TfrxPictureView
          Left = 39.439813870000000000
          Top = 1.397769680000000000
          Width = 109.826840000000000000
          Height = 72.504977420000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo150: TfrxMemoView
          Left = 8.139057740000000000
          Top = 80.423973230000000000
          Width = 173.299320000000000000
          Height = 40.284268060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 561.370440000000000000
          Top = 81.259842520000000000
          Width = 162.401670000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 189.976500000000000000
          Top = 70.362192520000000000
          Width = 367.953000000000000000
          Height = 45.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sTitulo"]'
            'O.T.: [DESCRIPCION_CORTA]')
          ParentFont = False
          WordBreak = True
        end
        object Memo208: TfrxMemoView
          Left = 1.236240000000000000
          Top = 0.755905511811024000
          Width = 736.008350000000000000
          Height = 124.724490000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo157: TfrxMemoView
          Left = 1.889763780000000000
          Top = 166.299320000000000000
          Width = 735.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTE FOTOGRAFICO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter11: TfrxGroupFooter
        Top = 646.299630000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader9: TfrxGroupHeader
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        Condition = 'dsReporteFotografico."sNumeroReporte"'
        OutlineText = '<dsReporteFotografico."sNumeroReporte">'
      end
      object MasterData10: TfrxMasterData
        Height = 337.889912680000000000
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        Columns = 2
        ColumnWidth = 370.393700787402000000
        DataSet = frmDiarioTurno2.dsReporteFotografico
        DataSetName = 'dsReporteFotografico'
        OutlineText = '<dsReporteFotografico."iImagen">'
        RowCount = 0
        Stretched = True
        object Memo182: TfrxMemoView
          Left = 3.779517800000000000
          Width = 362.834679840000000000
          Height = 334.110382680000000000
          ShowHint = False
          Color = clWhite
          Frame.Color = clNavy
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Picture9: TfrxPictureView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 3.023622050000000000
          Width = 356.787401570000000000
          Height = 236.220509060000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = frmDiarioTurno2.dsReporteFotografico
          DataSetName = 'dsReporteFotografico'
          Frame.Color = clBlue
          Frame.DropShadow = True
          Frame.ShadowColor = clSkyBlue
          Frame.ShadowWidth = 3.000000000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
        end
        object Memo183: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.558884250000000000
          Top = 240.000153780000000000
          Width = 353.763708740000000000
          Height = 88.818839060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.ShadowColor = clGray
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsReporteFotografico."sDescripcion"]')
          ParentFont = False
        end
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 11.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader24: TfrxGroupHeader
        Height = 12.692903620000000000
        Top = 86.929190000000000000
        Width = 736.630397000000000000
        AllowSplit = True
        Condition = 'dsTiempoMuertoPersonal."sTipo"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo239: TfrxMemoView
          Left = 1.779530000000000000
          Width = 34.015748030000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PART.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo240: TfrxMemoView
          Left = 36.661417320000000000
          Width = 192.000007320000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          Left = 229.771800000000000000
          Width = 59.716457320000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."sTiempoMuerto1"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          Left = 291.023810000000000000
          Width = 59.716457320000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."sTiempoMuerto2"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          Left = 351.496290000000000000
          Width = 59.716457320000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."sTiempoMuerto3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo236: TfrxMemoView
          Left = 412.968770000000000000
          Width = 59.716457320000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."sTiempoMuerto4"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo241: TfrxMemoView
          Left = 473.441250000000000000
          Width = 59.716457320000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."sTiempoMuerto5"] ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData14: TfrxMasterData
        Height = 11.338590000000000000
        Top = 120.944960000000000000
        Width = 736.630397000000000000
        AllowSplit = True
        DataSet = frmDiarioTurno2.dsTiempoMuertoPersonal
        DataSetName = 'dsTiempoMuertoPersonal'
        RowCount = 0
        Stretched = True
        object Memo228: TfrxMemoView
          Left = 36.777821750000000000
          Width = 192.000000000000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo229: TfrxMemoView
          Left = 1.889763780000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."sIdPersonalEquipo"]')
          ParentFont = False
        end
        object Memo242: TfrxMemoView
          Left = 229.795275590000000000
          Width = 59.716535430000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."dCantidad1"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo243: TfrxMemoView
          Left = 291.023810000000000000
          Width = 59.716535430000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."dCantidad2"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo244: TfrxMemoView
          Left = 351.496290000000000000
          Width = 59.716535430000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."dCantidad3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo246: TfrxMemoView
          Left = 413.102362200000000000
          Width = 59.716535430000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."dCantidad4"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo247: TfrxMemoView
          Left = 473.574803150000000000
          Width = 59.716535430000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsTiempoMuertoPersonal."dCantidad5"] ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter16: TfrxGroupFooter
        Height = 10.897650000000000000
        Top = 154.960730000000000000
        Width = 736.630397000000000000
        object Memo230: TfrxMemoView
          Left = 1.889763780000000000
          Width = 226.771660870000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo238: TfrxMemoView
          Left = 76.726367120000000000
          Top = 0.464440000000000000
          Width = 145.625735480000000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsPersonal
          DataSetName = 'dsPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DE  [UpperCase(<dsTiempoMuertoPersonal."sTipo">)] AFECTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo252: TfrxMemoView
          Left = 229.795275590000000000
          Width = 59.716535430000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<dsTiempoMuertoPersonal."dCantidad1">,MasterData14)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo253: TfrxMemoView
          Left = 291.023810000000000000
          Width = 59.716535430000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<dsTiempoMuertoPersonal."dCantidad2">,MasterData14)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo254: TfrxMemoView
          Left = 351.496290000000000000
          Width = 59.716535430000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<dsTiempoMuertoPersonal."dCantidad3">,MasterData14)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo255: TfrxMemoView
          Left = 412.748300000000000000
          Width = 59.716535430000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<dsTiempoMuertoPersonal."dCantidad4">,MasterData14)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo269: TfrxMemoView
          Left = 473.441250000000000000
          Width = 59.716535430000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<dsTiempoMuertoPersonal."dCantidad5">,MasterData14)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader25: TfrxGroupHeader
        Height = 43.842531880000000000
        Top = 18.897650000000000000
        Width = 736.630397000000000000
        Condition = 'dsTiempoMuertoPersonal."sTipo"'
        ReprintOnNewPage = True
        object Shape4: TfrxShapeView
          Left = 1.889763780000000000
          Top = 15.338590000000000000
          Width = 531.401574800000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo245: TfrxMemoView
          Left = 20.031498500000000000
          Top = 7.559060000000000000
          Width = 273.637495040000000000
          Height = 13.220470000000000000
          ShowHint = False
          AutoWidth = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'DETALLE DE TIEMPOS INACTIVOS ([UpperCase(<dsTiempoMuertoPersonal' +
              '."sTipo">)])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo248: TfrxMemoView
          Left = 226.771602280000000000
          Top = 27.590560940000000000
          Width = 306.519685040000000000
          Height = 16.251970940000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIEMPO INACTIVO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo249: TfrxMemoView
          Left = 1.889763780000000000
          Top = 27.590560940000000000
          Width = 226.771629130000000000
          Height = 16.251963620000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PERSONAL / EQUIPO AFECTADO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter19: TfrxGroupFooter
        Top = 188.976500000000000000
        Width = 736.630397000000000000
      end
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 328
    Top = 183
  end
  object ds_ReporteFotografico: TDataSource
    AutoEdit = False
    DataSet = ReporteFotografico
    Left = 224
    Top = 281
  end
  object SaveImage: TSaveDialog
    DefaultExt = 'jpg'
    FileName = 'Inteligent'
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 664
    Top = 368
  end
  object ReporteFotografico: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = ReporteFotograficoAfterScroll
    SQL.Strings = (
      
        'Select sNumeroReporte, iImagen, sDescripcion, lIncluye, sWbs, sN' +
        'umeroActividad, sFasePartida'
      
        'From reportefotografico Where sContrato = :Contrato And sNumeroR' +
        'eporte = :Reporte Order By iImagen')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Reporte'
        ParamType = ptUnknown
      end>
    Left = 256
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Reporte'
        ParamType = ptUnknown
      end>
  end
  object Turnos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select * from turnos where sContrato = :contrato order by sIdTur' +
        'no')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 760
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
  end
  object ReporteDiario: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = ReporteDiarioAfterScroll
    SQL.Strings = (
      'select'
      '  r.*,'
      '  t.sDescripcion,'
      '  c.*,'
      '  t.sOrigenTierra,'
      '  if(IFNULL(xt.dCantidad, 0) = 0, "No", "Si") as AvancePatio'
      'from'
      '  reportediario r'
      'inner join'
      '  convenios c'
      '    on (r.sContrato = c.sContrato And'
      '        r.sIdConvenio = c.sIdConvenio)'
      'inner join'
      '  turnos t'
      '    ON (r.sContrato = t.sContrato and'
      '        r.sIdTurno = t.sIdTurno)'
      'left join'
      '  xtavancesglobalesxorden xt'
      '    on (xt.sContrato = r.sContrato and'
      '        xt.dIdFecha = r.dIdFecha)'
      'where'
      '  r.sContrato = :contrato And'
      '  r.sNumeroOrden = :Orden'
      'Order By'
      '  r.dIdFecha DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end>
    Left = 432
    Top = 83
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end>
  end
  object MovimientosdePersonal: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select m.sContrato From jornadasdiarias m inner join embarcacion' +
        'es e ON'
      '(m.sIdEmbarcacion = e.sIdEmbarcacion)'
      
        'where m.sContrato = :Contrato And m.dIdFecha = :Fecha And m.sNum' +
        'eroOrden = :Orden And'
      
        'm.sIdTurno = :Turno And m.sIdEmbarcacion <> '#39#39' And m.sTipo = '#39'Di' +
        'sponibilidad del Sitio'#39
      'Order By m.sIdPernocta, m.sIdPlataforma, m.sIdEmbarcacion')
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
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turno'
        ParamType = ptUnknown
      end>
    Left = 584
    Top = 224
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
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turno'
        ParamType = ptUnknown
      end>
  end
  object Platicas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select * from platicasdeseguridad where sContrato = :contrato'
      ' And dIdFecha = :Fecha And sNumeroOrden = :Orden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end>
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptUnknown
      end>
  end
  object QryBk: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 621
    Top = 226
  end
  object ordenesdetrabajo: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sNumeroOrden, iJornada from ordenesdetrabajo where sContr' +
        'ato = :Contrato and cIdStatus = :status order by sNumeroOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    Left = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
  end
  object dsApoyo: TfrxDBDataset
    UserName = 'dsApoyo'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 512
    Top = 267
  end
  object QryReporteFotografico: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 792
    Top = 120
  end
  object reporteHistorialRep: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38372.938800231500000000
    ReportOptions.LastChange = 40970.131040995370000000
    ReportOptions.Picture.Data = {
      0A544A504547496D616765C88E0000FFD8FFE000104A4649460001010100C800
      C80000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC00011080124042103012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
      A28A2800A2909C570DE23F8EFF000D7C1DACDC691AF7C41F0B689AB5BEDF3AC7
      51D66DE09E2DCA197723B861956523239041EF401DD515574BD56CB5CD36D351
      D36EE0D434FBB8927B7BAB5904914D1B00CAE8CA4865208208E08356A800A28A
      2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
      2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2B2
      FC4BE28D1BC19A35C6AFE20D5AC743D26DF6F9D7DA8DC25BC116E60ABB9DC851
      966503279240EF587E10F8C7E01F883A949A7785FC6DE1DF11EA11C4677B5D27
      5582EA558C10A5CAA3921416519E9961EB401D85145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      145140051451400514514005145140051451401F9D7FF055CFDA635DF05C1A4F
      C28F0E5DCFA62EB7A7B5FEB775128569ED5DDA38EDD240D90AC639BCC1B46E5D
      8BB8AB48A7F2CC924E49C9F7AFA63FE0A4673FB67FC42FFB87FF00E9BEDABE67
      ACDEE6C9687B9FECA7FB55F8AFF66CF881A4DD5A6AD7D2F8364BB0758D043196
      09E1728B3491C2CEAA27088BB24CA9CA2AB128594FEF62B06504742335FCD057
      F429FB3173FB36FC29FF00B1534AFF00D248A9C499A3D328A28AB330A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A6C876A311D403401F057EDBDFF00
      051EFF008545AD5CF80FE183596A5E29B7F321D5B599D3CE834D936951144B9D
      AF708C43316DC8857632BB1758FE41F0D7FC14E7F680D0B5AB6BEBDF14597886
      D62DDBF4DD4749B64826CA903718123906090C36B8E40CE4641F9A3C57E23D47
      C63E28D635ED5EE3ED7AB6A97935EDE5C6C54F36691CBBB6D501465989C0000C
      F00565D67766CA28FE803F663FDA6FC2DFB50780135FD01FEC7A9DB6D8B56D12
      69034FA7CC41C027037C6D8629200030078565745F60AFC96FF823DF89351B5F
      8DDE32D022B8DBA4DF787CDF5C5BEC53BE682E22489B76370DAB7130C0201DFC
      83818FD69AB4EE66D598514514C90A28A2800A28A2800A28A2800A28A2800A28
      A2800AA9AAEAB67A1E9779A96A175058D859C2F71717573208E2863452CCEECC
      4055001249380055BAF33FDA77FE4DB7E2B7FD8A9AAFFE924B401F883FB48FED
      17E25FDA4BE23EA3E24D6E79ED74E6998E9DA18BB926B6D3A3DA89B620C70198
      4685D95543BE5B68E00F33D2B55BDD0B53B4D474DBB9EC350B49527B7BAB590C
      72C32290CAE8CA4156040208E4115568AC8E83F71FF604FDA6F51FDA5FE0DCD7
      BE237B2FF84B343BBFECFBF36B2287B94F2D5A2BA78401E5799975C0F94B4521
      5DA3E45FA66BF33FFE08C9FF003577FEE13FFB795FA615A2D8C1E8C28A28A620
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A4240193C0A005A2B0BC21E3BF0D7C41D365D43C2DE21D2FC496114A6DE4B
      AD26F63BA8924003142D1B101806538EB861EB5BB40051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      1400514514005145140051451400514514005145140051451400514514005145
      140051451401F86FFF000523FF0093CFF885FF0070FF00FD37DB57CCF5F4C7FC
      148FFE4F3FE217FDC3FF00F4DF6D5F33D64F7375B057F429FB317FC9B6FC29FF
      00B1534AFF00D248ABF9EBAFE853F662FF00936DF853FF0062A695FF00A49155
      4499EC7A65145156641457CF3FB41FEDD9F0AFF671D68687AFDF5EEB1E235F2D
      A6D1B4381669EDE3756657959D9234E02FC85F7E2446DBB5B7561FC14FF828DF
      C1FF008DBE2C83C356975AA786759BC9520B083C416C90ADEC8C1B091C91BC88
      1B2A000E54B33A2A6E2714AE3B33EA2A28A42428C9381EF4C42D15F3D7C44FDB
      F3E04FC37F3E2BAF1ED96B57A968D7515AF87D5B50F3F1BB11ACB1030AC8C548
      0AEEB8CA96DAA41AF20FF87BE7C1DFFA16FC6DFF0080369FFC954AE87667DC94
      57CA9F0F3FE0A69F027C79E4C575AF5EF846F67BB5B58AD7C4162D1EECEDC48D
      2C5E6451C796C16775C6D62D85C13F50E97AAD96B9A6DA6A3A6DDC1A869F7712
      4F6F756B209229A360195D19490CA410411C106985AC5AA28A28105325FF0054
      FF00434E2715C278A3E3BFC35F07EAB75A3EBDF107C2DA2EAD6E079D61A8EB36
      F04F16E50CBB91DC30CAB29191C820F7A00FE7765FF5AFF534DA74873231F734
      DAC8E83EE4FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAFC66FF00825978
      EFC35F0F7F680D7F51F14F8834BF0DE9F2F86A7812EB56BC8ED62790DD5AB040
      D2100B10AC71D70A7D2BF537FE1A77E0F1FF009AADE09FFC286D3FF8E55AD8CA
      5B9E994520218641C8F6A5AA2028A28A0028A4240192703DEBC5FE23FED9BF05
      7E146A434EF11FC42D2E2BF12CB0496B61E65FCB6F24442C8932DBAB9898138C
      3ED2486C6769C007B4D15F126A9FF0571F83161A95DDAC1A478BF5282195E34B
      CB6B0B7114EA090244124EAE1580C8DCAAD83C8078A34BFF0082B8FC18BFD4AD
      2D67D23C5FA6C134A91BDE5CD85B98A0524032388E7672AA0E4ED566C0E013C5
      2BA2B959F6DD15E2DF0E3F6CDF82BF15F523A77873E216972DF9962823B5BFF3
      2C25B892525634856E150CAC48C6137104AE71B867DA0104641C8F6A648B4514
      50015E67FB4EFF00C9B6FC56FF00B15355FF00D2496BD32BCCFF0069DFF936DF
      8ADFF62A6ABFFA492D035B9FCF5D1451591B9FA61FF0464FF9ABBFF709FF00DB
      CAFD30AFCCFF00F82327FCD5DFFB84FF00EDE57E98568B63196E14514532428A
      28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A4240193C
      0AF873F6A9FF00829EF85BE167DA3C3FF0CFEC5E36F14AF92C753DE26D1E056C
      B3AF991C81A69028518421419397DC8D195B0D2B9F50FC6BF8F9E09FD9FBC273
      EBBE32D6A0B05589E4B5D3D6453797ECA5418EDE224191B2E80FF0AEE058AAE5
      87E4B7ED5DFF00050EF1B7C7FB8BED07C3D2CFE0FF0001F9B2A4769692B4779A
      840C9E5EDBC756219482E4C4B84FDE61BCC28AF5F38FC44F89BE2AF8B3E259F5
      FF00186BD7DE20D5A5DC3ED17B297F2D0BB3F971AFDD8E30CEC446802AEE3802
      B99A86EE6AA363D0BE0A7C7CF1B7ECFDE2C835EF06EB53D83ACA925D69ED231B
      3BF550C04771102048B877033F32EE254AB6187EB4FECA3FF050EF04FC7FB7B1
      D07C432C1E0FF1E795124969772AC767A84ECFE5EDB37662598928444D87FDE6
      17CC08CF5F8A940241C8E0D09D81A4CFE9828AFC83FD95BFE0A7BE29F859F67F
      0FFC4CFB6F8DBC2CBE730D4F799B58819B0C8BE6492059A30C1861C86024E1F6
      A2C67F557E1DFC4DF0AFC59F0D41AFF83F5EB1F106932ED1F68B2943F96E515F
      CB917EF47205752637019770C81569DCC9A68E9E8A28A620A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803
      F0DFFE0A47FF00279FF10BFEE1FF00FA6FB6AF99EBE98FF8291FFC9E7FC42FFB
      87FF00E9BEDABE67AC9EE6EB60AFE853F662FF00936DF853FF0062A695FF00A4
      9157F3D75FD0A7ECC5FF0026DBF0A7FEC54D2BFF004922AA8933D8F4CAE63E28
      78CFFE15C7C35F1678B05A7F681D0B49BAD4FEC9E6797E7F930B49B37E0EDCED
      C670719CE0D74F5E67FB4EFF00C9B6FC56FF00B15355FF00D2496ACC8FE7FBC5
      3E25D47C67E26D5BC41AC5C7DAF56D56EE5BEBCB8D8A9E6CD239776DAA028CB3
      13800019E00ACC048391C1A28AC8E83F687F657FDAC74DB4FD86ADFE2378F75F
      BDD6EE7C2FE769FACDCF90D25D3CCB305B68B2401248D1CD6A3CC2704BE5DC10
      E47E7B7ED7FF00B6FF008ABF697F12DDD969F757DE1EF87B17EE6D341498A7DA
      903AB09AEC29DB2485911829CAC7B405C9DCEFE07278E75E93C110783CEA738F
      0CC3A849AAAE98A42C46E9E3489A5603EF3048D546ECED05B6E37B66D7C3CF86
      7E2AF8B3E248740F07E837DE21D5A5DA7ECF65117F2D0BAA799237DD8E30CEA0
      C8E42AEE19229DC9492D4E668AFB6B4BFF0082477C67BFD36D2EA7D5FC21A6CF
      344923D9DCDFDC1960620131B98E0642CA4E0ED665C8E091CD7907C78FD87FE2
      CFECF3A6DE6B1E23D120BEF0CDACB142DAF69172B3DB6E900DA4A9DB2A2EE3B3
      73C6ABBF0013B9772B31DD1E095ED3FB347ED61E36FD997C5B697DA25F4F7FE1
      C3296D43C357170C2CEED5828760BC88E6C226D940DC3680772EE46F16A2819F
      D137C17F8D1E15F8F9E00B0F177846FF00ED9A6DCFC92C3200B3DA4C002F04C8
      09D922E46464820AB29656563DD57E337FC12E3E364BF0DBF6844F0A5D5C430E
      85E338BEC531B8992254BB895DED5C33292CC4992158C32EE6B81F78AA8AFD99
      AD13B98B5667C23FF0564F8D9AF7C3DF85FE1AF06E87713E9EBE2E96E9750BDB
      7982335A40B187B6236E76C86742C432FCB19421964615F91A492724E4FBD7EF
      27ED97FB2CD9FED53F0B97468EEA0D2FC4DA64A6F347D4A68832AC9B4AB43236
      D2EB0C831BB67219236C3ECDA7F317C4DFF04C7F8FFA0EB3736567E17B2F105A
      C5B76EA5A76AD6C904D9504ED13BC720C1254EE41CA9C646099699716AC7CAB4
      50460907A8A2A4B0A2BB9F841F04BC69F1E7C4B73A0781746FEDCD5ADAD1AFA5
      B7FB4C36FB6157442DBA57553F3488300E79E9C1AF68D2FF00E09A3FB42EA1A9
      5A5ACFE0A834D86695237BCB9D62CCC502920191C472B39551C9DAACD81C0278
      A2C2BA3DCFFE090FF163C4B73F10BC4BF0FEEB529EF7C329A236A56B6B733C92
      2D9491DCA2910296D91AB9BA919C05CB32A1C8C1CFEA657C95FB0CFEC3317ECB
      56FA8F887C43A8C1AC78F35289ACE496C247FB1DA5A6F56F2E3DC14BB3944667
      6518C0550006693EB5AD16C652D58578FF00ED37FB4E7857F65FF00BEBFAFBFD
      B353B9DD1695A2432059F509801900E0EC8D72A5E420850470CCC88DD37C71F8
      B1A77C0DF84DE26F1CEA89E75B68F68664B7CB2FDA26621218772AB15DF2B226
      EDA42EEC9E01AFC12F8D1F1A3C55F1F3C7F7FE2EF175FF00DB352B9F92286305
      60B4841252085093B235C9C0C92496662CCCCC46EC11573D0FF68FFDB53E247E
      D1FA9DFC3A9EAF3E8DE109652D6FE18D3E5D96D1C7942AB33285370C0C68DBA4
      C80FB8A2A03B4781939A2BD5BF677FD99FC6DFB4DF8B27D0FC1F6B0AA5A45E75
      EEA97ECD1D9D9A9076091D558EE720855552C70C71B55D973DCD763CA68AFD5F
      F07FFC11DFC0565A6489E29F1CF88758D40CA5927D26282C2258F030A6391672
      5B3B8EEDC06081B4632733E23FFC11DFC3573A687F0178E754D3F508A294983C
      451477515CC981E52F9912C6615C8219B6C870C085F970CECC5CC8FCB30715EF
      9FB387EDA9F123F670D4EC21D33579F59F0845286B8F0C6A12EFB6923CB96585
      9831B7626476DD1E017DA5D5C0DA78FF008EFF00B3978EFF00671F1245A478DB
      48FB17DABCC6B1BFB7904B6B7B1A3ED2F1483FE0276305750E8595770CF99D2D
      87B9FD007ECC9FB4E7857F6A0F00A6BFA03FD8F53B6DB16ABA24D2069F4F9883
      804E06F8DB0C524000600F0ACAE8BEC15FCF17C03F8D9AF7ECFDF14745F19683
      713AB5A4CAB7B6714C235BFB42CA65B6725586D703192A76B0570372A91FBEDF
      0CFE21E8FF00167C01A0F8C3409BCED2759B44BB872C8CF1EE1F346FB1994488
      DB91D413B595876AD13B994958E9EBCCFF0069DFF936DF8ADFF62A6ABFFA492D
      7A65799FED3BFF0026DBF15BFEC54D57FF004925A625B9FCF5D1451591B9FA61
      FF000464FF009ABBFF00709FFDBCAFD30AFCCFFF0082327FCD5DFF00B84FFEDE
      57E98568B63196E14514532428A28A0028A28A0028A28A0028A28A0028A28A00
      28A29090064F028016BCF3E35FC7CF04FECFDE139F5DF196B50582AC4F25AE9E
      B229BCBF652A0C76F1120C8D97407F857702C5572C3E5EFDAA7FE0A7BE16F859
      F68F0FFC33FB178DBC52BE4B1D4F789B47815B2CEBE6472069A40A1461085064
      E5F723467F2A7E227C4DF157C59F12CFAFF8C35EBEF106AD2EE1F68BD94BF968
      5D9FCB8D7EEC7186762234015771C0152D96A37DCFA3BF6AEFF828778DBE3FDC
      5F683E1E967F07F80FCD9523B4B495A3BCD42064F2F6DE3AB10CA4172625C27E
      F30DE61457AF92E8A2A0D12B05145140C28A28A002BD0BE0A7C7CF1B7ECFDE2C
      835DF06EB53D832CA925D69ED231B3BF550C04771102048B87703F897712A55B
      0C3CF68A00FDABFD947FE0A1DE09F8FF006F63A0F886583C1FE3CF2A2492D2EE
      558ECF509D9FCBDB66ECC4B31250889B0FFBCC2F98119EBEB5AFE67C120E4706
      BEE4FD95BFE0A7BE29F859F67F0FFC4CFB6F8DBC2CBE730D4F799B58819B0C8B
      E6492059A30C1861C86024E1F6A2C6693EE66E3D8FD7CA2B98F877F137C2BF16
      7C3506BFE0FD7AC7C41A4CBB47DA2CA50FE5B9457F2E45FBD1C815D498DC065D
      C320574F56661451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      450014514500145145007E1BFF00C148FF00E4F3FE217FDC3FFF004DF6D5F33D
      7D31FF000523FF0093CFF885FF0070FF00FD37DB57CCF593DCDD6C15FD0A7ECC
      5FF26DBF0A7FEC54D2BFF4922AFE7AEBFA14FD98BFE4DB7E14FF00D8A9A57FE9
      245551267B1E995E67FB4EFF00C9B6FC56FF00B15355FF00D2496BD32BCCFF00
      69DFF936DF8ADFF62A6ABFFA492D599ADCFE7AE8A28AC8DCE9BE19FC3CD63E2C
      F8FF0041F07E810F9DAB6B3769690E55D923DC7E691F62B308D1773BB0076AAB
      1ED5FBDBFB3FFECFFE15FD9E7C01A6787BC3DA658C57D1DA430EA5ABC16A229F
      5399012D34AC4B31CBBC8CAA598207DAB850057E687FC122BC31FDABFB446BDA
      C4DA4FDAEDB4AF0FCDE5DFBDBEF4B4B992685530E4612478C5C0182095120191
      BABF5F2AE26527D02AA6ABA5596BBA5DDE9BA8DA417FA7DE42F6F716B7318922
      9A3605591D5810CA412083C106ADD15441FCF17ED0BF0B25F829F1B3C63E0A78
      E78E0D2750923B43732A492C968DF3DB48EC9F2EE685E36380305B0429040F3C
      AFB47FE0ACDE1BD3B43FDA8AD6F6C6DFC9B9D63C3F6B7D7CFBD9BCE99649A00D
      82485FDDC112E1703E5CE32493F17564CDD6C74FF0BBC65FF0AEBE25F84FC57F
      64FED0FEC3D5AD353FB2799E5F9FE4CCB26CDF83B776DC670719CE0D7F470ADB
      941F519AFE68A2FF005A9F515FD2DC5FEA93E82AA244C7D325FF0054FF00434F
      A64BFEA9FE86ACCCFE6925FF005AFF00534DA74BFEB5FEA69B591D07DC9FF048
      3FF9392F127FD8A971FF00A57695FAF95F907FF0483FF9392F127FD8A971FF00
      A57695FAF9571D8CA5B85145213815441F967FF0579F8D92EA7E2CF0D7C2DB0B
      885F4FD3225D6B52114C9231BA903A431BAEDDD1B245B9F1BBE65B95257E5527
      F3B2BD57F6ACF1C4BF117F690F88FAEC9A9C1AC4336B77305A5F5B14314B6B13
      986DCA327CACA218E3018677019249249F2AAC9EE6E9591A7E16F0D6A3E33F13
      693E1FD1EDFED7AB6AB77158D9DBEF54F36691C222EE621465980C9200CF2457
      F413F00FE09E85FB3F7C2ED17C1DA15BC08B690AB5EDE45098DAFEECAA896E5C
      1663B9C8CE0B1DAA1501DAAA07E4FF00FC12C7C1ABE27FDAC2C3536BC16A3C3B
      A55E6A7E518F77DA3728B5D99C8DB8FB56FCE0FDCC639C8FDA1F353FBEBF9D5C
      4893E83E8A679A9FDF5FCE8F353FBEBF9D5199E57FB50FC0CB2FDA23E0A788BC
      1B3AC09A84F0FDA34BBA9C002DAF63F9A17DC51CA293F23951B8C724807DEAFC
      00D574BBCD0F53BBD3751B49EC350B399EDEE2D6E6331CB0C8A4AB23A9C15604
      1041E4115FD29F9A9FDF5FCEBF077F6F0F08D97827F6B8F893A7D84B34D04FA8
      2EA4CD3B066125D431DCC801000DA1E660A3A8503249C93123483E878257EA1F
      FC120BE344FA968BE2DF861A95FF009BFD9DB758D22DDC4AEEB0BB6CBA50C494
      48D64303041B4969E46F9B276FE5E57D57FF0004C6F126A3A17ED81E16B2B1B8
      F26DB58B4BEB1BE4D8ADE742B6D24E172412BFBC8226CAE0FCB8CE09052DCA96
      C7EDAD799FED3BFF0026DBF15BFEC54D57FF004925AF4CAF33FDA77FE4DB7E2B
      7FD8A9AAFF00E924B5A192DCFE7AE8A28AC8DCFD30FF0082327FCD5DFF00B84F
      FEDE57E9857E67FF00C1193FE6AEFF00DC27FF006F2BF4C2B45B18CB70A28A29
      921451450014514500145145001451450014521214649C0F7AFCFF00FDABFF00
      E0A8DA178360BEF0CFC23783C49AEBC52C327894E4D9E9D287D9989197172D80
      EC181F2B98D81941650AF61A573EB4F8EFFB46F813F671F0D45ABF8D757FB19B
      9F316C6C2DE332DD5EC889B8A4518FF808DEC5514BA0665DC33F92FF00B4DFFC
      144BE217ED096AFA2E9EBFF082F849B70934DD2EEE469EF11E208F1DCCE36F9B
      19CC9FBB088A43E18395561F38F8E3C73AF7C4AF166A7E26F13EA93EB1AE6A52
      99AEAF2E08DCED8C0000C0550005555015540500000561543773551B05145148
      A0A28A2800A28A2800A28A2800A28A2800A28A2803D0BE0A7C7CF1B7ECFDE2C8
      35DF06EB53D832CA925D69ED231B3BF550C04771102048B87703F897712A55B0
      C3F5A7F651FF0082877827E3FDBD8E83E21960F07F8F3CA8924B4BB9563B3D42
      767F2F6D9BB312CC4942226C3FEF30BE60467AFC54A0120E47069A7625A4CFE9
      828AFC83FD95BFE0A7BE29F859F67F0FFC4CFB6F8DBC2CBE730D4F799B58819B
      0C8BE6492059A30C1861C86024E1F6A2C67F557E1DFC4DF0AFC59F0D41AFF83F
      5EB1F106932ED1F68B2943F96E515FCB917EF47205752637019770C81569DCC9
      A68E9E8A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2803F0DFFE0A47FF00279FF10BFEE1FF00FA6FB6AF99EBE98FF8291FFC9E7F
      C42FFB87FF00E9BEDABE67AC9EE6EB60AFE853F662FF00936DF853FF0062A695
      FF00A49157F3D75FD0A7ECC5FF0026DBF0A7FEC54D2BFF004922AA8933D8F4CA
      F33FDA77FE4DB7E2B7FD8A9AAFFE924B5E995E67FB4EFF00C9B6FC56FF00B153
      55FF00D2496ACCD6E7F3D745145646E7E987FC1193FE6AEFFDC27FF6F2BF4C2B
      F33FFE08C9FF003577FEE13FFB795FA615A2D8C65B8514514C93F20FFE0AF9FF
      002725E1BFFB152DFF00F4AEEEBE1BAFB93FE0AF9FF2725E1BFF00B152DFFF00
      4AEEEBE1BACDEE6EB61D17FAD4FA8AFE96E2FF00549F415FCD245FEB53EA2BFA
      5B8BFD527D05389131F4C97FD53FD0D3E992FF00AA7FA1AB333F9A497FD6BFD4
      D369D2FF00AD7FA9A6D64741F727FC120FFE4E4BC49FF62A5C7FE95DA57EBE57
      E41FFC120FFE4E4BC49FF62A5C7FE95DA57EBE55C763296E14C97FD53FD0D3E9
      B20CC6C3D8D5107F3472FF00AD7FA9A6D5BD634CBCD1756BDD3F50B49EC2FED2
      7782E2D6E6331CB0C8AC5591D480558104107904554AC8E800C54F048FA53BCD
      7FEFB7E75EE1FB20FECCBFF0D57F12752F09FF00C247FF0008C7D8F4A9353FB5
      FD8BED7BF64D0C7B3679898CF9D9CE7F8718E723EBEFF87327FD55DFFCB6FF00
      FBAA9D989B48FCD1F35FFBEDF9D1E6BFF7DBF3AFD2EFF87327FD55DFFCB6FF00
      FBAA8FF87327FD55DFFCB6FF00FBAA8B317323F347CD7FEFB7E74D249392727D
      EBF4C3FE1CC9FF005577FF002DBFFEEAA3FE1CC9FF005577FF002DBFFEEAA2CC
      3991F99F5F5F7FC12DFE1DEB3E2BFDA9B4AF1159418D23C316973757F72E8FB0
      79D0496F14618295F319A52C1588CAC52119DB83F4C782FF00E08E9E0EB0377F
      F0967C40D6F5ADDB3ECDFD8F690E9FE5E33BF7F99E7EFCFCB8C6DC60E776463E
      DAF855F08BC21F04BC271F86BC13A241A168E92BCE60899DDA4918FCCEF23967
      76C0032C490AAAA385003489725D0EC2BCCFF69DFF00936DF8ADFF0062A6ABFF
      00A492D7A65799FED3BFF26DBF15BFEC54D57FF4925AB216E7F3D745145646E7
      E987FC1193FE6AEFFDC27FF6F2BF4C2BF33FFE08C9FF003577FEE13FFB795FA6
      15A2D8C65B8514514C90A28A2800A28A2800A28A42428C9381EF400B5E65F1DF
      F68DF027ECE3E1A8B57F1AEAFF0063373E62D8D85BC665BABD91137148A31FF0
      11BD8AA29740CCBB867E4BFDABFF00E0A8DA178360BEF0CFC23783C49AEBC52C
      327894E4D9E9D287D9989197172D80EC181F2B98D81941651F97BE38F1CEBDF1
      2BC59A9F89BC4FAA4FAC6B9A94A66BABCB82373B630000301540015554055501
      40000152D96A37DCF7BFDAA3F6F4F1DFED306E3471FF0014AF8164F25BFE11DB
      4944BE6BC793BE79F62B4B9739098541B233B4B2EF3F33D14541ADAC14514500
      1451450014514500145145001451450014514500145145001451450015E85F05
      3E3E78DBF67EF1641AEF8375A9EC1965492EB4F6918D9DFAA86023B88810245C
      3B81FC4BB8952AD861E7B45007ED5FECA3FF00050EF04FC7FB7B1D07C432C1E0
      FF001E795124969772AC767A84ECFE5EDB37662598928444D87FDE617CC08CF5
      F5AD7F33E090723835F727ECADFF00053DF14FC2CFB3F87FE267DB7C6DE165F3
      986A7BCCDAC40CD8645F324902CD1860C30E4301270FB5163349F73371EC7EBE
      515C77C2BF8BDE10F8DBE138FC4BE09D720D7747795E03344AC8D1C8A7E6478D
      C2BA3608386504AB2B0E1813D8D5998514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      145140051451401F86FF00F0523FF93CFF00885FF70FFF00D37DB57CCF5F4C7F
      C148FF00E4F3FE217FDC3FFF004DF6D5F33D64F7375B057F429FB317FC9B6FC2
      9FFB1534AFFD248ABF9EBAFE853F662FF936DF853FF62A695FFA491554499EC7
      A65799FED3BFF26DBF15BFEC54D57FF4925AF4CAF33FDA77FE4DB7E2B7FD8A9A
      AFFE924B5666B73F9EBA28A2B2373F4C3FE08C9FF3577FEE13FF00B795FA615F
      99FF00F0464FF9ABBFF709FF00DBCAFD30AD16C632DC28A28A649F907FF057CF
      F9392F0DFF00D8A96FFF00A57775F0DD7DC9FF00057CFF009392F0DFFD8A96FF
      00FA57775F0DD66F7375B0E8BFD6A7D457F4B717FAA4FA0AFE6922FF005A9F51
      5FD2DC5FEA93E829C4898FA64BFEA9FE869F4D9066361EC6ACCCFE68E5FF005A
      FF00534DAB7AC69979A2EAD7BA7EA1693D85FDA4EF05C5ADCC6639619158AB23
      A900AB020820F208AA9591D07DC9FF000483FF009392F127FD8A971FFA57695F
      AF95F8A7FF0004C1F89165F0FF00F6A9D36D2FC411C1E25D3EE3445B9B8B910A
      C123149A3C6461D9DE0589532096946092029FDABCF19ED571D8CA5B8B4533CD
      4FEFAFE74E0735441F825FB70F82FF00E102FDAC7E2669BF6BFB6F9FAAB6A7E6
      F95E5E3ED6AB75B31939D9E7ECCE79DB9C0CE0786D7EAB7FC15B7E017FC243E0
      CD1FE2C6990E6F741D9A66ADF37DEB3924FDCBFCCE00F2E690AE150B37DA7248
      58EBF2A6B37B9BA7747D09FB01FC44FF00856FFB58F80AEA59EF63B2D4EECE8D
      710D93E3CFFB4A98625906E01A3599A1720E71E58600B2815FBB95FCCF825482
      3822BF65FF00610FDBBECBF684D320F06F8C6782C3E24D9C2763E04716B31A8C
      99620301660012F10E300BA0DBB962716449753EC9A28A2ACCC2AAEA9AA59687
      A6DDEA3A8DDC161A7DA44F3DC5DDD48238A18D41667766202A800924F000ACCF
      1C78E741F86BE13D4FC4DE27D520D1F43D362335D5E5C13B51738000192CC490
      AAAA0B3310A01240AFC83FDBBBF6EFBDFDA17529FC1DE0D9E7B0F86D69282CE4
      18E5D66453959655382B08201488F3901DC6EDAB126EC52573EBEF8A9FF055DF
      863E04F1649A1E83A4EA9E324B4D412DAF754B278A3B33063F7B2DB396267653
      C2A95447C1224DBB59BE85FD9E3F697F04FED37E13B8D73C1F753ABDA4BE4DEE
      977EAB1DE59B127619115986D700956562A70C33B95D57F9F5AFD00FF823BE9D
      AF49F16FC737F6ED38F0CC3A22437AAB38111BB79D4DB168F3F33048EEB0D83B
      416191BF0653D4A71491FAC15E67FB4EFF00C9B6FC56FF00B15355FF00D2496B
      D32BCCFF0069DFF936DF8ADFF62A6ABFFA492D590B73F9EBA28A2B2373F4C3FE
      08C9FF003577FEE13FFB795FA615F99FFF000464FF009ABBFF00709FFDBCAFD3
      0AD16C632DC28A28A648514514005148485192703DEBF3FF00F6AFFF0082A368
      5E0D82FBC33F08DE0F126BAF14B0C9E2539367A74A1F6662465C5CB603B0607C
      AE63606505942BD8695CFAD3E3BFED1BE04FD9C7C3516AFE35D5FEC66E7CC5B1
      B0B78CCB757B2226E291463FE0237B15452E8199770CFE427ED51FB7A78EFF00
      698371A38FF8A57C0B2792DFF08EDA4A25F35E3C9DF3CFB15A5CB9C84C2A0D91
      9DA59779F04F1C78E75EF895E2CD4FC4DE27D527D635CD4A5335D5E5C11B9DB1
      8000180AA000AAAA02AA80A00000AC2A86EE6AA360A28A291414514500145145
      0014515D0F82FC03AD78FB506B4D22D7CDF2F699A776DB1C2A4E01663F89C0C9
      201C03835955AB4E8C1D4AB24A2B76CDA8D1A988A8A9528B949EC96ACE7A8009
      E8335F56780FF65CD074E804BE2395F5ABB75E618DDA1823276F4DA43310430D
      C48041FBA0D7BA7873C2DA378744BFD95A4D8E99E763CCFB1DB245BF19C6EDA0
      671938CFA9AF82C6F19E0F0F271C3C1D4B75D97EAFF03EEB0BC1B8CA9152C4CD
      53F2DDFE8BF13F383637F74FE541523A835FA9B668BB4FCA3F2ABB7BA2E9FAEE
      9F258EA5636DA8594B8F32DAEA259237C10465581070403F502BC397882A1ACB
      0BA7F8FF00FB5359F0838A76AFFF0092FF00F6C7E52515FA23E38FD917C01E39
      B6B992CEC3FE11AD524F992EF4CF9630C10AA8307DCDB9DA4850A491F786493F
      2D7C63FD93FC63F0ADE7BCB5B797C4BE1C8E3121D52CA1C18805667F36205990
      2ED625F94C15CB02768FA0CA38DB28CDE6A8A9FB3A8FECCF4BFA3D9F92BDDF63
      E671B9262F057935CD1EEBF55BFE9E6789D14515F7C780145145001451450014
      51450014514500761F0AFE2F78BFE0978B23F12F8275C9F42D6122780CD12ABA
      C91B0F991E370C8EB900E19480CAAC395047EB47ECA1FF000523F087C759EC7C
      35E2F8E0F05F8E2E258AD6D602EEF67A9C8C9C98A42B8898BAB0114849F9A355
      7919881F8CF4038A69D84D267F4BE0E696BF19FF00650FF8291F8BFE054163E1
      AF17C73F8D3C0F6F1456B6B01744BCD32357E4C5215CCAA119808A4207CB1AAB
      C6AA41FD67F857F17BC21F1B7C271F897C13AE41AEE8EF2BC06689591A3914FC
      C8F1B85746C1070CA0956561C3026D3B9934D1D8D14514C90A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
      0A28A2800A28A2803F0DFF00E0A4631FB67FC42FFB87FF00E9BEDABE67AFD55F
      F82A4FECA9E29F89D77E1FF88FE0CD2AF7C457BA7DA0D2753D2EC54CD3887CD6
      782586154DCF879650F82480632176ABB0FCAA208383C1ACDEE6C9E815FD0A7E
      CC5C7ECDBF0A7FEC54D2BFF4922AFC5EFD94FF00654F15FED27F10349B5B4D26
      FA2F06C77606B1AF053141042851A68E3999194CE51D764786397566010330FD
      EC550AA00E80629C499B16BCCFF69DFF00936DF8ADFF0062A6ABFF00A492D7A6
      554D574AB3D734BBCD3750B582FAC2F217B7B8B5B98C4914D1BA956475604329
      048208C106ACCCFE6AA8AF60FDA73F664F157ECC1F1024D075E8FED9A65C9797
      4AD6E18CAC17F082391C9D922E543C6492A48E59591DBCA74AD2AF75DD4ED34E
      D36D27BFD42EE5482DED6D63324B348C42AA22A82598920003924D64741FA4DF
      F0464FF9ABBFF709FF00DBCAFD30AF99BF604FD99351FD9A3E0DCD65E234B2FF
      0084B35CBBFED0BF16B1A97B64F2D562B579813E6F97876C8F9434B205DC3E76
      FA66B45B183D58514514C47E41FF00C15F3FE4E4BC37FF0062A5BFFE95DDD7C3
      75FB0BFF000532FD9475DF8E7E12D1BC61E0DB182FFC45E198674BAD3E1B706F
      351B462AC16371CBB4455D9623F7BCD936FCD857FC7A20A9C1183EF59BDCDA2F
      41D17FAD4FA8AFE96E2FF549F415F889FB06FECA1AF7C7FF008A3A56BD358C31
      F80FC3BA84173AA5DEA36FE6DBDE346CB27D8910F12B38C0707E5446CB64B223
      FEDE8181551226C5A28A2A883F06BF6EBF87179F0CFF006A9F1FDA5D19E58354
      D41F5BB5B996D8C2B347744CC76649DEA8EF245BC1C1689B8072A3C12BF71FF6
      D6FD8C74EFDAABC356371A7DCD9685E36D2B77D93579EDD9FED10EC722D25656
      044664646DE55CC787DAA77B03F8E5F15FE0678F3E07EB49A5F8E3C317DA05CC
      99F2649943C17185466F2A64263936891376C63B4B60E0F159B46D1773850715
      E85A67ED15F15B45D36D74ED3FE2678BEC74FB4892DEDED6DB5DBA8E28635015
      51144802A8000007000AF3DA00CD228779AFFDF6FCEBF5C3FE0937F1B35EF885
      F0BFC4BE0DD72E27D417C232DAAE9F7B7130765B49D64096C06DCED8CC0E5496
      6F9640802AC6A2BF31FE147C0CF1E7C70D6DF4AF03F862FB5FB98F1E7490A048
      2DF2AECBE6CCE4471EE11BEDDEC3715C0C9E2BF683F630FD9234EFD94BC01716
      8F79FDABE2DD6BCA9B5ABF8D9BC82E81BCB861538C471F98F8620339666381B5
      12A244AD63DEF55D2ACB5DD2EEF4DD46D20BFD3EF217B7B8B5B98C4914D1B02A
      C8EAC0865209041E0835F873FB65FEC6BAF7ECB3E2D13C267D63C07A94C4697A
      D328DC8D82DF66B8C00166001208016450594021D13F746B0BC71E06D07E2578
      4F53F0CF89B4C8358D0B5288C37567700ED75C82082305581019594865601810
      40354D5C84EC7F3795674BD52F743D4AD351D3AEE7B0D42D2549EDEEED6431CB
      0C8A432BA329055810082390457E857ED21FF049CD774ED4B50D73E105E41ABE
      9734A644F0BDFCC21B9B6525008E19E46D92A82D21FDE3232A228CCAC727E25F
      885F02BE21FC2833378BFC17AE6816D15DB58FDB6F2C645B59261BBE58E7C797
      2642310518860A48247359DAC6A9A67B97C3CFF829A7C76F01F9315D6BD65E2E
      B282D16D62B5F1058AC9B71B71234B17972C92617059DDB3B98B65B0474DE24F
      F82B37C6CD7345B8B1B2B5F0BF87EE65DBB351D3B4E91E7870C09DA279648F90
      0A9DC878638C1C11F171041C1183EF45176164773F15FE38F8F3E38EB29AA78E
      7C4F7DE20B98B3E4C73B0482DF2A8ADE54280471EE11A6ED8A3715C9C9E6B86A
      D4F0DF8575AF196B36FA4681A45F6B7AADCEEF26C74EB679E7976A966DA880B1
      C2AB1381C004F6AFAABE017FC1327E29FC5D316A1E2587FE15C787DB3FBED620
      66BE93FD60F92D32AC30E8A0F9AD1FCAE19778E28DC2E91F2F781BC0DAF7C4AF
      16E99E19F0CE993EB1AE6A52886D6CEDC0DCED8C9249C0550016666215541624
      004D7EED7EC87FB3BC5FB32FC14D33C24F3C17BAD4B2BDFEAF796DBFCA9EEE4C
      03B039CED4448E30405DC23DC554B11567F67BFD953E1EFECD3A2FD93C27A579
      BA9BF982E35FD45639751B85765631B4CA8B88C6C4C46A157E40C4162CC7D82A
      D2B19CA570AF33FDA77FE4DB7E2B7FD8A9AAFF00E924B5E9955355D2ACF5CD2E
      F34DD42D60BEB0BC85EDEE2D6E631245346EA5591D5810CA4120823041AA20FE
      6AA8AF60FDA73F664F157ECC1F1024D075E8FED9A65C97974AD6E18CAC17F082
      391C9D922E543C6492A48E59591DBCA74AD2AF75DD4ED34ED36D27BFD42EE548
      2DED6D63324B348C42AA22A82598920003924D64741FA4DFF0464FF9ABBFF709
      FF00DBCAFD30AF99BF604FD99351FD9A3E0DCD65E234B2FF0084B35CBBFED0BF
      16B1A97B64F2D562B579813E6F97876C8F9434B205DC3E76FA66B45B183D5851
      4521214649C0F7A6216BCCBE3BFED1BE04FD9C7C3516AFE35D5FEC66E7CC5B1B
      0B78CCB757B2226E291463FE0237B15452E8199770CFC97FB57FFC151B42F06C
      17DE19F846F078935D78A5864F129C9B3D3A50FB331232E2E5B01D8303E5731B
      03282CA3F2F7C71E39D7BE2578B353F13789F549F58D735294CD75797046E76C
      60000602A8002AAA80AAA02800002A5B2D46FB9EF7FB547EDE9E3BFDA60DC68E
      3FE295F02C9E4B7FC23B692897CD78F277CF3EC56972E72130A8364676965DE7
      E67A28A835B5828A28A0028A28A0028A28A0028A2B77C11E1793C5FE25B3D394
      3085DB74F22FF04639639C1C1EC3231923D6B3A95234A0EA4DE8B537C3D0A98A
      AB1A1495E52692F566F7C2EF85973F10AF1A5797EC9A55BC8AB3CB83BDF2092B
      1F1B49E067278DC0E0F43F5D787348B3D074CB7B0B0B74B5B48142C7120E00FE
      A49E493C92493589E1ED2ED344B0B7B1B1812DAD6150A91A7403FA927924F249
      24D74F65D07E15F8A6799A55CC6A6BA416CBF57E7F91FD2392E414323A165AD5
      7F14BF45E4BF1DDF96C59F6ADBB5E82B12CFB56DDAF415F0B5373D0AA6DD9FDD
      35B16DD0563D9FDD35B16DD0579189F819E255DCD6B2E82B7ECC64006B02CBA0
      ADFB2E83EB5F9EE2373CAAC7C9BFB4E7EC516977A4CFE29F86DA6FD9EFA0DF2D
      EE836F965B8524B17B75E76B8C9FDD2FCA54008030DAFF000AF4AFDBCB1E7F5A
      FCEDFDB97F66CB7F857AFDB78C3C3563159784F57904335B472002D6F48772A9
      1E06D8DD54B28190A55C7C8BB16BF79F0EF8D6A626AAC9733A9CD27FC393DDF7
      8B6DEAFF0097AEEAFB23F34CE72F8D37EDE8AB2EABF5FF0033E55A28A2BFA24F
      920A28A2800A28A2800A28A2800A28A2800AEC3E15FC5EF17FC12F1647E25F04
      EB93E85AC244F019A2557592361F323C6E191D7201C32901955872A08E3E8A00
      FD98FD943FE0A47E10F8EB3D8F86BC5F1C1E0BF1C5C4B15ADAC05DDECF539193
      931485711317560229093F346AAF233103EC70735FCD0038AFB23F650FF8291F
      8BFE054163E1AF17C73F8D3C0F6F1456B6B01744BCD32357E4C5215CCAA11980
      8A4207CB1AABC6AA41A4FB99B8F63F6628AE3BE15FC5EF087C6DF09C7E25F04E
      B906BBA3BCAF019A256468E453F323C6E15D1B041C32825595870C09EC6ACCC2
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
      8A28A0028A28A0028A28A002BF1BFE0F785F46F197FC151F5CD1F5FD26C75BD2
      6E3C57E22F3AC351B749E0976A5E32EE47054E19548C8E0807B57EC857E3CFC0
      AD52CF48FF0082AD6A53DF5DC1650BF8C3C4102C971204532482F238D013FC4E
      ECAAA3A96600649152CB8F53F5F34BD2ACB43D36D34ED36D20D3F4FB48920B7B
      5B58C471431A80AA88AA0055000000E00156A8A2A880A28A28032FC4BE17D1BC
      67A35C691E20D26C75CD26E36F9D63A8DBA5C412ED60CBB91C15386552323820
      1ED587E10F839E01F87DA949A8F85FC13E1DF0E6A1244607BAD274A82D6568C9
      0C50B22025495538E9951E95D8514005145140051451400570BE24F811F0D7C6
      3AD5C6AFAF7C3EF0B6B7AB5CEDF3AFF51D1ADE79E5DAA15773BA163855503278
      000ED5DD51401574BD2ACB43D36D34ED36D20D3F4FB48920B7B5B58C471431A8
      0AA88AA0055000000E00156A8A2800A28A2800A6B22BFDE00FD453A8A00F33FF
      008662F83C7FE694F827FF0009EB4FFE375674CFD9D7E14E89A95A6A1A7FC33F
      0858DFDA4A93DBDD5B6856B1CB0C8A432BA304055810082390457A1D140EE22A
      85E800FA0A5A28A04145145001485430E403F5A5A280385F11FC08F86BE31D66
      E357D7BE1F785B5BD5AE36F9D7DA8E8D6F3CF2ED50ABB9DD0B1C2AA8193C0007
      6ACDFF008662F83BFF0044A7C13FF84F5A7FF1BAF4CA281DCA9A5E9163A1E9D6
      9A7E9D676F61616912416F6B6B12C71431A80AA88AA0055000000E00156E8A28
      10514514005145140197E25F0BE8DE33D1AE348F1069363AE69371B7CEB1D46D
      D2E20976B065DC8E0A9C32A9191C100F6AC3F087C1CF00FC3ED4A4D47C2FE09F
      0EF87350922303DD693A5416B2B4648628591012A4AA9C74CA8F4AEC28A0028A
      42428C9381EF5F9FFF00B57FFC151B42F06C17DE19F846F078935D78A5864F12
      9C9B3D3A50FB331232E2E5B01D8303E5731B03282CA15EC34AE7D69F1DFF0068
      DF027ECE3E1A8B57F1AEAFF63373E62D8D85BC665BABD91137148A31FF00011B
      D8AA29740CCBB867F213F6A8FDBD3C77FB4C1B8D1C7FC52BE0593C96FF008476
      D2512F9AF1E4EF9E7D8AD2E5CE4261506C8CED2CBBCF8278E3C73AF7C4AF166A
      7E26F13EA93EB1AE6A5299AEAF2E08DCED8C0000C05500055550155405000005
      61543773551B05145148A0A28A2800A28A2800A28A2800A28A2800AFA13E04F8
      7DB4AF0DBDECD16C9EFE4DE09CE4C4A3099078EA58823A861CFA7CF63935F5D7
      86EC534CD36D2CE22CD1DBC4B1297EA4280067DF8AF94E21ACE1878D25F69FE5
      FD23F57F0F7031AF8DAB8B97FCBB492F595D5FEE4D7CCEAACFA8ADDB2E83F0AC
      2B3EA2B76CBA0FC2BF20C56E7ED758D8B3ED5B76BD056259F6ADBB5E82BC0A9B
      9E2D536ECFEE9AD8B6E82B1ECFEE9AD8B6E82BC8C4FC0CF12AEE6B597415BF65
      D07D6B02CBA0ADFB2E83EB5F9EE2773CAAC74361DBF1AABF133E1BD8FC5DF86B
      AF7847506F2A0D52D8C493619BC99461A29768652DB24546DB901B6E0F04D5AB
      0EDF8D74DA6FF0FD6BE7E55EAE16AC311465CB3834D35D1A774FE4CF9DC5C54A
      2E2F667E126A5A75D68FA8DD585F5B4D677B6B2B433DBDC21492291490CACA79
      56041041E41155EBDBFF006D6D02C7C37FB4FF008EAD34E83ECF6F25CC378C9B
      D9B32CD6F1CD2B65893F34923B63A0CE0000015E215FE87E578D59960286352B
      2AB08CADDB9927FA9F96D487B39B876760A28A2BD3330A28A2800A28A2800A28
      A2800A28A2800A28A2803B0F857F17BC5FF04BC591F897C13AE4FA16B0913C06
      68955D648D87CC8F1B86475C8070CA4065561CA823F5A3F650FF008291F843E3
      ACF63E1AF17C70782FC71712C56B6B01777B3D4E464E4C5215C44C5D5808A424
      FCD1AABC8CC40FC67A01C534EC26933FA5F0734B5F8CFF00B287FC148FC5FF00
      02A0B1F0D78BE39FC69E07B78A2B5B580BA25E6991ABF26290AE65508CC04521
      03E58D55E35520FEB3FC2BF8BDE10F8DBE138FC4BE09D720D7747795E03344AC
      8D1C8A7E6478DC2BA3608386504AB2B0E181369DCC9A68EC68A28A6485145140
      0514514005145140051451400514514005145140051451400514514005145140
      0514514005145140051451400514514005145140051451400514514005145140
      0514514005145140051451400514514005145140051451400514514005145140
      057E0D7C60F105E7C21FDB8FC53E25BED267927D13C7736B6BA7DC66DDAE235B
      D3711E18A9DAB226D2AF820AB86008233FBCB5E1BF127F625F831F177C69A878
      B3C59E0EFED5D7F50F2FED377FDA7790F99B2358D3E48E655184451C01D3279C
      D26AE545D8F907FE1F37FF00548BFF002E4FFEE5A3FE1F37FF00548BFF002E4F
      FEE5AFA63FE1DB9FB3AFFD13DFFCACEA1FFC7E8FF876E7ECEBFF0044F7FF002B
      3A87FF001FA5A8EF13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522
      FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB
      3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF8
      7CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9F
      B3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968
      FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87
      FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD52
      2FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3
      A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522
      FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF
      0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F
      13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E
      7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67
      FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96B
      E98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CA
      CEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522
      FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB
      3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF8
      7CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9F
      B3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522FF00CB93FF00B968
      FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF0044F7FF002B3A87
      FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F13E67FF87CDFFD52
      2FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E7ECEBFF44F7FF2B3
      A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67FF0087CDFF00D522
      FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BE98FF876E7ECEBFF
      0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CACEA1FF00C7E8D42F
      13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE98FF00876E
      7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA1FFC7E8D42F13E67
      FF0087CDFF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96B
      E98FF876E7ECEBFF0044F7FF002B3A87FF001FA3FE1DB9FB3AFF00D13DFF00CA
      CEA1FF00C7E8D42F13E67FF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93F
      FB96BE98FF00876E7ECEBFF44F7FF2B3A87FF1FA3FE1DB9FB3AFFD13DFFCACEA
      1FFC7E8D42F13F33FF006A7FDBD3C79FB4C7DA3471FF0014AF81A4F25BFE11DB
      4944BE6C91E4EF9E7D8AD2FCE72130A8364676965DE7E67AFD2FFDAA3FE09518
      171E22F8283FE78A3783AEA7FAAC924175349FEE318E43FF003D087FB91D7E6D
      6ABA55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB0208
      20F208A977EA5AB742AD145148A0A28A2800A28A2800A28A2800A28A2800A28A
      2801F0B22CC8655678C302CA8DB491DC038383EF835EBD6DFB427D9801FD83BB
      1FF4F98FFD92BC787515F49587C22F09CCA0BE95BBFEDE25FF00E2ABE7B379E0
      E9A83C5C1CB7B5BE57EA8FD1784686755E35D6515A34D2E5E6E64B5BF35ADEEC
      B6B3EDB9CFC3FB4DF958FF008A733FF6FBFF00DAEAF43FB577923FE458CFFDBF
      FF00F6BAEAEDBE09782E4C6ED1B3FF006F337FF175AB6DF013C0B201BB43CFFD
      BDCFFF00C5D7C556C570FAF8F0F37F37FF00C99F695303C5CBE2C5D3FB97FF00
      2B38B87F6BEF2BFE654CFF00DC47FF00B555E8BF6D1F2BFE650CFF00DC4BFF00
      B557716DFB3CFC3F93EF6819FF00B7C9FF00F8BAD5B7FD9AFE1CBE3778773FF6
      FB71FF00C72BCB963385FAE167F7BFFE5879F3C1F13AF8B150FB97FF002072BE
      0DFDB1BFE123F14E8FA37FC225F67FED1BC86D3CFF00ED1DDE5EF70BBB6F9433
      8CE71915F555B7415E3DA07ECE7F0F746D4ECF52B3F0FF00937B67325C412FDB
      276D8EA4329C19307040E08C57B0DB7415F0F9FD6CB2B59E5949C15B5BF57FF8
      148ECC0D2C7D284963EA29BBE96EDF7235ACBA0ADFB2E83EB58165D056FD9741
      F5AFC7F13B9758E86C3B7E35D369BFC3F5AE66C3B7E35D369BFC3F5AF98C4EC7
      CFE24FCDAFF829E8FF008BF3A07FD8B507FE94DD57C835F477FC14175FBED67F
      69FF0010DA5DCFE75BE956D6767669B1479511B7498AE40C9FDE4D2364E4FCD8
      CE0003E71AFEF4E0AA32C3F0E60612DFD9C5FF00E04B997E0CFCC714EF5E6FCC
      28A28AFB539428A28A0028A28A0028A28A0028A28A0028A28A0028A28A002BB0
      F857F17BC5FF0004BC591F897C13AE4FA16B0913C0668955D648D87CC8F1B864
      75C8070CA4065561CA8238FAFAD3F651FF008278F8DBE3FDC58EBDE218A7F07F
      80FCD89E4BBBB89A3BCD42064F33759A3290CA4140256C27EF32BE61464A109F
      99EE5A5FFC165EF21D32D23D47E14C175A82C28B713DB6BA618A49001B99236B
      7728A4E4852CC40E371EA6D7FC3E6FFEA917FE5C9FFDCB5F63F81FF635F831E0
      5F09E99A0C3F0EFC3DAC258C4233A86B5A5DBDE5E5C3672D24B2BA12CC49278C
      28CE142A80A377FE198BE0EFFD129F04FF00E13D69FF00C6EAF533BC7B1F0DFF
      00C3E6FF00EA917FE5C9FF00DCB47FC3E6FF00EA917FE5C9FF00DCB5F727FC33
      17C1DFFA253E09FF00C27AD3FF008DD1FF000CC5F077FE894F827FF09EB4FF00
      E3746A178F63E1BFF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB96BE
      E4FF008662F83BFF0044A7C13FF84F5A7FF1BA3FE198BE0EFF00D129F04FFE13
      D69FFC6E8D42F1EC7C37FF000F9BFF00AA45FF009727FF0072D1FF000F9BFF00
      AA45FF009727FF0072D7DC9FF0CC5F077FE894F827FF0009EB4FFE3747FC3317
      C1DFFA253E09FF00C27AD3FF008DD1A85E3D8F86FF00E1F37FF548BFF2E4FF00
      EE5A3FE1F37FF548BFF2E4FF00EE5AFB93FE198BE0EFFD129F04FF00E13D69FF
      00C6E8FF008662F83BFF0044A7C13FF84F5A7FF1BA350BC7B1F0DFFC3E6FFEA9
      17FE5C9FFDCB47FC3E6FFEA917FE5C9FFDCB5F727FC3317C1DFF00A253E09FFC
      27AD3FF8DD1FF0CC5F077FE894F827FF0009EB4FFE3746A178F63E1BFF0087CD
      FF00D522FF00CB93FF00B968FF0087CDFF00D522FF00CB93FF00B96BEE4FF866
      2F83BFF44A7C13FF0084F5A7FF001BA3FE198BE0EFFD129F04FF00E13D69FF00
      C6E8D42F1EC7C37FF0F9BFFAA45FF9727FF72D1FF0F9BFFAA45FF9727FF72D7D
      C9FF000CC5F077FE894F827FF09EB4FF00E3747FC3317C1DFF00A253E09FFC27
      AD3FF8DD1A85E3D8F86FFE1F37FF00548BFF002E4FFEE5A3FE1F37FF00548BFF
      002E4FFEE5AFB93FE198BE0EFF00D129F04FFE13D69FFC6E8FF8662F83BFF44A
      7C13FF0084F5A7FF001BA350BC7B1F0DFF00C3E6FF00EA917FE5C9FF00DCB47F
      C3E6FF00EA917FE5C9FF00DCB5F727FC3317C1DFFA253E09FF00C27AD3FF008D
      D1FF000CC5F077FE894F827FF09EB4FF00E3746A178F63E1BFF87CDFFD522FFC
      B93FFB968FF87CDFFD522FFCB93FFB96BEE4FF008662F83BFF0044A7C13FF84F
      5A7FF1BA3FE198BE0EFF00D129F04FFE13D69FFC6E8D42F1EC7C37FF000F9BFF
      00AA45FF009727FF0072D1FF000F9BFF00AA45FF009727FF0072D7DC9FF0CC5F
      077FE894F827FF0009EB4FFE3747FC3317C1DFFA253E09FF00C27AD3FF008DD1
      A85E3D8F86FF00E1F37FF548BFF2E4FF00EE5A3FE1F37FF548BFF2E4FF00EE5A
      FB93FE198BE0EFFD129F04FF00E13D69FF00C6E8FF008662F83BFF0044A7C13F
      F84F5A7FF1BA350BC7B1F0DFFC3E6FFEA917FE5C9FFDCB47FC3E6FFEA917FE5C
      9FFDCB5F727FC3317C1DFF00A253E09FFC27AD3FF8DD1FF0CC5F077FE894F827
      FF0009EB4FFE3746A178F63E1BFF0087CDFF00D522FF00CB93FF00B968FF0087
      CDFF00D522FF00CB93FF00B96BEE4FF8662F83BFF44A7C13FF0084F5A7FF001B
      A3FE198BE0EFFD129F04FF00E13D69FF00C6E8D42F1EC7C37FF0F9BFFAA45FF9
      727FF72D1FF0F9BFFAA45FF9727FF72D7DC9FF000CC5F077FE894F827FF09EB4
      FF00E3747FC3317C1DFF00A253E09FFC27AD3FF8DD1A85E3D8F86FFE1F37FF00
      548BFF002E4FFEE5A3FE1F37FF00548BFF002E4FFEE5AFB93FE198BE0EFF00D1
      29F04FFE13D69FFC6E8FF8662F83BFF44A7C13FF0084F5A7FF001BA350BC7B1F
      0DFF00C3E6FF00EA917FE5C9FF00DCB47FC3E6FF00EA917FE5C9FF00DCB5F727
      FC3317C1DFFA253E09FF00C27AD3FF008DD1FF000CC5F077FE894F827FF09EB4
      FF00E3746A178F63E1BFF87CDFFD522FFCB93FFB968FF87CDFFD522FFCB93FFB
      96BEE4FF008662F83BFF0044A7C13FF84F5A7FF1BA3FE198BE0EFF00D129F04F
      FE13D69FFC6E8D42F1EC7C37FF000F9BFF00AA45FF009727FF0072D1FF000F9B
      FF00AA45FF009727FF0072D7DC9FF0CC5F077FE894F827FF0009EB4FFE3747FC
      3317C1DFFA253E09FF00C27AD3FF008DD1A85E3D8F86FF00E1F37FF548BFF2E4
      FF00EE5AE9BE187FC15A3FE163FC49F0A784FF00E1577F67FF006EEAB6BA67DA
      FF00B7FCCF23CE9963DFB3ECC376DDD9C646718C8EB5F5F7FC3317C1DFFA253E
      09FF00C27AD3FF008DD7E5E7C61F0C68FE0DFF0082A3E87A3E81A4D9687A4DBF
      8AFC3BE4D869D6E96F045B92CD9B6A200A32CCC4E072493DE8D50D599FB1F451
      4551985145140051451400514514005145140051451400514514005145140051
      4514005145140051451400514514005145140051451400514514005145140051
      4514005145140051451400514514005145140051451400514514005145140057
      867ED35FB1FF0080FF0069FD15FF00B76CFF00B3FC536F68D6DA6F88ED41F3ED
      32C1D43A821668C303F23F40F26C28CC5ABDCE8A00FC11FDA6BF63FF001E7ECC
      1AD3FF006ED9FF0068785AE2EDADB4DF11DA81E45DE143A87504B4321527E47E
      A524D85D54B5786D7F4ABAAE9565AEE9977A76A56905FE9F7713C1716B751892
      29A3605591D5810CA412083C106BF36BF6A9FF008254FF00C7C788FE0A0FF9E2
      8DE0EBA9FEAB24905D4D27FB8C6390FF00CF421FEE4750D1AA9773F33E8AB5AA
      E957BA16A777A76A5693D86A1692BC1716B75198E5864525591D5802AC082083
      C822AAD4961451450014514500145145001451450015F4CFC20D65759F06581C
      A996D81B6902820294002F5EA76ED3C7AFE15F3357A57C11F192E83AF1D2EE9D
      85A6A0CA91E016093670BC6780D9C138EA17A006BC0CEB0CF11846E2B58EBFE6
      7DEF05E671CBB3451AAED0A8B95FAEE9FDFA7CCFA6ACFA8ADDB2E83F0AC2B3ED
      5BB65D07E15F8A62B73FA16B1B167DAB6ED7A0AC4B3ED5B76BD057815373C5AA
      6DD9FDD35B16DD0563D9FDD35B16DD0579189F819E255DCD6B2E82B7ECBA0FAD
      60597415BF65D07D6BF3DC4EE79558E86C3B7E35BBFDA36BA3E9D717F7D730D9
      D95AC6D34F7170E1238A355CB3331E1540049278005615876FC6BE63FDBFFE3D
      47E0CF010F87DA55CCB16BFAFC6B2DDB46AEA22B0DCC18070C39919366DF9814
      12860372E70CAB27AD9F6634B2FA0B59BD5F68F57F25FE47CBE615A3429CAA4B
      A1F9FDF10FC55FF09D78FBC49E24FB37D8BFB6352B9D43ECDE6799E579B2B3EC
      DD81BB1BB19C0CE3A0AE7E8A2BFD04A54A1429C6953568C524BD1688FCC1B6DD
      D8514515A8828A28A0028A28A0028A28A0028A28A0028A28A002BA6F877F0CBC
      55F167C4B0681E0FD06FBC41AB4BB4FD9ECA22FE5A1754F3246FBB1C619D4191
      C855DC32457D1DFB28FF00C13C7C6DF1FEE2C75EF10C53F83FC07E6C4F25DDDC
      4D1DE6A1032799BACD19486520A012B613F7995F30A3257EB4FC14F807E09FD9
      FBC270685E0DD160B0558923BAD41A353797ECA58892E2500191B2EE47F0AEE2
      142AE1434AE4B958F97BF656FF008261785BE167D9FC41F133EC5E36F14AF9CA
      34CD826D1E056C2A37972461A69028639701419384DC8B21FB8C00060702968A
      BD8C9BB851452138A62168AF99BF686FF8281FC2BF805F6CD37FB4BFE12EF164
      1BE3FEC4D11D64F2651E62EDB89BEE438923D8EB96957703E5915F0E7C49FF00
      82B77C53F137F685B784F46D13C19653F97F66B8F2DAFAFADB1B4BFEF24C44FB
      8861CC3C2B607CC0352BA2945B3F5F28AFC07F187ED9FF001C7C71A9477DA8FC
      4FF115BCD1C42109A4DD9D3A22A093931DB79685B2C7E623711819C00061FF00
      C34EFC62FF00A2ADE36FFC286EFF00F8E52E62B90FE8528AFC1AF07FEDE3F1EF
      C0FA6C963A77C49D52E609263316D5D21D4650C4018125CA48E170A3E5076839
      38C924FD31F0DFFE0B11E25B6D48C7E3DF03697A869F24B1289FC3B2C96B2DBC
      793E6B7972B48266C1055774632A416F9B2A732172B3F5368AF29F81BFB50FC3
      7FDA234D59FC1BE2282E75058BCDB8D1AEBF737F6C3085B7C2DC955322A99137
      465B80E6BD5AA880A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A2BF3AFF00E0A17FB7A78BFE
      127C46B7F879F0D7518348D434E863BAD67546B549E512488592D95268CA0511
      B472175DC497550576386F8234CFDABFE33E93A9DADFC1F153C5EF3DB4CB322D
      CEB5713C45948203C723B23AE472AC0A91C1041C54B65A8B67F417457CBBFB00
      FED5979FB4E7C2FBD5F1118078CFC3B2C76BA93DBA145BA8DD4986E4AED088CE
      5255644240688B6115D547D45544B560A28A28105145140057E41FED0BFF0029
      61D2FF00EC6BF0DFFE8AB2AFD7CAFC83FDA17FE52C3A5FFD8D7E1BFF00D15655
      2CB8EE7EBE514515440514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      400514514005145140051451401E19FB4D7EC7FE03FDA7F457FEDDB3FECFF14D
      BDA35B69BE23B507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84FDA6BF
      63FF001E7ECC1AD3FF006ED9FF0068785AE2EDADB4DF11DA81E45DE143A87504
      B4321527E47EA524D85D54B57EF7554D574AB2D774CBBD3B52B482FF004FBB89
      E0B8B5BA8C4914D1B02AC8EAC0865209041E08349AB94A563F9AAA2BF4C3F6A9
      FF008254FF00C7C788FE0A0FF9E28DE0EBA9FEAB24905D4D27FB8C6390FF00CF
      421FEE475F9B3AAE957BA16A777A76A5693D86A1692BC1716B75198E58645255
      91D5802AC082083C822B36AC6A9DCAB45145030A28A2800A28A2800A28A2803E
      98F82DF14A0F13DA41A3DFC9E56B30205567627ED4AA3EF02792F81961DF9238
      C85F69B2E83F0AF80ADEE25B4B88E782478668983A491B156560720823A107BD
      7D05F0C3F68F823805978B9DD660C766A5143952BC9C488A32083800A839C8C8
      1824FE619F70F54BBC460D5D758ADD7A775E5BF6F2FDA387F8BE9D5A71C26632
      B4968A4F66BFBDD9F9ECFAEBBFD2767DAB6ED7A0AE6F43D4AD357B48EEEC6EA1
      BCB5933B26B7903A360907047079047E15D25AF415F93554E3269AD4FBEA9252
      5CD1774CDBB3FBA6B62DBA0AC7B3FBA6B62DBA0AF1F13F033C6ABB9AD65D056F
      D9741F5AC0B320004F02BC3FE30FEDA7E18F87D6AD63E157B6F16EBADB94B432
      9FB25B6532AED228C4BCB2FC887B382C840CFCA61328C76735FEAF81A4E72F2D
      979B7B25EBF99E0E3B13470B073AD2B2FEB63DA3E33FC74D03E03F83DF57D5DB
      ED37D36E8F4FD2E270B2DE4A00E075DA8320B3904282382C555BF283C59E2CD5
      FC73E23BFD775DBF9752D56FA432CF7331F998F40001C0000002800280000000
      2AE78F3E21F887E26EBEFAD789B549755D45A35884B20555445E8AA8A02A8E49
      C2819249EA493CED7F52F0770851E17C3CA536A75E7F14BA25FCB1BEB6EEF793
      D5EC92FCA332CC258EA9A2B456CBF561451457E8C78E14514500145145001451
      45001451450014515F4C7ECAFF00B05F8EFF0069836FAC1FF8A57C0B279CBFF0
      915DC425F35E3C0D9041BD5A5CB9C17CAA0D920DC5976102F63C13C0FE06D7BE
      2578B34CF0CF8634B9F58D735294436B676E06E76C64924E02A800B33310AAA0
      B120026BF50BF650FF00825CE85E0D82C7C4DF17120F126BAF145347E1AE4D9E
      9D287DF895D5B172D808A548F2B99148941561F5A7C08FD9CBC09FB38F86A5D2
      3C15A47D8CDCF96D7D7F712196EAF6444DA1E590FF00C08EC50A8A5DCAAAEE39
      F4DAB48C9CAFB08000303814B4515440514555D5354B3D0F4CBBD4751BB82C34
      FB485EE2E2EAE6411C50C6A0B33BB1202A800924F000A00CCF1CF8E741F86BE1
      2D4FC4DE26D4E0D1F43D362335D5E5C13B51738000192CC490AAAA0B3310A012
      40AFC84FDABFFE0A47E2FF008EB05F786BC211CFE0BF03DC452DADD401D1EF35
      38D9F832C81731294550628C91F348ACF22B00399FDBBFF6BCBDFDA4FE234FA7
      689A9CEDF0DB47940D26D0C460175204DAF752A924B3125C26E00AC647CA8CD2
      6EF976A1B358C7B8139A28AFA17F664FD883E21FED3176977616BFF08EF84D76
      BC9E22D5619160953CD31BADB003FD2245DB2700850536B3A165CC97B1F3D515
      FB0BF0AFFE0939F09FC216F1CBE30BCD53C7BA8189E3956599AC2CF717CAC891
      C2C24560A02FCD2B29CB1C0CA85F43FF00876E7ECEBFF44F7FF2B3A87FF1FA7C
      AC8E647E1BD15FABFF0015FF00E090DE09D5F4DD46EBE1F789754F0FEB2F2C93
      DBD9EAEEB756014872B6E085595177141E6334AC141CAB939AFCD9F8D1F05BC5
      5F00FC7D7FE11F17D87D8F52B6F9E39A325A0BB849212785C81BE36C1C1C0208
      6560ACACA06AC52699C8695AADEE85A9DA6A3A6DDCF61A85A4A93DBDD5AC8639
      61914865746520AB0201047208AFD42FD8CFFE0A6F67E21B73E15F8D7ABC161A
      C9940B0F13B4022B7BA0EE008AE046A121652DC4B858F603BCA95DD27E59D00E
      0D24EC0D5CFE97C1C8A5AF86BFE09A3FB5FEB1F1BB45D47C01E33BBFB7F8A740
      B44B9B2D4E42ED3EA1661823198E36992266894B96DD2091490595DDBEE5AD16
      A62D5828A28A620A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
      28A2800A28A2800A28A2803F9F4FDABB54BCD5FF0069AF8A93DF5DCF7B3A789B
      508164B890BB08E3B878E3404FF0A222AA8E815401800579557A67ED3BFF0027
      25F15BFEC6BD57FF004AE5AF33AC8E83EE4FF82419FF008C92F127FD8A971FFA
      57695FAF95F907FF000483FF009392F127FD8A971FFA57695FAF9571D8CA5B85
      145154405145140057E41FED0BFF002961D2FF00EC6BF0DFFE8AB2AFD7CAFC83
      FDA17FE52C3A5FFD8D7E1BFF00D156552CB8EE7EBE5145154405145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      4005145140051451400514514005145140051451400514514005145140051451
      40057867ED35FB1FF80FF69FD15FFB76CFFB3FC536F68D6DA6F88ED41F3ED32C
      1D43A821668C303F23F40F26C28CC5ABDCE8A00FC11FDA6BF63FF1E7ECC1AD3F
      F6ED9FF68785AE2EDADB4DF11DA81E45DE143A87504B4321527E47EA524D85D5
      4B5786D7F4ABAAE9565AEE9977A76A56905FE9F7713C1716B75189229A360559
      1D5810CA412083C106BF36BF6A9FF8254FFC7C788FE0A0FF009E28DE0EBA9FEA
      B24905D4D27FB8C6390FFCF421FEE4750D1AA9773F33E8AB5AAE957BA16A777A
      76A5693D86A1692BC1716B75198E5864525591D5802AC082083C822AAD496145
      1450014514500145145006B7877C5DAD784AE7CFD1F54BAD39CBA3B08242AB21
      5395DEBD180C9E1811C9F5AF4FD13F6B0F1CE916CD14E74ED55CB96135E5B156
      5181F28F2D90638CF233C9E7A63C6A8AF371396E0F18EF88A5193EED6BF7EE7A
      187CC7178456A156515D93D3EED8FA22CBF6D6F1441617693687A4CB78DB3ECD
      32095638F07E7DE85897C8E06197079E7A54173FB6D78F66B39A18ACB43B5924
      4645B88ADA52F192301943485723A8C8238E41AF9FA8AF33FD5BCA2EDBC3C7F1
      3AE59DE633567599DAF8CBE34F8DFC7F0B41AEF892F6EED5D1637B48D8430385
      6DC37451854621B9C904F039E0638AA28AF730F86A18487B3C3C1423D92497DC
      8F26A55A95A5CD524DBEEDDC28A28AE9320A28A2800A28A2800A28A2800A28A2
      800ADDF03F81B5EF895E2CD33C33E18D2E7D635CD4A510DAD9DB81B9DB192493
      80AA002CCCC42AA82C48009AF7BFD95FF60BF1DFED306DF583FF0014AF8164F3
      97FE122BB884BE6BC781B20837AB4B97382F9541B241B8B2EC3FAF7F023F672F
      027ECE3E1A9748F05691F63373E5B5F5FDC4865BABD91136879643FF00023B14
      2A29772AABB8E5A5725CAC7C97FB287FC12E742F06C163E26F8B89078935D78A
      29A3F0D726CF4E943EFC4AEAD8B96C0452A4795CC8A44A0AB0FD000028C0181E
      D4B455DAC64DDC28A28A620A28A2800AF86FFE0AA5FB437FC2BBF84D6DF0EF47
      BDF2B5FF0016E7ED9E4CB8920D350FCF9DAE197CE7C4632AC8E8B70A7915F719
      3815F825FB6C7C5AFF0085CDFB4BF8D75C82EBED3A4DB5D9D2F4D31DEFDAA0FB
      35BFEE95E171F288E56579805E333372D92C65951576786D1452AA9660075271
      506C7D55FB027EC81FF0D2DE3F9B53F12DA5EC7F0F344F9EF2E211B12FAE4152
      B6424C8619562EEC8095500650C88C3F6AF4AD2ACB43D32D34ED3AD20B0D3ED2
      24B7B7B4B68C471431A80AA88AA0055000000E0015E65FB2F7C0DB3FD9E3E09F
      873C1B02C0FA8410FDA354BA84022E6F64F9A67DC110BA83F22161B8471C60FD
      DAF57AD12B18B770A28A299215E65FB46FC07D1BF68EF84FABF82B5897EC46EB
      6CD67A924092C965728731CA81BF15600A9647750CBBB23D368A00FE717E26FC
      3BD67E1378FF005EF07EBF0791AB68F76F693611D524DA7E5923DEAAC6375DAE
      8C40DCACA7BD7335FAD3FF000551FD98E7F883E0CB6F8ABA147E66AFE17B436F
      AA5B2472C925CD819372BA05CAAF90CF2BB7CA328EECCE3CB507F25AB36AC6E9
      DD1E87FB3CFC539BE0A7C6CF06F8D239278E1D2B518E4BB16D12492C96ADF25C
      468AFF002EE685E45192305B20A9008FE8714EE507D466BF9B5F0A786F51F18F
      8A347D0747B7FB66ADAA5E4365676FBD53CD9A47088BB9885196603248033C91
      5FD24C636A283D4015512263A8A28AA330A2B98F889F137C2BF09BC353EBFE30
      D7AC7C3FA4C5B87DA2F6509E638467F2E35FBD248551888D0166DA700D7E687C
      7DFF0082B6F88BC43E7699F09F47FF00845EC8E3FE279AC471CF7CDFEADBE487
      E6862E44887719772B023CB6149BB0D26CFD55660BD481F535E7BA9FED15F0A7
      44D4AEF4FD43E267842C6FED25782E2D6E75DB58E5864525591D4B82AC082083
      C822BF027C67F14BC65F118DA1F15F8B35CF137D8F7FD9BFB5F519AEBC8DFB77
      ECF318EDDDB5738EBB467A0AE609CD4F317C87F43BA67ED15F0A75BD4AD34FD3
      FE267842FAFEEE5482DED6DB5DB59259A462155114392CC490001C926BD09583
      7420FD0D7F3400E2BB0F873F18BC6FF08F5237DE0DF156ABE1D9DA58A6956C6E
      9922B868893189A3CEC954166F95C3290CC0820904E60E43FA30A2BF2A7E017F
      C15B7C45E1F31699F16346FF0084A2C867FE279A3C71C17CBFEB1BE787E5865E
      4C683698B6AA927CC635FA71E06F1CE83F12BC27A6789BC33A9C1AC687A94226
      B5BCB7276BAE70410705581055958065605480411549DC869A37A8A28A620A28
      A2800A2BE2EFDAABFE0A5DE15F81BAD6ABE11F0969BFF09878CACB30CF299426
      9D6336D7051DD4969648DC26F89428F9994C8AEACA3F3AFE247EDD7F1C7E266A
      42E6F3C7FAA6890472CB24167E1D94E9D142B2107CBCC3B5E4550005F359D80C
      F3966265B2945B3F78BCD4FEFAFE74A1D5BA303F435FCD1F9AFF00DF6FCEB73C
      23E3EF137C3FD4A4D43C31E22D57C397F2C4607BAD26F64B595E3243142C8C09
      52554E3A6547A52E62B90FE90A8AFC66F827FF000547F8B1F0DAE2DED7C56F07
      C44D0A38921106A1B6DEF11511954ADD2292CC4942ED32CACDB3AA962D5FA99F
      023F68DF027ED1DE1A9758F04EAFF6D36DE5ADF584F198AEACA474DC1258CFFC
      086F52C8C51C2B36D38A4EE4B4D1F871FB4EFF00C9C97C56FF00B1AF55FF00D2
      B96BCCEBD33F69DFF9392F8ADFF635EABFFA572D799D666C7DC9FF000483FF00
      9392F127FD8A971FFA57695FAF95F907FF000483FF009392F127FD8A971FFA57
      695FAF9571D8CA5B8514515440515E65F1DFF68DF027ECE3E1A8B58F1B6AFF00
      62373E62D8D8411996EAF6444DC5228C7FC046F62A8A5D0332EE19FCB3F8D9FF
      000547F8B1F126E2E2D7C28F07C3BD0A489E13069FB6E2F1D5D1558B5D3A82AC
      08728D0AC4CBBFAB150D49BB149367EC76A9ABD8E87A75DEA1A8DE5BD8585A44
      F3DC5D5D4AB1C50C6A0B33BB31015400492780057E38FC75F1DF86B57FF829AE
      9BE29B1F106977BE194F13787E76D66DEF237B311C71D9891CCC0ECDA855B71C
      E06D39C60D7C99E24F156B5E32D66E357D7F57BED6F55B9DBE75F6A372F3CF2E
      D50ABB9DC963855503278000ED59750DDCB51B1FD17F847E327807E206A5269F
      E18F1BF877C477F144677B5D275582E6548C10A5CAA3921416519E9961EB5D80
      208C8391ED5FCD0062A78247D2BD5BE167ED55F167E0B431DB7843C75AAE9B61
      144F0C5A74CEB756712BBF98C52DE60F1A316C9DCAA1BE66E7E66CBE61721FD0
      5515F047ECC7FF000551F0EFC40BB4D0BE2ADB59782B577DAB6FACDAB4874EB9
      91A52A11D5B735B61593E777643B646668F0AA7EF6041191C8AABDC86AC2D145
      14C4145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      4500145145001451450014514500145145001451450014514500145145001451
      450014514500145145007867ED35FB1FF80FF69FD15FFB76CFFB3FC536F68D6D
      A6F88ED41F3ED32C1D43A821668C303F23F40F26C28CC5ABF213F69AFD8FFC79
      FB306B4FFDBB67FDA1E16B8BB6B6D37C476A079177850EA1D412D0C8549F91FA
      9493617552D5FBDD55355D2ACB5DD32EF4ED4AD20BFD3EEE2782E2D6EA312453
      46C0AB23AB02194824107820D26AE52958FE6AA8AFD30FDAA7FE0953FF001F1E
      23F8283FE78A3783AEA7FAAC924175349FEE318E43FF003D087FB91D7E6CEABA
      55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB020820F2
      08ACDAB1AA772AD145140C28A28A0028A28A0028A28A0028A28A0028A28A0028
      A28A0028A28A0028A2BE98FD95FF0060BF1DFED306DF583FF14AF8164F397FE1
      22BB884BE6BC781B20837AB4B97382F9541B241B8B2EC205EC782781FC0DAF7C
      4AF16699E19F0C6973EB1AE6A52886D6CEDC0DCED8C9249C0550016666215541
      624004D7EA17ECA1FF0004B9D0BC1B058F89BE2E241E24D75E28A68FC35C9B3D
      3A50FBF12BAB62E5B0114A91E5732291282AC3EB4F811FB397813F671F0D4BA4
      782B48FB19B9F2DAFAFEE2432DD5EC889B43CB21FF00811D8A1514BB9555DC73
      E9B56919395F61000A300607B52D14551014514500145145001451450071DF19
      3C5D79F0FF00E1178DFC4FA7C704D7FA2E897BA8DBC772A5A2792181E450E010
      4A92A3201071DC57F3A0C77313EA735FBA3FF0512D52F348FD8E3E224F63773D
      94CF15A40D25BC8518C725E411C8848FE17466561D0AB107826BF0BAA246B0D8
      2BDC7F61FF0005FF00C27BFB587C33D33ED7F62F23555D4FCDF2BCCDDF6456BA
      D98C8FBFE46CCE78DD9C1C60F8757DA3FF000499F0DE9DAE7ED45757B7D6FE75
      CE8FE1FBABEB17DECBE4CCD243016C02037EEE79570D91F3671900895B94F63F
      63E8A28AD4C028A28A0028A28A004203020F20D7C13F167FE0915E04F166B697
      DE06F13DEF816D9F3E7E9B3DB9D4E01F2A05F28BCA922721D9B7BC992FC6D030
      7EF7A295AE34DA3E5DFD953F600F04FECC7A97FC242D7B3F8BBC6662685756BD
      81628AD558B6E36D082DE5B321546667762030528AECA7EA2A28A60DDC2B98F8
      9BF11346F84DE00D7BC61AFCFE4693A3DA3DDCD874579368F9638F7B2A991DB6
      A2292373328EF5D3D7E54FFC15B7E3EFFC241E34D1BE13E992E6CB41D9A9EADF
      2FDEBC923FDCA7CC808F2E190B655CAB7DA704068E937604AECF953F69BFDA6F
      C55FB5078FDF5FD7DFEC7A65B6E8B49D12190B41A7C248E07037C8D852F2100B
      1038555445F20A2800B100724D666E0016380327DABDEFC1FF00B07FC7BF1C69
      925FE9DF0DB54B782394C257567874E94B000E44772F1B95C30F980DA4E46720
      81FA39FB087EC2165FB3DE97078C7C63041A87C49BC84ED4C8922D1A36183144
      46434C4121E51C609443B77349F64D52899B9763F06BC61FB07FC7BF03E991DF
      EA3F0DB54B88249442174978751943104E4C76CF2385C29F988DA0E0672403E0
      8410707835FD3057C5BFB6FF00FC13F746F8DBA25D78AFC01A6D8E87F10ADBCC
      9E482044B7835BDCC5DD65C6145C16662B31FBC4ED90E0ABC638829773F1C6BD
      83F663FDA73C55FB2FF8FE3D7B4193ED9A65CED8B56D12690AC17F082783D764
      8B96292004A9278656746F1F20A920F045152687F485E06F1CE85F12BC25A678
      9BC33A9C1AC687A94226B6BCB7276BAE704107055810559580656054804115BD
      5F953FF0492F8FBFF08FF8D359F84FA9CB8B2D7B7EA7A4FCBF76F238FF007C9F
      2A127CC8630D9670ABF66C005A4AFD56AD13B98356615F03FF00C147BF6DED47
      E1187F861E03B9FB2F8A2FAD166D535BB7994C9A6C32676C31053B92E1D46EDC
      D8288E8C9967578FEC8F8C1F11ECFE10FC2DF14F8CEF840F0E8BA7CD78B05C5C
      8B75B89554F97089083B5A47DB1AF0496700024807F9E2F14F89751F19F89B56
      F106B171F6BD5B55BB96FAF2E362A79B348E5DDB6A80A32CC4E0000678029365
      455CCC249393C9A28AEE7E0BFC17F14FC7CF1FD87843C2363F6CD4AE7E792590
      9582D2104079E6700EC8D72327049255543332A9835387552C700127DABD2BFE
      198BE30E33FF000AA7C6DFF84F5DFF00F1BAFDABFD9A3F64FF00047ECCDE12B4
      B1D16C20D43C44622BA87896E2DD45E5E33152EA1B931C3944DB103B46D04EE6
      DCEDED555CA67CE7F340CA54E0820FBD771F05FE3478ABE01F8FEC3C5DE11BFF
      00B1EA56DF24B0C80B41770920BC1320237C6D819190410ACA5595587EE87C72
      FD97BE1BFED0FA6341E31F0EC173A82C462B7D66D47937F6C30E1764CBC95532
      3B88DF7465B9286BF133F698FD9DF5EFD993E28DD783F5C9E1BF46885E69FA8D
      BE02DE5A3332A485324C6D9475643D194E0B2ED664D58A4D338EF89DE33FF858
      FF00127C57E2CFB1FF0067FF006EEAB75A9FD93CCF33C8F3A669366FC0DDB776
      33819C6703A573545148A3EE4FF8241FFC9C97893FEC54B8FF00D2BB4AFD7CAF
      C83FF8241FFC9C97893FEC54B8FF00D2BB4AFD7CAB8EC652DC2BCA7F698FDA23
      41FD993E175D78C35C826BF769459E9FA75BE435E5DB2B32465F0446B8476673
      D154E0336D56F56AFC5DFF00829B7C7DFF0085BBF1F66F0D69F2EFF0FF0082BC
      DD322F971E65E161F6B7E515861D122C12CBFB8DEA70E69B76125767CF5F1A3E
      3478ABE3E78FEFFC5DE2EBFF00B66A573F2450C60AC1690824A410A127646B93
      8192492CCC599998F0D45773F03BE13EA3F1CBE2CF867C0DA5BF9373AC5D885E
      E30ADF67854179A6DACCA1B644AEFB7702DB703922B336D83E13FC0EF1DFC71D
      65F4BF037866FBC4173163CE92050905BE55D97CD99C88E3DC237DBBD86E2B81
      93C57D43A5FF00C123BE33DFE9B69753EAFE10D3679A2491ECEE6FEE0CB03100
      98DCC703216527076B32E47048E6BF533E0BFC17F0AFC03F00587847C2361F63
      D36DBE796690869EEE620079E67006F91B0327000015542AAAA8EEAAF94C9CBB
      1F849F19FF0060BF8CBF042D6FB51D53C33FDB5A059F326B3A049F6B80279464
      79190013471A0560D2491AA82BD70549F9E88C57F4BE466BF2F3FE0AA3FB2A69
      BE1A16BF17BC25A57D923BEBB3078961B556F2FCE9398AEF62AED4DEC192472C
      033BC5F29777629A294AFB9F9C75FA4DFF0004CDFDB4EF06A765F07FC77AB40D
      60D108BC35A95F4A44A9202AA9A796C10CA413E56E20A95F2C6EDD1AA7E6CD5A
      D2B54BCD0F53B4D4B4EBB9EC350B3992E2DEEADA431CB0C8A432BA30C1560402
      08E411529D8A6AE7F4AD457997ECD3F17FFE17CFC0CF0878E5ADFEC973AA5A1F
      B5C213622DCC4ED0CFB06E6223F3237299627695CE0E457A6D6A601451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450014514500145145001451450014514500145145001451450014
      5145001451450015E19FB4D7EC7FE03FDA7F457FEDDB3FECFF0014DBDA35B69B
      E23B507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AF73A2803F047F69AFD8
      FF00C79FB306B4FF00DBB67FDA1E16B8BB6B6D37C476A079177850EA1D412D0C
      8549F91FA9493617552D5E1B5FD2AEABA5596BBA65DE9DA95A417FA7DDC4F05C
      5ADD46248A68D815647560432904820F041AFCDAFDAA7FE0953FF1F1E23F8283
      FE78A3783AEA7FAAC924175349FEE318E43FF3D087FB91D4346AA5DCFCCFA2AD
      6ABA55EE85A9DDE9DA95A4F61A85A4AF05C5ADD4663961914956475600AB0208
      20F208AAB5258514514005145140051451400514514005145140056EF81FC0DA
      F7C4AF16699E19F0C6973EB1AE6A52886D6CEDC0DCED8C9249C0550016666215
      541624004D7BDFECAFFB05F8EFF69836FAC1FF008A57C0B279CBFF000915DC42
      5F35E3C0D9041BD5A5CB9C17CAA0D920DC59761FD7BF811FB397813F671F0D4B
      A4782B48FB19B9F2DAFAFEE2432DD5EC889B43CB21FF00811D8A1514BB9555DC
      72D2B92E563E4BFD943FE0973A178360B1F137C5C483C49AEBC514D1F86B9367
      A74A1F7E25756C5CB60229523CAE64522505587E800014600C0F6A5A2AED6326
      EE14514531051451400514514005145140051451401F33FF00C148FF00E4CC3E
      217FDC3FFF004E16D5F86F5FBDDFB707833FE13CFD93BE2669BF6CFB0F91A536
      A7E6F97E66EFB232DD6CC647DFF236673C6ECE0E307F046A246B0D82BEE4FF00
      8241FF00C9C97893FEC54B8FFD2BB4AF86EBEBEFF8257F8CFF00E117FDAC6C34
      DFB1FDA7FE122D2AF34CF37CCD9F67DAA2EB7E307767ECBB3191F7F39E3052DC
      A7B1FB454514568601451450014514500145213815F217C44FF82A4FC14F0178
      967D1ED65D6FC5DE46E596FF00C3F691C96AB22BB294579658FCCFBB90E81908
      652AC79C034AE7D7D45781FECF1FB6DFC30FDA4E7B8B1F0FEA3368FAEC72F971
      E89AF7956F7972BB0BF990A2C8E255015F3B4965D84B05054B7BE502D8466DAA
      4FA0CD7F3A1F18BE235E7C5CF8A7E2AF195F09D27D6B519AED60B8B9370D6F1B
      31F2E11210372C69B635E000A800000007EF6FED15A9DE68BFB3F7C4CD434FBB
      9EC2FED3C33A94F6F756D218E58645B59195D181055810082390457F3C44E4D4
      48D2015F50FF00C1373E15C5F143F6A9F0F49771C1369FE1A8A4F104F14B2BA3
      3342556029B3AB2DC4903ED2429546CE7EEB7CBD5FA3BFF046BF0DE9D75E25F8
      9FAFCB6FBB56B1B4B0B1B7B8DEC36433BCCF2AEDCED3B9ADE1392091B3823272
      96E5BD8FD43A28A2B4300A28A2803F103FE0A47F0AE2F85FFB54F8864B48E087
      4FF12C51F88208A295DD95A62CB397DFD19AE239DF682542BAE31F757E5EAFD1
      DFF82CA786F4EB5F12FC30D7E2B7DBAB5F5A5FD8DC5C6F63BE181E178976E768
      DAD7131C8009DFC93818FCE2ACDEE6EB63B0F83BF11AF3E11FC53F0AF8CAC44E
      F3E8BA8C376D05BDC9B76B88D58799099003B5644DD1B70415720820907FA2F5
      6DCA0FA8CD7F3400E0D7F43BFB3AEA779AD7ECFDF0CF50D42EE7BFBFBBF0CE9B
      3DC5D5CC86496691AD636677624966249249E4934E244CF9EBFE0AB7E30BCF0D
      7ECACDA75B4703C3E20D6ED34DBA69549648D449720A608C36FB6419391B4B71
      9208FC67AFD30FF82CD9FF009245FF00716FFDB3AFCCFA4F72A3B057EB4FFC12
      47E0BC1E1BF84FACFC47BEB0DBAB788EEDECEC6E64313FFA040769319037A6F9
      C4A1D588DDE44476F00B7E4B57F403FB20786F4EF0A7ECBBF0BACB4BB7FB2DB4
      BE1FB4BE74DECF99AE2313CCD9624FCD24AED8E83760000001C452D8F5FA28A2
      ACC82BE37FF82A3FC138BE24FECF6FE2BB5B79A6D77C192FDB6116F0BCACF692
      B225D215560154011CCD2156DAB6E7EE86635F64560F8FBC2367F103C0BE22F0
      C6A124F0D86B5A75C69D7125B30595239A368D8A12080C031C1208CF63498D3B
      33F9BDA295C6D761E87149599B9F727FC120FF00E4E4BC49FF0062A5C7FE95DA
      57EBE57E41FF00C120FF00E4E4BC49FF0062A5C7FE95DA57EBE55C763296E731
      F143C67FF0AE7E1A78B3C57F64FED0FEC2D26EF53FB2799E5F9DE4C2D26CDF83
      B73B719C1C673835FCE86ABAADE6B9AA5E6A5A85D4F7D7F7933DC5C5D5CC8649
      6691D8B33BB312598924924E4935FB8FFF000512D52F348FD8E3E224F63773D9
      4CF15A40D25BC8518C725E411C8848FE17466561D0AB107826BF0BA948A8057E
      97FF00C11D3E1B7FC940F1FDD69DFF003C344D3F50F3BFEDB5D45E586FFAF36D
      CCBECA7EF8AFCD0AF5FF00841FB5B7C56F80DE1AB9D03C0BE29FEC4D26E6EDAF
      A5B7FECFB5B8DD3322216DD2C4CC3E58D0601C71D3934968535747F403457E1B
      FF00C3C8FF0068AFFA285FF946D3FF00F8C51FF0F23FDA2BFE8A17FE51B4FF00
      FE3155CC8CF919FB915C2FC75F87BFF0B5FE0D78D3C20B0D94F73AC693736B6B
      FDA2BBA08EE4C67C891BE5623649B1C3004A950472057E38FF00C3C8FF0068AF
      FA285FF946D3FF00F8C521FF0082917ED144107E21707FEA0DA7FF00F18A3990
      72B3E6861B588F438A28272493D4D1506A7EAB7FC11D3C69F6FF0086DF103C27
      F64D9FD97AAC1A9FDAFCDCF99F6987CBD9B31C6DFB1E73939F33181B79FD0AAF
      CD8FF823469779169BF15B517B49D34F9E5D36086E9A32229248C5CB488ADD0B
      28923240E4075CFDE19FD27AD16C632DC28A28A6485145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451400514514005145140051451400514514005145140051451400514514
      0051451401E19FB4D7EC7FE03FDA7F457FEDDB3FECFF0014DBDA35B69BE23B50
      7CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84FDA6BF63FF1E7ECC1AD3F
      F6ED9FF68785AE2EDADB4DF11DA81E45DE143A87504B4321527E47EA524D85D5
      4B57EF7554D574AB2D774CBBD3B52B482FF4FBB89E0B8B5BA8C4914D1B02AC8E
      AC0865209041E08349AB94A563F9AAA2BF4C3F6A9FF8254FFC7C788FE0A0FF00
      9E28DE0EBA9FEAB24905D4D27FB8C6390FFCF421FEE475F9B3AAE957BA16A777
      A76A5693D86A1692BC1716B75198E5864525591D5802AC082083C822B36AC6A9
      DCAB45145030A28A2800A28AFA63F657FD82FC77FB4C1B7D60FF00C52BE0593C
      E5FF00848AEE212F9AF1E06C820DEAD2E5CE0BE5506C906E2CBB0817B1E09E07
      F036BDF12BC59A67867C31A5CFAC6B9A94A21B5B3B70373B6324927015400599
      988555058900135FA85FB287FC12E742F06C163E26F8B89078935D78A29A3F0D
      726CF4E943EFC4AEAD8B96C0452A4795CC8A44A0AB0FAD3E047ECE5E04FD9C7C
      352E91E0AD23EC66E7CB6BEBFB890CB757B2226D0F2C87FE0476285452EE5557
      71CFA6D5A464E57D840028C0181ED4B451544051451400514514005145140051
      451400514514005145140197E2AF0DE9FE32F0C6AFA06AF6FF006BD2B55B496C
      6EEDF7B279B0C8851D77290C32AC46410467822BF9C7F15786F50F06F89F57D0
      357B7FB26ABA55DCB63776FBD5FCA9A3728EBB9495386523209071C135FD2657
      E337FC151FE09CBF0DBF6847F15DADBC30E85E338BEDB08B7852254BB89512E9
      0AAB12CC498E6690AAEE6B83F78AB1A9917067C715E99FB33FC48FF8547F1FBC
      07E2B7D43FB2ACAC35687EDD77E4F9DE5D9BB79773F26D62730BCA3E505B9CAF
      CD8AF33A2A0D4FE97C10C011C834B5F2A7FC1397F684D3BE33FC03D2B40FF53E
      24F05DA5BE93A85BAC2C919855592D65462CC1B747161B9077A3FCAAA533F55D
      6A60F40A28A2810514521200C9E05007CA9FF051FF008FFA8FC0CF802F0F87B5
      2FECDF147892ED74CB4B882E962BAB6876979E789482C70AAB16E5DA50DC2306
      0C173F8964E4D7D69FF0523FDA3ECFE3C7C6B8B4BF0FEA106A5E10F0AC4D6765
      756CC1E2BAB87DAD733236C04A92A918F99908837A1C495F25D66F7368AB2353
      C2BE25D47C19E26D23C41A45C7D9356D2AEE2BEB4B8D8AFE54D1B8746DAC0A9C
      3283820838E41AFE8BBC05E2FB3F883E07F0F78A34F8E786C35BD3ADF52B78EE
      542CAB1CD1AC8A1C024060186402467B9AFE747C2BE1BD43C65E27D2340D22DF
      ED9AAEA9790D8DA5BEF54F36691C222EE621465980C9200CF2457F483A469769
      A1E9567A769F690585859C296F6F6B6D188E2863550AA88A000AA0000003000A
      7126679F7ED3BFF26DBF15BFEC54D57FF4925AFE7AEBFA55D5F4BB4D734ABCD3
      B50B482FEC2F217B7B8B5B98C4914D1B2956475208652090411820D7F37DE2AF
      0DEA1E0DF13EAFA06AF6FF0063D574BBC9AC6EEDF7ABF95346E51D77292A70CA
      464120E382689040CBAFD2FF00F82321E7E2EFFDC27FF6F2BF342BEC7FF8252F
      8C6CFC33FB54AE9D751CEF3788344BBD36D5A200AA48A63B925F2461765B4832
      327715E3049096E54B63F6668A28AD0C428A28A00FCCEFF82CD9E7E117FDC5BF
      F6CEBF342BEC7FF82AD78C6CFC4DFB54B69D6B1CE93787F44B4D36E9A5002BC8
      C64B905304E5765CC632707706E30013F1C566F7368EC15FD0A7ECC5C7ECDBF0
      A7FEC54D2BFF004922AFE7FF00C29E1BD47C63E28D2341D22DFED7AAEA9790D9
      5A5BEF54F36691C222EE621465980C9200CF2457F49518DB1A8F414E24CCFCD1
      FF0082CDFF00CD22FF00B8B7FED9D7E67D7EC2FF00C15ABC0F2F88BF670D375E
      B5D320B99BC3FADC335C5F30412DADACA8F0B0563F36D699AD8155CE48524613
      23F1EA93DCA8EC15FD09FECC273FB367C29FFB1534AFFD248ABF9ECAFD98FF00
      82567C48B3F177ECC36FE1C410C3A8785750B8B39A15B90F2C91CD235CC73347
      80635632C918CE41303107A857114B63EC8A28A2ACC82A9EB1A9D9E8BA4DEEA1
      A85DC161616903CF717573208E2863552CCEEC480AA002493C002AE5781FEDD7
      F11ECFE19FECADE3FBBBA104B3EA9A7BE896B6D2DC885A692E8184ECC83BD911
      E49760192B137206580347E0EC873231F734DA28AC8DCFB93FE0907FF2725E24
      FF00B152E3FF004AED2BF5F2BF20FF00E0907FF2725E24FF00B152E3FF004AED
      2BF5F2AE3B194B73E67FF8291FFC9987C42FFB87FF00E9C2DABF0DEBFA1DFDA2
      3C112FC48F811E3FF0D5B69906B17FA8E89770D959DC04DAF75E531B720BE155
      84A23656246D601B2319AFE7888C120F514A454360AF5FF841FB24FC56F8F3E1
      AB9D7FC0BE16FEDBD26DAEDAC65B8FED0B5B7DB32A2395DB2CAAC7E5910E40C7
      3D7835E415FA87FF000473F887F68F0D7C41F02CF35947F64BB8359B487762EA
      6F353CA9DB05BE68D3C9B7190BF2997927728096A537647CA9FF000EDCFDA2BF
      E89EFF00E5674FFF00E3F47FC3B73F68AFFA27BFF959D3FF00F8FD7EE45155CA
      8CF9D9F86FFF000EDCFDA2BFE89EFF00E5674FFF00E3F47FC3B73F68AFFA27BF
      F959D3FF00F8FD7EE451472A0E767E1BFF00C3B73F68AFFA27BFF959D3FF00F8
      FD7A67C36FF8248FC53F131D3AE7C5BACE89E0CB29BCCFB4DBF98D7D7D6D8DC1
      3F771E227DC429E26E15B27E6056BF5EC90064F02BC87FE1AFBE0A7FC24BFD85
      FF000B47C2FF006EFB2FDB3CDFED28FECBB37ECDBF69CF93E667FE59EFDF8F9B
      6EDE68B20E6674BF05FE0BF85BE01F802C3C21E11B1FB1E9B6DF3C92C8434F77
      31003CF338037C8D819380000AAA15555477548082323914B544051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      514005145140051451400514514005145140057867ED35FB1FF80FF69FD15FFB
      76CFFB3FC536F68D6DA6F88ED41F3ED32C1D43A821668C303F23F40F26C28CC5
      ABDCE8A00FC11FDA6BF63FF1E7ECC1AD3FF6ED9FF68785AE2EDADB4DF11DA81E
      45DE143A87504B4321527E47EA524D85D54B5786D7F4ABAAE9565AEE9977A76A
      56905FE9F7713C1716B75189229A3605591D5810CA412083C106BF36BF6A9FF8
      254FFC7C788FE0A0FF009E28DE0EBA9FEAB24905D4D27FB8C6390FFCF421FEE4
      750D1AA9773F33EB77C0FE06D7BE2578B34CF0CF8634B9F58D735294436B676E
      06E76C64924E02A800B33310AAA0B120026BE85FD9AFFE09F1F11FE3EEA8F3EA
      5693F81BC2B6F35CDADCEB1AA5B6651710B6C7863B66647761265589DA8A5241
      BB7A6C3FAE3F023F672F027ECE3E1A9748F05691F63373E5B5F5FDC4865BABD9
      1136879643FF00023B142A29772AABB8E52571B958F92FF650FF00825CE85E0D
      82C7C4DF17120F126BAF145347E1AE4D9E9D287DF895D5B172D808A548F2B991
      48941561FA00005180303DA968ABB58C9BB8514514C414514500145145001451
      45001451450014514500145145001451450015E19FB687C031FB45FC02D77C37
      6B1799E20B4C6A9A2FCD8CDE44ADB539745FDE2349165CED5F377E09515EE745
      01B1FCD46A9A5DE687A9DDE9DA8DA4F61A85A4CF6F716B73198E5864525591D4
      80558104107904556AFD56FF008281FF00C13F7FE138FED2F89DF0C74EFF008A
      97E6B8D6BC3F6A9FF212EED71028FF00978EA5907FADE48FDE644BF952410707
      8359356374EE773F05FE3478ABE01F8FEC3C5DE11BFF00B1EA56DF24B0C80B41
      770920BC1320237C6D819190410ACA5595587ED0FECC9FB6FF00C3CFDA62CD2D
      6C6E87873C58BB525F0EEAB346B3CAFE51776B639FDFC6BB64E400C026E6440C
      B9FC25A0120E41C1F6A69D84D5CFE97C1CD2D7F3FDF0F3F6BCF8CBF0B7C95F0F
      7C44D6E1B682D16C60B2BD9FEDB6B042BB76AC704E1E34DA11402AA081900804
      83DC1FF82917ED1447FC942FFCA369FF00FC62AB988E467EDF6ABAB59685A6DD
      EA3A95E41A7E9F6913DC5C5D5D48B1C50C6A0B33BB31015400492780057E63FE
      D9FF00F0533D3BC63E1BD77E1F7C2B83ED7A4EA9682D2FBC53751B279B0C88C2
      7820B791030CAB2A195F046640A83E492BE09F19FC51F197C47FB27FC259E2CD
      6FC4DF64DFF66FED8D466BAF277EDDFB3CC63B776D5CE3AED19E82B98A4D94A3
      60A28AF5FF00D993F664F157ED41E3F4D03404FB1E996DB65D5B5B9A32D069F0
      92793C8DF23618246082C41E5555DD64B3E85FF8256FECF1FF000B0FE2C5CFC4
      4D62CBCDF0FF0084B1F63F3A2CC771A8B8F931B90AB7929990E195D1DADD8706
      BF5F2B8FF845F0AB41F825F0E744F04F86A39A3D1F4988C711B994C92C8CCECF
      248EDFDE777763801416C2850001D8568958C1BBB0AFC66FF82A3FC1397E1B7E
      D08FE2BB5B7861D0BC6717DB6116F0A44A97712A25D215562598931CCD2155DC
      D707EF15635FB335E65FB46FC08D1FF68EF84DABF82B5797EC66E76CD67A8A40
      92C965728731CA81BF15600A9647750CBBB206AE34ECCFE7B2B4FC2DE25D47C1
      9E26D27C41A3DC7D9356D2AEE2BEB3B8D8AFE54D1B8746DAC0A9C3283820838E
      41AB5E39F036BBF0D7C5BA9F867C4DA64FA3EB9A6CC61B9B3B80372363208232
      1948219594956521812083585599B1FD007ECC7FB4DF857F6A0F0047AF68127D
      8F53B6DB16ADA24D2069F4F9883C1E06F8DB0C524000600F0ACAE8BEC15FCE7F
      C2AF8BBE2FF825E2C8FC4BE09D6E7D0B58489E033C4A8EB246C3E6478DC323AE
      4038604065561CA823EE3F07FF00C163FC4B65A6491F8A7E1C697AC6A0652527
      D275192C2258F030A63912725B3B8EEDC06081B46326D48C9C7B1FA9B5E2DFB5
      7FED2FA0FECC9F0BAFB5BBEBB81BC47770CB0E83A5BA991AEEEC2FCA590329F2
      5095691B70C29001DCC8ADF08F8D3FE0B17E31BF169FF089FC3FD1345DBBFED3
      FDB17736A1E6671B36797E46CC7CD9CEECE4636E0E7E1CF889F137C55F167C4B
      3EBFE30D7AFBC41AB4BB87DA2F652FE5A1767F2E35FBB1C619D888D0055DC700
      50E40A3DCCCF14789752F19F89756F106B171F6CD5B55BB96FAF2E362A79B348
      E5DDB6A80A32CC4E000067802B328ADDF03781B5DF895E2DD33C33E19D327D63
      5CD4A610DB59DB81B9DB19249380AA002CCCC42AA82C48009A8353EAAFF825C7
      C1397E24FED089E2BBAB7866D0BC1917DB661710A4AAF772ABA5AA0566055811
      24CB2056DAD6E3EE96535FB335E65FB397C08D1FF671F84DA4782B4897ED86DB
      74D79A8BC091497B72E7324AE17F05504B1544452CDB727D36B44AC62DDD9E79
      FB42FC2C8BE35FC13F18F829E38249F56D3E48ED0DCCAF1C51DDAFCF6D23B27C
      DB56648D8E01C85C10C0907F9ECD574BBCD0F53BBD3751B49EC350B399EDEE2D
      6E6331CB0C8A4AB23A9C156041041E4115FD2B57E4B7FC150BF654D4BC21E3FB
      BF8B3E1CD2B7F84F5AF2CEB0D6AAB8B1BF276191D1546D8E6F90F984B6666937
      105D032921C5F43E08AF7BFD8D3F6A6BCFD95FE289D664B59F54F0CEA710B3D6
      34E8652ACD1EE05678D770469A339DBBF82AF22E537EE1E094541AEE7F487E06
      F1CE83F12BC25A6789BC33A9C1AC687A94426B5BCB7276BAE704107055810559
      580656054804115BB5FCF5FC20FDA57E267C06FB42F81BC5D7DA25ADC6E32D96
      12E2D599B6664F225568C4988D07981776063382457D2E3FE0AF9F18B1FF0022
      E782BFF006EFFF0092AAF98CB959FAE7AAEAB65A1E9977A8EA37705869F6913D
      C5C5DDCC8238A18D41667766202A800924F000AFC5DFDBFF00F6CA8BF699F16D
      9687E1959E0F01E81348D6B2C8CE8DA9CE405372F11202A80088C32EF0AEE490
      64289E67F1AFF6C5F8B3F1F609EC7C55E2A9FF00B0A595E41A269C8B6B66159D
      5D6364400CCA8513679C5D976E739249F21D2B4ABDD7353B4D3B4EB49EFF0050
      BB952DEDED2DA3324B348C42AA22A82598920003924D26EE528DB72AD15A5E27
      F0DEA3E0DF126ABA06B16FF63D5B4BBB96C6F2DF7ABF95346E51D77292A70CA4
      64120E3826B36A4B3EE4FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAFC83
      FF008241FF00C9C97893FEC54B8FFD2BB4AFD7CAB8EC652DC4232083D0D7E097
      EDA1F00CFECEBF1FB5EF0E5AC5E5E81778D5345F9B38B3959B6A72EEDFBB7592
      2CB9DCDE56FC00C2BF7BABE66FDBCFF6571FB4C7C26CE8F6FE6F8EBC3FBEE744
      DD75E4C72EF29E7C0F9054F98918DA4EDC3A265D54BE5B57145D99F8715ED1FB
      21FED0F2FECCBF1AF4CF17496F3DEE8D244F61AB59DB6CF366B49304EC2E3EF2
      3AC72000AEE31ED2CA189AF21D574ABDD0F53BBD3B51B49EC350B495EDEE2D2E
      6331CB0C8A4AB23AB00558104107904555ACCDB73FA43F0378E741F895E12D33
      C4DE19D4E0D6343D4A2135ADE5B93B5D738208382AC082ACAC032B02A40208AD
      DAFC1AFD967F6CBF1B7ECAFA95D47A30835AF0CDFCA92DF6837ECC226605774B
      0B03FBA98A294DF865236EE47D89B7EE4F07FF00C1623C057BA6C8FE29F03788
      B47D404A4241A4CB05FC4D1E0618C92340436770DBB48C00771CE05DCC9C59FA
      0355355D56CB42D32EF51D4AEE0B0D3ED2279EE2EAEA411C50C6A0B33BB31015
      400492780057E7FF008D3FE0B19E0FB1169FF089FC3FD6F5ADDBFED3FDB1770E
      9FE5631B36797E7EFCFCD9CEDC6063764E3E13FDA1FF006BDF891FB4D5C409E2
      DD4E18746B597CFB5D0F4C8BC9B3824D810BE096776C0620C8CC57CC70BB4311
      45C1459ED1FB6F7FC140F59F8DDADDCF857E1FEA57DA1FC3DB6F32092781DEDE
      7D6F7294769718616E55982C27EF03BA4192A91FC5D456EF81BC0DAEFC4AF16E
      99E19F0CE993EB1AE6A53086DACEDC0DCED8C9249C0550016666215541624004
      D46E68958FD85FF825B7C43D67C79FB2EC56BAC4DF69FF008477559F46B399D9
      DE46B658E29515CB31CECF3CC6A06004445038C9FAFAB85F81BF09F4EF81BF09
      BC31E06D2DFCEB6D1ED044F71865FB44CC4BCD36D6662BBE5677DBB885DD81C0
      15DD5688C5EE1451453105145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      5140051451400514514005145140051451400514514005145140051451400514
      514005145140098C52D145001451450014514500145145001451450014514500
      145145001451450014514500145145001451450015F1BFED5DFF0004DCF087C7
      59EFBC4BE11960F05F8E2E2596EAEA708EF67A9C8C9C09630DFBA62EAA4CB182
      7E691992466047D91451B8D3B1FCFAFC72FD97BE247ECF1A9B41E32F0E4F6DA7
      B4BE55BEB36A3CEB0B93970BB265E03308DD846FB640BC9415E535FD2FB28618
      2011EF5E1DE34FD87FE04F8F7EC9FDA5F0CF44B6FB2EFF002FFB1E36D3376EC6
      77FD99A3F33EE8C6ECE39C632731CA5A9F73F0468AFD8FF127FC1267E09EB9AD
      5C5F595D78A3C3F6D2EDD9A769DA8C6F0438500ED33C5249C9058EE73CB1C606
      00CCFF008741FC1DFF00A193C6DFF81D69FF00C8B4B9595CC8FC83AB5A5E957B
      AE6A569A769B693EA1A85DCA905BDADAC664966918855445504B31240007249A
      FD98F067FC12C3E04F85FED9FDA561ADF8BBCFD9E5FF006C6A6D1FD9F1BB3B3E
      CC21CEEC8CEFDDF74631CE7E84F87BF02FE1E7C27F21FC21E0BD13C3F7315A2D
      8FDB6CAC635BA9211B7E5927C799264A2925D8962A0924F34F945CE8FCAAFD99
      3FE0993E3BF8B7769AA78FE1BDF879E164DAEA975001A8DEE252AF1A42C4341F
      2ABFEF255FE28CAA48A491FAABF05FE0BF857E01F806C7C23E10B0FB1E9B6DF3
      C9348434F7731003CF338037C8D819380000AAA15555477545525621B6C28A28
      A64851451401E19FB4DFEC7FE04FDA7F457FEDDB3FECFF0014DBDA35B69BE23B
      507CFB4CB0750EA0859A30C0FC8FD03C9B0A3316AFC84F8F9FB17FC54FD9D4CB
      75E23D07EDFE1F4C7FC541A316B9B119F2C7CEDB4343F3C8A83CD54DCC0EDDC0
      66BF7BA9080C304647BD26AE529347F341457EF778D3F61FF813E3DFB27F697C
      33D12DBECBBFCBFEC78DB4CDDBB19DFF006668FCCFBA31BB38E718C9CF8B6A9F
      F048EF8317FA95DDD41ABF8BF4D82695E44B3B6BFB73140A4922343240CE5541
      C0DCCCD81C9279A9E565F323F1EA8AFD85D2FF00E091DF062C352B4BA9F57F17
      EA50432A48F67737F6E229D4104C6E63815C2B0183B595B07820F35ED3E0BFD8
      7FE04F80BED7FD9BF0CF44B9FB56CF33FB6236D4F6EDDD8D9F69693CBFBC73B7
      19E339C0C1CAC3991F907F00FF0062FF008A9FB4518AEBC39A0FD83C3EF9FF00
      8A83592D6D6271E60F91B6969BE78D90F94AFB588DDB41CD7EBDFECC9FB1FF00
      813F660D153FB0ACFF00B43C537168B6DA9788EE81F3EEF0C5D822925618CB11
      F2275091EF2ECA1ABDC800A300607B52D525621C9B0A28A2992155755D2ACB5C
      D32EF4ED46D20BFD3EEE27B7B8B4B98C4914D1B02AC8EAC0865209041E08356A
      8A00FC7AFDB4FF00E09D9AF7C1FD4F56F187C3BB09F5AF874B13DEDC5B2C824B
      9D19411B91813BE58406DC241B99515BCCE13CC7F890820E08C1F7AFE97C8CD7
      907C57FD917E10FC6ED65357F187822C751D5973BAFEDE496CE79BE5451E6BC0
      E8D2E16350BBCB6D030B8C9CCB89A29773F9FF00A2BF5F0FFC120FE0EE7FE463
      F1AFFE075A7FF22D74DE0BFF0082587C09F0B1BBFED2B0D6FC5DE7ECF2FF00B6
      35368FECFB739D9F6610E7764677EEFBA318E733CAC7CC8FC8DF857F087C5FF1
      B7C591F86BC13A1CFAEEB0F13CE6189951638D47CCEF2395445C9032CC016655
      1CB007F5EFF634FD80741FD99A73E26D72F60F14F8F268824778B015B7D31590
      0952DC31259892EA662158A6142A0670FF004BF83FC05E1AF87BA6C9A7785BC3
      DA5F86EC2494CEF6BA4D9476B13C84052E563500B10AA33D70A3D2B7AA92B12E
      573F0B7FE0A0FF000AE5F857FB54F8C2311CE34FD7E5FF008482CE5B8951DA55
      B925A6236E36A8B813A2AB00DB5067390C7E71AFE89BE2C7C0EF027C72D1534B
      F1CF866C7C416D167C99275293DBE5919BCA9908922DC634DDB186E0B8391C57
      CD1E1BFF00824D7C13D0B5BB7BEBDBAF147882DA2DDBB4DD47518D209B2A40DC
      608A39382430DAE39519C8C829C46A48F0DFF823DFC27D4A4F1278CBE25CAFE4
      E930DA1F0F5BA614FDA26778A794E776E5F2D521EAB86F3B83F2115FA87597E1
      AF0BE8DE0CD16DF47F0FE9363A1E936DBBC9B0D3ADD2DE08B73166DA88028CB3
      31381C924F7AD4AA4AC43776145145311F257ED97FB00E83FB4CCE3C4DA1DEC1
      E16F1E4311492F1A02D6FA9AAA11125C0520AB021144C03304CA9570A813F23B
      E2C7C0DF1E7C0ED6934BF1C7862FBC3F73267C992750F05C61519BCA99098E4D
      A244DDB18ED2D8383C57F44D55355D2ACB5CD36EB4FD4ACE0D42C2EE2782E2D6
      EA259229A3605591D5810CA412083C106A5AB94A563F9AAA2BF793C61FB077C0
      4F1C6A51DF6A3F0DB4BB69E38442174879B4E88A824E4C76CF1A16CB1F988DC4
      60670001E2E7FE0907F0773FF231F8D7FF0003AD3FF916972B2F991F907457EC
      2E97FF00048EF83161A95A5D4FABF8BF5282195247B3B9BFB7114EA08263731C
      0AE1580C1DACAD83C1079AF69F05FEC3FF00027C05F6BFECDF867A25CFDAB679
      9FDB11B6A7B76EEC6CFB4B49E5FDE39DB8CF19CE060E561CC8FC83F807FB17FC
      54FDA28C575E1CD07EC1E1F7CFFC541AC96B6B138F307C8DB4B4DF3C6C87CA57
      DAC46EDA0E6BF5CBF659FD8D3C13FB2BE9973268C66D6BC4F7F12457DAF5FAA8
      959405DD142A07EEA12EA5F665989DBB9DF6263DEC00A300607B52D525621C9B
      0A28A29921451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      0145145001451450014514500145145001451450014514500145145001451450
      014514500145145001451450014514500145145007FFD9}
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    If <dsConfiguracion."lLicencia"> = '#39'No'#39' Then'
      '    Begin'
      '         Picture1.DataField := '#39#39';'
      '         Picture2.DataField := '#39#39';'
      '         lblLicencia.Visible := True'
      '    End'
      '    Else'
      '    Begin'
      '         Picture1.DataField := '#39'bImagenPEP'#39' ;'
      '         Picture2.DataField := '#39'bImagen'#39' ;'
      '         lblLicencia.Visible := False'
      '    End ;'
      ''
      '    //PARA MOSTRAR LOS AVANCES POR FRENTE Y TOTAL DE LA OBRA...'
      '      '
      
        '    If (<dsConfiguracion."bAvanceFrente"> = '#39'Si'#39') and (<dsConfig' +
        'uracion."bAvanceContrato"> = '#39'Si'#39') Then'
      '    begin                '
      '          GroupHeader6.Visible := True;'
      
        '          if <dsConfiguracion."lMostrarAvanceProgramado"> = '#39'Si'#39 +
        ' then'
      
        '              GroupHeader14.Visible := True;                    ' +
        '                                                    '
      '    end                  '
      '    else'
      '    begin'
      '        If <dsConfiguracion."bAvanceFrente"> = '#39'Si'#39' Then'
      '        begin                             '
      '           GroupHeader12.Visible := True   ;'
      
        '           if <dsConfiguracion."lMostrarAvanceProgramado"> = '#39'Si' +
        #39' then'
      '              GroupHeader15.Visible := True;  '
      '        end;                                 '
      '        If <dsConfiguracion."bAvanceContrato"> = '#39'Si'#39' Then'
      '        begin                             '
      '           GroupHeader13.Visible := True   ;'
      
        '           if <dsConfiguracion."lMostrarAvanceProgramado"> = '#39'Si' +
        #39' then'
      '              GroupHeader16.Visible := True;  '
      '        end;                                          '
      '    end;'
      ''
      '    //MOSTRAR PERMISOS..'
      '      '
      '    If <dsConfiguracion."bPermisos"> = '#39'No'#39' Then'
      '    begin                         '
      '        GroupHeader17.Visible := False   ;'
      
        '        MasterData7.Visible   := False;                         ' +
        '                                     '
      '    end;                                     '
      '    '
      '    //MOSTRAR COMENTARIOS..'
      ''
      '    If <dsConfiguracion."bComentarios"> = '#39'No'#39' Then'
      '    begin                 '
      '        GroupHeader7.Visible  := False   ;'
      '        MasterData3.Visible   := False;'
      
        '        GroupFooter5.Visible  := False;                         ' +
        '                                   '
      '    end;'
      ''
      ' If <dsReporteDiario."sIdUsuarioResidente"> = '#39#39' Then'
      '    begin                  '
      '        lblResidencia.Visible  := True;'
      
        '        lblResidencia2.Visible := True;                         ' +
        '                                                       '
      '    end                          '
      '    else'
      '    begin                '
      '        lblResidencia.Visible  := False;'
      
        '        lblResidencia2.Visible := False;                        ' +
        '                                                       '
      '    end;                        '
      ''
      '    If <dsReporteDiario."sIdUsuarioValida"> = '#39#39' Then'
      '    begin                '
      '         lblValida.Visible    := True;'
      '         lblValida2.Visible   := True;  '
      '    end                 '
      '    Else'
      '    begin                '
      '         lblValida.Visible    := False ;'
      '         lblValida2.Visible   := False;  '
      '    end;                   '
      ''
      '    If <dsReporteDiario."sIdUsuarioAutoriza"> = '#39#39' Then'
      '    begin'
      '         lblAutoriza.Visible   := True;'
      '         lblAutoriza2.Visible  := True;             '
      '    end                   '
      '    Else'
      '    begin                '
      '         lblAutoriza.Visible := False ;'
      '         lblAutoriza2.Visible:= False;  '
      '    end;'
      ''
      '    //Ocultar Firmas de en medio'
      '    if  <dsConfiguracion."iFirmasReportes"> = 2 then'
      '    begin'
      '        memo31.Visible := False;'
      '        memo36.Visible := False;'
      '        memo35.Visible := False;'
      ''
      '        memo162.Visible := False;'
      '        memo166.Visible := False;'
      '        memo165.Visible := False;'
      ''
      '        lblAutoriza.Visible := False;'
      '        lblAutoriza2.Visible:= False;            '
      '    end;'
      '      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = DiarioGetValue
    Left = 328
    Top = 232
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = frmDiarioTurno2.dsConfiguracionOrden
        DataSetName = 'dsConfiguracionOrden'
      end
      item
        DataSet = frmDiarioTurno2.dsMovimientosEmbarcacion1
        DataSetName = 'MovtosEmbarcacion1'
      end
      item
      end
      item
        DataSet = frmDiarioTurno2.totalxoptprog
        DataSetName = 'totalxoptprog'
      end
      item
      end
      item
      end
      item
        DataSet = frmDiarioTurno2.dsBitacora3
        DataSetName = 'dsBitacora3'
      end
      item
        DataSet = frmDiarioTurno2.bitacoraEquipo
        DataSetName = 'bitacoraEquipo'
      end
      item
        DataSet = frmDiarioTurno2.dsEquipos
        DataSetName = 'dsEquipos'
      end
      item
        DataSet = frmDiarioTurno2.movbarco
        DataSetName = 'movbarcoxopt'
      end
      item
        DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
        DataSetName = 'dsMovimientosEmbTipo1'
      end
      item
        DataSet = frmDiarioTurno2.dsPersonal
        DataSetName = 'dsPersonal'
      end
      item
      end
      item
        DataSet = frmDiarioTurno2.frxDBDataset2
        DataSetName = 'dsConsolidado'
      end
      item
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
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 15.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDot
      OnBeforePrint = 'Page1OnBeforePrint'
      object GroupHeader4: TfrxGroupHeader
        Height = 66.141732290000000000
        Top = 495.118430000000000000
        Width = 721.512277000000000000
        Condition = 'dsmBitacora1."sContrato"'
        ReprintOnNewPage = True
        object Shape3: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559060000000000000
          Width = 735.874015750000000000
          Height = 30.236240000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo58: TfrxMemoView
          Left = 137.952785200000000000
          Top = 47.244094490000000000
          Width = 229.039340790000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 366.992125980000000000
          Top = 47.244094490000000000
          Width = 55.181102360000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.  A INSTALAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 422.173228350000000000
          Top = 47.244094490000000000
          Width = 46.110236220000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UNIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 468.283464570000000000
          Top = 37.039370080000000000
          Width = 89.952755905511800000
          Height = 10.204724410000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 558.236220470000000000
          Top = 37.039370080000000000
          Width = 89.952755905511800000
          Height = 10.204724410000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 648.188976380000000000
          Top = 37.039370078740100000
          Width = 89.574803150000000000
          Height = 10.204724409448800000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 1.889763780000000000
          Top = 26.456597720000000000
          Width = 466.393700790000000000
          Height = 20.787404020000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCION DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 468.283464570000000000
          Top = 26.456597720000000000
          Width = 269.480314960000000000
          Height = 10.582677165354300000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 18.141744490000000000
          Top = 3.779530000000020000
          Width = 171.590185040000000000
          Height = 13.220470000000000000
          ShowHint = False
          AutoWidth = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DETALLE DE MOVIMIENTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 1.889763780000000000
          Top = 47.244094490000000000
          Width = 94.110267950000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PQ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 468.283464570000000000
          Top = 47.244094490000000000
          Width = 49.511811020000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 517.795275590551000000
          Top = 47.244094490000000000
          Width = 40.440944881889800000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12315881
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 558.236220470000000000
          Top = 47.244094490000000000
          Width = 49.511811020000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 607.748031500000000000
          Top = 47.244094490000000000
          Width = 40.440944881889800000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12315881
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 648.188976380000000000
          Top = 47.244094490000000000
          Width = 49.511811023622000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 697.700787400000000000
          Top = 47.244094490000000000
          Width = 40.062987240000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = 12315881
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 96.000031730000000000
          Top = 47.244094490000000000
          Width = 41.952753460000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 122.795300000000000000
        Top = 1455.119050000000000000
        Width = 721.512277000000000000
        object lblResidencia: TfrxMemoView
          Left = 506.457020000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VBO. RESIDENCIA')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblAutoriza: TfrxMemoView
          Left = 257.008040000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN AUTORIZARIZACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblValida: TfrxMemoView
          Left = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VALIDACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 227.771800000000000000
          Top = 85.338590000000100000
          Width = 510.236550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.000000000000000000
          Top = 85.338589999999800000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsConfiguracion."sWeb"]'
            '[dsConfiguracion."sEmail"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 4.000000000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 25.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 254.905690000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 4.220470000000000000
          Top = 39.928879999999900000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 4.220470000000000000
          Top = 27.031230000001000000
          Width = 226.771653543307000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 255.008040000000000000
          Top = 39.369820000000000000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 255.008040000000000000
          Top = 26.472170000000000000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 308.023810000000000000
          Top = 71.165120000000000000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 506.559370000000000000
          Top = 40.354360000000000000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR_TIERRA]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 506.559370000000000000
          Top = 27.456710000000000000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR_TIERRA]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData7: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 11.338582680000000000
        ParentFont = False
        Top = 1046.929810000000000000
        Width = 721.512277000000000000
        DataSet = frmDiarioTurno2.dsEquipos
        DataSetName = 'dsEquipos'
        KeepChild = True
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo78: TfrxMemoView
          Left = 2.267716535433070000
          Width = 94.866141732283500000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPermisos."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 97.133858270000000000
          Width = 641.007874015748000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPermisos."sFolios"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.007874020000000000
        Top = 585.827150000000000000
        Width = 721.512277000000000000
        KeepChild = True
        KeepFooter = True
        OutlineText = 'dsmBitacora1."sNumeroActividad"'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 137.952785200000000000
          Width = 229.039340790000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '(<dsmBitacora1."sTipo"> = '#39'Paquete'#39') OR (<dsmBitacora1."iFase"> ' +
            '> 0)'
          Memo.UTF8 = (
            '[dsmBitacora1."mDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 422.173228350000000000
          Width = 46.110236220000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sMedida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dsmBitacora1."sMedida"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 558.236220470000000000
          Width = 49.511811020000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidad'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = clWhite
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidad"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 468.283464570000000000
          Width = 49.511811020000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidadAnterior'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = clWhite
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 648.188976380000000000
          Width = 49.511811020000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          DataField = 'dCantidadActual'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = clWhite
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadActual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 1.889763780000000000
          Width = 94.110267950000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<dsmBitacora1."sTipo"> <> '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."sPaquete"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 366.992125980000000000
          Width = 55.181102360000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.5n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsmBitacora1."dCantidadActual"> > <dsmBitacora1."dCantidadAnexo' +
            '">'
          Memo.UTF8 = (
            '[dsmBitacora1."dCantidadAnexo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 517.795275590000000000
          Width = 40.440944880000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataField = 'dAvanceAnterior'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = clWhite
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dAvanceAnterior"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 607.748031500000000000
          Width = 40.440944880000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataField = 'dAvance'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = clWhite
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dAvance"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 697.700787400000000000
          Width = 40.062987240000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 12315881
          DataField = 'dAvanceActual'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = clWhite
          Highlight.Condition = '<dsmBitacora1."sTipo"> = '#39'Paquete'#39
          Memo.UTF8 = (
            '[dsmBitacora1."dAvanceActual"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          ShiftMode = smDontShift
          Left = 96.000031730000000000
          Width = 41.952753460000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sNumeroActividad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = 
            '<dsmBitacora1."dCantidadActual"> > <dsmBitacora1."dCantidadAnexo' +
            '">'
          Memo.UTF8 = (
            '[dsmBitacora1."sNumeroActividad"]')
          ParentFont = False
          SuppressRepeated = True
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Top = 627.401980000000000000
        Width = 721.512277000000000000
      end
      object GroupFooter4: TfrxGroupFooter
        Top = 1080.945580000000000000
        Width = 721.512277000000000000
      end
      object GroupHeader7: TfrxGroupHeader
        Height = 22.897650000000000000
        Top = 1262.363020000000000000
        Width = 721.512277000000000000
        Condition = 'dsBitacora3."sContrato"'
        ReprintOnNewPage = True
        object Shape1: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.338582680000000000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo48: TfrxMemoView
          Left = 18.141732280000000000
          Top = 3.779527559999910000
          Width = 95.999585040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'COMENTARIOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897637800000000000
        Top = 1307.717380000000000000
        Width = 721.512277000000000000
        AllowSplit = True
        DataSet = frmDiarioTurno2.dsMovimientosEmbarcacion1
        DataSetName = 'MovtosEmbarcacion1'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo15: TfrxMemoView
          Left = 2.000000000000000000
          Width = 735.874015750000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            '[dsBitacora3."mDescripcion"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 159.874047480000000000
        Top = 275.905690000000000000
        Width = 721.512277000000000000
        PrintOnFirstPage = False
        object Memo25: TfrxMemoView
          Left = 1.889763780000000000
          Top = 133.039401810000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 115.275590550000000000
          Top = 133.039401810000000000
          Width = 239.244094490000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 1.889763780000000000
          Top = 146.267748270000000000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 115.275590550000000000
          Top = 146.267748270000000000
          Width = 239.244094490000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 155.380732260000000000
          Top = 3.870967740000000000
          Width = 413.307360000000000000
          Height = 72.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mDescripcionBarco"]'
            'CONTRATO No.: [dsConfiguracion."sContratoBarco"]')
          ParentFont = False
          WordBreak = True
        end
        object Picture3: TfrxPictureView
          Left = 570.242463230000000000
          Top = 3.779530000000000000
          Width = 149.669288900000000000
          Height = 69.543307090000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Picture4: TfrxPictureView
          Left = 38.859816130000000000
          Top = 4.489207420000000000
          Width = 109.826840000000000000
          Height = 72.504977420000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo19: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.515410970000000000
          Width = 173.299320000000000000
          Height = 40.284268060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 560.790442260000000000
          Top = 84.351280260000000000
          Width = 162.401670000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          Left = 189.396502260000000000
          Top = 84.351280260000000000
          Width = 367.953000000000000000
          Height = 42.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sTitulo"]'
            'ORDEN No.: [dsConfiguracion."sContrato"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo207: TfrxMemoView
          Width = 736.008350000000000000
          Height = 128.504020000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
      object MasterData5: TfrxMasterData
        Height = 24.220160000000000000
        Top = 1371.969390000000000000
        Width = 721.512277000000000000
        AllowSplit = True
        Columns = 3
        ColumnWidth = 244.157480314961000000
        ColumnGap = 3.779527559055120000
        RowCount = 1
        Stretched = True
        object Subreport1: TfrxSubreport
          Left = 1.000000000000000000
          Top = 2.267716540000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = reporteHistorialRep.Page3
        end
        object Subreport2: TfrxSubreport
          Left = 249.000000000000000000
          Top = 2.385590000000090000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = reporteHistorialRep.Page2
        end
        object Subreport3: TfrxSubreport
          Left = 497.000000000000000000
          Top = 2.267716540000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = reporteHistorialRep.Page4
        end
      end
      object GroupHeader8: TfrxGroupHeader
        Height = 47.622061880000000000
        Top = 1103.622760000000000000
        Width = 721.512277000000000000
        Condition = 'dsTiempoMuerto."sNumeroOrden"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Shape2: TfrxShapeView
          Left = 1.889763780000000000
          Top = 11.559060000000200000
          Width = 736.251968500000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo16: TfrxMemoView
          Left = 20.031498500000000000
          Top = 3.779530000000140000
          Width = 130.015355040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TIEMPOS MUERTOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 141.354330708661000000
          Top = 23.811030940000000000
          Width = 37.417322834645700000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA'
            'INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 216.566975510000000000
          Top = 23.811030940000000000
          Width = 56.692913390000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 377.952802280000000000
          Top = 23.811030940000000000
          Width = 359.810977240000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 1.889763780000000000
          Top = 23.811030940000000000
          Width = 63.874013310000000000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AREA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 178.771699920000000000
          Top = 23.811030940000000000
          Width = 37.795275590000000000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HORA'
            'FINAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 273.259888900000000000
          Top = 23.811030940000000000
          Width = 56.314960630000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PERSONAL AFECTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 329.574849530000000000
          Top = 23.811030940000000000
          Width = 48.377508500000000000
          Height = 23.811030940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIEMPO MUERTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 65.763777090000000000
          Top = 23.811023620000000000
          Width = 75.590553620000000000
          Height = 23.811023620000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLASIFICACI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter5: TfrxGroupFooter
        Top = 1349.292210000000000000
        Width = 721.512277000000000000
        object Memo140: TfrxMemoView
          Left = 1.889763780000000000
          Width = 735.874015750000000000
          ShowHint = False
          Frame.Typ = [ftBottom]
        end
      end
      object MasterData8: TfrxMasterData
        Height = 14.118120000000000000
        Top = 1175.433830000000000000
        Width = 721.512277000000000000
        AllowSplit = True
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo96: TfrxMemoView
          Left = 141.354377090000000000
          Width = 37.417322830000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sHoraInicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sHoraInicio"]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 178.771699920000000000
          Width = 37.795275590000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sHoraFinal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sHoraFinal"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 216.566975510000000000
          Width = 56.692913390000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            
              '[Iif (<dsTiempoMuerto."dPersonal"> <> 0 , <dsTiempoMuerto."dPers' +
              'onal"> , '#39'N/A'#39')]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 273.259888900000000000
          Width = 56.314960630000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            
              '[Iif (<dsTiempoMuerto."dFrente"> <> 0 , <dsTiempoMuerto."dFrente' +
              '"> , '#39'N/A'#39')]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 329.574849530000000000
          Width = 48.377952760000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sTiempoMuerto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsTiempoMuerto."sTiempoMuerto"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 377.952802280000000000
          Width = 359.810977240000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'mDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."mDescripcion"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 1.889763780000000000
          Width = 63.874013310000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sArea'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."sArea"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 65.763779530000000000
          Width = 75.590551180000000000
          Height = 14.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sDescripcion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsTiempoMuerto."sDescripcion"]')
          ParentFont = False
        end
      end
      object GroupFooter6: TfrxGroupFooter
        Height = 26.456692920000000000
        Top = 1213.229130000000000000
        Width = 721.512277000000000000
        object Memo141: TfrxMemoView
          Left = 66.141732283464600000
          Top = 13.228346460000000000
          Width = 262.677165354331000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TIEMPO MUERTO REAL EN [DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 328.818880550000000000
          Top = 13.228346456692900000
          Width = 49.133819210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuerto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 66.141732283464600000
          Width = 262.677165354331000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TIEMPO ADICIONAL DE DISPONIBILIDAD DEL SITIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 328.818897640000000000
          Width = 49.133819210000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoAdicional"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 235.086648350000000000
        Top = 18.897650000000000000
        Width = 721.512277000000000000
        object Memo22: TfrxMemoView
          Left = 1.889763780000000000
          Top = 129.259869370000000000
          Width = 222.992125980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 1.889763780000000000
          Top = 170.834650550000000000
          Width = 117.165354330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CIERRE DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 1.889763780000000000
          Top = 184.039404250000000000
          Width = 117.165354330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO EFECTIVO DE LA ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 1.889763780000000000
          Top = 197.267750710000000000
          Width = 117.165354330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO MUERTO DE LA ORDEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 119.054964330000000000
          Top = 144.354364880000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsPeriodo."dFechaInicio"] AL [dsPeriodo."dFechaFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 119.054964330000000000
          Top = 170.834650550000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sOperacionFinal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 119.054964330000000000
          Top = 184.039404250000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoEfectivo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 119.054964330000000000
          Top = 197.267750710000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuerto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 1.889763780000000000
          Top = 144.354364880000000000
          Width = 117.165354330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PERIODO DE CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 119.054964330000000000
          Top = 157.606326060000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sOperacionInicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 1.889763780000000000
          Top = 157.606326060000000000
          Width = 117.165354330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'INICIO DE ACTIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 472.441250000000000000
          Top = 129.259837640000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 472.441250000000000000
          Top = 142.488184090000000000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 472.441250000000000000
          Top = 156.094483310000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'ESTADO DEL TIEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 472.441250000000000000
          Top = 169.322829760000000000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'PLATICAS DE SEGURIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 472.441250000000000000
          Top = 182.551176220000000000
          Width = 113.385826770000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'TEMA DE LA PLATICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 585.693218500000000000
          Top = 156.094483310000000000
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 585.693218500000000000
          Top = 169.322829760000000000
          Width = 151.181102360000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[<dsReporteDiario."sInicioPlatica"> + '#39' A '#39' + <dsReporteDiario."' +
              'sFinalPlatica">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 585.693218500000000000
          Top = 182.551176220000000000
          Width = 151.181102360000000000
          Height = 28.346456690000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTema"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 585.693218500000000000
          Top = 129.259837640000000000
          Width = 56.314955750000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 585.693218500000000000
          Top = 142.488184090000000000
          Width = 151.181102360000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 641.763767320000000000
          Top = 129.259869370000000000
          Width = 95.244057870000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sDescripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 1.889763780000000000
          Top = 210.519711890000000000
          Width = 117.165354330000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TIEMPO MUERTO DEL CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 119.055120550000000000
          Top = 210.519711890000000000
          Width = 105.826771650000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sTiempoMuertoReal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 152.181200000000000000
          Top = 0.779530000000000000
          Width = 413.307360000000000000
          Height = 72.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mDescripcionBarco"]'
            'CONTRATO No.: [dsConfiguracion."sContratoBarco"]')
          ParentFont = False
          WordBreak = True
        end
        object Picture1: TfrxPictureView
          Left = 567.042930970000000000
          Top = 0.688092260000000000
          Width = 149.669288900000000000
          Height = 69.543307090000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Picture2: TfrxPictureView
          Left = 35.660283870000000000
          Top = 1.397769680000000000
          Width = 109.826840000000000000
          Height = 72.504977420000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo5: TfrxMemoView
          Left = 4.359527740000000000
          Top = 80.423973230000000000
          Width = 173.299320000000000000
          Height = 40.284268060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          Left = 557.590910000000000000
          Top = 81.259842520000000000
          Width = 162.401670000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 186.196970000000000000
          Top = 81.259842520000000000
          Width = 367.953000000000000000
          Height = 42.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sTitulo"]'
            'ORDEN No.: [dsConfiguracion."sContrato"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo179: TfrxMemoView
          Width = 736.008350000000000000
          Height = 128.504020000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
      object GroupHeader6: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 650.079160000000000000
        Visible = False
        Width = 721.512277000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Memo49: TfrxMemoView
          Left = 2.000000000000000000
          Top = 34.015760240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 119.055115670000000000
          Top = 18.897650000000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 252.850391260000000000
          Top = 18.897650000000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 119.055115670000000000
          Top = 34.015760240000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 187.464564490000000000
          Top = 34.015760240000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 252.850391260000000000
          Top = 34.015760240000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 187.464564490000000000
          Top = 18.897650000000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 119.055115670000000000
          Top = 3.779530000000000000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 415.748300000000000000
          Top = 34.015760240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 532.913385830000000000
          Top = 18.897650000000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 665.952755910000000000
          Top = 18.897650000000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 532.913385830000000000
          Top = 34.015760240000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 600.944881890000000000
          Top = 34.015760240000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 665.952755910000000000
          Top = 34.015760240000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 600.944881890000000000
          Top = 18.897650000000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 532.913385830000000000
          Top = 3.779530000000020000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE LA OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader14: TfrxGroupHeader
        Height = 15.118110240000000000
        Top = 721.890230000000000000
        Visible = False
        Width = 721.512277000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Memo93: TfrxMemoView
          Left = 2.000000000000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 119.055115670000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 187.464564490000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 252.850391260000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo196: TfrxMemoView
          Left = 415.748300000000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          Left = 532.913385830000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          Left = 600.944881890000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          Left = 665.952755910000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader12: TfrxGroupHeader
        Height = 49.133872910000000000
        Top = 759.685530000000000000
        Visible = False
        Width = 721.512277000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Memo24: TfrxMemoView
          Left = 167.000000000000000000
          Top = 34.015760240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 284.055115670000000000
          Top = 18.897650000000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 417.850391260000000000
          Top = 18.897650000000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 284.055115670000000000
          Top = 34.015760240000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 352.464564490000000000
          Top = 34.015760240000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 417.850391260000000000
          Top = 34.015760240000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 352.464564490000000000
          Top = 18.897650000000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 284.055115670000000000
          Top = 3.779530000000020000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DESCRIPCION_CORTA]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader15: TfrxGroupHeader
        Height = 15.118110240000000000
        Top = 831.496600000000000000
        Visible = False
        Width = 721.512277000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Memo94: TfrxMemoView
          Left = 167.000000000000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 284.055115670000000000
          Width = 68.409448820000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 352.464564490000000000
          Width = 65.385826770000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 417.850391260000000000
          Width = 71.811008980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO_MULTIPLE]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader13: TfrxGroupHeader
        Height = 49.354360000000000000
        Top = 869.291900000000000000
        Visible = False
        Width = 721.512277000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Memo131: TfrxMemoView
          Left = 168.299320000000000000
          Top = 34.236230240000000000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE REAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 285.464405830000000000
          Top = 19.118120000000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANTERIOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 418.503775910000000000
          Top = 19.118120000000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 285.464405830000000000
          Top = 34.236230240000000000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 353.495901890000000000
          Top = 34.236230240000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          Left = 418.503775910000000000
          Top = 34.236230240000000000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[REAL_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 353.495901890000000000
          Top = 19.118120000000000000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTUAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          Left = 285.464405830000000000
          Top = 4.000000000000000000
          Width = 205.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'AVANCES DE LA OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader16: TfrxGroupHeader
        Height = 15.338560710000000000
        Top = 941.102970000000000000
        Visible = False
        Width = 721.512277000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Memo192: TfrxMemoView
          Left = 168.299320000000000000
          Top = 0.220450469999997000
          Width = 117.165368980000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'AVANCE PROGRAMADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          Left = 285.464405830000000000
          Top = 0.220450469999997000
          Width = 68.031478980000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ANTERIOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          Left = 353.495901890000000000
          Top = 0.220450469999997000
          Width = 65.007854490000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACTUAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          Left = 418.503775910000000000
          Top = 0.220450469999997000
          Width = 72.566929130000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[PROGRAMADO_ACUMULADO]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader17: TfrxGroupHeader
        Height = 45.354342910000000000
        Top = 978.898270000000000000
        Width = 721.512277000000000000
        Condition = 'dsPermisos."sContrato"'
        KeepTogether = True
        object Shape7: TfrxShapeView
          Left = 1.889763780000000000
          Top = 21.165361649999900000
          Width = 735.874015750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Curve = 3
          Shape = skRoundRectangle
        end
        object Memo197: TfrxMemoView
          Left = 2.267716540000000000
          Top = 32.881901969999900000
          Width = 94.866141730000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLASE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          Left = 97.133858270000000000
          Top = 32.881901969999900000
          Width = 641.007874020000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FOLIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          Left = 16.251968500000000000
          Top = 13.228351339999900000
          Width = 145.133475040000000000
          Height = 13.220470000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PERMISOS UTILIZADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[IMPRIME_AVANCES]')
          ParentFont = False
        end
      end
      object lblLicencia: TfrxMemoView
        ShiftMode = smWhenOverlapped
        Left = 106.826840000000000000
        Top = -17.118120000000000000
        Width = 540.472790000000000000
        Height = 34.015818820000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -43
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Color = clNone
        HAlign = haCenter
        Memo.UTF8 = (
          'VERSI'#195#8220'N SIN REGISTRO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo1: TfrxMemoView
        Left = -804.039890000000000000
        Top = -60.692950000000000000
        Width = 736.008350000000000000
        Height = 128.504020000000000000
        ShowHint = False
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 15.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader3: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 75.590600000000000000
        Width = 721.512277000000000000
        Condition = 'dsPersonal."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo17: TfrxMemoView
          Left = 2.321111750607340000
          Width = 236.222175808448000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsPersonal."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        Height = 10.897650000000000000
        Top = 109.606370000000000000
        Width = 721.512277000000000000
        DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
        DataSetName = 'dsMovimientosEmbTipo1'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo38: TfrxMemoView
          Left = 2.321111750607340000
          Width = 236.222175808448000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 206.779950417887000000
          Top = 0.755905510000005000
          Width = 27.605092467597800000
          Height = 9.897650000000000000
          ShowHint = False
          DataField = 'dCantidad'
          DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
          DataSetName = 'dsMovimientosEmbTipo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsPersonal."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 2.321111750607340000
          Top = 0.755905510000005000
          Width = 202.993954073179000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sPersonal'
          DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
          DataSetName = 'dsMovimientosEmbTipo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsPersonal."sPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 10.897650000000000000
        Top = 143.622140000000000000
        Width = 721.512277000000000000
        object Memo43: TfrxMemoView
          Left = 2.267716540000000000
          Width = 236.222175808448000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 195.808146495429000000
          Top = 1.511811023622040000
          Width = 39.233083292277200000
          Height = 8.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
          DataSetName = 'dsMovimientosEmbTipo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPersonal."dCantidad">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 4.915297123608610000
          Top = 1.464440000000000000
          Width = 175.861975482260000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
          DataSetName = 'dsMovimientosEmbTipo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL DEL FRENTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader5: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 18.897650000000000000
        Width = 721.512277000000000000
        Condition = 'dsPersonal."sContrato"'
        ReprintOnNewPage = True
        object Memo10: TfrxMemoView
          Left = 204.796186646169000000
          Top = 19.653543310000000000
          Width = 33.693705696708800000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 2.321111750607340000
          Top = 19.653543307086600000
          Width = 202.696328244867000000
          Height = 12.472440944881900000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 236.222175809363000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 11.338582680000000000
        Top = 177.637910000000000000
        Width = 721.512277000000000000
        object Memo9: TfrxMemoView
          Left = 2.267716540000000000
          Width = 236.222175808448000000
          Height = 11.338582677165400000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 195.808146495429000000
          Top = 1.511811023622040000
          Width = 39.233083292277200000
          Height = 8.897650000000000000
          ShowHint = False
          DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
          DataSetName = 'dsMovimientosEmbTipo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPersonal."dCantidad">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 4.915297123608610000
          Top = 1.464440000000000000
          Width = 175.861975482260000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frmDiarioTurno2.dsMovimientosEmbTipo1
          DataSetName = 'dsMovimientosEmbTipo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL DE PERSONAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader18: TfrxGroupHeader
        Height = 37.149620940000000000
        Top = 211.653680000000000000
        Width = 721.512277000000000000
        Condition = 'dsAdmon."sContrato"'
        ReprintOnNewPage = True
        object Memo221: TfrxMemoView
          Left = 2.267716540000000000
          Top = 11.338585120000000000
          Width = 236.220467560000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ADMINISTRATIVO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          Left = 2.267716540000000000
          Top = 24.677180000000000000
          Width = 30.031126840600700000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          Left = 204.794722055224000000
          Top = 24.677180000000000000
          Width = 33.693462036230800000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo237: TfrxMemoView
          Left = 31.932612457936900000
          Top = 24.677180000000000000
          Width = 173.396180873865000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader19: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 272.126160000000000000
        Width = 721.512277000000000000
        Condition = 'dsAdmon."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo222: TfrxMemoView
          Left = 2.267716540000000000
          Width = 236.220467560000000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsAdmon."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData13: TfrxMasterData
        Height = 10.897650000000000000
        Top = 306.141930000000000000
        Width = 721.512277000000000000
        OnBeforePrint = 'MasterData13OnBeforePrint'
        DataSet = frmDiarioTurno2.dsConfiguracionOrden
        DataSetName = 'dsConfiguracionOrden'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo225: TfrxMemoView
          Left = 5.983446560107930000
          Top = 0.755905510000000000
          Width = 198.864670328139000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsAdmon."sPersonal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo223: TfrxMemoView
          Left = 2.267716540000000000
          Width = 203.259450800000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          Left = 204.794722054079000000
          Width = 33.693462036230800000
          Height = 11.338590000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo224: TfrxMemoView
          Left = 206.778471480136000000
          Top = 0.755905510000000000
          Width = 27.604892840355000000
          Height = 9.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsAdmon."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          Left = 3.732652030000000000
          Top = 1.000000000000000000
          Width = 26.734916130000000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter12: TfrxGroupFooter
        Height = 10.897650000000000000
        Top = 340.157700000000000000
        Width = 721.512277000000000000
        object Memo231: TfrxMemoView
          Left = 204.794722054079000000
          Width = 33.693462036230800000
          Height = 10.960629921259800000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo228: TfrxMemoView
          Left = 2.267716540000000000
          Width = 201.794538953574000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo229: TfrxMemoView
          Left = 206.793752487572000000
          Top = 0.511811020000000000
          Width = 28.245793989900500000
          Height = 8.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsAdmon."dCantidad">,MasterData13)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo230: TfrxMemoView
          Left = 4.915277977532120000
          Top = 1.464440000000000000
          Width = 194.172379708058000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL EN [dsAdmon."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter14: TfrxGroupFooter
        Height = 11.338582680000000000
        Top = 374.173470000000000000
        Width = 721.512277000000000000
        object Memo235: TfrxMemoView
          Left = 204.794722054079000000
          Width = 33.693462036230800000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo232: TfrxMemoView
          Left = 2.267716540000000000
          Width = 201.794538953574000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo233: TfrxMemoView
          Left = 206.793752487572000000
          Top = 1.511811020000000000
          Width = 28.245793989900500000
          Height = 8.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsAdmon."dCantidad">,MasterData13)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo234: TfrxMemoView
          Left = 4.915277977532120000
          Top = 0.755905511811000000
          Width = 194.172379708058000000
          Height = 8.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 15.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 75.590600000000000000
        Width = 721.512277000000000000
        Condition = 'dsEquipos."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo61: TfrxMemoView
          Left = 2.321106438438910000
          Width = 235.466275608805000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsEquipos."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData6: TfrxMasterData
        Height = 11.677180000000000000
        Top = 109.606370000000000000
        Width = 721.512277000000000000
        DataSet = frmDiarioTurno2.totalxoptprog
        DataSetName = 'totalxoptprog'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo63: TfrxMemoView
          Left = 2.321106438438910000
          Width = 235.466275608805000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 204.821798295765000000
          Top = 0.779529999999994000
          Width = 28.571248931396200000
          Height = 9.826771653543310000
          ShowHint = False
          DataField = 'dCantidad'
          DataSet = frmDiarioTurno2.totalxoptprog
          DataSetName = 'totalxoptprog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsEquipos."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 5.227814933998620000
          Top = 0.755905510000019000
          Width = 195.222536010153000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sEquipo'
          DataSet = frmDiarioTurno2.totalxoptprog
          DataSetName = 'totalxoptprog'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsEquipos."sEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader11: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 18.897650000000000000
        Width = 721.512277000000000000
        Condition = 'dsEquipos."sContrato"'
        ReprintOnNewPage = True
        object Memo40: TfrxMemoView
          Left = 204.776037547913000000
          Top = 19.653543310000000000
          Width = 32.957954593873100000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 2.321106438438910000
          Top = 19.653543310000000000
          Width = 202.676162446786000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 235.428129829473000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE HERRAMIENTA Y EQUIPOS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter8: TfrxGroupFooter
        Top = 143.622140000000000000
        Width = 721.512277000000000000
      end
      object GroupFooter9: TfrxGroupFooter
        Top = 166.299320000000000000
        Width = 721.512277000000000000
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 15.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader2: TfrxGroupHeader
        Height = 11.897650000000000000
        Top = 253.228510000000000000
        Width = 721.512277000000000000
        Condition = 'dsSeguridad."sPernocta"'
        ReprintOnNewPage = True
        Stretched = True
        object Memo67: TfrxMemoView
          Left = 2.318536096097280000
          Width = 224.130255951147000000
          Height = 11.897650000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsSeguridad."sPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 10.897650000000000000
        Top = 287.244280000000000000
        Width = 721.512277000000000000
        DataSet = frmDiarioTurno2.frxDBDataset2
        DataSetName = 'dsConsolidado'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo68: TfrxMemoView
          Left = 2.318536096097280000
          Width = 224.130255951147000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 195.992522819046000000
          Top = 0.755905510000019000
          Width = 26.273490248857300000
          Height = 9.826771653543310000
          ShowHint = False
          DataField = 'dCantidad'
          DataSet = frmDiarioTurno2.frxDBDataset2
          DataSetName = 'dsConsolidado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsSeguridad."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 4.163050255363460000
          Top = 0.755905510000019000
          Width = 187.668479184648000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'sEquipo'
          DataSet = frmDiarioTurno2.frxDBDataset2
          DataSetName = 'dsConsolidado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsSeguridad."sEquipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader10: TfrxGroupHeader
        Height = 32.125984250000000000
        Top = 196.535560000000000000
        Width = 721.512277000000000000
        Condition = 'dsSeguridad."sContrato"'
        ReprintOnNewPage = True
        object Memo171: TfrxMemoView
          Left = 195.026708044783000000
          Top = 19.653543310000000000
          Width = 31.371264439682800000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 2.318536096097280000
          Top = 19.653543310000000000
          Width = 192.918752576964000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 224.093946618683000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE EQUIPOS DE SEGURIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter7: TfrxGroupFooter
        Top = 321.260050000000000000
        Width = 721.512277000000000000
      end
      object GroupFooter10: TfrxGroupFooter
        Top = 343.937230000000000000
        Width = 721.512277000000000000
      end
      object GroupHeader21: TfrxGroupHeader
        Height = 33.370090940000000000
        Top = 18.897650000000000000
        Width = 721.512277000000000000
        Condition = 'dsPernoctas."sContrato"'
        ReprintOnNewPage = True
        object Memo256: TfrxMemoView
          Left = 2.267716540000000000
          Top = 7.559055120000000000
          Width = 224.881877560000000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 10667178
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTROL DE ALIMENTACION Y HOSPEDAJE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo257: TfrxMemoView
          Left = 2.267716540000000000
          Top = 20.897650000000000000
          Width = 33.225791777939200000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PDA.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo258: TfrxMemoView
          Left = 189.871873548330000000
          Top = 20.897650000000000000
          Width = 37.277720540948800000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo259: TfrxMemoView
          Left = 34.016246188625100000
          Top = 20.897650000000000000
          Width = 155.999156626416000000
          Height = 12.472440940000000000
          ShowHint = False
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRIPCI'#195#8220'N')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader22: TfrxGroupHeader
        Height = 0.559060000000000000
        Top = 75.590600000000000000
        Width = 721.512277000000000000
        Condition = 'dsPernoctas."sTipoPernocta"'
        ReprintOnNewPage = True
        Stretched = True
      end
      object MasterData15: TfrxMasterData
        Height = 10.897650000000000000
        Top = 98.267780000000000000
        Width = 721.512277000000000000
        DataSet = frmDiarioTurno2.movbarco
        DataSetName = 'movbarcoxopt'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object Memo260: TfrxMemoView
          Left = 189.871873548330000000
          Width = 37.277720540948800000
          Height = 10.204724410000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo261: TfrxMemoView
          Left = 2.267716540000000000
          Width = 224.881877560000000000
          Height = 10.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo262: TfrxMemoView
          Left = 192.066651177542000000
          Width = 30.541458748259600000
          Height = 9.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsPernoctas."dCantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo263: TfrxMemoView
          Left = 33.872740475001200000
          Width = 155.188726914974000000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsPernoctas."DescribePernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo264: TfrxMemoView
          Left = 3.888489610429160000
          Width = 29.578935261674900000
          Height = 9.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsPernoctas."sTipoPernocta"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter17: TfrxGroupFooter
        Top = 132.283550000000000000
        Width = 721.512277000000000000
      end
      object GroupFooter18: TfrxGroupFooter
        Height = 18.897642680000000000
        Top = 154.960730000000000000
        Width = 721.512277000000000000
        object Memo265: TfrxMemoView
          Left = 189.871873550000000000
          Width = 37.277720540000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo266: TfrxMemoView
          Left = 2.267716540000000000
          Width = 187.198987950000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 14218221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo267: TfrxMemoView
          Left = 193.083557750000000000
          Top = 1.511811020000000000
          Width = 31.250537970000000000
          Height = 8.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dsPernoctas."dCantidad">,MasterData15)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo268: TfrxMemoView
          Left = 5.196921480000000000
          Top = 1.464440000000000000
          Width = 182.173228350000000000
          Height = 8.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
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
      Columns = 1
      ColumnWidth = 195.900000000000000000
      ColumnPositions.Strings = (
        '0')
      DataSetName = 'dsExisteFoto'
      PrintIfEmpty = False
      object PageFooter2: TfrxPageFooter
        Height = 122.795300000000000000
        Top = 657.638220000000000000
        Width = 740.409927000000000000
        object lblResidencia2: TfrxMemoView
          Left = 506.457020000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VBO. RESIDENCIA')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 231.551330000000000000
          Top = 85.338589999999900000
          Width = 506.457020000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dsConfiguracion."sSlogan"]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 3.000000000000000000
          Top = 85.338589999999800000
          Width = 275.905690000000000000
          Height = 22.338590000000000000
          ShowHint = False
          DataSetName = 'Personal_Financiero_001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsConfiguracion."sWeb"]'
            '[dsConfiguracion."sEmail"]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 4.000000000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 25.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          Left = 254.905690000000000000
          Top = 2.794990000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          Left = 4.220470000000000000
          Top = 39.928880000000200000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERINTENDENTE]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 4.220470000000000000
          Top = 27.031230000001000000
          Width = 226.771653543307000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERINTENDENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Left = 255.008040000000000000
          Top = 39.369820000000000000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 255.008040000000000000
          Top = 26.472170000000000000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 308.023810000000000000
          Top = 71.165120000000600000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'P'#195#161'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 226.771653540000000000
          Height = 24.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sLeyenda2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          Left = 506.559370000000000000
          Top = 40.354360000000000000
          Width = 226.771653540000000000
          Height = 26.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[PUESTO_SUPERVISOR_TIERRA]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 506.559370000000000000
          Top = 27.456709999999900000
          Width = 226.771653540000000000
          Height = 13.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUPERVISOR_TIERRA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object lblValida2: TfrxMemoView
          Left = 7.559060000000000000
          Width = 219.212740000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN VALIDACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
        object lblAutoriza2: TfrxMemoView
          Left = 257.008040000000000000
          Width = 222.992270000000000000
          Height = 120.944960000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SIN AUTORIZARIZACI'#195#8220'N')
          ParentFont = False
          Rotation = 45
          VAlign = vaCenter
        end
      end
      object PageHeader2: TfrxPageHeader
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo149: TfrxMemoView
          Left = 2.000000000000000000
          Top = 0.779530000000000000
          Width = 736.008350000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo150: TfrxMemoView
          Left = 197.315090000000000000
          Top = 2.779530000000000000
          Width = 356.614410000000000000
          Height = 76.133890000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sTitulo"]'
            ''
            'CONTRATO No.: [dsConfiguracion."sContrato"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 1.889763779527560000
          Top = 83.905511811023500000
          Width = 113.385826770000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Left = 115.275590550000000000
          Top = 83.905511810000100000
          Width = 239.244094490000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."dIdFecha"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 1.889763779527560000
          Top = 97.133858267716600000
          Width = 113.385826770000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12574669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'REPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 115.275590551181000000
          Top = 97.133858267716600000
          Width = 239.244094490000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsReporteDiario."sNumeroReporte"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 1.889763780000000000
          Top = 117.165430000000000000
          Width = 735.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTE FOTOGRAFICO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture5: TfrxPictureView
          Left = 574.021993230000000000
          Top = 3.779530000000000000
          Width = 149.669288900000000000
          Height = 46.866127090000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenPEP'
          HightQuality = False
        end
        object Picture6: TfrxPictureView
          Left = 12.403106130000000000
          Top = 4.489207420000000000
          Width = 166.519790000000000000
          Height = 68.725447420000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          HightQuality = False
        end
        object Memo151: TfrxMemoView
          Left = 11.338590000000000000
          Top = 67.397290970000000000
          Width = 173.299320000000000000
          Height = 13.827558060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."sNombre"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 572.129032260000000000
          Top = 51.225327740000000000
          Width = 154.842610000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsConfiguracion."mCliente"]')
          ParentFont = False
        end
      end
      object GroupFooter11: TfrxGroupFooter
        Top = 597.165740000000000000
        Width = 740.409927000000000000
      end
      object GroupHeader9: TfrxGroupHeader
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        Condition = 'dsReporteFotografico."sNumeroReporte"'
        OutlineText = '<dsReporteFotografico."sNumeroReporte">'
      end
      object MasterData10: TfrxMasterData
        Height = 337.889912680000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        Columns = 2
        ColumnWidth = 370.393700787402000000
        OutlineText = '<dsReporteFotografico."iImagen">'
        RowCount = 0
        Stretched = True
        object Memo182: TfrxMemoView
          Left = 3.779517800000000000
          Width = 362.834679840000000000
          Height = 334.110382680000000000
          ShowHint = False
          Color = clWhite
          Frame.Color = clNavy
          Frame.ShadowColor = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Picture9: TfrxPictureView
          ShiftMode = smDontShift
          Left = 7.559055120000000000
          Top = 3.023622050000000000
          Width = 356.787401570000000000
          Height = 236.220509060000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          Frame.Color = clBlue
          Frame.DropShadow = True
          Frame.ShadowColor = clSkyBlue
          Frame.ShadowWidth = 3.000000000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
        end
        object Memo183: TfrxMemoView
          ShiftMode = smDontShift
          Left = 7.558884250000000000
          Top = 240.000153780000000000
          Width = 353.763708740000000000
          Height = 88.818839060000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.ShadowColor = clGray
          HAlign = haBlock
          Memo.UTF8 = (
            '[dsReporteFotografico."sDescripcion"]')
          ParentFont = False
        end
      end
    end
  end
  object ZHistorialRep: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = ReporteFotograficoAfterScroll
    SQL.Strings = (
      'SELECT r.sNumeroReporte as primero, r.dIdFecha as inicio,'
      'r.sIdConvenio, r.sNumeroOrden,'
      's.sNumeroReporte as ultimo, s.dIdFecha as final,'
      's.sIdConvenio, s.sNumeroOrden'
      'FROM reportediario r'
      ''
      'INNER JOIN reportediario s '
      
        'ON (s.sContrato = r.sContrato AND s.sNumeroOrden = r.sNumeroOrde' +
        'n AND s.sIdConvenio = r.sIdConvenio'
      
        'AND s.dIdFecha = (SELECT max(dIdFecha) FROM reportediario b WHER' +
        'E b.sContrato = s.sContrato '
      
        'AND b.sIdConvenio = s.sIdConvenio AND b.sNumeroOrden = s.sNumero' +
        'Orden)'
      ')'
      ''
      'WHERE r.sContrato = :contrato'
      'AND r.dIdFecha = (SELECT min(dIdFecha) FROM reportediario a '
      
        'WHERE a.sContrato = r.sContrato AND a.sIdConvenio = r.sIdConveni' +
        'o AND a.sNumeroOrden = r.sNumeroOrden)'
      'ORDER BY r.sNumeroOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object ZHistorialRepprimero: TStringField
      FieldName = 'primero'
      Required = True
      Size = 35
    end
    object ZHistorialRepinicio: TDateField
      FieldName = 'inicio'
      Required = True
    end
    object ZHistorialRepsIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object ZHistorialRepsNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Required = True
      Size = 35
    end
    object ZHistorialRepultimo: TStringField
      FieldName = 'ultimo'
      Required = True
      Size = 35
    end
    object ZHistorialRepfinal: TDateField
      FieldName = 'final'
      Required = True
    end
    object ZHistorialRepsIdConvenio_1: TStringField
      FieldName = 'sIdConvenio_1'
      Required = True
      Size = 5
    end
    object ZHistorialRepsNumeroOrden_1: TStringField
      FieldName = 'sNumeroOrden_1'
      Required = True
      Size = 35
    end
  end
  object dsHistorialRep: TfrxDBDataset
    UserName = 'dsHistorialRep'
    CloseDataSource = False
    FieldAliases.Strings = (
      'primero=primero'
      'inicio=inicio'
      'sIdConvenio=sIdConvenio'
      'sNumeroOrden=sNumeroOrden'
      'ultimo=ultimo'
      'final=final'
      'sIdConvenio_1=sIdConvenio_1'
      'sNumeroOrden_1=sNumeroOrden_1')
    DataSet = ZHistorialRep
    BCDToCurrency = False
    Left = 392
    Top = 232
  end
  object Partidas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select sWbs, sNumeroActividad from bitacoradeactividades '
      
        'where sContrato =:Contrato and dIdFecha =:fecha and sIdTurno =:T' +
        'urno and sNumeroOrden =:orden'
      'and sIdTipoMovimiento = "E" group by sWbs, sNumeroActividad')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'orden'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'orden'
        ParamType = ptUnknown
      end>
  end
  object ds_partidas: TDataSource
    AutoEdit = False
    DataSet = Partidas
    Left = 304
    Top = 360
  end
end
