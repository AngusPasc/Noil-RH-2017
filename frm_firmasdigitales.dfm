object frmFirmasDigitales: TfrmFirmasDigitales
  Left = 0
  Top = 0
  Caption = 'Firmantes'
  ClientHeight = 431
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 450
    Top = 0
    Width = 508
    Height = 431
    Align = alClient
    DisplayStyle = dsPanelOnly
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 1
    FullWidth = 508
    object grpInfFirmante: TcxGroupBox
      AlignWithMargins = True
      Left = 12
      Top = 8
      Align = alTop
      Caption = 'Firmante'
      ParentFont = False
      TabOrder = 0
      Height = 105
      Width = 483
      object Label1: TLabel
        Left = 16
        Top = 21
        Width = 97
        Height = 13
        Caption = 'Nombre del firmante'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 93
        Height = 13
        Caption = 'Puesto del firmante'
      end
      object dbFirmante: TcxDBTextEdit
        Left = 152
        Top = 18
        DataBinding.DataField = 'sIdNombre'
        DataBinding.DataSource = dsFirmante
        ParentFont = False
        Style.Color = 16774120
        TabOrder = 0
        OnEnter = dbFirmanteEnter
        OnExit = dbFirmanteExit
        OnKeyPress = dbFirmanteKeyPress
        Width = 310
      end
      object dbPuesto: TcxDBTextEdit
        Left = 152
        Top = 45
        DataBinding.DataField = 'sPuesto'
        DataBinding.DataSource = dsFirmante
        ParentFont = False
        Style.Color = 16774120
        TabOrder = 1
        OnEnter = dbFirmanteEnter
        OnExit = dbFirmanteExit
        Width = 310
      end
    end
    object grpImgFirmante: TcxGroupBox
      AlignWithMargins = True
      Left = 12
      Top = 119
      Align = alClient
      Caption = 'Firma digital'
      ParentFont = False
      TabOrder = 1
      Height = 303
      Width = 483
      object bImagen: TImage
        Left = 3
        Top = 15
        Width = 477
        Height = 278
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
        OnClick = bImagenClick
        ExplicitTop = 22
      end
    end
  end
  object cxGridFirmantes: TcxGrid
    AlignWithMargins = True
    Left = 73
    Top = 3
    Width = 374
    Height = 425
    Align = alLeft
    TabOrder = 0
    object GridFirmantes: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFirmante
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object GridFirmantessFirmante1: TcxGridDBColumn
        Caption = 'Firmantes'
        DataBinding.FieldName = 'sIdNombre'
        HeaderAlignmentHorz = taCenter
        Width = 180
      end
      object GridFirmantesColumn1: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'sPuesto'
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
    end
    object grdFirLvl: TcxGridLevel
      GridView = GridFirmantes
    end
  end
  inline frmBarra2: TfrmBarra
    Left = 0
    Top = 0
    Width = 70
    Height = 431
    Margins.Right = 5
    VertScrollBar.Style = ssHotTrack
    Align = alLeft
    Color = 13683905
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 70
    ExplicitHeight = 431
    inherited AdvPanel1: TAdvPanel
      Width = 70
      Height = 431
      ExplicitWidth = 70
      ExplicitHeight = 431
      FullHeight = 0
      inherited btnExit: TcxButton [0]
        Left = 2
        Top = 145
        Hint = 'Salir'
        TabStop = False
        OnClick = btnExitClick
        ExplicitLeft = 2
        ExplicitTop = 145
      end
      inherited btnRefresh: TcxButton [1]
        Left = 2
        Top = 121
        Hint = 'Refrescar datos'
        TabStop = False
        OnClick = btnRefreshClick
        ExplicitLeft = 2
        ExplicitTop = 121
      end
      inherited btnPrinter: TcxButton [2]
        Top = 183
        Width = 63
        TabStop = False
        Visible = False
        ExplicitTop = 183
        ExplicitWidth = 63
      end
      inherited btnEdit: TcxButton [3]
        Left = 2
        Top = 24
        TabStop = False
        OnClick = btnEditClick
        ExplicitLeft = 2
        ExplicitTop = 24
      end
      inherited btnPost: TcxButton [4]
        Left = 2
        Top = 48
        TabStop = False
        OnClick = btnPostClick
        ExplicitLeft = 2
        ExplicitTop = 48
      end
      inherited btnCancel: TcxButton [5]
        Left = 2
        Top = 72
        TabStop = False
        OnClick = btnCancelClick
        ExplicitLeft = 2
        ExplicitTop = 72
      end
      inherited btnDelete: TcxButton [6]
        Left = 2
        Top = 96
        Height = 26
        TabStop = False
        OnClick = btnDeleteClick
        ExplicitLeft = 2
        ExplicitTop = 96
        ExplicitHeight = 26
      end
      inherited btnAdd: TcxButton
        Left = 2
        Top = 0
        TabStop = False
        OnClick = btnAddClick
        ExplicitLeft = 2
        ExplicitTop = 0
      end
    end
    inherited IconosBarra: TcxImageList
      FormatVersion = 1
    end
    inherited dxbrmngrPrincipal: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        0)
    end
  end
  object dsFirmante: TDataSource
    DataSet = qrFirmante
    Left = 8
    Top = 184
  end
  object qrFirmante: TZQuery
    Connection = connection.zConnection
    AfterScroll = qrFirmanteAfterScroll
    SQL.Strings = (
      'select * from firmantesdigital')
    Params = <>
    Left = 40
    Top = 184
    object qrFirmantesIdNombre: TStringField
      FieldName = 'sIdNombre'
      Required = True
      Size = 100
    end
    object qrFirmantesPuesto: TStringField
      FieldName = 'sPuesto'
      Size = 100
    end
    object qrFirmantebFirma: TBlobField
      FieldName = 'bFirma'
      ReadOnly = True
    end
  end
  object OpenPicture: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 72
    Top = 184
  end
end
