object frmExportaGeneral: TfrmExportaGeneral
  Left = 139
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Exportaci'#243'n de Reportes Diarios/Generadores'
  ClientHeight = 277
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pgExportar: TPageControl
    Left = 0
    Top = 0
    Width = 561
    Height = 281
    ActivePage = TabSheet2
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Destino de Archivos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object fDirectorio: TsShellTreeView
        Left = 3
        Top = 16
        Width = 254
        Height = 217
        Hint = 'Explorador1.'
        Color = 15138559
        Indent = 19
        TabOrder = 0
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        ObjectTypes = [otFolders]
        Root = 'rfDesktop'
        ShellListView = fContenido
        UseShellImages = True
        AutoRefresh = False
        ShowExt = seSystem
      end
      object fContenido: TsShellListView
        Left = 263
        Top = 16
        Width = 287
        Height = 217
        Hint = 'Explorador2.'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        Color = 15138559
        ReadOnly = False
        Sorted = True
        HideSelection = False
        TabOrder = 1
        ViewStyle = vsList
        ObjectTypes = [otFolders, otNonFolders]
        Root = 'rfDesktop'
        ShellTreeView = fDirectorio
        ShowExt = seSystem
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Archivos a Exportar/Tipo Exportaci'#243'n'
      ImageIndex = 1
      object Label4: TLabel
        Left = 189
        Top = 4
        Width = 344
        Height = 168
        Caption = 
          'Comentarios:'#13#10#13#10'1. La Exportaci'#243'n de Reportes Diarios se realiza' +
          'ra solo de aquellos reportes diarios que se encuentren validados' +
          '.'#13#10'2. La Exportaci'#243'n de Estimaciones se realizara solo de aquell' +
          'os generadores pertenecientes a la estimaci'#243'n  que se encuentren' +
          ' en estatus de Aplicados o Validados.'#13#10'3. Al realizar la exporta' +
          'ci'#243'n de reportes diarios y generadores se adicionaran a ellos to' +
          'da la informaci'#243'n relacionada con los mismos.'#13#10'4. Al realizar la' +
          ' importaci'#243'n de estos datos al sistema destino no deben existir ' +
          'conincidencias (reportes diarios/generadores) para que el proces' +
          'o se realize con exito.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object gpOrigen: TGroupBox
        Left = 0
        Top = 1
        Width = 181
        Height = 248
        Caption = 'Origen de Datos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object gReportes: TGroupBox
          Left = 3
          Top = 15
          Width = 175
          Height = 69
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 24
            Width = 59
            Height = 14
            Caption = 'Fecha Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 9
            Top = 46
            Width = 55
            Height = 14
            Caption = 'Fecha Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tdFechaInicio: TDateTimePicker
            Left = 81
            Top = 20
            Width = 89
            Height = 22
            Hint = 'Seleccione una fecha inicial.'
            Date = 38820.000000000000000000
            Time = 38820.000000000000000000
            Color = 15138559
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = tdFechaInicioEnter
            OnExit = tdFechaInicioExit
            OnKeyPress = tdFechaInicioKeyPress
          end
          object tdFechaFinal: TDateTimePicker
            Left = 81
            Top = 43
            Width = 89
            Height = 22
            Hint = 'Seleccione una fecha final.'
            Date = 38820.000000000000000000
            Time = 38820.000000000000000000
            Color = 15138559
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnChange = tdFechaFinalChange
            OnEnter = tdFechaFinalEnter
            OnExit = tdFechaFinalExit
            OnKeyPress = tdFechaFinalKeyPress
          end
        end
        object gEstimaciones: TGroupBox
          Left = 3
          Top = 89
          Width = 175
          Height = 72
          Enabled = False
          TabOrder = 1
          object Label3: TLabel
            Left = 9
            Top = 24
            Width = 59
            Height = 14
            Caption = 'Fecha Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 9
            Top = 46
            Width = 55
            Height = 14
            Caption = 'Fecha Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tdFechaInicioEst: TDateTimePicker
            Left = 81
            Top = 20
            Width = 89
            Height = 22
            Hint = 'Seleccione una fecha inicial.'
            Date = 38820.000000000000000000
            Time = 38820.000000000000000000
            Color = 15138559
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = tdFechaInicioEstEnter
            OnExit = tdFechaInicioEstExit
            OnKeyPress = tdFechaInicioEstKeyPress
          end
          object tdFechaFinalEst: TDateTimePicker
            Left = 81
            Top = 43
            Width = 89
            Height = 22
            Hint = 'Seleccione una fecha final.'
            Date = 38820.000000000000000000
            Time = 38820.000000000000000000
            Color = 15138559
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnChange = tdFechaFinalEstChange
            OnEnter = tdFechaFinalEstEnter
            OnExit = tdFechaFinalEstExit
            OnKeyPress = tdFechaFinalEstKeyPress
          end
        end
        object chkReportes: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Reportes Diarios'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          TabStop = True
          OnClick = chkReportesClick
        end
        object chkEstimaciones: TRadioButton
          Left = 8
          Top = 88
          Width = 97
          Height = 17
          Caption = 'Estimaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = chkEstimacionesClick
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 176
          Width = 175
          Height = 69
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label6: TLabel
            Left = 9
            Top = 24
            Width = 59
            Height = 14
            Caption = 'Fecha Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 9
            Top = 46
            Width = 55
            Height = 14
            Caption = 'Fecha Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object tdFechaInicioEmb: TDateTimePicker
            Left = 80
            Top = 15
            Width = 89
            Height = 22
            Hint = 'Seleccione una fecha inicial.'
            Date = 38820.000000000000000000
            Time = 38820.000000000000000000
            Color = 15138559
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = tdFechaInicioEmbEnter
            OnExit = tdFechaInicioEmbExit
            OnKeyPress = tdFechaInicioEmbKeyPress
          end
          object tdFechaFinalEmb: TDateTimePicker
            Left = 81
            Top = 38
            Width = 89
            Height = 22
            Hint = 'Seleccione una fecha final.'
            Date = 38820.000000000000000000
            Time = 38820.000000000000000000
            Color = 15138559
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = tdFechaFinalEmbEnter
            OnExit = tdFechaFinalEmbExit
            OnKeyPress = tdFechaFinalEmbKeyPress
          end
        end
        object chkEmbarques: TRadioButton
          Left = 9
          Top = 174
          Width = 136
          Height = 17
          Caption = 'Avisos de Embarque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = chkReportesClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Generar Archivos'
      ImageIndex = 2
      OnEnter = TabSheet3Enter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label5: TLabel
        Left = 144
        Top = 5
        Width = 42
        Height = 14
        Caption = 'Destino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tsDestino: TLabel
        Left = 198
        Top = 5
        Width = 3
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tmResultados: TMemo
        Left = 0
        Top = 48
        Width = 553
        Height = 179
        Hint = 'Aqu'#237' se muestran los resultados obtenidos.'
        Color = 15138559
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        OnEnter = tmResultadosEnter
        OnExit = tmResultadosExit
      end
      object btnProceso: TBitBtn
        Left = 0
        Top = 0
        Width = 137
        Height = 41
        Caption = 'Iniciar Proceso'
        TabOrder = 1
        OnClick = btnProcesoClick
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF067388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF067388067388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00357700316C00316C00
          316CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF06738800B1D5067388FFFFFFFFFFFFFFFFFF003577005AC06067F76067F700
          4FAB00316CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF06738800B1D500C6EA067388FFFFFF00498E6067F76067F76067F76067F760
          67F76067F700316CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF06738800A8C900D5F500C6EA00498E005AC06067F76067F76067F76067F760
          67F76067F7004FAB00316CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0673
          88008EB106738800D5F500D5F500498E6067F76067F7FFFFFFFFFFFFFFFFFFFF
          FFFF6067F76067F700316CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0673
          880097BD06738800D5F500D5F500498E6067F76067F7FFFFFFFFFFFFFFFFFFFF
          FFFF6067F76067F700316CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0673880673880673
          88067388067388009BBB00DDFB00498E005AC06067F70000FF0000FF0000FF00
          00FF6067F7005AC0003577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF06738800DDFB82EE
          FD54E9FD00DDFB00DDFB00DDFB20BCE500498E6067F76067F76067F76067F760
          67F76067F7003577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007B9700DD
          FBC5F6FD7AEEFE30E4FC00DDFB00DDFB1AAFDD00498E6067F76067F76067F700
          5AC000498EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A50097BD0085
          A565E9FCFFFFFF7AEEFE30E4FC30E4FC00DDFB20BCE500498E00498E00498E00
          498EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A500B3DB0097
          BD0085A565E9FCE4FCFF7AEEFE30E4FC30E4FC30E4FC00DDFB00DDFB00D5F500
          9BB400596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A50085A50085A50085A50085
          A50085A5129EBB82EEFD30E4FC30E4FC30E4FC30E4FC30E4FC30E4FC00DDFB00
          D5F5009BB400596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A500A0C300DDFB48E7FD48E7FD48E7
          FD48E7FD48E7FD48E7FD48E7FD30E4FC1DC7DF06738800596E00596E00596E00
          596E00596E00596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0085A500A0C300AAD500D5F565E9FC65E9FC48E7
          FD48E7FD48E7FD48E7FD48E7FD48E7FD00DDFB0CAEC600596E0075910085A500
          92B500596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0085A500A0C300AAD500AAD500C6EA65E9FC72EDFD65E9
          FC65E9FC48E7FD48E7FD48E7FD48E7FD48E7FD0DD3EF009BB400596E00759100
          596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0085A500A0C300AAD500AAD500B1D500B3DB20E2FC8BEFFD72ED
          FD65E9FC65E9FC65E9FC48E7FD48E7FD48E7FD30E4FC1DC7DF009BB400596EFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0085A5009BBB00AAD500B1D500B3DB00B3DB00D5F5B4F5FE92F1
          FE72EDFD65E9FC65E9FC65E9FC65E9FC127C9200596E00596E00596E00596E00
          596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0085A500AAD500B3DB00B3DB00B8DD00CBEF99F1FD92F1
          FE82EEFD7AEEFE6CEAFC65E9FC65E9FC39D9F400596E0075910085A50092B500
          596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0085A500A0C300B3DB00B3DB00B8DD00B8DD65E9FCB4F5
          FE82EEFD82EEFD82EEFD72EDFD65E9FC54E9FD18CEE800596E00759100596EFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0085A500B3DB00B8DD00B8DD00B8DD06D9F7BEF6
          FE92F1FE82EEFD82EEFD82EEFD72EDFD65E9FC48E7FD00B8D300596EFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0085A500AAD500B8DD00B8DD00BCE100CBEFBEF6
          FEB4F5FE92F1FE82EEFD82EEFD82EEFD72EDFD65E9FC30E4FC00ACC600596EFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0085A500A0C300B8DD00BCE100BCE100BCE16CEA
          FCF4FEFFB4F5FEA3F3FE82EEFD82EEFD82EEFD82EEFD65E9FC00DDFB009BB400
          596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A500B3DB00BCE100BCE100BCE106D9
          F7F4FEFFF4FEFFC5F6FDB4F5FE99F1FD82EEFD82EEFD82EEFD65E9FC00DDFB00
          9BB400596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A500AAD500BCE100BCE100BCE100CB
          EF65E4F7BEF6FEE4FCFFE4FCFFC5F6FDAEF4FDAEF4FD8FF0FD82EEFD65E9FC00
          DDFB009BB400596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A500A0C300BCE100BCE100B3DB00AA
          D500AAD500AAD500B3DB00BCE139D9F482EEFDAEF4FDAEF4FD92F1FE92F1FE65
          E9FC00DDFB009BB400596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A500BCE100B3DB00AAD500AA
          D500AAD500AAD500AAD500A6D200A6D200A6D200A6D200ADD800B3DB00CBEF00
          DDFB00DDFB00DDFB009BB400596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A500B3DB00AAD500AAD500AA
          D500AAD500AAD500A6D200A6D200A6D200A6D200A6D200A6D200A6D200A6D200
          A6D2009CCC009CCC0085A500596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A50097BD00AAD500AAD500AA
          D500AAD500A6D200A6D200A6D200A6D200A6D200A6D200A6D200A6D200A6D200
          9CCC009CCC0085A500596EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0085A50085A50085A50085
          A50085A50097BD00A3D000A6D200A6D200A6D200A6D200A6D200A6D2009CCC00
          9CCC0085A5005F75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF007D9A007D9A007D9A007B97007B970097BD00A3D0009CCC009CCC00
          85A500647CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007591067388006D87006D8700
          647CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object bProceso: TProgressBar
        Left = 144
        Top = 24
        Width = 409
        Height = 17
        TabOrder = 2
      end
    end
  end
  object ConnExport: TADOConnection
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 68
    Top = 193
  end
  object cmdExport: TADOCommand
    Connection = ConnExport
    Parameters = <>
    Left = 100
    Top = 193
  end
  object Sql: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 220
    Top = 145
  end
  object SqlAux: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 228
    Top = 185
  end
end
