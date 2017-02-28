object frm_NominasEmpleados: Tfrm_NominasEmpleados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'N'#243'minas'
  ClientHeight = 472
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    964
    472)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 522
    Top = 361
    Width = 35
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'N'#243'mina'
    FocusControl = tsNombre
    Visible = False
    ExplicitLeft = 384
  end
  object Label2: TLabel
    Left = 522
    Top = 380
    Width = 63
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Fecha Inicial:'
    Visible = False
    ExplicitLeft = 384
  end
  object Label3: TLabel
    Left = 522
    Top = 407
    Width = 58
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Fecha Final:'
    Visible = False
    ExplicitLeft = 384
  end
  object DBLabelEdit1: TDBLabelEdit
    Left = 850
    Top = 358
    Width = 101
    Height = 18
    Anchors = [akRight, akBottom]
    AutoSize = True
    DataField = 'DIAS'
    DataSource = ds_Nominas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    EditStyle.BorderStyle = bsSingle
    EditStyle.Font.Charset = DEFAULT_CHARSET
    EditStyle.Font.Color = clWindowText
    EditStyle.Font.Height = -11
    EditStyle.Font.Name = 'Tahoma'
    EditStyle.Font.Style = []
    EditStyle.MaxLength = 0
    Editable = False
    Caption = 'DBLabelEdit1'
    ShowAccelChar = False
    ExplicitLeft = 712
  end
  object Label4: TLabel
    Left = 682
    Top = 356
    Width = 145
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'D'#237'as Transcurridos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 544
  end
  object Label5: TLabel
    Left = 682
    Top = 383
    Width = 149
    Height = 21
    Anchors = [akRight, akBottom]
    Caption = 'Importe de N'#243'mina:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 544
  end
  object DBLabelEdit2: TDBLabelEdit
    Left = 850
    Top = 385
    Width = 101
    Height = 18
    Anchors = [akRight, akBottom]
    AutoSize = True
    DataField = 'dTotal'
    DataSource = ds_Nominas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    EditStyle.BorderStyle = bsSingle
    EditStyle.Font.Charset = DEFAULT_CHARSET
    EditStyle.Font.Color = clWindowText
    EditStyle.Font.Height = -11
    EditStyle.Font.Name = 'Tahoma'
    EditStyle.Font.Style = []
    EditStyle.MaxLength = 0
    Editable = False
    Caption = 'DBLabelEdit2'
    ShowAccelChar = False
    ExplicitLeft = 712
  end
  object Label6: TLabel
    Left = 522
    Top = 443
    Width = 37
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Egreso:'
    Visible = False
    ExplicitLeft = 384
  end
  object DBLabelEdit3: TDBLabelEdit
    Left = 682
    Top = 445
    Width = 73
    Height = 13
    Anchors = [akRight, akBottom]
    AutoSize = True
    DataField = 'dTotalCheque'
    DataSource = ds_Egresos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    EditStyle.BorderStyle = bsSingle
    EditStyle.Font.Charset = DEFAULT_CHARSET
    EditStyle.Font.Color = clWindowText
    EditStyle.Font.Height = -11
    EditStyle.Font.Name = 'Tahoma'
    EditStyle.Font.Style = []
    EditStyle.MaxLength = 0
    Editable = False
    Caption = 'DBLabelEdit3'
    ShowAccelChar = False
    ExplicitLeft = 544
  end
  object Label7: TLabel
    Left = 682
    Top = 426
    Width = 93
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Importe de Egreso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 544
  end
  object Label8: TLabel
    Left = 794
    Top = 426
    Width = 89
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Importe Restante:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 656
  end
  object LabelRestante: TLabel
    Left = 794
    Top = 445
    Width = 82
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'LabelRestante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 656
  end
  object Label9: TLabel
    Left = 8
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Fecha Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 204
    Top = 8
    Width = 58
    Height = 13
    Caption = 'Fecha Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object tsNombre: TDBEdit
    Left = 900
    Top = 217
    Width = 159
    Height = 21
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sNomina'
    DataSource = ds_Nominas
    TabOrder = 0
    Visible = False
    OnKeyPress = SiguienteCajon
  end
  object JvDBDatePickerEdit1: TJvDBDatePickerEdit
    Left = 900
    Top = 244
    Width = 159
    Height = 21
    AllowNoDate = True
    Color = 11009259
    DataField = 'dFechaInicial'
    DataSource = ds_Nominas
    TabOrder = 1
    Visible = False
  end
  object JvDBDatePickerEdit2: TJvDBDatePickerEdit
    Left = 900
    Top = 271
    Width = 159
    Height = 21
    AllowNoDate = True
    Color = 11009259
    DataField = 'dFechaFinal'
    DataSource = ds_Nominas
    TabOrder = 2
    Visible = False
  end
  inline frmBarra1: TfrmBarra
    Left = 800
    Top = 0
    Width = 74
    Height = 211
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    Visible = False
    ExplicitLeft = 800
    ExplicitWidth = 74
    ExplicitHeight = 211
    inherited AdvPanel1: TAdvPanel
      Width = 74
      Height = 211
      Align = alLeft
      ExplicitLeft = -3
      ExplicitTop = -3
      ExplicitWidth = 74
      ExplicitHeight = 211
      FullHeight = 0
      inherited btnEdit: TcxButton
        OnClick = frmBarra1btnEditClick
      end
      inherited btnPost: TcxButton
        OnClick = frmBarra1btnPostClick
      end
      inherited btnCancel: TcxButton
        OnClick = frmBarra1btnCancelClick
      end
      inherited btnDelete: TcxButton
        OnClick = frmBarra1btnDeleteClick
      end
      inherited btnPrinter: TcxButton
        OnClick = frmBarra1btnPrinterClick
      end
      inherited btnRefresh: TcxButton
        OnClick = frmBarra1btnRefreshClick
      end
      inherited btnExit: TcxButton
        OnClick = frmBarra1btnExitClick
      end
      inherited btnAdd: TcxButton
        OnClick = frmBarra1btnAddClick
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 900
    Top = 298
    Width = 159
    Height = 21
    Color = 11009259
    DataField = 'iIdEgreso'
    DataSource = ds_Nominas
    DropDownWidth = 500
    KeyField = 'iIdFolio'
    ListField = 'sEgreso'
    ListSource = ds_Egresos
    TabOrder = 4
    Visible = False
  end
  object Filtro_FechaInicial: TJvDatePickerEdit
    Left = 77
    Top = 5
    Width = 121
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 5
    OnChange = Filtro_FechaInicialChange
  end
  object Filtro_FechaFinal: TJvDatePickerEdit
    Left = 268
    Top = 5
    Width = 121
    Height = 21
    AllowNoDate = True
    Checked = True
    TabOrder = 6
    OnChange = Filtro_FechaFinalChange
  end
  object grid_nominas: TRxDBGrid
    Left = 8
    Top = 27
    Width = 952
    Height = 323
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    DataSource = ds_Nominas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnKeyPress = grid_nominasKeyPress
    MultiSelect = True
    OnGetCellParams = grid_nominasGetCellParams
    Columns = <
      item
        Expanded = False
        FieldName = 'sNomina'
        Title.Caption = 'N'#243'mina'
        Width = 292
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dFechaInicial'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha Inicial'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dFechaFinal'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha Final'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIAS'
        Title.Caption = 'D'#237'as Totales'
        Width = 75
        Visible = True
      end>
  end
  object button2: TcxButton
    Left = 6
    Top = 356
    Width = 123
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = '&Reporte de N'#243'mina.'
    TabOrder = 8
    OnClick = Button2Click
    OptionsImage.ImageIndex = 364
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object BUtton4: TcxButton
    Left = 264
    Top = 356
    Width = 123
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = '&Acumulados'
    TabOrder = 9
    OnClick = Button4Click
    OptionsImage.ImageIndex = 364
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object Button3: TcxButton
    Left = 135
    Top = 356
    Width = 123
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = '&Imprimir Recibos.'
    TabOrder = 10
    OnClick = Button3Click
    OptionsImage.ImageIndex = 364
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object Button1: TcxButton
    Left = 393
    Top = 356
    Width = 123
    Height = 38
    Anchors = [akLeft, akBottom]
    Caption = 'In&cidencias'
    TabOrder = 11
    OnClick = Button1Click
    OptionsImage.ImageIndex = 364
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object ds_Nominas: TDataSource
    AutoEdit = False
    DataSet = zq_Nominas
    Left = 131
    Top = 443
  end
  object zq_Nominas: TZQuery
    Connection = connection.zConnection
    AfterScroll = zq_NominasAfterScroll
    OnCalcFields = zq_NominasCalcFields
    AfterPost = zq_NominasAfterPost
    SQL.Strings = (
      'SELECT '
      #9'nom.*, '
      #9'DATEDIFF(nom.dFechaFinal, nom.dFechaInicial) + 1 AS DIAS, '
      
        #9'((select sum(dImporte) from nom_detallesporempleado where iId_n' +
        'omina = :id and lTipo = '#39'percepcion'#39') -'
      
        '    (select sum(dImporte) from nom_detallesporempleado where iId' +
        '_nomina = :id and lTipo = '#39'Deduccion'#39') )'
      '    AS dTotal '
      'FROM nom_nominas AS nom '
      
        'LEFT JOIN nom_empleadospornomina AS en ON (en.iId_Nomina = nom.i' +
        'Id) '
      'GROUP BY nom.iId '
      'ORDER BY iId DESC;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 96
    Top = 442
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object zq_NominasiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_NominassNomina: TStringField
      FieldName = 'sNomina'
      Size = 50
    end
    object zq_NominasdFechaInicial: TDateField
      FieldName = 'dFechaInicial'
    end
    object zq_NominasdTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dTotal'
      ReadOnly = True
      DisplayFormat = '$ ###,###0.00'
      Calculated = True
    end
    object zq_NominasdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
    end
    object zq_NominasDIAS: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object zq_NominasiIdEgreso: TIntegerField
      FieldName = 'iIdEgreso'
      OnChange = zq_NominasiIdEgresoChange
    end
    object zq_NominasdTotalRestante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dTotalRestante'
      Calculated = True
    end
    object zq_NominasNominaString: TStringField
      FieldKind = fkCalculated
      FieldName = 'NominaString'
      Calculated = True
    end
    object zq_NominasiProcesada: TIntegerField
      FieldName = 'iProcesada'
    end
  end
  object ReporteNominas: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41307.127904143500000000
    ReportOptions.LastChange = 41384.990112442130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  TotalPercepciones: Extended;'
      '  TotalDeducciones: Extended;'
      '  TotalSueldo: Extended;  '
      ''
      'procedure Rich10OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Percepciones_Cant.Text := '#39#39';'
      '  Percepciones_Desc.Text := '#39#39';'
      '  Percepciones_Tot.Text := '#39#39';'
      '  Memo19.Text := '#39#39';                      '
      
        '  TotalPercepciones := 0;                                       ' +
        '                 '
      '  Master_Percepciones.DataSet.First;          '
      '  while Not Master_Percepciones.DataSet.Eof do begin'
      
        '    if ( <frx_datosdeempleado."sIdEmpleado"> = <frx_Percepciones' +
        '."sIdEmpleado">) AND ( <frx_Percepciones."dImporteTotal"> > 0 ) ' +
        'then begin                                                      ' +
        '                                                  '
      
        '       Percepciones_Cant.Text := Percepciones_Cant.Text + FloatT' +
        'oStr(<frx_Percepciones."dCantidad">) + #13 + #10 + #13 + #10;'
      
        '       Percepciones_Desc.Text := Percepciones_Desc.Text + <frx_P' +
        'ercepciones."sDescripcion"> + #13 + #10 + #13 + #10;'
      
        '       Percepciones_Tot.Text := Percepciones_Tot.Text + FormatFl' +
        'oat('#39'$ 0.00'#39', <frx_Percepciones."dImporteTotal">) + '#39' '#39' + #13 + ' +
        '#10 + #13 + #10;             '
      
        '       TotalPercepciones := (TotalPercepciones + <frx_Percepcion' +
        'es."dImporteTotal">)                                            '
      '    end;'
      '    Master_Percepciones.DataSet.Next;                  '
      '  end;'
      
        '  Memo19.Text := FormatFloat('#39'$ 0.00'#39', TotalPercepciones);      ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '    '
      '  Deducciones_Cant.Text := '#39#39';'
      '  Deducciones_Desc.Text := '#39#39';'
      '  Deducciones_Tot.Text := '#39#39';'
      
        '  Memo21.Text := '#39#39';                                            ' +
        '      '
      
        '  TotalDeducciones := 0;                                        ' +
        '                '
      '  Master_Deducciones.DataSet.First;                      '
      '  while Not Master_Deducciones.DataSet.Eof do begin'
      
        '    if ( <frx_datosdeempleado."sIdEmpleado"> = <frx_Deducciones.' +
        '"sIdEmpleado">) AND ( <frx_Percepciones."dImporteTotal"> > 0 ) t' +
        'hen begin                                                       ' +
        '                                                 '
      
        '       Deducciones_Cant.Text := Deducciones_Cant.Text + FloatToS' +
        'tr(<frx_Deducciones."dCantidad">) + #13 + #10 + #13 + #10;'
      
        '       Deducciones_Desc.Text := Deducciones_Desc.Text + <frx_Ded' +
        'ucciones."sDescripcion"> + #13 + #10 + #13 + #10;'
      
        '       Deducciones_Tot.Text := Deducciones_Tot.Text + FormatFloa' +
        't('#39'$ 0.00'#39', <frx_Deducciones."dImporteTotal">) + '#39' '#39' + #13 + #10' +
        ' + #13 + #10;             '
      
        '       TotalDeducciones := (TotalDeducciones + <frx_Deducciones.' +
        '"dImporteTotal">);                               '
      '    end;'
      '    Master_Deducciones.DataSet.Next;'
      '  end;'
      '  Memo21.Text := FormatFloat('#39'$ 0.00'#39', TotalDeducciones);      '
      
        '  TotalSueldo := TotalPercepciones - TotalDeducciones;          ' +
        '                        '
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 472
    Top = 120
    Datasets = <
      item
        DataSet = frx_datosdeempleado
        DataSetName = 'frx_datosdeempleado'
      end
      item
        DataSet = frx_Deducciones
        DataSetName = 'frx_Deducciones'
      end
      item
        DataSet = frx_Percepciones
        DataSetName = 'frx_Percepciones'
      end
      item
        DataSet = frxNominas
        DataSetName = 'frxNominas'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 283.464750000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        DataSet = frx_datosdeempleado
        DataSetName = 'frx_datosdeempleado'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        object Memo42: TfrxMemoView
          Left = 359.055350000000000000
          Top = 113.385900000000000000
          Width = 359.055350000000000000
          Height = 170.078850000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Top = 113.385900000000000000
          Width = 359.055350000000000000
          Height = 170.078850000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 283.464750000000000000
          ShowHint = False
          Frame.Width = 2.000000000000000000
        end
        object Rich2: TfrxRichView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7B5C66315C666E696C205461686F6D613B7D
            7D0D0A5C766965776B696E64345C7563315C706172645C71635C66305C667331
            36205B73657475702E22734E6F6D627265225D5C66315C7061720D0A7D0D0A00}
        end
        object Rich10: TfrxRichView
          Left = 488.236550000000000000
          Top = 17.456710000000000000
          Width = 151.181200000000000000
          Height = 45.354360000000000000
          OnAfterData = 'Rich10OnAfterData'
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C205461686F
            6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C66305C6673
            3136205B6672785F6461746F736465656D706C6561646F2E22734E6F6D627265
            436F6D706C65746F225D5C7061720D0A7D0D0A00}
        end
        object Percepciones_Cant: TfrxMemoView
          Top = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Percepciones_Desc: TfrxMemoView
          Left = 37.795300000000000000
          Top = 113.385900000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Percepciones_Tot: TfrxMemoView
          Left = 283.464750000000000000
          Top = 113.385900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Deducciones_Cant: TfrxMemoView
          Left = 359.055350000000000000
          Top = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Deducciones_Desc: TfrxMemoView
          Left = 396.850650000000000000
          Top = 113.385900000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Deducciones_Tot: TfrxMemoView
          Left = 623.622450000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Rich5: TfrxRichView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7B5C66315C666E696C205461686F6D613B7D
            7D0D0A5C766965776B696E64345C7563315C706172645C71635C66305C667331
            365C7061720D0A5C66733230204E4F4D494E41205C6631205B6672784E6F6D69
            6E61732E224E6F6D696E61537472696E67225D5C667331365C7061720D0A7D0D
            0A00}
        end
        object Picture1: TfrxPictureView
          Left = 31.236240000000000000
          Top = 2.000000000000000000
          Width = 113.385900000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo26: TfrxMemoView
          Top = 56.692950000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMBRE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 226.771800000000000000
          Top = 56.692950000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SUELDO DIARIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 340.157700000000000000
          Top = 56.692950000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PUESTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 529.134200000000000000
          Top = 56.692950000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DIAS LABORADOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Top = 75.590600000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sNombreCompleto'
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_datosdeempleado."sNombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 226.771800000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dSalarioIntegrado'
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_datosdeempleado."dSalarioIntegrado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 340.157700000000000000
          Top = 75.590600000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'sPuesto'
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_datosdeempleado."sPuesto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 529.134200000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dDiasLaborados'
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_datosdeempleado."dDiasLaborados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 642.520100000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 642.520100000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Top = 94.488250000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PERCEPCIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 359.055350000000000000
          Top = 94.488250000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DEDUCCIONES')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Master_Percepciones: TfrxMasterData
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frx_Percepciones
        DataSetName = 'frx_Percepciones'
        KeepTogether = True
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Percepciones."sDescripcion"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dCantidad'
          DataSet = frx_Percepciones
          DataSetName = 'frx_Percepciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Percepciones."dCantidad"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dImporteTotal'
          DataSet = frx_Percepciones
          DataSetName = 'frx_Percepciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Percepciones."dImporteTotal"]')
          ParentFont = False
        end
      end
      object Master_Deducciones: TfrxMasterData
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frx_Deducciones
        DataSetName = 'frx_Deducciones'
        KeepTogether = True
        RowCount = 0
        object Memo16: TfrxMemoView
          Left = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'sDescripcion'
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Deducciones."sDescripcion"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dCantidad'
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Deducciones."dCantidad"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'dImporteTotal'
          DataSet = frx_Deducciones
          DataSetName = 'frx_Deducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frx_Deducciones."dImporteTotal"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        Condition = 'frx_datosdeempleado."sIdEmpleado"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 128.504020000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Left = 359.055350000000000000
          Width = 359.055350000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Width = 359.055350000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Rich9: TfrxRichView
          Left = 453.543600000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67323035387B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C205461686F6D613B7D7D
            0D0A5C766965776B696E64345C7563315C706172645C625C6673313620535545
            4C444F20544F54414C3A5C62305C66315C7061720D0A7D0D0A00}
        end
        object Memo19: TfrxMemoView
          Left = 298.582870000000000000
          Top = 3.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 2.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '( + )   TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 362.834880000000000000
          Top = 3.000000000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '( - )  TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 566.929500000000000000
          Top = 30.236240000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frx_datosdeempleado
          DataSetName = 'frx_datosdeempleado'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[TotalSueldo]'
            '[frx_datosdeempleado."dSalarioReal"]')
        end
        object Memo25: TfrxMemoView
          Left = 151.181200000000000000
          Top = 60.472480000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 34.015770000000000000
          Width = 415.748300000000000000
          Height = 52.913420000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            
              'RECIBI DE [setup."sNombre"] LA CANTIDAD DE [FormatFloat('#39'$ ##,##' +
              '0.00'#39',<frx_datosdeempleado."dSalarioReal">)] COMPRENDIDO [frxNom' +
              'inas."NominaString"], DICHA CANTIDAD LA RECIBI A MI ENTERA SATIS' +
              'FACCI'#195#8220'N')
          ParentFont = False
          WordBreak = True
        end
      end
    end
  end
  object zq_datosdeempleado_: TZQuery
    Connection = connection.zConnection
    AfterPost = zq_NominasAfterPost
    SQL.Strings = (
      'SELECT '
      #9'ne.*, '
      '                e.dImporte AS dSalarioReal, '
      '                e.dDiasLaborados, '
      '                e.dFaltas '
      'FROM nom_empleadospornomina AS e '
      #9'INNER JOIN empleados AS ne ON (ne.sIdEmpleado = e.sIdEmpleado) '
      'WHERE e.iId_Nomina = :IdNomina '
      'ORDER BY ne.sNombreCompleto ASC ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 408
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object zq_datosdeempleado_sIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
      Size = 8
    end
    object zq_datosdeempleado_sNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object zq_datosdeempleado_sRfc: TStringField
      FieldName = 'sRfc'
      Required = True
      Size = 50
    end
    object zq_datosdeempleado_sDomicilio: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object zq_datosdeempleado_sCiudad: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object zq_datosdeempleado_sPuesto: TStringField
      FieldName = 'sPuesto'
      Required = True
      Size = 50
    end
    object zq_datosdeempleado_sIdArea: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object zq_datosdeempleado_sTelefono: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 60
    end
    object zq_datosdeempleado_seMail: TStringField
      FieldName = 'seMail'
      Required = True
      Size = 30
    end
    object zq_datosdeempleado_dSueldo: TFloatField
      FieldName = 'dSueldo'
      Required = True
    end
    object zq_datosdeempleado_sStatus: TStringField
      FieldName = 'sStatus'
      Required = True
      Size = 8
    end
    object zq_datosdeempleado_sCuenta: TStringField
      FieldName = 'sCuenta'
      Required = True
      Size = 90
    end
    object zq_datosdeempleado_lLabora: TStringField
      FieldName = 'lLabora'
      Required = True
      Size = 2
    end
    object zq_datosdeempleado_sBanco: TStringField
      FieldName = 'sBanco'
      Required = True
      Size = 60
    end
    object zq_datosdeempleado_sCuentaInterbancaria: TStringField
      FieldName = 'sCuentaInterbancaria'
      Required = True
      Size = 90
    end
    object zq_datosdeempleado_sCurp: TStringField
      FieldName = 'sCurp'
      Required = True
      Size = 90
    end
    object zq_datosdeempleado_sImss: TStringField
      FieldName = 'sImss'
      Required = True
      Size = 90
    end
    object zq_datosdeempleado_sNacionalidad: TStringField
      FieldName = 'sNacionalidad'
      Required = True
      Size = 98
    end
    object zq_datosdeempleado_sEstadoCivil: TStringField
      FieldName = 'sEstadoCivil'
      Required = True
      Size = 90
    end
    object zq_datosdeempleado_dFechaNacimiento: TDateField
      FieldName = 'dFechaNacimiento'
      Required = True
    end
    object zq_datosdeempleado_dFechaTerminoLabores: TDateField
      FieldName = 'dFechaTerminoLabores'
      Required = True
    end
    object zq_datosdeempleado_dFechaInicioLabores: TDateField
      FieldName = 'dFechaInicioLabores'
    end
    object zq_datosdeempleado_iId_Puesto: TIntegerField
      FieldName = 'iId_Puesto'
    end
    object zq_datosdeempleado_sLibretaMar: TStringField
      FieldName = 'sLibretaMar'
      Required = True
      Size = 80
    end
    object zq_datosdeempleado_sCartilla: TStringField
      FieldName = 'sCartilla'
      Required = True
      Size = 80
    end
    object zq_datosdeempleado_sCedulaProfesional: TStringField
      FieldName = 'sCedulaProfesional'
      Required = True
      Size = 40
    end
    object zq_datosdeempleado_sLugarNacimiento: TStringField
      FieldName = 'sLugarNacimiento'
      Required = True
      Size = 150
    end
    object zq_datosdeempleado_sCarrera: TStringField
      FieldName = 'sCarrera'
      Required = True
      Size = 150
    end
    object zq_datosdeempleado_iId_RegistroPatronal: TIntegerField
      FieldName = 'iId_RegistroPatronal'
    end
    object zq_datosdeempleado_dSalarioDiario: TFloatField
      FieldName = 'dSalarioDiario'
    end
    object zq_datosdeempleado_dFactorIntegracion: TFloatField
      FieldName = 'dFactorIntegracion'
    end
    object zq_datosdeempleado_dPromedioVariables: TFloatField
      FieldName = 'dPromedioVariables'
    end
    object zq_datosdeempleado_dSalarioIntegrado: TFloatField
      FieldName = 'dSalarioIntegrado'
    end
    object zq_datosdeempleado_dSalarioReal: TFloatField
      FieldName = 'dSalarioReal'
    end
    object zq_datosdeempleado_dDiasLaborados: TFloatField
      FieldName = 'dDiasLaborados'
    end
    object zq_datosdeempleado_dFaltas: TFloatField
      FieldName = 'dFaltas'
    end
  end
  object frx_datosdeempleado: TfrxDBDataset
    UserName = 'frx_datosdeempleado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sIdEmpleado=sIdEmpleado'
      'sNombreCompleto=sNombreCompleto'
      'sRfc=sRfc'
      'sDomicilio=sDomicilio'
      'sCiudad=sCiudad'
      'sPuesto=sPuesto'
      'sIdArea=sIdArea'
      'sTelefono=sTelefono'
      'seMail=seMail'
      'dSueldo=dSueldo'
      'sStatus=sStatus'
      'sCuenta=sCuenta'
      'lLabora=lLabora'
      'sBanco=sBanco'
      'sCuentaInterbancaria=sCuentaInterbancaria'
      'sCurp=sCurp'
      'sImss=sImss'
      'sNacionalidad=sNacionalidad'
      'sEstadoCivil=sEstadoCivil'
      'dFechaNacimiento=dFechaNacimiento'
      'dFechaTerminoLabores=dFechaTerminoLabores'
      'dFechaInicioLabores=dFechaInicioLabores'
      'iId_Puesto=iId_Puesto'
      'sLibretaMar=sLibretaMar'
      'sCartilla=sCartilla'
      'sCedulaProfesional=sCedulaProfesional'
      'sLugarNacimiento=sLugarNacimiento'
      'sCarrera=sCarrera'
      'iId_RegistroPatronal=iId_RegistroPatronal'
      'dSalarioDiario=dSalarioDiario'
      'dFactorIntegracion=dFactorIntegracion'
      'dPromedioVariables=dPromedioVariables'
      'dSalarioIntegrado=dSalarioIntegrado'
      'dSalarioReal=dSalarioReal'
      'dDiasLaborados=dDiasLaborados')
    DataSet = zq_datosdeempleado
    BCDToCurrency = False
    Left = 440
    Top = 120
  end
  object zq_percepciones: TZQuery
    Connection = connection.zConnection
    AfterPost = zq_NominasAfterPost
    SQL.Strings = (
      
        'SELECT *, (dImporte * dCantidad) AS dImporteTotal FROM nom_detal' +
        'lesporempleado WHERE lTipo = '#39'Percepcion'#39' AND iId_Nomina = :IdNo' +
        'mina;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 408
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object zq_percepcionesiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_percepcionesiId_Nomina: TIntegerField
      FieldName = 'iId_Nomina'
    end
    object zq_percepcionessIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Size = 50
    end
    object zq_percepcionesdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object zq_percepcionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object zq_percepcionesdImporte: TFloatField
      FieldName = 'dImporte'
    end
    object zq_percepcioneslImprime: TStringField
      FieldName = 'lImprime'
      Size = 2
    end
    object zq_percepcioneslTipo: TStringField
      FieldName = 'lTipo'
      Size = 10
    end
    object zq_percepcionesdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      ReadOnly = True
    end
  end
  object frx_Percepciones: TfrxDBDataset
    UserName = 'frx_Percepciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'iId_Nomina=iId_Nomina'
      'sIdEmpleado=sIdEmpleado'
      'dCantidad=dCantidad'
      'sDescripcion=sDescripcion'
      'dImporte=dImporte'
      'lImprime=lImprime'
      'lTipo=lTipo'
      'dImporteTotal=dImporteTotal')
    DataSet = zq_percepciones
    BCDToCurrency = False
    Left = 440
    Top = 152
  end
  object zq_Egresos: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 640
    Top = 96
    object zq_EgresosiIdFolio: TIntegerField
      FieldName = 'iIdFolio'
      Required = True
    end
    object zq_EgresosdTotalCheque: TFloatField
      FieldName = 'dTotalCheque'
      ReadOnly = True
      DisplayFormat = '$ ###,##0.00'
    end
    object zq_EgresossEgreso: TStringField
      FieldName = 'sEgreso'
      ReadOnly = True
      Size = 112
    end
  end
  object ds_Egresos: TDataSource
    AutoEdit = False
    DataSet = zq_Egresos
    Left = 643
    Top = 129
  end
  object ZQuery2: TZQuery
    Connection = connection.zConnection
    AfterScroll = zq_NominasAfterScroll
    AfterPost = zq_NominasAfterPost
    SQL.Strings = (
      'SELECT '
      #9'nom.*, '
      #9'DATEDIFF(nom.dFechaFinal, nom.dFechaInicial) AS DIAS, '
      #9'SUM(en.dImporte) AS dTotal '
      'FROM nom_nominas AS nom '
      
        #9'INNER JOIN nom_empleadospornomina AS en ON (en.iId_Nomina = nom' +
        '.iId) '
      'GROUP BY nom.iId '
      'ORDER BY iId DESC;')
    Params = <>
    Left = 528
    Top = 104
    object IntegerField3: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object StringField24: TStringField
      FieldName = 'sNomina'
      Size = 50
    end
    object DateField4: TDateField
      FieldName = 'dFechaInicial'
    end
    object DateField5: TDateField
      FieldName = 'dFechaFinal'
    end
    object FloatField6: TFloatField
      FieldName = 'dTotal'
      ReadOnly = True
      DisplayFormat = '$ #####0.00'
    end
    object IntegerField4: TIntegerField
      FieldName = 'DIAS'
      ReadOnly = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'iIdEgreso'
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery2
    Left = 571
    Top = 113
  end
  object zq_deducciones: TZQuery
    Connection = connection.zConnection
    AfterPost = zq_NominasAfterPost
    SQL.Strings = (
      
        'SELECT *, (dImporte * dCantidad) AS dImporteTotal FROM nom_detal' +
        'lesporempleado WHERE lTipo = '#39'Deduccion'#39' AND iId_Nomina = :IdNom' +
        'ina;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 408
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object zq_deduccionesiId: TIntegerField
      FieldName = 'iId'
      Required = True
    end
    object zq_deduccionesiId_Nomina: TIntegerField
      FieldName = 'iId_Nomina'
    end
    object zq_deduccionessIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Size = 50
    end
    object zq_deduccionesdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
    object zq_deduccionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object zq_deduccionesdImporte: TFloatField
      FieldName = 'dImporte'
    end
    object zq_deduccioneslImprime: TStringField
      FieldName = 'lImprime'
      Size = 2
    end
    object zq_deduccioneslTipo: TStringField
      FieldName = 'lTipo'
      Size = 10
    end
    object zq_deduccionesdImporteTotal: TFloatField
      FieldName = 'dImporteTotal'
      ReadOnly = True
    end
  end
  object frx_Deducciones: TfrxDBDataset
    UserName = 'frx_Deducciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'iId_Nomina=iId_Nomina'
      'sIdEmpleado=sIdEmpleado'
      'dCantidad=dCantidad'
      'sDescripcion=sDescripcion'
      'dImporte=dImporte'
      'lImprime=lImprime'
      'lTipo=lTipo'
      'dImporteTotal=dImporteTotal')
    DataSet = zq_deducciones
    BCDToCurrency = False
    Left = 440
    Top = 184
  end
  object ExportaNomina: TSaveDialog
    Left = 688
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 136
    object ReportedeNminas1: TMenuItem
      Caption = 'Reporte de N'#243'minas'
      OnClick = ReportedeNminas1Click
    end
    object EliminarNmina1: TMenuItem
      Caption = 'Eliminar N'#243'mina'
      OnClick = EliminarNmina1Click
    end
  end
  object qryDatosReporte: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'c.sIdEmpleado, '
      #9'd.sDescripcion AS area, '
      #9'c.sNombreCompleto As nombre, '
      #9'b.dDiasLaborados AS laborados, '
      #9'IFNULL(c.dSalarioIntegrado,0) AS salario_diario, '
      #9'0 AS dif_imms, '
      
        #9'FORMAT(IFNULL(c.dSalarioIntegrado * b.dDiasLaborados,0),4) AS t' +
        'otal_nomina, '
      #9'b.dImporte AS total_pagar, '
      #9'c.sCuenta AS cuenta, '
      #9'c.sBanco AS Banco '
      'FROM nom_nominas AS a '
      
        #9'INNER JOIN nom_empleadospornomina AS b ON (a.iId = b.iId_Nomina' +
        ') '
      #9'INNER JOIN empleados AS c ON (b.sIdEmpleado = c.sIdEmpleado) '
      #9'INNER JOIN con_areas AS d ON (c.sIdArea = d.sIdArea) '
      'WHERE a.iId = :nomina '
      'ORDER BY d.sDescripcion, c.sNombreCompleto;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nomina'
        ParamType = ptUnknown
      end>
    Left = 208
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nomina'
        ParamType = ptUnknown
      end>
    object qryDatosReportesIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
      Size = 8
    end
    object qryDatosReportearea: TStringField
      FieldName = 'area'
      Required = True
      Size = 50
    end
    object qryDatosReportenombre: TStringField
      FieldName = 'nombre'
      Required = True
      Size = 50
    end
    object qryDatosReportelaborados: TFloatField
      FieldName = 'laborados'
    end
    object qryDatosReportesalario_diario: TFloatField
      FieldName = 'salario_diario'
      ReadOnly = True
    end
    object qryDatosReportedif_imms: TLargeintField
      FieldName = 'dif_imms'
      ReadOnly = True
    end
    object qryDatosReportetotal_nomina: TStringField
      FieldName = 'total_nomina'
      ReadOnly = True
      Size = 65
    end
    object qryDatosReportetotal_pagar: TFloatField
      FieldName = 'total_pagar'
    end
    object qryDatosReportecuenta: TStringField
      FieldName = 'cuenta'
      Required = True
      Size = 90
    end
    object qryDatosReporteBanco: TStringField
      FieldName = 'Banco'
      Required = True
      Size = 60
    end
  end
  object qryDeduccionesxEmpleado: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT dImporte '
      'FROM  nom_deduccionesporempleado '
      'WHERE sIdEmpleado = :empleado '
      'AND iId_Deduccion = :deduccion; ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'deduccion'
        ParamType = ptUnknown
      end>
    Left = 240
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'deduccion'
        ParamType = ptUnknown
      end>
    object qryDeduccionesxEmpleadodImporte: TFloatField
      FieldName = 'dImporte'
    end
  end
  object qryIngresosxEmpleado: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT dImporte '
      'FROM  nom_prestacionesporempleado '
      'WHERE sIdEmpleado = :empleado '
      'AND iId_Prestacion = :ingreso ;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ingreso'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ingreso'
        ParamType = ptUnknown
      end>
  end
  object zq_datosdeempleado: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'ne.*, '
      '                e.dImporte AS dSalarioReal, '
      '                e.dDiasLaborados, '
      '                e.dFaltas, '
      #9'a.sDescripcion AS sDescripcionArea '
      'FROM nom_empleadospornomina AS e '
      #9'INNER JOIN empleados AS ne ON (ne.sIdEmpleado = e.sIdEmpleado) '
      #9'INNER JOIN con_areas AS a ON (a.sIdArea = ne.sIdArea) '
      'WHERE e.iId_Nomina = :IdNomina AND ne.lImprimeNomina = '#39'True'#39' '
      'ORDER BY ne.sIdArea, ne.sNombreCompleto ASC ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 640
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'sIdEmpleado'
      Required = True
      Size = 8
    end
    object StringField2: TStringField
      FieldName = 'sNombreCompleto'
      Required = True
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'sRfc'
      Required = True
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'sDomicilio'
      Required = True
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'sCiudad'
      Required = True
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'sPuesto'
      Required = True
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'sIdArea'
      Required = True
      Size = 8
    end
    object StringField8: TStringField
      FieldName = 'sTelefono'
      Required = True
      Size = 60
    end
    object StringField9: TStringField
      FieldName = 'seMail'
      Required = True
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'dSueldo'
      Required = True
    end
    object StringField10: TStringField
      FieldName = 'sStatus'
      Required = True
      Size = 8
    end
    object StringField11: TStringField
      FieldName = 'sCuenta'
      Required = True
      Size = 90
    end
    object StringField12: TStringField
      FieldName = 'lLabora'
      Required = True
      Size = 2
    end
    object StringField13: TStringField
      FieldName = 'sBanco'
      Required = True
      Size = 60
    end
    object StringField14: TStringField
      FieldName = 'sCuentaInterbancaria'
      Required = True
      Size = 90
    end
    object StringField15: TStringField
      FieldName = 'sCurp'
      Required = True
      Size = 90
    end
    object StringField16: TStringField
      FieldName = 'sImss'
      Required = True
      Size = 90
    end
    object StringField17: TStringField
      FieldName = 'sNacionalidad'
      Required = True
      Size = 98
    end
    object StringField18: TStringField
      FieldName = 'sEstadoCivil'
      Required = True
      Size = 90
    end
    object DateField1: TDateField
      FieldName = 'dFechaNacimiento'
      Required = True
    end
    object DateField2: TDateField
      FieldName = 'dFechaTerminoLabores'
      Required = True
    end
    object DateField3: TDateField
      FieldName = 'dFechaInicioLabores'
    end
    object IntegerField1: TIntegerField
      FieldName = 'iId_Puesto'
    end
    object StringField19: TStringField
      FieldName = 'sLibretaMar'
      Required = True
      Size = 80
    end
    object StringField20: TStringField
      FieldName = 'sCartilla'
      Required = True
      Size = 80
    end
    object StringField21: TStringField
      FieldName = 'sCedulaProfesional'
      Required = True
      Size = 40
    end
    object StringField22: TStringField
      FieldName = 'sLugarNacimiento'
      Required = True
      Size = 150
    end
    object StringField23: TStringField
      FieldName = 'sCarrera'
      Required = True
      Size = 150
    end
    object IntegerField2: TIntegerField
      FieldName = 'iId_RegistroPatronal'
    end
    object FloatField2: TFloatField
      FieldName = 'dSalarioDiario'
    end
    object FloatField3: TFloatField
      FieldName = 'dFactorIntegracion'
    end
    object FloatField4: TFloatField
      FieldName = 'dPromedioVariables'
    end
    object FloatField5: TFloatField
      FieldName = 'dSalarioIntegrado'
    end
    object FloatField7: TFloatField
      FieldName = 'dSalarioReal'
    end
    object FloatField8: TFloatField
      FieldName = 'dDiasLaborados'
    end
    object FloatField9: TFloatField
      FieldName = 'dFaltas'
    end
    object zq_datosdeempleadosDescripcionArea: TStringField
      FieldName = 'sDescripcionArea'
      Required = True
      Size = 50
    end
  end
  object zq_ReporteAcumulados: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'ar.sIdArea, '
      #9'ar.sDescripcion AS Area, '
      #9'de.iId_Nomina, '
      #9'de.sDescripcion,'
      #9'SUM(de.dImporte) AS Acumulado, '
      #9'de.lTipo, '
      #9'de.iId_Catalogo '
      'FROM nom_detallesporempleado AS de '
      
        #9'INNER JOIN empleados AS em ON (de.sIdEmpleado = em.sIdEmpleado)' +
        ' '
      #9'INNER JOIN con_areas AS ar ON (ar.sIdArea = em.sIdArea) '
      #9'WHERE '
      #9#9'de.iId_Nomina IN (:ListaDeIds) '
      'GROUP BY em.sIdArea, de.sDescripcion, de.lTipo '
      'ORDER BY em.sIdArea, de.lTipo, de.iId_Catalogo;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ListaDeIds'
        ParamType = ptUnknown
      end>
    Left = 680
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ListaDeIds'
        ParamType = ptUnknown
      end>
  end
  object zq_AcumuladosTotales: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      #9'*, '
      #9'SUM(de.dImporte) AS Acumulado '
      'FROM nom_detallesporempleado AS de '
      #9'WHERE '
      #9#9'de.iId_Nomina IN (:ListaDeIds) '
      'GROUP BY de.sDescripcion, de.lTipo '
      'ORDER BY de.lTipo, de.iId_Catalogo;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ListaDeIds'
        ParamType = ptUnknown
      end>
    Left = 680
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ListaDeIds'
        ParamType = ptUnknown
      end>
  end
  object frxNominas: TfrxDBDataset
    UserName = 'frxNominas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'iId=iId'
      'sNomina=sNomina'
      'dFechaInicial=dFechaInicial'
      'dFechaFinal=dFechaFinal'
      'dTotal=dTotal'
      'DIAS=DIAS'
      'iIdEgreso=iIdEgreso'
      'dTotalRestante=dTotalRestante'
      'NominaString=NominaString')
    DataSet = zq_Nominas
    BCDToCurrency = False
    Left = 440
    Top = 88
  end
end
