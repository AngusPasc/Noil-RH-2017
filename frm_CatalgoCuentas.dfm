object frmCatalgoCuentas: TfrmCatalgoCuentas
  Left = 0
  Top = 0
  Caption = 'Catalogo de Cuentas'
  ClientHeight = 476
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 271
    Height = 476
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 271
      Height = 476
      Align = alClient
      TabOrder = 0
      object cxDbGridTabla: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCatalogoCuentas
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Haga clic aqu'#237' para definir un filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracDelayed
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxDbGridTablaColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Clave'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxDbGridTablaColumn2: TcxGridDBColumn
          Caption = 'Descripcion'
          DataBinding.FieldName = 'descripcion'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxDbGridTabla
      end
    end
  end
  object Panel2: TPanel
    Left = 271
    Top = 0
    Width = 596
    Height = 476
    Align = alClient
    TabOrder = 1
    object jDbTvCuentas: TJvDBTreeView
      Left = 1
      Top = 1
      Width = 594
      Height = 474
      BevelInner = bvNone
      BevelOuter = bvNone
      DataSource = dsCatalogoCuentas
      MasterField = 'IdMaestroCuentas'
      DetailField = 'IdClaveCC'
      ItemField = 'des'
      UseFilter = False
      PersistentNode = False
      BorderStyle = bsNone
      Indent = 50
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 0
      ParentFont = False
      RowSelect = True
      Mirror = False
    end
  end
  object QCatalogoCuentas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select *, concat(Clave,'#39'.-'#39',descripcion) as des from con_maestro' +
        'cuentas')
    Params = <>
    Left = 376
    Top = 208
  end
  object dsCatalogoCuentas: TDataSource
    AutoEdit = False
    DataSet = QCatalogoCuentas
    Left = 360
    Top = 144
  end
  object QMaestroCuentas: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from con_maestrocuentas')
    Params = <>
    Left = 296
    Top = 352
  end
  object dsMaestroCuentas: TDataSource
    DataSet = QMaestroCuentas
    Left = 296
    Top = 408
  end
end
