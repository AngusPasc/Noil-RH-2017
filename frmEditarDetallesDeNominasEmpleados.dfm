object frm_EditarDetallesDeNominasEmpleados: Tfrm_EditarDetallesDeNominasEmpleados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'N'#243'minas'
  ClientHeight = 200
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 227
    Height = 15
    Caption = 'AJUSTAR DETALLES PARA %NOMBRE%:'
    FocusControl = tsNombre
    Transparent = True
  end
  object Label1: TLabel
    Left = 8
    Top = 31
    Width = 131
    Height = 15
    Caption = 'Descripci'#243'n de %tipo%:'
    FocusControl = tsNombre
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 57
    Width = 53
    Height = 15
    Caption = 'Cantidad:'
    FocusControl = tsNombre
    Transparent = True
  end
  object Label3: TLabel
    Left = 8
    Top = 84
    Width = 45
    Height = 15
    Caption = 'Importe:'
    FocusControl = tsNombre
    Transparent = True
  end
  object Label5: TLabel
    Left = 153
    Top = 108
    Width = 45
    Height = 15
    Caption = 'Total:   $'
    Transparent = True
  end
  object LabelTotal: TLabel
    Left = 202
    Top = 108
    Width = 48
    Height = 15
    Caption = '%Total%'
    Transparent = True
  end
  object tsNombre: TDBEdit
    Left = 153
    Top = 27
    Width = 159
    Height = 23
    CharCase = ecUpperCase
    Color = 11009259
    DataField = 'sDescripcion'
    DataSource = frm_DetallesNominasEmpleados.ds_Query
    TabOrder = 0
    OnKeyPress = SiguienteCajon
  end
  object btnPost: TBitBtn
    Left = 153
    Top = 163
    Width = 75
    Height = 25
    Hint = 'Salvar cambios (F10)'
    Align = alCustom
    Caption = 'Grabar'
    ModalResult = 1
    TabOrder = 4
    OnClick = frmBarra1btnPostClick
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
    Left = 237
    Top = 163
    Width = 75
    Height = 25
    Hint = 'Cancelar cambios (F12)'
    Align = alCustom
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 5
    OnClick = frmBarra1btnCancelClick
    Glyph.Data = {
      42040000424D4204000000000000420000002800000010000000100000000100
      20000300000000040000120B0000120B00000000000000000000000000FF0000
      FF0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7DCBA00F2C58C00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6DBB900EBAF6400EBAF6400FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00F4D9B800E7AB6100FFE59900E7AB6100FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00F2D7B600E3A75D00FFE59900FDD78B00E3A75D00E3
      A75D00E3A75D00E3A75D00E3A75D00E3A85F00E7B27200EEC99B00FAF1E600FF
      FFFF00FFFFFF00F3DEC500DEA25A00FFE49800F4BE7200F6C77B00F8CF8300F8
      CF8300F8CE8200F8CE8200F8CD8100F8CD8100F5C97E00EDBB7100E2AC6800F4
      E1CA00FFFFFF00F1DCC300D99D5600F7CB7F00EFB46800F3BF7300F6CA7E00F6
      C97D00F6C87C00F6C87C00F6C77B00F5C47800F1BB6F00F1B86C00F0BF7400DE
      A76500F9F0E500FFFFFF00ECD1B100D4985200F5C77B00F5C77B00D4985200D4
      985200D4985200D4985200D4985200D69C5500DDA96000DDA85A00D99F5000DF
      AA5F00E4BF9400FFFFFF00FFFFFF00E9CEB000CD924E00EABD7300CD924E00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00F9F1E800DDB58700D9A25700DB9E3E00E0
      A85000D4A06500FFFFFF00FFFFFF00FFFFFF00E6CBAD00C88C4900C88C4900FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F0E700CB904B00E8AC3900E9
      AD3A00C88D4B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4C9AC00D3A67400FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EFE600C78B4500F3B12600F3
      B12700C4884700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00F6EEE600D3AA7F00D89A3600FCB20C00F1
      AE1F00C6915A00FFFFFF00FFFFFF00CA9D6E00B97D3D00B97D3D00B97D3D00B9
      7D3D00B97D3D00B97D3D00B97D3D00BF823B00D6973000FBB41000FFB30400DB
      992A00D4AE8700FFFFFF00FFFFFF00B4783A00FFCD5000FFC33200FFC12C00FF
      BF2600FFBC1E00FFBA1800FFB81200FFB70E00FFB40600FFB30300ECA61900BD
      854600F3EAE000FFFFFF00FFFFFF00B0743700FFC02B00FFB81200FFB81100FF
      B70F00FFB70E00FFB60C00FFB60B00FEB40A00F2AB1200D5932200BA814300E6
      D3C000FFFFFF00FFFFFF00FFFFFF00C1946800AD713500AD713500AD713500AD
      713500AD713500AD713500AD713500AD723700B7834E00CCA78200F2E9DF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF}
  end
  object tdCantidad: TDBEdit
    Left = 153
    Top = 54
    Width = 159
    Height = 23
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'dCantidad'
    DataSource = frm_DetallesNominasEmpleados.ds_Query
    TabOrder = 1
    OnChange = tdCantidadChange
    OnKeyPress = SiguienteCajon
  end
  object tdImporte: TDBEdit
    Left = 153
    Top = 81
    Width = 159
    Height = 23
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'dImporte'
    DataSource = frm_DetallesNominasEmpleados.ds_Query
    TabOrder = 2
    OnChange = tdImporteChange
    OnKeyPress = tdImporteKeyPress
  end
  object DBCheckBox1: TDBCheckBox
    Left = 153
    Top = 127
    Width = 159
    Height = 17
    Caption = 'Marcar para Imprimir'
    DataField = 'lImprime'
    DataSource = frm_DetallesNominasEmpleados.ds_Query
    TabOrder = 3
    ValueChecked = 'Si'
    ValueUnchecked = 'No'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 153
    Top = 27
    Width = 159
    Height = 23
    Color = clWhite
    DataField = 'iId_Catalogo'
    DataSource = frm_DetallesNominasEmpleados.ds_Query
    KeyField = 'iId'
    ListField = 'sNombre'
    ListSource = ds_CatalogoDeTipos
    TabOrder = 6
    OnKeyPress = DBLookupComboBox1KeyPress
  end
  object zq_CatalogoDeTipos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'SELECT * FROM nom_catalogodeprestaciones;')
    Params = <>
    Left = 16
    Top = 160
  end
  object ds_CatalogoDeTipos: TDataSource
    AutoEdit = False
    DataSet = zq_CatalogoDeTipos
    Left = 59
    Top = 161
  end
end
