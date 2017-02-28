object FrmCostoFrente: TFrmCostoFrente
  Left = 0
  Top = 0
  Caption = 'Reportar Costos de Frente'
  ClientHeight = 179
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 35
    Width = 19
    Height = 13
    Caption = 'Mes'
  end
  object Label2: TLabel
    Left = 160
    Top = 35
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
  end
  object lblAviso: TLabel
    Left = 16
    Top = 119
    Width = 294
    Height = 16
    Caption = 'Este Proceso puede tomar un poco de tiempo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object cmbMes: TComboBox
    Left = 32
    Top = 32
    Width = 89
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Enero'
    Items.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre')
  end
  object cmbAnho: TComboBox
    Left = 184
    Top = 32
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'cmbAnho'
  end
  object btnConsultar: TButton
    Left = 120
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = btnConsultarClick
  end
  object DBGrid1: TDBGrid
    Left = 200
    Top = 1
    Width = 41
    Height = 25
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object ZPrincipal: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT'
      
        '(SELECT MIN(p2.dFechaInicio) FROM actividadesxanexo c2 INNER JOI' +
        'N actividadesxorden p2'
      
        'ON (c2.sContrato = p2.sContrato AND c2.sIdConvenio = p2.sIdConve' +
        'nio AND c2.sWbs = p2.sWbsContrato)'
      
        'WHERE c2.sWbsAnterior = c.sWbsAnterior AND p2.sNumeroOrden = :or' +
        'den) AS inicial,'
      
        '(SELECT MAX(p2.dFechaFinal) FROM actividadesxanexo c2 INNER JOIN' +
        ' actividadesxorden p2'
      
        'ON (c2.sContrato = p2.sContrato AND c2.sIdConvenio = p2.sIdConve' +
        'nio AND c2.sWbs = p2.sWbsContrato)'
      
        'WHERE c2.sWbsAnterior = c.sWbsAnterior AND p2.sNumeroOrden = :or' +
        'den) AS final,'
      
        'p.sWbs, p.sNumeroActividad, p.sTipoActividad, p.dFechaInicio, p.' +
        'dFechaFinal, p.sNumeroOrden,'
      
        'c.sWbs AS WBSAnexo, c.sWbsAnterior, p.sMedida, p.dCantidad, o.mD' +
        'escripcion AS area,'
      '(SELECT SUBSTR(c2.mDescripcion, 1, 50) FROM actividadesxanexo c2'
      
        'WHERE c2.sContrato = :contrato AND c2.sIdConvenio = :convenio AN' +
        'D c2.sWbs = c.sWbsAnterior) AS paquete'
      'FROM actividadesxanexo c'
      'INNER JOIN actividadesxorden p'
      
        'ON (c.sContrato = p.sContrato AND c.sIdConvenio = p.sIdConvenio ' +
        'AND c.sWbs = p.sWbsContrato)'
      'INNER JOIN ordenesdetrabajo o'
      
        'ON (p.sContrato = o.sContrato AND p.sNumeroOrden = o.sNumeroOrde' +
        'n)'
      'WHERE c.sContrato = :contrato'
      'AND c.sIdConvenio = :convenio'
      'AND p.sNumeroOrden = :orden'
      'AND p.iNivel = :nivel'
      'ORDER BY c.sWbsAnterior')
    Params = <
      item
        DataType = ftUnknown
        Name = 'orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nivel'
        ParamType = ptUnknown
      end>
    Left = 136
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nivel'
        ParamType = ptUnknown
      end>
  end
  object rxmTabla: TRxMemoryData
    FieldDefs = <>
    Left = 112
    object rxmTablapartida: TStringField
      FieldName = 'partida'
    end
    object rxmTablacantidad: TFloatField
      FieldName = 'cantidad'
    end
    object rxmTablaunidad: TStringField
      FieldName = 'unidad'
    end
    object rxmTablapaquete: TStringField
      FieldName = 'paquete'
      Size = 200
    end
    object rxmTablainicio: TDateField
      FieldName = 'inicio'
    end
    object rxmTablafin: TDateField
      FieldName = 'fin'
    end
    object rxmTabladia1act: TIntegerField
      FieldName = 'dia1act'
    end
    object rxmTabladia2act: TIntegerField
      FieldName = 'dia2act'
    end
    object rxmTabladia3act: TIntegerField
      FieldName = 'dia3act'
    end
    object rxmTabladia4act: TIntegerField
      FieldName = 'dia4act'
    end
    object rxmTabladia5act: TIntegerField
      FieldName = 'dia5act'
    end
    object rxmTabladia6act: TIntegerField
      FieldName = 'dia6act'
    end
    object rxmTabladia7act: TIntegerField
      FieldName = 'dia7act'
    end
    object rxmTabladia8act: TIntegerField
      FieldName = 'dia8act'
    end
    object rxmTabladia9act: TIntegerField
      FieldName = 'dia9act'
    end
    object rxmTabladia10act: TIntegerField
      FieldName = 'dia10act'
    end
    object rxmTabladia11act: TIntegerField
      FieldName = 'dia11act'
    end
    object rxmTabladia12act: TIntegerField
      FieldName = 'dia12act'
    end
    object rxmTabladia13act: TIntegerField
      FieldName = 'dia13act'
    end
    object rxmTabladia14act: TIntegerField
      FieldName = 'dia14act'
    end
    object rxmTabladia15act: TIntegerField
      FieldName = 'dia15act'
    end
    object rxmTabladia16act: TIntegerField
      FieldName = 'dia16act'
    end
    object rxmTabladia17act: TIntegerField
      FieldName = 'dia17act'
    end
    object rxmTabladia18act: TIntegerField
      FieldName = 'dia18act'
    end
    object rxmTabladia19act: TIntegerField
      FieldName = 'dia19act'
    end
    object rxmTabladia20act: TIntegerField
      FieldName = 'dia20act'
    end
    object rxmTabladia21act: TIntegerField
      FieldName = 'dia21act'
    end
    object rxmTabladia22act: TIntegerField
      FieldName = 'dia22act'
    end
    object rxmTabladia23act: TIntegerField
      FieldName = 'dia23act'
    end
    object rxmTabladia24act: TIntegerField
      FieldName = 'dia24act'
    end
    object rxmTabladia25act: TIntegerField
      FieldName = 'dia25act'
    end
    object rxmTabladia27act: TIntegerField
      FieldName = 'dia27act'
    end
    object rxmTabladia26act: TIntegerField
      FieldName = 'dia26act'
    end
    object rxmTabladia28act: TIntegerField
      FieldName = 'dia28act'
    end
    object rxmTabladia29act: TIntegerField
      FieldName = 'dia29act'
    end
    object rxmTabladia30act: TIntegerField
      FieldName = 'dia30act'
    end
    object rxmTabladia31act: TIntegerField
      FieldName = 'dia31act'
    end
    object rxmTabladia1dom: TIntegerField
      FieldName = 'dia1dom'
    end
    object rxmTabladia2dom: TIntegerField
      FieldName = 'dia2dom'
    end
    object rxmTabladia3dom: TIntegerField
      FieldName = 'dia3dom'
    end
    object rxmTabladia4dom: TIntegerField
      FieldName = 'dia4dom'
    end
    object rxmTabladia5dom: TIntegerField
      FieldName = 'dia5dom'
    end
    object rxmTabladia6dom: TIntegerField
      FieldName = 'dia6dom'
    end
    object rxmTabladia7dom: TIntegerField
      FieldName = 'dia7dom'
    end
    object rxmTabladia8dom: TIntegerField
      FieldName = 'dia8dom'
    end
    object rxmTabladia9dom: TIntegerField
      FieldName = 'dia9dom'
    end
    object rxmTabladia10dom: TIntegerField
      FieldName = 'dia10dom'
    end
    object rxmTabladia11dom: TIntegerField
      FieldName = 'dia11dom'
    end
    object rxmTabladia12dom: TIntegerField
      FieldName = 'dia12dom'
    end
    object rxmTabladia13dom: TIntegerField
      FieldName = 'dia13dom'
    end
    object rxmTabladia14dom: TIntegerField
      FieldName = 'dia14dom'
    end
    object rxmTabladia15dom: TIntegerField
      FieldName = 'dia15dom'
    end
    object rxmTabladia16dom: TIntegerField
      FieldName = 'dia16dom'
    end
    object rxmTabladia17dom: TIntegerField
      FieldName = 'dia17dom'
    end
    object rxmTabladia18dom: TIntegerField
      FieldName = 'dia18dom'
    end
    object rxmTabladia19dom: TIntegerField
      FieldName = 'dia19dom'
    end
    object rxmTabladia20dom: TIntegerField
      FieldName = 'dia20dom'
    end
    object rxmTabladia21dom: TIntegerField
      FieldName = 'dia21dom'
    end
    object rxmTabladia22dom: TIntegerField
      FieldName = 'dia22dom'
    end
    object rxmTabladia23dom: TIntegerField
      FieldName = 'dia23dom'
    end
    object rxmTabladia24dom: TIntegerField
      FieldName = 'dia24dom'
    end
    object rxmTabladia25dom: TIntegerField
      FieldName = 'dia25dom'
    end
    object rxmTabladia26dom: TIntegerField
      FieldName = 'dia26dom'
    end
    object rxmTabladia27dom: TIntegerField
      FieldName = 'dia27dom'
    end
    object rxmTabladia28dom: TIntegerField
      FieldName = 'dia28dom'
    end
    object rxmTabladia29dom: TIntegerField
      FieldName = 'dia29dom'
    end
    object rxmTabladia30dom: TIntegerField
      FieldName = 'dia30dom'
    end
    object rxmTabladia31dom: TIntegerField
      FieldName = 'dia31dom'
    end
    object rxmTablames: TStringField
      FieldName = 'mes'
      Size = 3
    end
    object rxmTablaanho: TStringField
      FieldName = 'anho'
      Size = 2
    end
    object rxmTablasNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 50
    end
    object rxmTablaarea: TStringField
      FieldName = 'area'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    Left = 168
  end
  object dsCostoFrente: TfrxDBDataset
    UserName = 'dsCostoFrente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'partida=partida'
      'cantidad=cantidad'
      'unidad=unidad'
      'paquete=paquete'
      'inicio=inicio'
      'fin=fin'
      'dia1act=dia1act'
      'dia2act=dia2act'
      'dia3act=dia3act'
      'dia4act=dia4act'
      'dia5act=dia5act'
      'dia6act=dia6act'
      'dia7act=dia7act'
      'dia8act=dia8act'
      'dia9act=dia9act'
      'dia10act=dia10act'
      'dia11act=dia11act'
      'dia12act=dia12act'
      'dia13act=dia13act'
      'dia14act=dia14act'
      'dia15act=dia15act'
      'dia16act=dia16act'
      'dia17act=dia17act'
      'dia18act=dia18act'
      'dia19act=dia19act'
      'dia20act=dia20act'
      'dia21act=dia21act'
      'dia22act=dia22act'
      'dia23act=dia23act'
      'dia24act=dia24act'
      'dia25act=dia25act'
      'dia27act=dia27act'
      'dia26act=dia26act'
      'dia28act=dia28act'
      'dia29act=dia29act'
      'dia30act=dia30act'
      'dia31act=dia31act'
      'dia1dom=dia1dom'
      'dia2dom=dia2dom'
      'dia3dom=dia3dom'
      'dia4dom=dia4dom'
      'dia5dom=dia5dom'
      'dia6dom=dia6dom'
      'dia7dom=dia7dom'
      'dia8dom=dia8dom'
      'dia9dom=dia9dom'
      'dia10dom=dia10dom'
      'dia11dom=dia11dom'
      'dia12dom=dia12dom'
      'dia13dom=dia13dom'
      'dia14dom=dia14dom'
      'dia15dom=dia15dom'
      'dia16dom=dia16dom'
      'dia17dom=dia17dom'
      'dia18dom=dia18dom'
      'dia19dom=dia19dom'
      'dia20dom=dia20dom'
      'dia21dom=dia21dom'
      'dia22dom=dia22dom'
      'dia23dom=dia23dom'
      'dia24dom=dia24dom'
      'dia25dom=dia25dom'
      'dia26dom=dia26dom'
      'dia27dom=dia27dom'
      'dia28dom=dia28dom'
      'dia29dom=dia29dom'
      'dia30dom=dia30dom'
      'dia31dom=dia31dom'
      'mes=mes'
      'anho=anho'
      'sNumeroOrden=sNumeroOrden'
      'area=area')
    DataSet = rxmTabla
    BCDToCurrency = False
    Left = 40
  end
  object frxCostoFrente: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40768.350506180600000000
    ReportOptions.LastChange = 40768.527329456020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//Ejecuci'#243'n en d'#237'as'
      '  '
      '        if <dsCostoFrente."dia1Act"> = 0 then'
      '               dia1act.visible := false'
      '        else                             '
      '               dia1act.visible := true;'
      ''
      '        if <dsCostoFrente."dia2Act"> = 0 then'
      '               dia2act.visible := false'
      '        else                             '
      '               dia2act.visible := true;'
      '                 '
      '        if <dsCostoFrente."dia3Act"> = 0 then'
      '               dia3act.visible := false'
      '        else                             '
      
        '               dia3act.visible := true;                         ' +
        '    '
      ''
      '        if <dsCostoFrente."dia4Act"> = 0 then'
      '               dia4act.visible := false'
      '        else                             '
      '               dia4act.visible := true;'
      ''
      '        if <dsCostoFrente."dia5Act"> = 0 then'
      '               dia5act.visible := false'
      '        else                             '
      '               dia5act.visible := true;'
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia6Act"> = 0 then'
      '               dia6act.visible := false'
      '        else                             '
      '               dia6act.visible := true;'
      ''
      '        if <dsCostoFrente."dia7Act"> = 0 then'
      '               dia7act.visible := false'
      '        else                             '
      '               dia7act.visible := true;'
      ''
      '        if <dsCostoFrente."dia8Act"> = 0 then'
      '               dia8act.visible := false'
      '        else                             '
      '               dia8act.visible := true;'
      ''
      '        if <dsCostoFrente."dia9Act"> = 0 then'
      '               dia9act.visible := false'
      '        else                             '
      '               dia9act.visible := true;'
      ''
      '        if <dsCostoFrente."dia10Act"> = 0 then'
      '               dia10act.visible := false'
      '        else                             '
      '               dia10act.visible := true;                   '
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia11Act"> = 0 then'
      '               dia11act.visible := false'
      '        else                             '
      '               dia11act.visible := true;'
      ''
      '        if <dsCostoFrente."dia12Act"> = 0 then'
      '               dia12act.visible := false'
      '        else                             '
      
        '               dia12act.visible := true;                        ' +
        '                       '
      ''
      '        if <dsCostoFrente."dia13Act"> = 0 then'
      '               dia13act.visible := false'
      '        else                             '
      '               dia13act.visible := true;    '
      ''
      '        if <dsCostoFrente."dia14Act"> = 0 then'
      '               dia14act.visible := false'
      '        else                             '
      '               dia14act.visible := true;'
      ''
      '        if <dsCostoFrente."dia15Act"> = 0 then'
      '               dia15act.visible := false'
      '        else                             '
      '               dia15act.visible := true;'
      ''
      ''
      ''
      '        if <dsCostoFrente."dia16Act"> = 0 then'
      '               dia16act.visible := false'
      '        else                             '
      '               dia16act.visible := true;'
      ''
      '        if <dsCostoFrente."dia17Act"> = 0 then'
      '               dia17act.visible := false'
      '        else                             '
      '               dia17act.visible := true;'
      ''
      '        if <dsCostoFrente."dia18Act"> = 0 then'
      '               dia18act.visible := false'
      '        else                             '
      '               dia18act.visible := true;'
      ''
      '        if <dsCostoFrente."dia19Act"> = 0 then'
      '               dia19act.visible := false'
      '        else                             '
      '               dia19act.visible := true;'
      ''
      '        if <dsCostoFrente."dia20Act"> = 0 then'
      '               dia20act.visible := false'
      '        else                             '
      '               dia20act.visible := true;'
      ''
      ''
      ''
      ''
      ''
      '        if <dsCostoFrente."dia21Act"> = 0 then'
      '               dia21act.visible := false'
      '        else                             '
      '               dia21act.visible := true;'
      ''
      '        if <dsCostoFrente."dia22Act"> = 0 then'
      '               dia22act.visible := false'
      '        else                             '
      '               dia22act.visible := true;'
      '                 '
      '        if <dsCostoFrente."dia23Act"> = 0 then'
      '               dia23act.visible := false'
      '        else                             '
      
        '               dia23act.visible := true;                        ' +
        '     '
      ''
      '        if <dsCostoFrente."dia24Act"> = 0 then'
      '               dia24act.visible := false'
      '        else                             '
      '               dia24act.visible := true;'
      ''
      '        if <dsCostoFrente."dia25Act"> = 0 then'
      '               dia25act.visible := false'
      '        else                             '
      '               dia25act.visible := true;'
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia26Act"> = 0 then'
      '               dia26act.visible := false'
      '        else                             '
      '               dia26act.visible := true;'
      ''
      '        if <dsCostoFrente."dia27Act"> = 0 then'
      '               dia27act.visible := false'
      '        else                             '
      '               dia27act.visible := true;'
      ''
      '        if <dsCostoFrente."dia28Act"> = 0 then'
      '               dia28act.visible := false'
      '        else                             '
      '               dia28act.visible := true;'
      ''
      '        if <dsCostoFrente."dia29Act"> = 0 then'
      '               dia29act.visible := false'
      '        else                             '
      '               dia29act.visible := true;'
      ''
      '        if <dsCostoFrente."dia30Act"> = 0 then'
      '               dia30act.visible := false'
      '        else                             '
      '               dia30act.visible := true;'
      ''
      ''
      ''
      '        if <dsCostoFrente."dia31Act"> = 0 then'
      '               dia31act.visible := false'
      '        else                             '
      '               dia31act.visible := true;'
      ''
      ''
      '//Domimgos'
      '        if <dsCostoFrente."dia1dom"> = 1 then'
      '               dia1dom.color := clScrollBar                  '
      '        else                             '
      
        '               dia1dom.color := clNone;                         ' +
        '     '
      ''
      '        if <dsCostoFrente."dia2dom"> = 1 then'
      '               dia2dom.color := clScrollBar                  '
      '        else                             '
      '               dia2dom.color := clNone;  '
      '                 '
      '        if <dsCostoFrente."dia3dom"> = 1 then'
      '               dia3dom.color := clScrollBar'
      '        else                             '
      
        '               dia3dom.color := clNone;                         ' +
        '      '
      ''
      '        if <dsCostoFrente."dia4dom"> = 1 then'
      '               dia4dom.color := clScrollBar'
      '        else                             '
      '               dia4dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia5dom"> = 1 then'
      '               dia5dom.color := clScrollBar'
      '        else                             '
      '               dia5dom.color := clNone;'
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia6dom"> = 1 then'
      '               dia6dom.color := clScrollBar'
      '        else                             '
      '               dia6dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia7dom"> = 1 then'
      '               dia7dom.color := clScrollBar'
      '        else                             '
      '               dia7dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia8dom"> = 1 then'
      '               dia8dom.color := clScrollBar'
      '        else                             '
      '               dia8dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia9dom"> = 1 then'
      '               dia9dom.color := clScrollBar'
      '        else                             '
      '               dia9dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia10dom"> = 1 then'
      '               dia10dom.color := clScrollBar'
      '        else                             '
      '               dia10dom.color := clNone;                   '
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia11dom"> = 1 then'
      '               dia11dom.color := clScrollBar'
      '        else                             '
      '               dia11dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia12dom"> = 1 then'
      '               dia12dom.color := clScrollBar'
      '        else                             '
      
        '               dia12dom.color := clNone;                        ' +
        '                       '
      ''
      '        if <dsCostoFrente."dia13dom"> = 1 then'
      '               dia13dom.color := clScrollBar'
      '        else                             '
      '               dia13dom.color := clNone;    '
      ''
      '        if <dsCostoFrente."dia14dom"> = 1 then'
      '               dia14dom.color := clScrollBar'
      '        else                             '
      '               dia14dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia15dom"> = 1 then'
      '               dia15dom.color := clScrollBar'
      '        else                             '
      '               dia15dom.color := clNone;'
      ''
      ''
      ''
      '        if <dsCostoFrente."dia16dom"> = 1 then'
      '               dia16dom.color := clScrollBar'
      '        else                             '
      '               dia16dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia17dom"> = 1 then'
      '               dia17dom.color := clScrollBar'
      '        else                             '
      '               dia17dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia18dom"> = 1 then'
      '               dia18dom.color := clScrollBar'
      '        else                             '
      '               dia18dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia19dom"> = 1 then'
      '               dia19dom.color := clScrollBar'
      '        else                             '
      '               dia19dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia20dom"> = 1 then'
      '               dia20dom.color := clScrollBar'
      '        else                             '
      '               dia20dom.color := clNone;'
      ''
      ''
      ''
      ''
      ''
      '        if <dsCostoFrente."dia21dom"> = 1 then'
      '               dia21dom.color := clScrollBar'
      '        else                             '
      '               dia21dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia22dom"> = 1 then'
      '               dia22dom.color := clScrollBar'
      '        else                             '
      '               dia22dom.color := clNone;'
      '                 '
      '        if <dsCostoFrente."dia23dom"> = 1 then'
      '               dia23dom.color := clScrollBar'
      '        else                             '
      
        '               dia23dom.color := clNone;                        ' +
        '     '
      ''
      '        if <dsCostoFrente."dia24dom"> = 1 then'
      '               dia24dom.color := clScrollBar'
      '        else                             '
      '               dia24dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia25dom"> = 1 then'
      '               dia25dom.color := clScrollBar'
      '        else                             '
      '               dia25dom.color := clNone;'
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia26dom"> = 1 then'
      '               dia26dom.color := clScrollBar'
      '        else                             '
      '               dia26dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia27dom"> = 1 then'
      '               dia27dom.color := clScrollBar'
      '        else                             '
      '               dia27dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia28dom"> = 1 then'
      '               dia28dom.color := clScrollBar'
      '        else                             '
      '               dia28dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia29dom"> = 1 then'
      '               dia29dom.color := clScrollBar'
      '        else                             '
      '               dia29dom.color := clNone;'
      ''
      '        if <dsCostoFrente."dia30dom"> = 1 then'
      '               dia30dom.color := clScrollBar'
      '        else                             '
      '               dia30dom.color := clNone;'
      ''
      ''
      ''
      '        if <dsCostoFrente."dia31dom"> = 1 then'
      '               dia31dom.color := clScrollBar'
      '        else                             '
      '               dia31dom.color := clNone;'
      ''
      ''
      ''
      ''
      ''
      '//domingos 2 (fila de programado)       '
      '        if <dsCostoFrente."dia1dom"> = 1 then'
      '               dia1dom2.color := clScrollBar                  '
      '        else                             '
      
        '               dia1dom2.color := clNone;                        ' +
        '      '
      ''
      '        if <dsCostoFrente."dia2dom"> = 1 then'
      '               dia2dom2.color := clScrollBar                  '
      '        else                             '
      '               dia2dom2.color := clNone;  '
      '                 '
      '        if <dsCostoFrente."dia3dom"> = 1 then'
      '               dia3dom2.color := clScrollBar'
      '        else                             '
      
        '               dia3dom2.color := clNone;                        ' +
        '       '
      ''
      '        if <dsCostoFrente."dia4dom"> = 1 then'
      '               dia4dom2.color := clScrollBar'
      '        else                             '
      '               dia4dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia5dom"> = 1 then'
      '               dia5dom2.color := clScrollBar'
      '        else                             '
      '               dia5dom2.color := clNone;'
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia6dom"> = 1 then'
      '               dia6dom2.color := clScrollBar'
      '        else                             '
      '               dia6dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia7dom"> = 1 then'
      '               dia7dom2.color := clScrollBar'
      '        else                             '
      '               dia7dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia8dom"> = 1 then'
      '               dia8dom2.color := clScrollBar'
      '        else                             '
      '               dia8dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia9dom"> = 1 then'
      '               dia9dom2.color := clScrollBar'
      '        else                             '
      '               dia9dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia10dom"> = 1 then'
      '               dia10dom2.color := clScrollBar'
      '        else                             '
      '               dia10dom2.color := clNone;                   '
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia11dom"> = 1 then'
      '               dia11dom2.color := clScrollBar'
      '        else                             '
      '               dia11dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia12dom"> = 1 then'
      '               dia12dom2.color := clScrollBar'
      '        else                             '
      
        '               dia12dom2.color := clNone;                       ' +
        '                        '
      ''
      '        if <dsCostoFrente."dia13dom"> = 1 then'
      '               dia13dom2.color := clScrollBar'
      '        else                             '
      '               dia13dom2.color := clNone;    '
      ''
      '        if <dsCostoFrente."dia14dom"> = 1 then'
      '               dia14dom2.color := clScrollBar'
      '        else                             '
      '               dia14dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia15dom"> = 1 then'
      '               dia15dom2.color := clScrollBar'
      '        else                             '
      '               dia15dom2.color := clNone;'
      ''
      ''
      ''
      '        if <dsCostoFrente."dia16dom"> = 1 then'
      '               dia16dom2.color := clScrollBar'
      '        else                             '
      '               dia16dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia17dom"> = 1 then'
      '               dia17dom2.color := clScrollBar'
      '        else                             '
      '               dia17dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia18dom"> = 1 then'
      '               dia18dom2.color := clScrollBar'
      '        else                             '
      '               dia18dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia19dom"> = 1 then'
      '               dia19dom2.color := clScrollBar'
      '        else                             '
      '               dia19dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia20dom"> = 1 then'
      '               dia20dom2.color := clScrollBar'
      '        else                             '
      '               dia20dom2.color := clNone;'
      ''
      ''
      ''
      ''
      ''
      '        if <dsCostoFrente."dia21dom"> = 1 then'
      '               dia21dom2.color := clScrollBar'
      '        else                             '
      '               dia21dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia22dom"> = 1 then'
      '               dia22dom2.color := clScrollBar'
      '        else                             '
      '               dia22dom2.color := clNone;'
      '                 '
      '        if <dsCostoFrente."dia23dom"> = 1 then'
      '               dia23dom2.color := clScrollBar'
      '        else                             '
      
        '               dia23dom2.color := clNone;                       ' +
        '      '
      ''
      '        if <dsCostoFrente."dia24dom"> = 1 then'
      '               dia24dom2.color := clScrollBar'
      '        else                             '
      '               dia24dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia25dom"> = 1 then'
      '               dia25dom2.color := clScrollBar'
      '        else                             '
      '               dia25dom2.color := clNone;'
      ''
      ''
      '                                         '
      '        if <dsCostoFrente."dia26dom"> = 1 then'
      '               dia26dom2.color := clScrollBar'
      '        else                             '
      '               dia26dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia27dom"> = 1 then'
      '               dia27dom2.color := clScrollBar'
      '        else                             '
      '               dia27dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia28dom"> = 1 then'
      '               dia28dom2.color := clScrollBar'
      '        else                             '
      '               dia28dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia29dom"> = 1 then'
      '               dia29dom2.color := clScrollBar'
      '        else                             '
      '               dia29dom2.color := clNone;'
      ''
      '        if <dsCostoFrente."dia30dom"> = 1 then'
      '               dia30dom2.color := clScrollBar'
      '        else                             '
      '               dia30dom2.color := clNone;'
      ''
      ''
      ''
      '        if <dsCostoFrente."dia31dom"> = 1 then'
      '               dia31dom2.color := clScrollBar'
      '        else                             '
      '               dia31dom2.color := clNone;    '
      ''
      '                 '
      '                             '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dsCostoFrente
        DataSetName = 'dsCostoFrente'
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 148.732337170000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 361.173470000000000000
          Top = 67.252010000000000000
          Width = 178.417440000000000000
          Height = 25.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTRATO: [contrato."sContrato"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 820.158010000000000000
          Top = 3.000000000000000000
          Width = 149.519790000000000000
          Height = 62.031540000000000000
          ShowHint = False
          DataField = 'bImagen'
          DataSet = connection.rpt_contrato
          DataSetName = 'contrato'
          HightQuality = False
        end
        object Picture3: TfrxPictureView
          Left = 2.897650000000000000
          Top = 3.000000000000000000
          Width = 117.385900000000000000
          Height = 71.590600000000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
        end
        object Memo12: TfrxMemoView
          Left = 88.818953780000000000
          Top = 67.472480000000000000
          Width = 277.416871260000000000
          Height = 39.685027170000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[Contrato."mDescripcion"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 249.448980000000000000
          Top = 22.677180000000000000
          Width = 476.220780000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FC-7.5.0-04  PROGRAMA DE TRABAJO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 22.677180000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'OBRA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 90.708720000000000000
          Top = 45.354360000000000000
          Width = 650.079160000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 540.472790000000000000
          Top = 68.031540000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ORDEN DE TRABAJO: [dsCostoFrente."sNumeroOrden"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 22.677180000000000000
          Top = 105.826840000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'AREA: [dsCostoFrente."area"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 22.677180000000000000
          Top = 128.504020000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dsCostoFrente."area"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 253.126160000000000000
          Top = 2.677180000000000000
          Width = 471.882190000000000000
          Height = 24.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[setup."sNombre"]')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Left = -2.000000000000000000
        Top = 3.779530000000000000
        Width = 976.629921260000000000
        Height = 64.252010000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        Condition = 'contrato."sContrato"'
        object Memo9: TfrxMemoView
          Left = 382.952775430000000000
          Top = 3.779530000000000000
          Width = 355.275590550000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsCostoFrente."mes"] - [dsCostoFrente."anho"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 382.953000000000000000
          Top = 15.118120000000000000
          Width = 355.275592990000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 382.953000000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 394.291590000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 405.630180000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 416.968770000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 428.307360000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 439.645950000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 450.984540000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 462.323130000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 473.661720000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 485.000310000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 496.338900000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 507.677490000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 519.016080000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 530.354670000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 541.693260000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 553.031850000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 564.370440000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 575.709030000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 587.047620000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 598.386210000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 609.724800000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 621.063390000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 632.401980000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 643.740570000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 655.079160000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 667.417750000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 678.756340000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 690.094930000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 701.433520000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '29')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 712.772110000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 725.110700000000000000
          Top = 26.456710000000000000
          Width = 12.472440940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '31')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 370.771653540000000000
          Top = 3.779530000000000000
          Width = 12.472440940000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 8421631
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
        object Memo44: TfrxMemoView
          Left = 299.937007870000000000
          Top = 3.779530000000000000
          Width = 70.299212600000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 299.937007870000000000
          Top = 15.118120000000000000
          Width = 70.299212600000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 335.244094490000000000
          Top = 26.456710000000000000
          Width = 35.149620940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FIN')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 299.803340000000000000
          Top = 26.456710000000000000
          Width = 35.149620940000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'INICIO')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 25.543302200000000000
          Top = 3.779530000000000000
          Width = 274.393832600000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ACTIVIDADES')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 25.543302200000000000
          Top = 15.118120000000000000
          Width = 274.393832600000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 237.354330708661000000
          Top = 26.456710000000000000
          Width = 62.740157480000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RECURSOS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 83.370130000000000000
          Top = 26.456710000000000000
          Width = 153.448818897638000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONCEPTO GENERICO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 52.000000000000000000
          Top = 26.456710000000000000
          Width = 30.992125980000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 25.543307090000000000
          Top = 26.456710000000000000
          Width = 26.456692910000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UNID.')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Top = 3.779530000000000000
          Width = 26.456692910000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PART')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = dsCostoFrente
        DataSetName = 'dsCostoFrente'
        RowCount = 0
        object Memo55: TfrxMemoView
          Left = 25.700787400000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'unidad'
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsCostoFrente."unidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 52.157480310000000000
          Width = 30.992125980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cantidad'
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dsCostoFrente."cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 83.527559060000000000
          Width = 153.448818900000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'paquete'
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsCostoFrente."paquete"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 237.354360000000000000
          Width = 62.740128190000000000
          Height = 9.448818900000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'M.O:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 237.354360000000000000
          Top = 9.448818900000000000
          Width = 62.740128190000000000
          Height = 9.448818900000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'MAT./EQ: RQQ-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 299.716535430000000000
          Width = 35.149606300000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataField = 'inicio'
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsCostoFrente."inicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 335.244094490000000000
          Width = 35.149606300000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataField = 'fin'
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dsCostoFrente."fin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 299.716535430000000000
          Top = 9.448818900000000000
          Width = 35.149606300000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 335.244094490000000000
          Top = 9.448818900000000000
          Width = 35.149606300000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 370.393940000000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'P')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 370.771653540000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'R')
          ParentFont = False
          VAlign = vaCenter
        end
        object dia1dom: TfrxMemoView
          Left = 382.866141730000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia1dom2: TfrxMemoView
          Left = 382.866141730000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia2dom: TfrxMemoView
          Left = 394.204724410000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia2dom2: TfrxMemoView
          Left = 394.204724410000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia1act: TfrxMemoView
          Left = 382.866141730000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia3dom: TfrxMemoView
          Left = 405.543307090000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia3dom2: TfrxMemoView
          Left = 405.543307090000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia4dom: TfrxMemoView
          Left = 416.881889760000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia4dom2: TfrxMemoView
          Left = 416.881889760000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia5dom: TfrxMemoView
          Left = 428.220472440000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia5dom2: TfrxMemoView
          Left = 428.220472440000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia6dom: TfrxMemoView
          Left = 439.559055120000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia6dom2: TfrxMemoView
          Left = 439.559055120000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia7dom: TfrxMemoView
          Left = 450.897637800000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia7dom2: TfrxMemoView
          Left = 450.897637800000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia8dom: TfrxMemoView
          Left = 462.236220470000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia8dom2: TfrxMemoView
          Left = 462.236220470000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia9dom: TfrxMemoView
          Left = 473.574803150000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia9dom2: TfrxMemoView
          Left = 473.574803150000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia10dom: TfrxMemoView
          Left = 484.913385830000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia10dom2: TfrxMemoView
          Left = 484.913385830000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object dia11dom: TfrxMemoView
          Left = 496.251968500000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia11dom2: TfrxMemoView
          Left = 496.251968500000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia12dom: TfrxMemoView
          Left = 507.590551180000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia12dom2: TfrxMemoView
          Left = 507.590551180000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia13dom: TfrxMemoView
          Left = 518.929133860000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia13dom2: TfrxMemoView
          Left = 518.929133860000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia14dom: TfrxMemoView
          Left = 530.267716540000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia14dom2: TfrxMemoView
          Left = 530.267716540000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia15dom: TfrxMemoView
          Left = 541.606299210000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia15dom2: TfrxMemoView
          Left = 541.606299210000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia16dom: TfrxMemoView
          Left = 552.944881890000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia16dom2: TfrxMemoView
          Left = 552.944881890000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia17dom: TfrxMemoView
          Left = 564.283464570000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia17dom2: TfrxMemoView
          Left = 564.283464570000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia18dom: TfrxMemoView
          Left = 575.622047240000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia18dom2: TfrxMemoView
          Left = 575.622047240000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia19dom: TfrxMemoView
          Left = 586.960629920000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia19dom2: TfrxMemoView
          Left = 586.960629920000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia20dom: TfrxMemoView
          Left = 598.299212600000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia20dom2: TfrxMemoView
          Left = 598.299212600000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia21dom: TfrxMemoView
          Left = 609.637795280000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia21dom2: TfrxMemoView
          Left = 609.637795280000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia22dom: TfrxMemoView
          Left = 620.976377950000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia22dom2: TfrxMemoView
          Left = 620.976377950000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia23dom: TfrxMemoView
          Left = 632.314960630000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia23dom2: TfrxMemoView
          Left = 632.314960630000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia24dom: TfrxMemoView
          Left = 643.653543310000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia24dom2: TfrxMemoView
          Left = 643.653543310000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia25dom: TfrxMemoView
          Left = 654.992125980000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia25dom2: TfrxMemoView
          Left = 654.992125980000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia26dom: TfrxMemoView
          Left = 667.464566930000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia26dom2: TfrxMemoView
          Left = 667.464566930000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia27dom: TfrxMemoView
          Left = 678.803149610000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia27dom2: TfrxMemoView
          Left = 678.803149610000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia28dom: TfrxMemoView
          Left = 690.141732280000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia28dom2: TfrxMemoView
          Left = 690.141732280000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia29dom: TfrxMemoView
          Left = 701.480314960000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia29dom2: TfrxMemoView
          Left = 701.480314960000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia30dom: TfrxMemoView
          Left = 712.818897640000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia30dom2: TfrxMemoView
          Left = 712.818897640000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia31dom: TfrxMemoView
          Left = 725.291338580000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia31dom2: TfrxMemoView
          Left = 725.291338580000000000
          Top = 9.448818900000000000
          Width = 12.472440940000000000
          Height = 9.448818900000000000
          ShowHint = False
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia2act: TfrxMemoView
          Left = 394.204724410000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia3act: TfrxMemoView
          Left = 405.543307090000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia4act: TfrxMemoView
          Left = 416.881889760000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia5act: TfrxMemoView
          Left = 428.220472440000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia6act: TfrxMemoView
          Left = 439.559055120000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia7act: TfrxMemoView
          Left = 450.897637800000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia8act: TfrxMemoView
          Left = 462.236220470000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia9act: TfrxMemoView
          Left = 473.574803150000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia10act: TfrxMemoView
          Left = 484.913385830000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia11act: TfrxMemoView
          Left = 496.251968500000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia12act: TfrxMemoView
          Left = 507.590551180000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia13act: TfrxMemoView
          Left = 518.929133860000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia14act: TfrxMemoView
          Left = 530.267716540000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia15act: TfrxMemoView
          Left = 541.606299210000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia16act: TfrxMemoView
          Left = 552.944881890000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia17act: TfrxMemoView
          Left = 564.283464570000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia18act: TfrxMemoView
          Left = 575.622047240000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia19act: TfrxMemoView
          Left = 586.960629920000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia20act: TfrxMemoView
          Left = 598.299212600000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia21act: TfrxMemoView
          Left = 609.637795280000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia22act: TfrxMemoView
          Left = 620.976377950000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia23act: TfrxMemoView
          Left = 632.314960630000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia24act: TfrxMemoView
          Left = 643.653543310000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia25act: TfrxMemoView
          Left = 654.992125980000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia26act: TfrxMemoView
          Left = 667.464566930000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia27act: TfrxMemoView
          Left = 678.803149610000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia28act: TfrxMemoView
          Left = 690.141732280000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia29act: TfrxMemoView
          Left = 701.480314960000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia30act: TfrxMemoView
          Left = 712.818897640000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
        object dia31Act: TfrxMemoView
          Left = 725.291338580000000000
          Top = 3.023622050000000000
          Width = 12.472440940000000000
          Height = 4.535433070000000000
          ShowHint = False
          Color = clRed
          DataSet = dsCostoFrente
          DataSetName = 'dsCostoFrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
