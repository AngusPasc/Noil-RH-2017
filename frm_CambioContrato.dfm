object frmCambioContrato: TfrmCambioContrato
  Left = 368
  Top = 213
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cambio de Nombre Contrato'
  ClientHeight = 295
  ClientWidth = 741
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 74
    Height = 14
    Caption = 'Contrato Actual'
  end
  object Label2: TLabel
    Left = 19
    Top = 81
    Width = 75
    Height = 14
    Caption = 'Contrato Nuevo'
  end
  object Progress: TProgressBar
    Left = 0
    Top = 278
    Width = 741
    Height = 17
    Align = alBottom
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 166
    Top = 8
    Width = 539
    Height = 208
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object txtContratoNuevo: TcxTextEdit
    Left = 19
    Top = 101
    ParentFont = False
    TabOrder = 2
    Width = 141
  end
  object txtContratoActual: TcxTextEdit
    Left = 19
    Top = 28
    ParentFont = False
    TabOrder = 3
    Width = 141
  end
  object btProceso: TcxButton
    Left = 272
    Top = 222
    Width = 123
    Height = 41
    Caption = 'Proceso'
    TabOrder = 4
    OnClick = btProcesoClick
  end
  object cxSalir: TcxButton
    Left = 440
    Top = 222
    Width = 123
    Height = 41
    Caption = 'Salir'
    TabOrder = 5
    OnClick = cxSalirClick
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    ScreenSnap = True
    TitleButtons = <>
    Left = 138
    Top = 65533
  end
end
