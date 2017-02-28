object FrmHistorialSalarios: TFrmHistorialSalarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Historial de SD y SDI por Empleado'
  ClientHeight = 330
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGBDatos: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    ParentFont = False
    TabOrder = 0
    Height = 289
    Width = 644
  end
  object cxGBBotonera: TcxGroupBox
    Left = 0
    Top = 289
    Align = alBottom
    ParentFont = False
    TabOrder = 1
    Height = 41
    Width = 644
    object CxBtnCerrar: TcxButton
      AlignWithMargins = True
      Left = 540
      Top = 12
      Width = 98
      Height = 23
      Align = alRight
      Caption = '&Cerrar'
      TabOrder = 0
      OnClick = CxBtnCerrarClick
    end
    object CxLbl1: TcxLabel
      Left = 3
      Top = 9
      Align = alClient
      AutoSize = False
      Caption = 
        'Nota: Estos salarios diarios mostrados en los diferentes tipos d' +
        'e n'#243'mina, son establecidos'#13#10' al contratar desde el sistema de no' +
        'minas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Height = 29
      Width = 534
      AnchorX = 270
    end
  end
  object CxGridMain: TcxGrid
    Left = 0
    Top = 0
    Width = 644
    Height = 289
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'DevExpressStyle'
    object CxGridPersonalImss: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsPersonalImss
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object ultima: TcxGridDBColumn
        Caption = 'Fecha Modificaci'#243'n'
        DataBinding.FieldName = 'ultima'
        Options.Editing = False
        Width = 120
      end
      object SalarioDiario: TcxGridDBColumn
        Caption = 'Salario Diario'
        DataBinding.FieldName = 'SalarioDiario'
        Width = 120
      end
      object TotalPercepciones: TcxGridDBColumn
        Caption = 'Salario Integrado'
        DataBinding.FieldName = 'TotalPercepciones'
        Width = 120
      end
      object TotalDeducciones: TcxGridDBColumn
        Caption = 'Total Deducciones'
        DataBinding.FieldName = 'TotalDeducciones'
        Width = 108
      end
      object Neto: TcxGridDBColumn
        DataBinding.FieldName = 'Neto'
        Width = 81
      end
    end
    object CxGridMainLevel1: TcxGridLevel
      GridView = CxGridPersonalImss
    end
  end
  object zPersonalImss: TZQuery
    SQL.Strings = (
      'select  '
      '  max(nom.FechaTerminoNomina) as ultima,'
      
        '  Concat(Day(nom.FechaNomina), "-", Day(nom.FechaTerminoNomina),' +
        ' " ", Elt(Month(nom.FechaTerminoNomina), "ENERO","FEBRERO","MARZ' +
        'O","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SEPTIEMBRE","OCTUBRE' +
        '","NOVIEMBRE","DICIEMBRE"), " ", Year(nom.FechaTerminoNomina), "' +
        ' ", IF(:CorteOrg = -1, depto.Etiqueta, org.Etiqueta), IF(ISNULL(' +
        'tn.IdTipoNomina_Liga), "", Concat(" ", tn.Etiqueta))) as NombreC' +
        'eja,'
      
        '  IF(ISNULL(pr2.SalarioDiario), pr.SalarioDiario, pr2.SalarioDia' +
        'rio) as SalarioDiario,'
      
        '  SUBSTRING_INDEX(MID(a.Valor, 2 + LENGTH(SUBSTRING_INDEX(a.Valo' +
        'r, "|", FIND_IN_SET("TOTPER", REPLACE(REPLACE(a.Clave, ",", ";")' +
        ', "|", ",")) -1 )), LENGTH(a.Valor)), "|", 1 ) as TotalPercepcio' +
        'nes,'
      
        '  SUBSTRING_INDEX(MID(a.Valor, 2 + LENGTH(SUBSTRING_INDEX(a.Valo' +
        'r, "|", FIND_IN_SET("TOTDED", REPLACE(REPLACE(a.Clave, ",", ";")' +
        ', "|", ",")) -1 )), LENGTH(a.Valor)), "|", 1 ) as TotalDeduccion' +
        'es,'
      
        '  SUBSTRING_INDEX(MID(a.Valor, 2 + LENGTH(SUBSTRING_INDEX(a.Valo' +
        'r, "|", FIND_IN_SET("NETO", REPLACE(REPLACE(a.Clave, ",", ";"), ' +
        '"|", ",")) -1 )), LENGTH(a.Valor)), "|", 1 ) as Neto'
      ''
      'from'
      '  nom_nomina nom '
      ''
      'inner join '
      '  nom_concepto c '
      '    on (c.IdTipoNomina = nom.IdTipoNomina and '
      '        c.Aplicacion = (Select '
      '                          Max(t.Aplicacion)'
      '                        from '
      '                          nom_concepto t '
      '                        where '
      '                          t.IdTipoNomina = c.IdTipoNomina and '
      '                          t.Aplicacion <= nom.FechaNomina)) '
      ''
      'inner join'
      '  nom_detallenomina a'
      '    on (a.IdNomina = nom.IdNomina)'
      ''
      'inner join '
      '  nom_tiponomina tn '
      '    on (tn.IdTipoNomina = nom.IdTipoNomina)'
      ''
      'inner join '
      '  nuc_personal per '
      '    on (per.IdPersonal = a.IdPersonal)'
      ''
      'inner join '
      '  nuc_departamento depto'
      '    on (depto.IdDepartamento = a.IdDepartamento)'
      ''
      'inner join '
      '  nuc_organizacion org '
      '    on (org.IdOrganizacion = a.IdOrganizacion)'
      '    '
      'left join '
      '  nuc_organizacion org2'
      '    on (org2.IdOrganizacion = org.Padre)'
      ''
      'inner join'
      '  nuc_personalimss pr'
      '    on (pr.IdPersonal = per.IdPersonal and '
      
        '       (ISNULL(pr.IdPeriodosGuardia) or pr.IdPeriodosGuardia = n' +
        'om.IdPeriodosGuardia) and '
      '       (pr.TipoMovimiento <> "Baja") and'
      '       (pr.FechaMovimiento = (select '
      '                                Max(h.FechaMovimiento) '
      '                              from '
      '                                nuc_personalimss h '
      '                              where '
      
        '                                h.IdPersonal = per.IdPersonal an' +
        'd '
      '                                h.TipoMovimiento <> "Baja" and '
      
        '                                h.FechaMovimiento <= nom.FechaTe' +
        'rminoNomina and '
      
        '                                (ISNULL(h.IdPeriodosGuardia) or ' +
        'h.IdPeriodosGuardia = nom.IdPeriodosGuardia))))'
      ''
      'left join '
      '  nuc_personalimss pr2 '
      '    on (pr2.IdPersonal = per.IdPersonal and '
      '        pr2.TipoMovimiento = "Modificacion" and '
      '        pr2.FechaMovimiento = (select '
      '                                Max(h.FechaMovimiento) '
      '                              from '
      '                                nuc_personalimss h '
      '                              where '
      
        '                                h.IdPersonal = per.IdPersonal an' +
        'd '
      '                                h.TipoMovimiento <> "Baja" and '
      
        '                                h.FechaMovimiento <= nom.FechaTe' +
        'rminoNomina and '
      
        '                                (ISNULL(h.IdPeriodosGuardia) or ' +
        'h.IdPeriodosGuardia = nom.IdPeriodosGuardia)))'
      ''
      'left join'
      '  nuc_cargo car '
      '    on (car.IdCargo = pr.IdCargo)'
      ''
      'left join '
      '  rhu_salario sal'
      '    on (sal.IdLlave = car.IdSalario and'
      
        '        sal.FechaAplicacion = (Select max(x.FechaAplicacion) fro' +
        'm rhu_salario x left join rhu_modificacionsalario y on (y.IdSala' +
        'rio = x.IdSalario) where sal.idLlave = x.idLlave and ((nom.Fecha' +
        'Nomina = -1 and x.fechaaplicacion <= now()) or (nom.FechaNomina ' +
        '<> -1 and x.fechaaplicacion <= nom.FechaNomina)) and (Isnull(y.E' +
        'stado) or y.Estado <> "Pendiente")))'
      ''
      'inner join '
      '  nom_nominapersonal np '
      '    on (np.IdNomina = nom.IdNomina and '
      '        np.IdPersonal = per.IdPersonal and '
      '        (:Referencia = -1 or '
      '          (IFNULL(np.Registro, np.Fecha) <= (Select '
      
        '                                               IFNULL(Max(h.Regi' +
        'stro), np.Fecha)'
      '                                             from '
      
        '                                               nom_nominapersona' +
        'l h '
      '                                             where'
      
        '                                               h.IdNomina = nom.' +
        'IdNomina and '
      
        '                                               h.Referencia = :R' +
        'eferencia)'
      '          )'
      '        )'
      '       )'
      ''
      'where '
      
        '  (:personal = -1 or (:personal <> -1 and a.idpersonal = :person' +
        'al)) and'
      '  (:Nomina = -1 or (:Nomina <> -1 and nom.idNomina = :Nomina)) '
      'group by'
      
        '  IF(:Agrupa = '#39'Si'#39', c.IdConcepto, a.IdNomina)                  ' +
        '        '
      '                '
      'order by'
      '  nom.FechaTerminoNomina DESC,'
      '  nom.IdNomina,'
      '  a.IdPersonal,'
      '  c.Orden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CorteOrg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'personal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Nomina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Agrupa'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CorteOrg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'personal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Nomina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Agrupa'
        ParamType = ptUnknown
      end>
  end
  object dsPersonalImss: TDataSource
    DataSet = zPersonalImss
    Left = 584
    Top = 72
  end
end
