object frmEstimacionRecursosPT: TfrmEstimacionRecursosPT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = '  R E C U R S O S    P. T.    C O N V E N I O  [ '
  ClientHeight = 447
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CmdCancel: TButton
    Left = 631
    Top = 415
    Width = 90
    Height = 25
    Cancel = True
    Caption = 'Cerrar'
    Default = True
    ModalResult = 2
    TabOrder = 0
    OnClick = CmdCancelClick
  end
  object GrupoEstimacion: TGroupBox
    Left = 8
    Top = 5
    Width = 713
    Height = 404
    Caption = 'D e t a l l e   d e   R e c u r s o s'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object DBGrid_Convenios: TDBGrid
      Left = 5
      Top = 28
      Width = 702
      Height = 365
      Color = 15138559
      DataSource = ds_recursos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = clInactiveCaptionText
          Expanded = False
          FieldName = 'sAnexo'
          Title.Alignment = taCenter
          Title.Caption = 'Anexo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sNumeroActividad'
          Title.Alignment = taCenter
          Title.Caption = 'Partida'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mDescripcion'
          Title.Alignment = taCenter
          Title.Caption = 'Descripcion'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 433
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dCantidad'
          Title.Alignment = taCenter
          Title.Caption = 'Cantidad'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 72
          Visible = True
        end>
    end
  end
  object ds_recursos: TDataSource
    AutoEdit = False
    DataSet = rxRecursos
    Left = 55
    Top = 415
  end
  object rxRecursos: TRxMemoryData
    FieldDefs = <>
    Left = 88
    Top = 416
    object rxRecursossContrato: TStringField
      Alignment = taCenter
      FieldName = 'sContrato'
    end
    object rxRecursossAnexo: TStringField
      Alignment = taCenter
      FieldName = 'sAnexo'
    end
    object rxRecursossNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
    end
    object rxRecursosmDescripcion: TStringField
      FieldName = 'mDescripcion'
      Size = 200
    end
    object rxRecursosdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
  end
end
