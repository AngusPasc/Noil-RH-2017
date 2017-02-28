object frmPopUpPaquetes_e: TfrmPopUpPaquetes_e
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Importando Anexo C'
  ClientHeight = 102
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
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 43
    Height = 13
    Caption = 'Pernocta'
  end
  object Label1: TLabel
    Left = 6
    Top = 10
    Width = 60
    Height = 13
    Caption = 'No. Paquete'
  end
  object cmdCancel: TBitBtn
    Left = 159
    Top = 61
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkCancel
  end
  object cmdOk: TBitBtn
    Left = 71
    Top = 61
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object tsNumeroPaquete: TEdit
    Left = 72
    Top = 7
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
    Top = 33
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
  object ds_pernoctan: TDataSource
    AutoEdit = False
    DataSet = Pernoctan
    Left = 104
    Top = 30
  end
  object Pernoctan: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select sDescripcion, sIdPernocta from pernoctan Order By sDescri' +
        'pcion')
    Params = <>
    Left = 144
    Top = 27
  end
end
