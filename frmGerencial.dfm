object frm_Gerencial: Tfrm_Gerencial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Generador de informes'
  ClientHeight = 372
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 372
    Align = alClient
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 11
      Top = 11
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 'Configuraci'#243'n'
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      Height = 233
      Width = 514
      object cxGroupBox3: TcxGroupBox
        Left = 376
        Top = 15
        Align = alRight
        Caption = 'Mostrar'
        ParentFont = False
        TabOrder = 0
        Height = 208
        Width = 135
        object chOingresos: TcxCheckBox
          Left = 43
          Top = 48
          Caption = 'Ingresos'
          ParentFont = False
          Properties.OnChange = chOingresosPropertiesChange
          State = cbsChecked
          TabOrder = 0
          Transparent = True
          Width = 121
        end
        object chOegresos: TcxCheckBox
          Left = 43
          Top = 65
          Caption = 'Egresos'
          ParentFont = False
          Properties.OnChange = chOegresosPropertiesChange
          State = cbsChecked
          TabOrder = 1
          Transparent = True
          Width = 121
        end
        object chOcomp: TcxCheckBox
          Left = 43
          Top = 83
          Caption = 'Comparaci'#243'n'
          ParentFont = False
          Properties.OnChange = chOcompPropertiesChange
          State = cbsChecked
          TabOrder = 2
          Transparent = True
          Width = 121
        end
        object chgrafica: TcxCheckBox
          Left = 27
          Top = 100
          Caption = 'Graficas'
          ParentFont = False
          Properties.OnChange = chgraficaPropertiesChange
          State = cbsChecked
          TabOrder = 3
          Transparent = True
          Width = 121
        end
        object chdetalles: TcxCheckBox
          Left = 27
          Top = 118
          Caption = 'Detalles'
          ParentFont = False
          Properties.OnChange = chdetallesPropertiesChange
          State = cbsChecked
          TabOrder = 4
          Transparent = True
          Width = 121
        end
        object chotros: TcxCheckBox
          Left = 27
          Top = 32
          Caption = 'Otros'
          ParentFont = False
          Properties.OnChange = chotrosPropertiesChange
          State = cbsChecked
          TabOrder = 5
          Transparent = True
          Width = 121
        end
        object chtodo: TcxCheckBox
          Left = 11
          Top = 14
          Caption = 'Todo'
          ParentFont = False
          Properties.OnChange = chtodoPropertiesChange
          State = cbsChecked
          TabOrder = 6
          Transparent = True
          Width = 121
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 3
        Top = 15
        Align = alLeft
        Caption = 'Filtros'
        ParentFont = False
        TabOrder = 1
        Height = 208
        Width = 246
        object cxLabel7: TcxLabel
          Left = 6
          Top = 21
          Caption = 'Fecha de Inicio'
          ParentFont = False
          Style.TextColor = clBlack
        end
        object cxdeFechaI: TcxDateEdit
          Left = 113
          Top = 20
          ParentFont = False
          TabOrder = 1
          Width = 121
        end
        object cxdeFechaF: TcxDateEdit
          Left = 113
          Top = 47
          ParentFont = False
          TabOrder = 2
          Width = 121
        end
        object cxLabel8: TcxLabel
          Left = 6
          Top = 48
          Caption = 'Fecha de Final'
          ParentFont = False
        end
        object cxLabel9: TcxLabel
          Left = 6
          Top = 76
          Caption = 'Monto de Gastos >='
          ParentFont = False
        end
        object cxMonto: TcxCalcEdit
          Left = 113
          Top = 75
          EditValue = 0.000000000000000000
          ParentFont = False
          TabOrder = 5
          Width = 121
        end
        object cxbtnGerencial: TcxButton
          AlignWithMargins = True
          Left = 115
          Top = 167
          Width = 121
          Height = 25
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Caption = 'Generar Reporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = cxbtnGerencialClick
          OptionsImage.ImageIndex = 816
          OptionsImage.Images = frmrepositorio.IconosTodos16
          OptionsImage.Spacing = 5
        end
        object chkFlujoEfectivo: TCheckBox
          Left = 83
          Top = 113
          Width = 153
          Height = 24
          Caption = 'Fujo de Efectivo (Excel)'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 13995347
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object cxAlmCont: TcxComboBox
          Left = 113
          Top = 140
          ParentFont = False
          Properties.Items.Strings = (
            'ALM PRINCIPAL'
            'CONTRATOS')
          TabOrder = 8
          Width = 122
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 142
          Caption = 'Selecionar Materiales'
          ParentFont = False
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      AlignWithMargins = True
      Left = 11
      Top = 264
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Caption = 'Proceso de Creacion del Gerencial'
      ParentFont = False
      TabOrder = 0
      Height = 97
      Width = 514
      object cxProgressBar1: TcxProgressBar
        AlignWithMargins = True
        Left = 6
        Top = 65
        Align = alBottom
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 63
        Width = 502
      end
      object cxProgressBar2: TcxProgressBar
        AlignWithMargins = True
        Left = 6
        Top = 23
        Align = alBottom
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 21
        Width = 502
      end
      object cxLabel2: TcxLabel
        AlignWithMargins = True
        Left = 6
        Top = 3
        Margins.Bottom = 0
        Align = alBottom
        Caption = '...'
        ParentFont = False
        Transparent = True
      end
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 6
        Top = 45
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alBottom
        Caption = '...'
        ParentFont = False
      end
    end
  end
  object zq_Ingresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT SUM(te.dImporteTotal+te.dIva) as Monto'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento=:tmo' +
        'v and te.iIdStatus=4) and '
      '(te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object DatoImagen: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT sContrato, bImagen FROM contratos WHERE sContrato=:sContr' +
        'ato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
  end
  object zq_OtrosIngresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT tm.sDescripcion as tipo, SUM(oi.fMonto) as monto'
      'FROM con_otrosingresos oi'
      'INNER JOIN con_tipodemov tm on (oi.iTipo=tm.iId) '
      
        'WHERE oi.sMovimiento=:mov AND sContrato=:sContrato and (oi.dFech' +
        'a >= :FechaI and oi.dFecha <= :FechaF)'
      'GROUP BY oi.iTipo'
      'ORDER BY tm.sDescripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_OtrosIngEng: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT tm.sDescripcion as tipo, '
      
        'IFNULL((select sum(oi2.fMonto) from con_otrosingresos oi2 where ' +
        'oi.iTipo=oi2.iTipo and sMovimiento='#39'Ingreso'#39
      
        #9#9'and (oi2.dFecha >= :FechaI and oi2.dFecha <= :FechaF)),0) as I' +
        'ngreso,'
      
        'IFNULL((select sum(oi2.fMonto) from con_otrosingresos oi2 where ' +
        'oi.iTipo=oi2.iTipo and sMovimiento='#39'Egreso'#39
      
        #9#9'and (oi2.dFecha >= :FechaI and oi2.dFecha <= :FechaF)),0) as E' +
        'greso '
      'FROM con_otrosingresos oi'
      'INNER JOIN con_tipodemov tm on (oi.iTipo=tm.iId) '
      
        'WHERE sContrato=:sContrato and (oi.dFecha >= :FechaI and oi.dFec' +
        'ha <= :FechaF)'
      'GROUP BY oi.iTipo'
      'ORDER BY tm.sDescripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end>
  end
  object zq_EdoCuenta: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select cb.sNombreCuenta, '
      
        #9'sum(if((te.sTipoMovimiento="DEPOSITO" or te.sTipoMovimiento="TR' +
        'ASPASO")  and (te.iIdStatus=4 or te.iIdStatus=5),(te.dImporteTot' +
        'al+te.dIva),0)) as Ingresos, '
      
        #9'sum(if((te.sTipoMovimiento="GASTOS" or te.sTipoMovimiento="CHEQ' +
        'UE") and te.lComprobado ="Si",((te.dImporteTotal+te.dIva)-(IFNUL' +
        'L(te.dIvaRet,0)+IFNULL(te.dIsrRet,0))),0)) as Egresos'
      'from con_tesoreriaegresos te'
      
        'inner join con_cuentasbancarias cb on (cb.sIdNumeroCuenta = te.s' +
        'IdNumeroCuenta)  '
      
        'where sIdCompaniaConf=:sContrato and (te.dIdFecha >= :FechaI and' +
        ' te.dIdFecha <= :FechaF) '
      'Group By te.sIdNumeroCuenta'
      'Order By cb.sNombreCuenta ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_IngresosD: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT fs.sNombre, te.*, cm.sRazonSocial as Compania'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_facturas_status fs on (te.iIdStatus=fs.iId and fs' +
        '.sNombre<>'#39'TRASPASO'#39')'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'LEFT JOIN `con_companias` cm on (cm.sIdCompania=te.sIdCompania a' +
        'nd cm.sIdCompaniaConf=:sContrato)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento=:tmo' +
        'v) AND '
      
        'te.iIdStatus=:st and (te.dIdFecha >= :FechaI and te.dIdFecha <= ' +
        ':FechaF)'
      'ORDER BY te.dIdFecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'st'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'st'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_EdoCtaD: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select cb.sNombreCuenta, fs.sNombre, te.*'
      'from con_tesoreriaegresos te'
      
        'inner join con_cuentasbancarias cb on (cb.sIdNumeroCuenta = te.s' +
        'IdNumeroCuenta) '
      
        'left join con_facturas_status fs on (te.iIdStatus=fs.iId and fs.' +
        'sNombre<>'#39'TRASPASO'#39') '
      
        'where sIdCompaniaConf=:sContrato and ((te.dIdFecha >= :FechaI an' +
        'd te.dIdFecha <= :FechaF) and ('
      
        #9'((te.sTipoMovimiento="DEPOSITO" or te.sTipoMovimiento="TRASPASO' +
        '")  and (te.iIdStatus=4 or te.iIdStatus=5)) or '
      
        '    ((te.sTipoMovimiento="GASTOS" or te.sTipoMovimiento="CHEQUE"' +
        ') and te.lComprobado ="Si"))) and te.`sIdNumeroCuenta`=:numcta'
      'Order By te.sTipoMovimiento, cb.sNombreCuenta, te.dFechaFactura')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numcta'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numcta'
        ParamType = ptUnknown
      end>
  end
  object zq_NumCta: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select cb.sNombreCuenta, te.sIdNumeroCuenta'
      'from con_tesoreriaegresos te'
      
        'inner join con_cuentasbancarias cb on (cb.sIdNumeroCuenta = te.s' +
        'IdNumeroCuenta)  '
      
        'where sIdCompaniaConf=:sContrato and ((te.dIdFecha >= :FechaI an' +
        'd te.dIdFecha <= :FechaF) and ('
      
        #9'((te.sTipoMovimiento="DEPOSITO" or te.sTipoMovimiento="TRASPASO' +
        '")  and (te.iIdStatus=4 or te.iIdStatus=5)) or '
      
        '    ((te.sTipoMovimiento="GASTOS" or te.sTipoMovimiento="CHEQUE"' +
        ') and te.lComprobado ="Si"))) '
      'Group By te.sIdNumeroCuenta'
      'Order By cb.sNombreCuenta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_Egresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT te.lComprobado, SUM(te.dImporteTotal+te.dIva) as Monto FR' +
        'OM con_tesoreriaegresos te'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'WHERE  (cb.sIdCompaniaConf=:sContrato and (te.sTipoMovimiento="G' +
        'ASTOS" or te.sTipoMovimiento="CHEQUE") and te.dImporteTotal<=:mo' +
        'n) and '
      '(te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF) '
      'GROUP BY te.lComprobado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_EgresosD: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT te.* FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'WHERE  (cb.sIdCompaniaConf=:sContrato and (te.sTipoMovimiento="G' +
        'ASTOS" or te.sTipoMovimiento="CHEQUE") and te.lComprobado=:comp ' +
        'and te.dImporteTotal<=:mon) and '
      '(te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF)'
      'ORDER BY te.dFechaFactura,  te.dIdFecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mon'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_OtrosEgresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT tm.sDescripcion as tipo, SUM(oi.fMonto) as monto'
      'FROM con_otrosingresos oi'
      'INNER JOIN con_tipodemov tm on (oi.iTipo=tm.iId) '
      
        'WHERE oi.sMovimiento=:mov AND sContrato=:sContrato and (oi.dFech' +
        'a >= :FechaI and oi.dFecha <= :FechaF)'
      'GROUP BY oi.iTipo'
      'ORDER BY tm.sDescripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_Facturado: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT fs.sNombre, SUM(te.dImporteTotal+te.dIva) as Monto, te.iI' +
        'dStatus'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_facturas_status fs on (te.iIdStatus=fs.iId and fs' +
        '.sNombre<>'#39'TRASPASO'#39')'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento=:tmo' +
        'v and (te.iIdStatus=1 or te.iIdStatus=4)) and (te.dFechaFactura ' +
        '>= :FechaI and te.dFechaFactura <= :FechaF)'
      'GROUP BY cb.sIdCompaniaConf')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object img: TcxImageList
    Height = 64
    Width = 64
    FormatVersion = 1
    DesignInfo = 9961744
    ImageInfo = <
      item
        Image.Data = {
          36400000424D3640000000000000360000002800000040000000400000000100
          2000000000000040000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          01010101010202020203020202030202020303030305050505080606060A0606
          060A0606060A0606060A0606060A0606060A0606060A0808080C0B0B0B110E0E
          0E150E0E0E160E0E0E160E0E0E160E0E0E160E0E0E160E0E0E160E0E0E160E0E
          0E160E0E0E160E0E0E160E0E0E160E0E0E160E0E0E150B0B0B110808080C0606
          060A0606060A0606060A0606060A0606060A0606060A0606060A050505080303
          0305020202030202020302020203010101020101010100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0101040404060707070B0B0B0B110E0E0E161313131D181818251A1A1A291E1E
          1E2F2525253A2929293F292929402A2A2A412E2E2E47373737563C3C3C5D3C3C
          3C5E3C3C3C5E3C3C3C5E3C3C3C5E3C3C3C5E3C3C3C5E40404063494949725050
          507D5252527F5151517E5151517E5151517E5151517E5151517E5151517E5151
          517E5151517E5151517E5151517E5252527F5050507D49494972404040633C3C
          3C5E3C3C3C5E3C3C3C5E3C3C3C5E3C3C3C5E3C3C3C5E3C3C3C5D373737562E2E
          2E472A2A2A41292929402929293F2525253A1E1E1E2F1A1A1A29181818251313
          131D0E0E0E160B0B0B110707070B040404060101010100000000020202031212
          121C2A2A2A413B3B3B5B4646466D5050507C5959598A626262996666669F6B6B
          6BA6747474B4787878BB797979BC7A7A7ABD7D7D7DC2848484CD888888D38888
          88D4898989D5898989D5898989D5898989D5898989D58A8A8AD78F8F8FDF9393
          93E5949494E6959595E7959595E7959595E7959595E7959595E7959595E79595
          95E7959595E7959595E7959595E7949494E6939393E58F8F8FDF8A8A8AD78989
          89D5898989D5898989D5898989D5898989D5888888D4888888D3848484CD7D7D
          7DC27A7A7ABD797979BC787878BB747474B46B6B6BA66666669F626262995959
          598A5050507C4646466D3B3B3B5B2A2A2A411212121C02020203050505082727
          273D565656856F6F6FAC7D7D7DC2868686D18D8D8DDC939393E4969696E99898
          98ED9C9C9CF29D9D9DF49E9E9EF59F9F9FF79F9F9FF8A0A0A0F9A1A1A1FAA1A1
          A1FBA1A1A1FBA1A1A1FBA2A2A2FCA3A3A3FDA3A3A3FDA3A3A3FDA2A2A2FCA3A3
          A3FDA3A3A3FEA3A3A3FEA3A3A3FEA3A3A3FEA3A3A3FEA3A3A3FEA3A3A3FEA3A3
          A3FEA3A3A3FEA3A3A3FEA3A3A3FEA3A3A3FEA3A3A3FDA2A2A2FCA3A3A3FDA3A3
          A3FDA3A3A3FDA2A2A2FCA1A1A1FBA1A1A1FBA1A1A1FBA1A1A1FAA0A0A0F99F9F
          9FF89F9F9FF79E9E9EF59D9D9DF49C9C9CF2989898ED969696E9939393E48D8D
          8DDC868686D17D7D7DC26F6F6FAC565656852727273D05050508020202031515
          15213030304A424242664E4E4E7A5959598A6363639A686868A16F6F6FAD7775
          76B7797678B87A7679B87F7B7EC1858385CD888888D4898989D5898989D58989
          89D58A8A8AD78F8F8FDF949494E6949494E6959595E7959595E7959595E79595
          95E7959595E7959595E7959595E7959595E7959595E7959595E7959595E79595
          95E7959595E7959595E7959595E7959595E7959595E7959595E7959595E79595
          95E7949494E6949494E68F8F8FDF8A8A8AD7898989D5898989D5898989D58989
          89D5858585CF7F7F7FC57A7A7ABD797979BC777777B96F6F6FAD686868A16363
          639A5959598A4E4E4E7A424242663030304A1515152102020203000000000202
          0203050505080A0A0A0F0E0E0E161313131D181818251A1A1A281D1C1C2C3C51
          447B417956B53F8458C4467958B4475E4F903A3939593C3A3B5A3D3C3D5E3D3C
          3C5E403F4063494949725050507D5252527F5151517E5151517E5151517E5151
          517E5151517E5151517E5151517E5151517E5151517E5151517E5151517E5151
          517E5151517E5151517E5151517E5151517E5151517E5151517E5151517E5151
          517E5252527F5050507D49494972404040633C3C3C5E3C3C3C5E3C3C3C5E3C3C
          3C5D393939583030304B2A2A2A42292929402828283E212121341B1B1B2A1818
          18251313131D0E0E0E160A0A0A0F050505080202020300000000000000000000
          00000000000000000000000000000000000000000000080B09112B9252D32DB1
          5EFF30B160FF31B161FF30B160FF2EB15FFF2BA95AF32F553E7E040504070405
          04070808080D0B0C0B120E0E0E160F0F0F170F0F0F170F0F0F170F0F0F170F0F
          0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F
          0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F0F170F0F
          0F170F0F0F170E0E0E160C0C0C120808080D0707070B0707070B0707070B0707
          070B060606090404040603030304020202030303030401010102010101010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000299B54DE31B364FF33B3
          65FF33B365FF33B365FF33B365FF33B365FF32B364FF2FB362FF2AA35AE91736
          234F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000015502D7231B465FF31B465FF31B4
          65FF31B465FF31B465FF31B465FF31B465FF31B465FF31B465FF31B465FF2FB4
          64FF278D50C9091A102500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002B9D5ADD32B568FF32B568FF32B5
          68FF32B568FF32B568FF32B568FF32B568FF32B568FF32B568FF32B568FF32B5
          68FF31B567FF30B567FF1C6E3E9B020604090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000207040A31B568FF31B568FF31B568FF31B5
          68FF31B568FF31B568FF31B568FF31B568FF31B568FF31B568FF31B568FF31B5
          68FF31B568FF31B568FF31B568FF30B266FB14502E6F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000924153230B86BFF30B86BFF30B86BFF30B8
          6BFF30B86BFF30B86BFF30B86BFF30B86BFF30B86BFF30B86BFF30B86BFF30B8
          6BFF30B86BFF30B86BFF30B86BFF30B86BFF30B86BFF29A35FE20C301C430000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B2A193A2FB96BFF2FB96BFF2FB96BFF2FB9
          6BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2FB9
          6BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2FB96BFF2388
          4FBC05150C1D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A2918392DBA6EFF2DBA6EFF2DBA6EFF2DBA
          6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA
          6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA6EFF2DBA
          6EFF2EBA6EFF1A683E9001020103000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A2A19392EBB6EFF2EBB6EFF2EBB6EFF2EBB
          6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB
          6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB6EFF2EBB
          6EFF2EBB6EFF2EBB6EFF2CB36AF511492B630000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A2A19392DBB71FF2DBB71FF2DBB71FF2DBB
          71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB
          71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF2DBB
          71FF2DBB71FF2DBB71FF2DBB71FF2DBB71FF25A061DA09281836000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A2A19392CBE72FF2CBE72FF2CBE72FF2CBE
          72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE
          72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE
          72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF2CBE72FF1D834EB0030F
          0914000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A2A1A392ABF72FF2ABF72FF2ABF72FF2ABF
          72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF
          72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF
          72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2ABF72FF2BBF72FF2BBF
          72FF16633C840000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000092A1A392BC075FF2BC075FF2BC075FF2BC0
          75FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC0
          75FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC0
          75FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC075FF2BC0
          75FF2BC075FF26B46EEF0E422858000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000092B1A392AC176FF2AC176FF2AC176FF2AC1
          76FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC1
          76FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC1
          76FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC176FF2AC1
          76FF2AC176FF2AC176FF2AC176FF209C5FCF0721152C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000092B1B3929C276FF29C276FF29C276FF29C2
          76FF29C276FF29C276FF29C276FF29C276FF29C276FF29C276FF29C276FF29C2
          76FF29C276FF29C276FF29C276FF29C276FF29C276FF29C276FF29C276FF29C2
          76FF29C276FF29C276FF29C276FF29C276FF29C276FF29C276FF29C276FF29C2
          76FF29C276FF29C276FF29C276FF29C276FF29C276FF197D4EA5020A060D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000092C1B3927C379FF27C379FF27C379FF27C3
          79FF27C379FF27C379FF27C379FF27C379FF27C379FF27C379FF27C379FF27C3
          79FF27C379FF27C379FF27C379FF27C379FF27C379FF27C379FF27C379FF27C3
          79FF27C379FF27C379FF27C379FF27C379FF27C379FF27C379FF27C379FF27C3
          79FF27C379FF27C379FF27C379FF27C379FF27C379FF28C379FF28C179FE135B
          3878000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082C1B3928C37AFF28C37AFF28C37AFF28C3
          7AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C3
          7AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C3
          7AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C3
          7AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C37AFF28C3
          7AFF23B26FE90C3B244C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000092C1B3927C67BFF27C67BFF27C67BFF27C6
          7BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C6
          7BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C6
          7BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C6
          7BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C67BFF27C6
          7BFF27C67BFF27C67BFF1D985EC5051B11220000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082C1C3925C77BFF25C77BFF25C77BFF25C7
          7BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C7
          7BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C7
          7BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C7
          7BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C77BFF25C7
          7BFF25C77BFF25C77BFF26C77BFF26C67BFF17764B9801060408000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082D1C3926C87EFF26C87EFF26C87EFF26C8
          7EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C8
          7EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C8
          7EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C8
          7EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF26C8
          7EFF26C87EFF26C87EFF26C87EFF26C87EFF26C87EFF25C27BF90F55356C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082D1C3925C97FFF25C97FFF25C97FFF25C9
          7FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C9
          7FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C9
          7FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C9
          7FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C9
          7FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C97FFF25C87FFF21B0
          70E009321F3F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082D1C3923CA80FF23CA80FF23CA80FF23CA
          80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA
          80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA
          80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA
          80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA
          80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA80FF23CA
          80FF24C980FF1A935DBA04150D1A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082D1C3924CB81FF24CB81FF24CB81FF24CB
          81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB
          81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB
          81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB
          81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB
          81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB81FF24CB
          81FF24CB81FF24CB81FF24CA80FF1370478D0002010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082D1D3922CC82FF22CC82FF22CC82FF22CC
          82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC
          82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC
          82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC
          82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC
          82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC82FF22CC
          82FF22CC82FF22CC82FF22CC82FF23CC82FF21C07AF1082F1E3B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072D1D3923CD83FF23CD83FF23CD83FF23CD
          83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD
          83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD
          83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD
          83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD
          83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD
          83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD83FF23CD82FF0B432B540000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000082E1E3921CE84FF21CE84FF21CE84FF21CE
          84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE
          84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE
          84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE
          84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE
          84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE
          84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF21CE84FF22CE84FF0627
          1930000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072E1E3922CF85FF22CF85FF22CF85FF22CF
          85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF
          85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF
          85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF
          85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF
          85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF
          85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF22CF85FF1BAD
          6ED5000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072E1E3921D086FF21D086FF21D086FF21D0
          86FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D0
          86FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D0
          86FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D0
          86FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D0
          86FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF21D0
          86FF21D086FF21D086FF21D086FF21D086FF21D086FF21D086FF1FCF85FF20D0
          85FF04180F1D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072E1E391FCF87FF1FCF87FF1FCF87FF1FCF
          87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF
          87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF
          87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF
          87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF
          87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF
          87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1FCF87FF1ECF86FF39D793FF1DCF
          85FF0A3A26470000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072F1E3920D188FF20D188FF20D188FF20D1
          88FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D1
          88FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D1
          88FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D1
          88FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D1
          88FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D188FF20D1
          88FF20D188FF20D188FF20D188FF20D188FF20D188FF1ACF85FF5AE1A5FF1BCF
          85FF07291B310000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072E1F391ED289FF1ED289FF1ED289FF1ED2
          89FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED2
          89FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED2
          89FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED2
          89FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED2
          89FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED289FF1ED2
          89FF1ED289FF1ED289FF1ED289FF1ED289FF1CD187FF2DD58FFF6AE6AEFF17C9
          81F7000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072F1F391FD38AFF1FD38AFF1FD38AFF1FD3
          8AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD3
          8AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD3
          8AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD3
          8AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD3
          8AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD38AFF1FD3
          8AFF1FD38AFF1FD38AFF1FD38AFF1BD288FF1FD28AFF9CF3C6FF1AD087FF125E
          3E70000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000062F1F391FD28BFF1FD28BFF1FD28BFF1FD2
          8BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD2
          8BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD2
          8BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD2
          8BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD2
          8BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD28BFF1FD2
          8BFF1FD28BFF1ED28AFF15D086FF39DA97FFAAF6CCFF2CD691FF169562B50000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000072F1F391DD48CFF1DD48CFF1DD48CFF1DD4
          8CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD4
          8CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD4
          8CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD4
          8CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD4
          8CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD48CFF1DD4
          8BFF17D289FF1ED38CFF84EDBBFF9DF4C6FF20D48CFF138658A2000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000062F1F391ED58DFF1ED58DFF1ED58DFF1ED5
          8DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED5
          8DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED5
          8DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED5
          8DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED5
          8DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1ED58DFF1AD48BFF13D1
          87FF64E5ADFFAFF9CFFF4FE0A3FF11BF7CEA0E412C4C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000062F20391CD68CFF1CD68CFF1CD68CFF1CD6
          8CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD6
          8CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD6
          8CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD6
          8CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1CD6
          8CFF1CD68CFF1CD68CFF1CD68CFF1CD68CFF1AD58CFF11D387FF47DFA0FFADF7
          CEFF6CE8B0FF13D288FF1369477C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063020391DD58EFF1DD58EFF1DD58EFF1DD5
          8EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD5
          8EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD5
          8EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD5
          8EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD58EFF1DD5
          8EFF1DD58EFF1DD58EFF1CD58DFF14D38AFF2BD994FF99F3C5FF8BF0BFFF21D6
          8FFF148C5DA8040D090F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063020391BD78FFF1BD78FFF1BD78FFF1BD7
          8FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD7
          8FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD7
          8FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD7
          8FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD78FFF1BD7
          8FFF1BD78FFF16D58CFF19D58DFF7BECB7FFA7F6CBFF36DD9AFF0EAF72D30A29
          1D30000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063020391CD690FF1CD690FF1CD690FF1CD6
          90FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD6
          90FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD6
          90FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD6
          90FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF1CD690FF18D6
          8EFF10D48AFF5BE5ABFFB1F8CFFF56E4A8FF0BC781F2104D355A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063020391CD88FFF1CD88FFF1CD88FFF1CD8
          8FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD8
          8FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD8
          8FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD8
          8FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1CD88FFF1AD78FFF11D58BFF3EDE
          9EFFAAF7CCFF75ECB5FF13D48DFF12724D870000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063020391AD791FF1AD791FF1AD791FF1AD7
          91FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD7
          91FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD7
          91FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD791FF1AD7
          91FF1AD791FF1AD791FF1AD791FF1AD790FF13D68DFF25DA94FF91F1C2FF94F3
          C3FF24DA94FF119865B405120D15000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063020391BD990FF1BD990FF1BD990FF1BD9
          90FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD9
          90FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD9
          90FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD990FF1BD9
          90FF1BD990FF1AD990FF16D88EFF15D68FFF72EBB5FFAAF8CDFF3EE0A0FF0CB7
          77DB0C33243B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063120391BD892FF1BD892FF1BD892FF1BD8
          92FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD8
          92FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD8
          92FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD892FF1BD8
          92FF18D890FF0FD58CFF53E5A9FFB0F8CFFF5EE7ACFF0CCF87F711593D670000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063021391BDA91FF1BDA91FF1BDA91FF1BDA
          91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA
          91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA
          91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF1BDA91FF19D991FF11D7
          8DFF34DF9DFFA5F6CAFF7DEEBAFF17D890FF107E549301040305000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000630203919DA93FF19DA93FF19DA93FF19DA
          93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA
          93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA93FF19DA
          93FF19DA93FF19DA93FF19DA93FF19DA93FF19D992FF13D890FF1EDA94FF89F1
          BFFF9DF5C7FF28DC98FF0EA36CC0071B131F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063121391AD992FF1AD992FF1AD992FF1AD9
          92FF1AD992FF1AD992FF1AD992FF1AD992FF1AD992FF1AD992FF1AD992FF1AD9
          92FF1AD992FF1AD992FF1AD992FF1AD992FF1AD992FF1AD992FF1AD992FF1AD9
          92FF1AD992FF1AD992FF1AD992FF15D991FF11D78FFF69EAB2FFAFF7CEFF45E3
          A4FF0BC07FE50C3D2A4600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063121391ADB94FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF17DA93FF0DD88FFF4AE4A6FFAFF9CFFF64E9B0FF0DD48CFC1063
          4573000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000631213919DB93FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF18DA
          93FF11D990FF2DDD9BFFA0F5C8FF84EFBEFF1ADA94FF11895C9F0209060A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000063121391DDA94FF19DB93FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF19DB93FF13D991FF1ADA
          94FF80EFBBFFA2F6CAFF30DE9BFF0EAD73CB0923192800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000073122392ADD99FF17DA93FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF16DA92FF0FD78FFF61E8AFFFAFF9
          CFFF4EE4A8FF0CC783EC0E473252000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000831223926DD98FF28DC99FF18DA93FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB
          94FF1ADB94FF1ADB94FF18DA93FF0ED88FFF41E2A3FFACF7CDFF6EEBB4FF0FD8
          8FFF126D4B7E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000730213815DA92FF4AE4A6FF16DA92FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB
          94FF19DA93FF11D990FF26DC98FF97F3C5FF8DF2C1FF1FDA95FF109262AB040F
          0B11000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000318101C14DA91FF65E9B0FF11D990FF1ADB
          94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF19DB94FF14D9
          91FF15D891FF77ECB9FFA9F7CCFF35E09EFF0CB478D60A2C1F32000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000014D38DF74BE4A8FF4CE4A6FF12D9
          90FF1ADB94FF1ADB94FF1ADB94FF1ADB94FF19DB94FF15DA92FF0FD88EFF58E7
          ABFFB0F9CFFF57E7ABFF09CD85F31152395E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000012885C9E0FD88FFF8EF2C2FF52E5
          A9FF0CD88EFF13D991FF13D991FF12D990FF0FD88EFF46E3A5FFA7F7CCFF77EC
          B9FF13D890FF1177528B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000003140E1718DA93FF12D991FF81EF
          BBFFACF8CEFF7AECB9FF73EBB7FF87F1BFFFB4F9D1FF84F0BDFF25DC98FF0E9C
          68B7061610190000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000A442E4F18DA93FF11D9
          90FF22DC96FF4EE5A8FF54E6ABFF42E2A3FF15D992FF0FBA7CDC0C36263E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000041E1423128F
          60A716C585E715D891FD13C181E2128F60A60D3E2B4700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object zq_Pendiente: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT SUM(te.dImporteTotal+te.dIva) as Monto'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_facturas_status fs on (te.iIdStatus=fs.iId and fs' +
        '.sNombre<>'#39'TRASPASO'#39')'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento=:tmo' +
        'v and '
      
        '(te.iIdStatus=1 or (te.iIdStatus=4 and (YEAR(te.dIdFecha)>=YEAR(' +
        'te.dFechaFactura) and MONTH(te.dIdFecha)>MONTH(te.dFechaFactura)' +
        ')))) '
      
        'and (te.dFechaFactura >= :FechaI and te.dFechaFactura <= :FechaF' +
        ')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_PendientesD: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT fs.sNombre, te.*, cm.sRazonSocial as Compania'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_facturas_status fs on (te.iIdStatus=fs.iId and fs' +
        '.sNombre<>'#39'TRASPASO'#39')'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'LEFT JOIN `con_companias` cm on (cm.sIdCompania=te.sIdCompania a' +
        'nd cm.sIdCompaniaConf=:sContrato)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento=:tmo' +
        'v and '
      
        '(te.iIdStatus=1 or (te.iIdStatus=4 and (YEAR(te.dIdFecha)>=YEAR(' +
        'te.dFechaFactura) and MONTH(te.dIdFecha)>MONTH(te.dFechaFactura)' +
        ')))) '
      
        'and (te.dFechaFactura >= :FechaI and te.dFechaFactura <= :FechaF' +
        ')'
      'ORDER BY te.dFechaFactura')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tmov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_IngGral: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT SUM(te.dImporteTotal+te.dIva) as Monto, MONTH(te.dIdFecha' +
        ') as mes'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento="DEP' +
        'OSITO" and te.iIdStatus=4) and '
      '(te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF)'
      'GROUP BY MONTH(te.dIdFecha)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_FacGral: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT SUM(te.dImporteTotal+te.dIva) as Monto, MONTH(te.dFechaFa' +
        'ctura) as mes'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_facturas_status fs on (te.iIdStatus=fs.iId and fs' +
        '.sNombre<>'#39'TRASPASO'#39')'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento="DEP' +
        'OSITO" and (te.iIdStatus=1 or te.iIdStatus=4)) and (te.dFechaFac' +
        'tura >= :FechaI and te.dFechaFactura <= :FechaF)'
      'GROUP BY cb.sIdCompaniaConf, MONTH(te.dFechaFactura)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
  object zq_statusfacturas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM con_facturas_status;')
    Params = <>
    Left = 304
    Top = 215
    object zq_statusfacturasiId: TIntegerField
      FieldName = 'iId'
    end
    object zq_statusfacturassNombre: TStringField
      FieldName = 'sNombre'
      Size = 100
    end
  end
  object zq_Graficas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT te.sIdCompania, co.sRazonSocial, SUM(te.dImporteTotal+te.' +
        'dIva) as Monto, te.iIdStatus, fs.sNombre'
      'FROM con_tesoreriaegresos te'
      
        'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sId' +
        'NumeroCuenta)'
      'INNER JOIN con_companias co on (co.sIdCompania=te.sIdCompania)'
      'INNER JOIN con_facturas_status fs on (fs.iId=te.iIdStatus)'
      
        'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento="DEP' +
        'OSITO" and te.iIdStatus=:estatus) and '
      '(te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF)'
      'GROUP BY te.sIdCompania'
      'ORDER BY te.sIdCompania')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estatus'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
    Left = 338
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estatus'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaF'
        ParamType = ptUnknown
      end>
  end
end
