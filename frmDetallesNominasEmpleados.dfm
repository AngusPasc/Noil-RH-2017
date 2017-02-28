object frm_DetallesNominasEmpleados: Tfrm_DetallesNominasEmpleados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'N'#243'minas'
  ClientHeight = 453
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 339
      Top = 33
      Width = 75
      Height = 15
      Caption = 'D'#237'as a Pagar:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 7
      Top = 33
      Width = 93
      Height = 15
      Caption = 'D'#237'as de N'#243'mina:'
      Transparent = True
    end
    object Label4: TLabel
      Left = 204
      Top = 33
      Width = 37
      Height = 15
      Caption = 'Faltas:'
      Transparent = True
    end
    object Label5: TLabel
      Left = 517
      Top = 33
      Width = 42
      Height = 15
      Caption = 'Sueldo:'
      Transparent = True
    end
    object nombre: TLabel
      Left = 294
      Top = 6
      Width = 44
      Height = 15
      Caption = 'nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnEdit: TBitBtn
      Left = -6
      Top = 2
      Width = 90
      Height = 25
      Hint = 'Editar registro (CTRL + E)'
      Align = alCustom
      Caption = 'Editar'
      TabOrder = 0
      OnClick = btnEditClick
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
    object btnPost: TBitBtn
      Left = 90
      Top = 2
      Width = 90
      Height = 25
      Hint = 'Salvar cambios (F10)'
      Align = alCustom
      Caption = 'Terminar'
      Enabled = False
      TabOrder = 1
      OnClick = btnPostClick
      Glyph.Data = {
        36010000424D3601000000000000760000002800000011000000100000000100
        040000000000C0000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888800000008888888888888888800000008888890888888888800000008888
        9990888888888000000088889990888888888000000088899999088888888000
        0000889999990888888880000000899908999088888880000000990888899088
        8888800000008888888999088888800000008888888899088888800000008888
        8888899088888000000088888888889908888000000088888888888990888000
        0000888888888888899080000000888888888888888880000000}
    end
    object btnCancel: TBitBtn
      Left = 180
      Top = 2
      Width = 90
      Height = 25
      Hint = 'Cancelar cambios (F12)'
      Align = alCustom
      Caption = 'Salir'
      TabOrder = 2
      OnClick = btnCancelClick
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
    object tdDiasdeNomina: TJvCalcEdit
      Left = 104
      Top = 30
      Width = 86
      Height = 22
      Color = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object tdFaltas: TJvCalcEdit
      Left = 244
      Top = 30
      Width = 82
      Height = 22
      Color = 15138559
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 320
    Width = 719
    Height = 133
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label_SueldoNeto: TLabel
      Left = 383
      Top = 63
      Width = 87
      Height = 15
      Caption = 'Sueldo Neto:   $'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label_SalarioNeto: TLabel
      Left = 491
      Top = 63
      Width = 52
      Height = 15
      Caption = '#####.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 0
      Top = 21
      Width = 95
      Height = 15
      Caption = 'Generar Egresos'
    end
    object Button1: TButton
      Left = 208
      Top = 9
      Width = 145
      Height = 25
      Caption = 'Importar percepciones'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 574
      Top = 9
      Width = 145
      Height = 25
      Caption = 'Importar deducciones'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Grid_DetallesdeEgresos: TDBGrid
      Left = 0
      Top = 40
      Width = 353
      Height = 89
      Color = 15138559
      DataSource = ds_DetallesEgresos
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'mDescripcion'
          Title.Caption = 'Descripci'#243'n'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dImporte'
          Title.Caption = 'Importe'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 52
    Width = 719
    Height = 268
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Deducciones: TPanel
      Left = 364
      Top = 0
      Width = 355
      Height = 268
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Panel_Deducciones: TPanel
        Left = 0
        Top = 0
        Width = 355
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label_Deducciones: TLabel
          Left = 16
          Top = 7
          Width = 100
          Height = 15
          Caption = 'DEDUCCIONES (-):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Grid_Deducciones: TNextGrid
        Left = 80
        Top = 33
        Width = 271
        Height = 235
        AppearanceOptions = [aoAlphaBlendedSelection, aoHideSelection, aoHighlightSlideCells]
        Color = 15138559
        InactiveSelectionColor = 15138559
        Options = [goFooter, goHeader, goSelectFullRow]
        SlideSelectionColor = 15138559
        TabOrder = 1
        TabStop = True
        object NxTextColumn5: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'iId'
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Visible = False
        end
        object NxTextColumn6: TNxTextColumn
          Color = 15138559
          DefaultWidth = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Header.Caption = 'Cant'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 40
        end
        object NxTextColumn7: TNxTextColumn
          Color = 15138559
          DefaultWidth = 150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Header.Caption = 'Descripci'#243'n'
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 150
        end
        object NxNumberColumn2: TNxNumberColumn
          Color = 15138559
          DefaultValue = '0'
          DefaultWidth = 70
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Footer.Alignment = taRightJustify
          Header.Caption = 'Importe'
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 70
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn8: TNxNumberColumn
          Color = 15138559
          DefaultValue = '0'
          DefaultWidth = 70
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Footer.Alignment = taRightJustify
          Footer.FormatMask = '$ ###0.00'
          Footer.FormatMaskKind = mkFloat
          Header.Caption = 'Total'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 4
          SortType = stNumeric
          Width = 70
          FormatMask = '$ ###0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn10: TNxTextColumn
          Color = 15138559
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Header.Caption = 'Imprime'
          ParentFont = False
          Position = 5
          SortType = stAlphabetic
        end
      end
      object Panel_Deducciones_Botones: TPanel
        Left = 0
        Top = 33
        Width = 81
        Height = 235
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        inline frmBarra2: TfrmBarra
          Left = 0
          Top = 0
          Width = 81
          Height = 235
          Margins.Right = 5
          VertScrollBar.Style = ssHotTrack
          Align = alClient
          Color = 13683905
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          ExplicitWidth = 81
          ExplicitHeight = 235
          inherited AdvPanel1: TAdvPanel
            Width = 81
            Height = 235
            ExplicitWidth = 81
            ExplicitHeight = 235
            FullHeight = 0
            inherited btnEdit: TcxButton
              Top = 34
              Width = 70
              Height = 26
              OnClick = frmBarra2btnEditClick
              ExplicitTop = 34
              ExplicitWidth = 70
              ExplicitHeight = 26
            end
            inherited btnPost: TcxButton
              Left = 200
              Width = 70
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnCancel: TcxButton
              Left = 200
              Width = 70
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnDelete: TcxButton
              Top = 59
              Width = 70
              Height = 26
              OnClick = frmBarra2btnDeleteClick
              ExplicitTop = 59
              ExplicitWidth = 70
              ExplicitHeight = 26
            end
            inherited btnPrinter: TcxButton
              Left = 200
              Width = 70
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnRefresh: TcxButton
              Left = 200
              Width = 70
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnExit: TcxButton
              Left = 200
              Width = 70
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnAdd: TcxButton
              Width = 70
              OnClick = frmBarra2btnAddClick
              ExplicitWidth = 70
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
        end
      end
    end
    object Percepciones: TPanel
      Left = 0
      Top = 0
      Width = 353
      Height = 268
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object Panel_Percepciones: TPanel
        Left = 0
        Top = 0
        Width = 353
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label_Percepciones: TLabel
          Left = 24
          Top = 7
          Width = 107
          Height = 15
          Caption = 'PERCEPCIONES (+)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Grid_Percepciones: TNextGrid
        Left = 80
        Top = 33
        Width = 273
        Height = 235
        Align = alClient
        AppearanceOptions = [aoAlphaBlendedSelection, aoHideSelection, aoHighlightSlideCells]
        Color = 15138559
        InactiveSelectionColor = 15138559
        Options = [goFooter, goHeader, goSelectFullRow]
        SlideSelectionColor = 15138559
        TabOrder = 1
        TabStop = True
        object NxTextColumn3: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'iId'
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Visible = False
        end
        object NxTextColumn1: TNxTextColumn
          Color = 15138559
          DefaultWidth = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Header.Caption = 'Cant'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 40
        end
        object NxTextColumn2: TNxTextColumn
          Color = 15138559
          DefaultWidth = 150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Header.Caption = 'Descripci'#243'n'
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 150
        end
        object NxNumberColumn1: TNxNumberColumn
          Color = 15138559
          DefaultValue = '0'
          DefaultWidth = 68
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Footer.Alignment = taRightJustify
          Header.Caption = 'Importe'
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 68
          FormatMask = '$ ###0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn4: TNxNumberColumn
          Color = 15138559
          DefaultValue = '0'
          DefaultWidth = 70
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Footer.Alignment = taRightJustify
          Footer.FormatMask = '$ ####0.00'
          Footer.FormatMaskKind = mkFloat
          Header.Caption = 'Total'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 4
          SortType = stNumeric
          Width = 70
          FormatMask = '$ ####0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn9: TNxTextColumn
          Color = 15138559
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.Color = 15138559
          Header.Caption = 'Imprimir'
          ParentFont = False
          Position = 5
          SortType = stAlphabetic
        end
        object NxCheckBoxColumn1: TNxCheckBoxColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Position = 6
          SortType = stBoolean
          Visible = False
        end
      end
      object Panel_Percepciones_Botones: TPanel
        Left = 0
        Top = 33
        Width = 80
        Height = 235
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        inline frmBarra1: TfrmBarra
          Left = 0
          Top = 0
          Width = 80
          Height = 235
          Margins.Right = 5
          VertScrollBar.Style = ssHotTrack
          Align = alClient
          Color = 13683905
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          ExplicitWidth = 80
          ExplicitHeight = 235
          inherited AdvPanel1: TAdvPanel
            Width = 80
            Height = 235
            ExplicitWidth = 80
            ExplicitHeight = 235
            FullHeight = 0
            inherited btnEdit: TcxButton
              Top = 34
              Width = 70
              OnClick = frmBarra1btnEditClick
              ExplicitTop = 34
              ExplicitWidth = 70
            end
            inherited btnPost: TcxButton
              Left = 200
              Width = 70
              OnClick = frmBarra1btnPostClick
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnCancel: TcxButton
              Left = 200
              Width = 70
              OnClick = frmBarra1btnCancelClick
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnDelete: TcxButton
              Top = 59
              Width = 70
              OnClick = frmBarra1btnDeleteClick
              ExplicitTop = 59
              ExplicitWidth = 70
            end
            inherited btnPrinter: TcxButton
              Left = 200
              Width = 70
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnRefresh: TcxButton
              Left = 200
              Width = 70
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnExit: TcxButton
              Left = 200
              Width = 70
              OnClick = frmBarra1btnExitClick
              ExplicitLeft = 200
              ExplicitWidth = 70
            end
            inherited btnAdd: TcxButton
              Width = 70
              OnClick = frmBarra1btnAddClick
              ExplicitWidth = 70
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
        end
      end
    end
  end
  object tdDiasLaborados: TJvCalcEdit
    Left = 418
    Top = 30
    Width = 76
    Height = 22
    Color = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  object tdSalarioReal: TJvCalcEdit
    Left = 563
    Top = 30
    Width = 101
    Height = 22
    Color = 15138559
    DisplayFormat = '$###,###,###,##0.00########'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
  end
  object ds_Query: TDataSource
    AutoEdit = False
    DataSet = zq_Query
    Left = 675
    Top = 193
  end
  object zq_Query: TZQuery
    Connection = connection.zConnection
    OnCalcFields = zq_QueryCalcFields
    SQL.Strings = (
      'SELECT * FROM nom_detallesporempleado LIMIT 1')
    Params = <>
    Left = 632
    Top = 192
    object zq_QuerydImporteTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dImporteTotal'
      Calculated = True
    end
    object zq_QuerydCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object zq_QuerydImporte: TFloatField
      FieldName = 'dImporte'
    end
    object zq_QueryiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_QueryiId_Nomina: TIntegerField
      FieldName = 'iId_Nomina'
    end
    object zq_QuerysIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Size = 50
    end
    object zq_QuerysDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object zq_QuerylImprime: TStringField
      FieldName = 'lImprime'
      Size = 2
    end
    object zq_QuerylTipo: TStringField
      FieldName = 'lTipo'
      Size = 10
    end
    object zq_QuerylForma: TStringField
      FieldName = 'lForma'
      Size = 10
    end
    object zq_QuerydPorcentaje: TFloatField
      FieldName = 'dPorcentaje'
    end
    object zq_QuerylBloqueado: TStringField
      FieldName = 'lBloqueado'
      Size = 5
    end
    object zq_QueryiId_Catalogo: TIntegerField
      FieldName = 'iId_Catalogo'
    end
    object zq_QuerylIncidenciaProxima: TStringField
      FieldName = 'lIncidenciaProxima'
      Size = 5
    end
    object zq_QueryiCodigoSAT: TIntegerField
      FieldName = 'iCodigoSAT'
    end
    object zq_QuerybImpuestoRetenido: TIntegerField
      FieldName = 'bImpuestoRetenido'
    end
  end
  object zq_DetallesEgresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT * FROM con_tesoreriapegresos WHERE iIdFolio = :Folio AND ' +
        'sIdEgreso = "NOMINA" AND sTipoEgreso = "Empleados" AND sIdProvee' +
        'dor = :IdEmpleado;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdEmpleado'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Folio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IdEmpleado'
        ParamType = ptUnknown
      end>
    object zq_DetallesEgresosdIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zq_DetallesEgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zq_DetallesEgresossIdEgreso: TStringField
      FieldName = 'sIdEgreso'
      Required = True
      Size = 8
    end
    object zq_DetallesEgresossTipoEgreso: TStringField
      FieldName = 'sTipoEgreso'
      Required = True
      Size = 13
    end
    object zq_DetallesEgresossIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Required = True
      Size = 8
    end
    object zq_DetallesEgresossRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Required = True
      Size = 255
    end
    object zq_DetallesEgresossIdFactura: TStringField
      FieldName = 'sIdFactura'
      Required = True
      Size = 10
    end
    object zq_DetallesEgresosmDescripcion: TMemoField
      DisplayWidth = 255
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object zq_DetallesEgresosdImporte: TFloatField
      FieldName = 'dImporte'
      Required = True
    end
    object zq_DetallesEgresosdFechaComprobacion: TDateField
      FieldName = 'dFechaComprobacion'
    end
    object zq_DetallesEgresosdIva: TFloatField
      FieldName = 'dIva'
      Required = True
    end
    object zq_DetallesEgresosdRetencion: TFloatField
      FieldName = 'dRetencion'
      Required = True
    end
    object zq_DetallesEgresosdIspt: TFloatField
      FieldName = 'dIspt'
      Required = True
    end
    object zq_DetallesEgresosdIsr: TFloatField
      FieldName = 'dIsr'
      Required = True
    end
    object zq_DetallesEgresosdsubtotal: TFloatField
      FieldName = 'dsubtotal'
      Required = True
    end
    object zq_DetallesEgresossCheque: TStringField
      FieldName = 'sCheque'
      Required = True
      Size = 60
    end
    object zq_DetallesEgresossPoliza: TStringField
      FieldName = 'sPoliza'
      Required = True
    end
    object zq_DetallesEgresoseReal: TStringField
      FieldName = 'eReal'
      Required = True
      Size = 2
    end
  end
  object ds_DetallesEgresos: TDataSource
    DataSet = zq_DetallesEgresos
    Left = 403
    Top = 361
  end
  object zq_DatosEmpleado: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT sNombreCompleto, dSalarioIntegrado FROM empleados WHERE s' +
        'IdEmpleado = :Empleado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    Left = 592
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end>
    object zq_DatosEmpleadosNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object zq_DatosEmpleadodSalarioIntegrado: TFloatField
      FieldName = 'dSalarioIntegrado'
    end
  end
  object ds_DatosEmpleado: TDataSource
    AutoEdit = False
    DataSet = zq_DatosEmpleado
    Left = 635
    Top = 49
  end
  object zq_DatosCheque: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM tesoreriaegresos WHERE iIdFolio = :IdEgreso;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdEgreso'
        ParamType = ptUnknown
      end>
    Left = 584
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdEgreso'
        ParamType = ptUnknown
      end>
    object zq_DatosChequedIdFecha: TDateField
      FieldName = 'dIdFecha'
      Required = True
    end
    object zq_DatosChequeiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zq_DatosChequesTipoMovimiento: TStringField
      FieldName = 'sTipoMovimiento'
      Size = 8
    end
    object zq_DatosChequesIdArea: TStringField
      FieldName = 'sIdArea'
      Size = 8
    end
    object zq_DatosChequesIdNumeroCuenta: TStringField
      FieldName = 'sIdNumeroCuenta'
    end
    object zq_DatosChequesNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 60
    end
    object zq_DatosChequesReferencia: TStringField
      FieldName = 'sReferencia'
      Size = 30
    end
    object zq_DatosChequesIdProveedor: TStringField
      FieldName = 'sIdProveedor'
      Size = 8
    end
    object zq_DatosChequesIdCompania: TStringField
      FieldName = 'sIdCompania'
      Size = 8
    end
    object zq_DatosChequesRFC: TStringField
      FieldName = 'sRFC'
      Size = 15
    end
    object zq_DatosChequesRazonSocial: TStringField
      FieldName = 'sRazonSocial'
      Size = 255
    end
    object zq_DatosChequesDomicilio: TStringField
      FieldName = 'sDomicilio'
      Size = 50
    end
    object zq_DatosChequesCiudad: TStringField
      FieldName = 'sCiudad'
      Size = 30
    end
    object zq_DatosChequesCP: TStringField
      FieldName = 'sCP'
      Size = 5
    end
    object zq_DatosChequesEstado: TStringField
      FieldName = 'sEstado'
      Size = 30
    end
    object zq_DatosChequesTelefono: TStringField
      FieldName = 'sTelefono'
    end
    object zq_DatosChequedImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
    end
    object zq_DatosChequelComprobado: TStringField
      FieldName = 'lComprobado'
      Size = 2
    end
    object zq_DatosChequesStatus: TStringField
      FieldName = 'sStatus'
      Size = 9
    end
    object zq_DatosChequemDescripcion: TMemoField
      FieldName = 'mDescripcion'
      BlobType = ftMemo
    end
    object zq_DatosChequedIva: TFloatField
      FieldName = 'dIva'
    end
    object zq_DatosChequelAplicaiva: TStringField
      FieldName = 'lAplicaiva'
      Size = 2
    end
    object zq_DatosChequesPoliza: TStringField
      FieldName = 'sPoliza'
      Size = 40
    end
    object zq_DatosChequedFechaFactura: TDateField
      FieldName = 'dFechaFactura'
    end
    object zq_DatosChequeiFolio: TIntegerField
      FieldName = 'iFolio'
    end
    object zq_DatosChequeiIdStatus: TIntegerField
      FieldName = 'iIdStatus'
    end
    object zq_DatosChequesTipoPago: TStringField
      FieldName = 'sTipoPago'
      Size = 13
    end
    object zq_DatosChequesFormaPago: TStringField
      FieldName = 'sFormaPago'
      Size = 50
    end
    object zq_DatosChequesNumeroDeCuenta: TStringField
      FieldName = 'sNumeroDeCuenta'
      Size = 50
    end
    object zq_DatosChequesNumeroPedido: TStringField
      FieldName = 'sNumeroPedido'
      Size = 50
    end
    object zq_DatosChequeiImprimeProveedor: TIntegerField
      FieldName = 'iImprimeProveedor'
    end
  end
  object ds_DatosCheque: TDataSource
    AutoEdit = False
    DataSet = zq_DatosCheque
    Left = 635
    Top = 121
  end
end
