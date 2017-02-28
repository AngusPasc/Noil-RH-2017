object frmPopUpPaquetes_p: TfrmPopUpPaquetes_p
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Importando Anexo C'
  ClientHeight = 155
  ClientWidth = 334
  Color = 16697018
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 58
    Height = 13
    Caption = 'Id. Cuadrilla'
  end
  object Label2: TLabel
    Left = 8
    Top = 31
    Width = 43
    Height = 13
    Caption = 'Pernocta'
  end
  object Label9: TLabel
    Left = 8
    Top = 53
    Width = 39
    Height = 13
    Caption = 'Laboran'
  end
  object Label10: TLabel
    Left = 9
    Top = 73
    Width = 54
    Height = 13
    Caption = 'Descripcion'
  end
  object Label11: TLabel
    Left = 8
    Top = 85
    Width = 41
    Height = 13
    Caption = 'Cuadrilla'
  end
  object cmdCancel: TBitBtn
    Left = 159
    Top = 122
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkCancel
  end
  object cmdOk: TBitBtn
    Left = 71
    Top = 122
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object tsNumeroPaquete: TEdit
    Left = 72
    Top = 2
    Width = 113
    Height = 22
    Hint = 'Especificar una id de la cuadrilla.'
    HelpType = htKeyword
    HelpKeyword = 'Introduzca el numero de paquete'
    CharCase = ecUpperCase
    Color = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 15
    ParentFont = False
    TabOrder = 2
  end
  object tsIdPernocta: TRxDBLookupCombo
    Left = 72
    Top = 24
    Width = 256
    Height = 22
    Hint = 'Lugar donde Pernoctan'
    DropDownCount = 8
    Color = 15138559
    EmptyItemColor = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ListStyle = lsDelimited
    LookupField = 'sIdPernocta'
    LookupDisplay = 'sDescripcion'
    LookupSource = ds_pernoctan
    ParentFont = False
    TabOrder = 3
  end
  object tsIdPlataforma: TRxDBLookupCombo
    Left = 72
    Top = 46
    Width = 256
    Height = 22
    Hint = 'Plataforma donde laboran'
    DropDownCount = 8
    Color = 15138559
    EmptyItemColor = 15138559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ListStyle = lsDelimited
    LookupField = 'sIdPlataforma'
    LookupDisplay = 'sDescripcion'
    LookupSource = ds_Plataformas
    ParentFont = False
    TabOrder = 4
  end
  object edDescripcion: TMemo
    Left = 72
    Top = 72
    Width = 256
    Height = 44
    Hint = 'Agregar una descripci'#243'n general de la cuadrilla.'
    Color = 15138559
    TabOrder = 5
  end
  object ds_pernoctan: TDataSource
    AutoEdit = False
    DataSet = Pernoctan
    Left = 104
    Top = 21
  end
  object Pernoctan: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sIdPernocta, sDescripcion from pernoctan Order By sDescri' +
        'pcion')
    Params = <>
    Left = 144
    Top = 18
  end
  object Plataformas: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select sIdPlataforma, sDescripcion from plataformas order by sDe' +
        'scripcion')
    Params = <>
    Left = 144
    Top = 48
  end
  object ds_Plataformas: TDataSource
    AutoEdit = False
    DataSet = Plataformas
    Left = 104
    Top = 46
  end
end
