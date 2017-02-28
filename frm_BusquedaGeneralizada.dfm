object frmBusquedaGeneralizada: TfrmBusquedaGeneralizada
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Busqueda'
  ClientHeight = 435
  ClientWidth = 586
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
  object Titulo: TLabel
    Left = 8
    Top = 8
    Width = 318
    Height = 13
    Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
  end
  object GridRegistros: TDBGrid
    Left = 9
    Top = 27
    Width = 569
    Height = 369
    DataSource = Ds
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cmdCancelar: TButton
    Left = 502
    Top = 402
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = cmdCancelarClick
  end
  object cmdAceptar: TButton
    Left = 421
    Top = 402
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 2
    OnClick = cmdAceptarClick
  end
  object Ds: TDataSource
    DataSet = Qry
    Left = 328
    Top = 128
  end
  object Qry: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 296
    Top = 128
  end
end
