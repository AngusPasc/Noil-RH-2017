object frmRespaldoCompleto: TfrmRespaldoCompleto
  Left = 0
  Top = 0
  Caption = 'Repaldo Completo de BD'
  ClientHeight = 94
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 289
    Height = 94
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 129
    ExplicitWidth = 181
    ExplicitHeight = 273
    object edtPass: TcxTextEdit
      Left = 65
      Top = 10
      ParentFont = False
      Properties.PasswordChar = '*'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 200
    end
    object cxButton1: TcxButton
      Left = 83
      Top = 37
      Width = 109
      Height = 25
      Caption = 'Exportar BD'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahCenter
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Password:'
      Control = edtPass
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dguardar: TSaveDialog
    DefaultExt = '.sql'
    Filter = 'Script Sql|*.sql'
    Left = 8
    Top = 48
  end
end
