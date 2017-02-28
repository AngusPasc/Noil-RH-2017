object frm_Agrega: Tfrm_Agrega
  Left = 549
  Top = 290
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agregar Personal'
  ClientHeight = 366
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object lblNombre: TLabel
    Left = 68
    Top = 8
    Width = 49
    Height = 13
    Caption = 'Nombres :'
  end
  object lblApPaterno: TLabel
    Left = 32
    Top = 31
    Width = 85
    Height = 13
    Caption = 'Apellido Paterno :'
  end
  object lblApMaterno: TLabel
    Left = 30
    Top = 54
    Width = 87
    Height = 13
    Caption = 'Apellido Materno :'
  end
  object lblDomicilio: TLabel
    Left = 70
    Top = 98
    Width = 47
    Height = 13
    Caption = 'Domicilio :'
  end
  object lblCiudad: TLabel
    Left = 77
    Top = 120
    Width = 40
    Height = 13
    Caption = 'Ciudad :'
  end
  object lblTel: TLabel
    Left = 68
    Top = 143
    Width = 49
    Height = 13
    Caption = 'Telefono :'
  end
  object lblEmail: TLabel
    Left = 82
    Top = 167
    Width = 35
    Height = 13
    Caption = 'E-mail :'
  end
  object lblcurp: TLabel
    Left = 83
    Top = 191
    Width = 34
    Height = 13
    Caption = 'CURP :'
  end
  object lblIMSS: TLabel
    Left = 86
    Top = 214
    Width = 31
    Height = 13
    Caption = 'IMSS :'
  end
  object lblNacionalidad: TLabel
    Left = 50
    Top = 237
    Width = 67
    Height = 13
    Caption = 'Nacionalidad :'
  end
  object lblEstadoCivil: TLabel
    Left = 55
    Top = 260
    Width = 62
    Height = 13
    Caption = 'Estado Civil :'
  end
  object lblFNacimiento: TLabel
    Left = 26
    Top = 282
    Width = 91
    Height = 13
    Caption = 'Fecha Nacimiento :'
  end
  object lblLNacimiento: TLabel
    Left = 13
    Top = 304
    Width = 104
    Height = 13
    Caption = 'Lugar de Nacimiento :'
  end
  object lblEdad: TLabel
    Left = 86
    Top = 76
    Width = 31
    Height = 13
    Caption = 'Edad :'
  end
  object edtNombres: TEdit
    Left = 124
    Top = 8
    Width = 303
    Height = 21
    TabOrder = 0
  end
  object edtApPaterno: TEdit
    Left = 124
    Top = 31
    Width = 303
    Height = 21
    TabOrder = 1
  end
  object edtApMaterno: TEdit
    Left = 124
    Top = 54
    Width = 303
    Height = 21
    TabOrder = 2
  end
  object edtDomicilio: TEdit
    Left = 124
    Top = 98
    Width = 303
    Height = 21
    TabOrder = 3
  end
  object edtCiudad: TEdit
    Left = 124
    Top = 120
    Width = 303
    Height = 21
    TabOrder = 4
  end
  object edtTelefono: TEdit
    Left = 124
    Top = 144
    Width = 303
    Height = 21
    TabOrder = 5
  end
  object edtEMail: TEdit
    Left = 124
    Top = 167
    Width = 303
    Height = 21
    TabOrder = 6
  end
  object edtCURP: TEdit
    Left = 124
    Top = 191
    Width = 303
    Height = 21
    TabOrder = 7
  end
  object edtIMSS: TEdit
    Left = 124
    Top = 214
    Width = 303
    Height = 21
    TabOrder = 8
  end
  object edtNacionalidad: TEdit
    Left = 124
    Top = 237
    Width = 303
    Height = 21
    TabOrder = 9
  end
  object edtEcivil: TEdit
    Left = 124
    Top = 260
    Width = 303
    Height = 21
    TabOrder = 10
  end
  object edtFNacimiento: TEdit
    Left = 124
    Top = 282
    Width = 303
    Height = 21
    TabOrder = 11
  end
  object edtLNacimiento: TEdit
    Left = 124
    Top = 304
    Width = 303
    Height = 21
    TabOrder = 12
  end
  object edtEdad: TEdit
    Left = 124
    Top = 76
    Width = 303
    Height = 21
    TabOrder = 13
  end
  object btnAceptar: TButton
    Left = 98
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Agregar'
    TabOrder = 14
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton
    Left = 224
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 15
    OnClick = btnCancelarClick
  end
end
