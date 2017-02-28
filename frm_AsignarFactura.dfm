object frmAsignarFactura: TfrmAsignarFactura
  Left = 0
  Top = 0
  Caption = 'Asignar Cuenta a Factura'
  ClientHeight = 561
  ClientWidth = 1021
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tvCtasBancarias: TTreeView
    Left = 8
    Top = 8
    Width = 297
    Height = 481
    Color = 16697018
    Indent = 19
    ReadOnly = True
    TabOrder = 0
  end
  object cxgrd1: TcxGrid
    Left = 408
    Top = 8
    Width = 605
    Height = 481
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbgGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsfactpend
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Click Aqui para Definir un Filtro'
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object Grid__fecha: TcxGridDBColumn
        Caption = 'Fecha Factura'
        DataBinding.FieldName = 'dFechaFactura'
        Width = 82
      end
      object Grid_Factura: TcxGridDBColumn
        Caption = 'Factura'
        DataBinding.FieldName = 'iFolio'
        Width = 49
      end
      object Grid_Cliente: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'sIdCompania'
        Width = 91
      end
      object Grid_Status: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'sNombre'
        Width = 75
      end
      object Grid_Cuenta: TcxGridDBColumn
        Caption = 'Num. Cuenta'
        DataBinding.FieldName = 'sIdNumeroCuenta'
        Width = 94
      end
      object Grid_Nombrecuenta: TcxGridDBColumn
        Caption = 'Nombre Cuenta'
        DataBinding.FieldName = 'sNombreCuenta'
        Width = 190
      end
    end
    object dbgGrid1Level1: TcxGridLevel
      GridView = dbgGrid1DBTableView1
    end
  end
  object btnAsigna: TBitBtn
    Left = 308
    Top = 120
    Width = 96
    Height = 41
    Caption = '&Asignar Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnAsignaClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777777777777777777077777707777777700777770
      7777777700077770777777770000777077777777000007707777777700000070
      7777777700000770777777770000777077777777000777707777777700777770
      7777777707777770777777777777777777777777777777777777}
    Layout = blGlyphTop
  end
  object btnDenegar: TBitBtn
    Left = 308
    Top = 160
    Width = 96
    Height = 41
    Caption = '&Asignar Sin Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnDenegarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777777777777777777077777707777777707777700
      7777777707777000777777770777000077777777077000007777777707000000
      7777777707700000777777770777000077777777077770007777777707777700
      7777777707777770777777777777777777777777777777777777}
    Layout = blGlyphTop
  end
  object qryfacturaspend: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select te.dFechaFactura, te.iFolio, te.sIdCompania, te.sIdNumero' +
        'Cuenta, f.sNombre, c.sNombreCuenta from con_tesoreriaegresos te'
      ' INNER JOIN con_cuentasbancarias c'
      'On (c.sIdNumeroCuenta=te.sIdNumeroCuenta)'
      'Inner Join con_facturas_status f On(te.iIdStatus=f.iId) '
      'where c.sIdCompaniaConf=:Empresa'
      'and f.sNombre<>"TRASPASO"'
      'and te.sTipoMovimiento="DEPOSITO" and te.iFolio >0'
      'ORDER by te.dFechaFactura desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Empresa'
        ParamType = ptUnknown
      end>
    Left = 448
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empresa'
        ParamType = ptUnknown
      end>
  end
  object dsfactpend: TDataSource
    DataSet = qryfacturaspend
    Left = 496
    Top = 496
  end
end
