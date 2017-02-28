object frm_Nomina_CapturaEgresos: Tfrm_Nomina_CapturaEgresos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Seleccionar Egresos'
  ClientHeight = 294
  ClientWidth = 595
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
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    595
    294)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelImporteCaption: TLabel
    Left = 8
    Top = 262
    Width = 139
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = 'Importe para N'#243'mina:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelImporte: TLabel
    Left = 155
    Top = 262
    Width = 69
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '{IMPORTE}'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Cheques'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 118
    Top = 8
    Width = 233
    Height = 17
    Caption = 'Otros (Transferencias, Depositos, Efectivo)'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object GridEgresos: TNextGrid
    Left = 8
    Top = 31
    Width = 579
    Height = 218
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoScroll = True
    Color = clWhite
    Options = [goHeader, goSelectFullRow]
    TabOrder = 2
    TabStop = True
    OnAfterEdit = GridEgresosAfterEdit
    object NxCheckBoxColumn1: TNxCheckBoxColumn
      DefaultWidth = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      ParentFont = False
      Position = 0
      Sorted = True
      SortType = stBoolean
      Width = 30
    end
    object NxTextColumn1: TNxDateColumn
      DefaultValue = '13/03/2013'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Fecha'
      ParentFont = False
      Position = 1
      SortType = stDate
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Folio'
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 50
    end
    object NxTextColumn3: TNxTextColumn
      DefaultWidth = 110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Referencia'
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 110
    end
    object NxTextColumn4: TNxTextColumn
      DefaultWidth = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Descripcion'
      ParentFont = False
      Position = 4
      SortType = stAlphabetic
      Width = 200
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Importe'
      ParentFont = False
      Position = 5
      SortType = stNumeric
      Width = 100
      FormatMask = '$ ###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn5: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Tipo'
      ParentFont = False
      Position = 6
      SortType = stAlphabetic
      Visible = False
    end
  end
  object btnGuardar: TcxButton
    Left = 403
    Top = 256
    Width = 88
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = '&Guardar.'
    TabOrder = 3
    OnClick = BtnGuardarClick
    OptionsImage.ImageIndex = 54
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object btnCancelar: TcxButton
    Left = 499
    Top = 257
    Width = 88
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
    OptionsImage.ImageIndex = 306
    OptionsImage.Images = frmrepositorio.IconosTodos16
  end
  object ds_Egresos: TDataSource
    AutoEdit = False
    DataSet = zq_Egresos
    Left = 83
    Top = 201
  end
  object zq_Egresos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT '
      
        #9'Existe, dIdFecha, iIdFolio, sTipoMovimiento, sReferencia, SUBST' +
        'R(mDescripcion, 1, 254) AS sDesc, ABS(dImporteTotal) AS Importe '
      'FROM ('
      #9'SELECT '
      #9#9'te.*, '
      #9#9'1 AS Existe '
      #9'FROM con_tesoreriaegresos AS te '
      
        #9#9'INNER JOIN nom_egresospornomina AS exn ON (exn.iId_Egreso = te' +
        '.iIdFolio) '
      #9'WHERE '
      #9#9'exn.iId_Nomina = :IdNomina  '
      ''
      #9'UNION '
      ''
      #9'SELECT '
      #9#9'te2.*, '
      #9#9'0 AS Existe '
      #9'FROM con_tesoreriaegresos AS te2 '
      #9'WHERE te2.lComprobado = '#39'No'#39' '
      ') AS cu '
      'WHERE sTipoMovimiento <> '#39'DEPOSITO'#39' '
      'GROUP BY iIdFolio '
      'ORDER BY Existe DESC, dIdFecha DESC;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdNomina'
        ParamType = ptUnknown
      end>
  end
end
