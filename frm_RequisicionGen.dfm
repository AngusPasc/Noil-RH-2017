object frmRequisicionGen: TfrmRequisicionGen
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Crear Cotizaci'#243'n'
  ClientHeight = 535
  ClientWidth = 961
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PnlDatos: TPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 45
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 12
      Top = 1
      Caption = 'Requsici'#243'n #:'
      ParentFont = False
    end
    object lbRequsicion: TcxLabel
      Left = 107
      Top = 1
      Caption = '******'
      ParentFont = False
    end
    object cxLabel3: TcxLabel
      Left = 12
      Top = 20
      Caption = 'Fecha Requisici'#243'n:'
      ParentFont = False
    end
    object cxLabel7: TcxLabel
      Left = 628
      Top = -1
      Caption = 'Solciitante:'
      ParentFont = False
    end
    object label1: TcxLabel
      Left = 251
      Top = 1
      Caption = 'Requisitada por:'
      ParentFont = False
    end
    object label2: TcxLabel
      Left = 251
      Top = 20
      Caption = 'Fecha de Entrega Requerida:'
      ParentFont = False
    end
    object lbFechaRequisicion: TcxLabel
      Left = 107
      Top = 20
      Caption = '******'
      ParentFont = False
    end
    object lbSolicitante: TcxLabel
      Left = 688
      Top = -1
      Caption = '******'
      ParentFont = False
    end
    object cxMostrarRequisiciones: TcxCheckBox
      Left = 501
      Top = 18
      Caption = 'Mostrar Lista de Requisiciones'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cxCheckBox1PropertiesEditValueChanged
      TabOrder = 8
      Visible = False
      Width = 268
    end
  end
  object lbRequisitada: TcxLabel
    Left = 402
    Top = 1
    Caption = '******'
    ParentFont = False
  end
  object lbFechaEntrega: TcxLabel
    Left = 401
    Top = 20
    Caption = '******'
    ParentFont = False
  end
  object pcProveedores: TcxPageControl
    Left = 0
    Top = 232
    Width = 961
    Height = 303
    Align = alBottom
    TabOrder = 3
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    OnClick = pcProveedoresClick
    ClientRectBottom = 297
    ClientRectLeft = 2
    ClientRectRight = 955
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = 'Agregar Proveedores para la cotizaci'#243'n'
      ImageIndex = 0
      object Grid_proveedorxrequisicion: TcxGrid
        Left = 0
        Top = 0
        Width = 953
        Height = 269
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object BView_proveedorxrequisicion: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = BView_proveedorxrequisicionNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = ImgBtns
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.ImageIndex = 0
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.ImageIndex = 4
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsZQProveedorxRequisicion
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object BView_proveedorxrequisicionNombre: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'sIdProveedor'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'sIdProveedor'
            Properties.ListColumns = <
              item
                FieldName = 'sRazon'
              end>
            Properties.ListSource = dsZQProveedores
            Options.Editing = False
            Width = 620
          end
          object BView_proveedorxrequisicioniFolioRequisicion: TcxGridDBColumn
            DataBinding.FieldName = 'iFolioRequisicion'
            Visible = False
          end
          object BView_proveedorxrequisicionsIdProveedor: TcxGridDBColumn
            DataBinding.FieldName = 'sIdProveedor'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = BView_proveedorxrequisicion
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Asignacion de Partidas a los Proveedores'
      ImageIndex = 1
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Proveedores'
        ParentFont = False
        TabOrder = 0
        Height = 269
        Width = 377
        object Grid_proveedorxrequisicion2: TcxGrid
          Left = 3
          Top = 15
          Width = 371
          Height = 244
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object BView_proveedorxrequisicion2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Images = ImgBtns
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.ImageIndex = 0
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.ImageIndex = 4
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsZQProveedorxRequisicion
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'ID Proveedor'
              DataBinding.FieldName = 'sIdProveedor'
              Options.Editing = False
              Width = 86
            end
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Nombre'
              DataBinding.FieldName = 'sIdProveedor'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'sIdProveedor'
              Properties.ListColumns = <
                item
                  FieldName = 'sRazon'
                end>
              Properties.ListSource = dsZQProveedores
              Options.Editing = False
              Width = 273
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'iFolioRequisicion'
              Visible = False
              Options.Editing = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = BView_proveedorxrequisicion2
          end
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 383
        Top = 0
        Align = alRight
        Caption = 'Partidas o Articulos'
        ParentFont = False
        TabOrder = 1
        Height = 269
        Width = 570
        object Grid_ArticulosxProveedor: TcxGrid
          Left = 3
          Top = 15
          Width = 564
          Height = 244
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object BView_ArticulosxProveedor: TcxGridDBTableView
            PopupMenu = PM_ArticulosxProveedor
            Navigator.Buttons.OnButtonClick = BView_ArticulosxProveedorNavigatorButtonsButtonClick
            Navigator.Buttons.CustomButtons = <
              item
                Hint = 'Asignar Todos'
                ImageIndex = 724
              end>
            Navigator.Buttons.Images = frmrepositorio.IconosTodos16
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dscdProductos1
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsView.Indicator = True
            object BView_ArticulosxProveedorColumn1: TcxGridDBColumn
              Caption = 'ID Articulo'
              DataBinding.FieldName = 'sIdInsumo'
              Options.Editing = False
              Width = 93
            end
            object BView_ArticulosxProveedormDescripcion: TcxGridDBColumn
              Caption = 'Conceptos'
              DataBinding.FieldName = 'mDescripcion'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Width = 342
            end
            object BView_ArticulosxProveedordCantidad: TcxGridDBColumn
              Caption = 'Cantidad'
              DataBinding.FieldName = 'dCantidad'
              Options.Editing = False
              Width = 59
            end
            object BView_ArticulosxProveedorMarcado: TcxGridDBColumn
              Caption = 'Asignado'
              DataBinding.FieldName = 'Activo'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'Si'
              Properties.ValueUnchecked = 'No'
              Properties.OnEditValueChanged = BView_ArticulosxProveedorMarcadoPropertiesEditValueChanged
              Width = 57
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = BView_ArticulosxProveedor
          end
        end
      end
    end
  end
  object PnlProveedores: TPanel
    Left = 40
    Top = 238
    Width = 192
    Height = 155
    TabOrder = 4
    Visible = False
    object Grid_Proveedores: TcxGrid
      Left = 14
      Top = 48
      Width = 885
      Height = 329
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object BView_Proveedores: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = BView_ProveedoresCellDblClick
        DataController.DataSource = dsZQProveedores
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        object BView_ProveedoressIdProveedor1: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'sIdProveedor'
          Options.Editing = False
          Width = 61
        end
        object BView_ProveedoresColumn1: TcxGridDBColumn
          Caption = 'Nombre Corto'
          DataBinding.FieldName = 'sNombreCorto'
          Width = 74
        end
        object BView_ProveedoressRazon1: TcxGridDBColumn
          Caption = 'Raz'#243'n Social'
          DataBinding.FieldName = 'sRazon'
          Options.Editing = False
          Width = 117
        end
        object BView_ProveedoressDomicilio1: TcxGridDBColumn
          Caption = 'Domicilio'
          DataBinding.FieldName = 'sDomicilio'
          Options.Editing = False
          Width = 131
        end
        object BView_ProveedoressCiudad1: TcxGridDBColumn
          Caption = 'Ciudad'
          DataBinding.FieldName = 'sCiudad'
          Options.Editing = False
          Width = 86
        end
        object BView_ProveedoressEstado1: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'sEstado'
          Options.Editing = False
          Width = 88
        end
        object BView_ProveedoressRfc1: TcxGridDBColumn
          Caption = 'RFC'
          DataBinding.FieldName = 'sRfc'
          Options.Editing = False
          Width = 80
        end
        object BView_ProveedoressTelefono1: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'sTelefono'
          Options.Editing = False
          Width = 118
        end
        object BView_ProveedoressVendedor1: TcxGridDBColumn
          Caption = 'Vendedor'
          DataBinding.FieldName = 'sVendedor'
          Options.Editing = False
          Width = 109
        end
        object BView_ProveedoressEmail1: TcxGridDBColumn
          Caption = 'Email'
          DataBinding.FieldName = 'sEmail'
          Options.Editing = False
          Width = 125
        end
      end
      object Grid_ProveedoresLevel1: TcxGridLevel
        GridView = BView_Proveedores
      end
    end
    object cxLabel2: TcxLabel
      Left = 30
      Top = 17
      Caption = 'De doble click sobre el provedores para que se agregado'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cmdCerrar: TcxButton
      Left = 433
      Top = 383
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      ModalResult = 1
      TabOrder = 2
    end
  end
  object cxGrid1: TcxGrid
    Left = 216
    Top = 83
    Width = 391
    Height = 123
    TabOrder = 5
    Visible = False
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dscdProductosProveedores
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'sIdProveedor'
        Width = 109
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'sIdInsumo'
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'iItem'
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'dCantidad'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 45
    Width = 961
    Height = 181
    Align = alClient
    TabOrder = 6
    object Grid_Partidas: TcxGrid
      Left = 201
      Top = 1
      Width = 759
      Height = 179
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object BView_Partidas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <
          item
          end>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = True
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsanexo_prequisicion
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object BView_PartidasdCantidad: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'dCantidad'
          Options.Editing = False
          Width = 68
        end
        object cxgrdbclmnBView_PartidasColumn1: TcxGridDBColumn
          Caption = 'ID Articulo'
          DataBinding.FieldName = 'sIdInsumo'
          Options.Editing = False
          Width = 101
        end
        object BView_PartidasmDescripcion: TcxGridDBColumn
          Caption = 'Concepto'
          DataBinding.FieldName = 'mDescripcion'
          Options.Editing = False
          Width = 605
        end
        object BView_PartidassMedida: TcxGridDBColumn
          Caption = 'Unidad'
          DataBinding.FieldName = 'sMedida'
          Options.Editing = False
          Width = 51
        end
      end
      object Grid_PartidasLevel1: TcxGridLevel
        GridView = BView_Partidas
      end
    end
    object Grid_Requisiciones: TcxGrid
      Left = 1
      Top = 1
      Width = 200
      Height = 179
      Align = alLeft
      TabOrder = 1
      Visible = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxgrdbtblvwGrid2DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_anexo_requisicion
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'ID Requisicion'
          DataBinding.FieldName = 'sNumFolio'
          Options.Editing = False
        end
      end
      object cxgrdlvlGrid2Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid2DBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 226
    Width = 961
    Height = 6
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = pcProveedores
  end
  object anexo_prequisicion: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'Select a1.*, a.sMedida as sMedidaAnexo, a.dCantidad, a3.iItemOrd' +
        'en, a.dExistencia from anexo_prequisicion a1'
      
        'inner join anexo_requisicion a2  on (a1.sContrato = a2.sContrato' +
        ' And a1.iFolioRequisicion = a2.sNumFolio)'
      
        'left join actividadesxanexo a3 on (a3.sContrato = a1.sContrato a' +
        'nd a3.sIdConvenio =:Convenio'
      
        'and a3.sNumeroActividad = a1.sNumeroActividad and a3.sTipoActivi' +
        'dad ='#39'Actividad'#39'  and a3.swbs = a1.swbs)'
      
        'left join insumos a on (a1.sContrato = a.sContrato And a1.sIdIns' +
        'umo = a.sIdInsumo AND a1.sIdAlmacen = a.sIdAlmacen)'
      'Where a1.sContrato = :Contrato order by a3.iItemOrden'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    Left = 688
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object anexo_prequisicionMarcado: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Marcado'
      Calculated = True
    end
    object anexo_prequisicionsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object anexo_prequisicionsIdInsumo: TStringField
      FieldName = 'sIdInsumo'
      Required = True
      Size = 25
    end
    object anexo_prequisicionsIdAlmacen: TStringField
      FieldName = 'sIdAlmacen'
    end
    object anexo_prequisicioniItem: TIntegerField
      FieldName = 'iItem'
      Required = True
    end
    object anexo_prequisicioniFolioPedido: TIntegerField
      FieldName = 'iFolioPedido'
      Required = True
    end
    object anexo_prequisicionmDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object anexo_prequisicionsMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 8
    end
    object anexo_prequisiciondFechaRequerimiento: TDateField
      FieldName = 'dFechaRequerimiento'
      Required = True
    end
    object anexo_prequisiciondCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
    object anexo_prequisiciondCosto: TFloatField
      FieldName = 'dCosto'
    end
    object anexo_prequisicionsModelo: TStringField
      FieldName = 'sModelo'
      Size = 52
    end
    object anexo_prequisicionsWbs: TStringField
      FieldName = 'sWbs'
      Size = 100
    end
    object anexo_prequisicionsNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Size = 10
    end
    object anexo_prequisicionsNumeroOrden: TStringField
      FieldName = 'sNumeroOrden'
      Size = 35
    end
    object anexo_prequisicionsObservacion: TStringField
      FieldName = 'sObservacion'
      Size = 60
    end
    object anexo_prequisicionsEstado: TStringField
      FieldName = 'sEstado'
      Required = True
      Size = 9
    end
    object anexo_prequisicionsMedidaAnexo: TStringField
      FieldName = 'sMedidaAnexo'
      Required = True
      Size = 8
    end
    object anexo_prequisiciondCantidad_1: TFloatField
      FieldName = 'dCantidad_1'
      Required = True
    end
    object anexo_prequisicioniItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 200
    end
    object anexo_prequisiciondExistencia: TFloatField
      FieldName = 'dExistencia'
    end
    object anexo_prequisicioniFolioRequisicion: TStringField
      FieldName = 'iFolioRequisicion'
    end
  end
  object dsanexo_prequisicion: TDataSource
    DataSet = anexo_prequisicion
    Left = 648
  end
  object dsZQProveedores: TDataSource
    DataSet = ZQProveedores
    Left = 648
    Top = 32
  end
  object ZQProveedores: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from proveedores'
      '')
    Params = <>
    Left = 688
    Top = 32
  end
  object ImgBtns: TImageList
    Left = 688
    Top = 160
    Bitmap = {
      494C010109004001C80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000F1F1F100B5B3B100A6A3A000AFAD
      AB00ADABA900ABA8A700A8A5A500B5A7AF00B4A5AE009F9D9D009B9998009896
      95009594930082807F0082807F00EAEAE9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A09E9D009F9C9900E3E3E200FCFC
      FC00FDFDFE00FDFDFE00FFFFFF009CDBAE008BD6A100FFFEFF00FFFFFF00FFFF
      FF00FFFFFF00F2F2F20085848200A09F9E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000085828000B1AFAE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D8F1DE0000AE290000AB1B00AAE3BA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BCBBBB00898786000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084818000AFADAD00FFFFFF00FFFF
      FF00FEFEFE00FFFFFF005ACC7A0000B4280000B92F0022C04E00F5FAF700FFFF
      FF00FFFFFF00FFFFFF00BEBDBD008F8D8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7A7A00AAA9A900FFFFFF00FFFF
      FF00FFFFFF00C0E9CC0000BA310000BE350000C0380000BA28007DDB9800FFFF
      FF00FFFFFF00FFFFFF00BFBEBE00929190000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075747300A7A6A500FFFFFF00FFFF
      FF00F4FAF50027CA540000C8370005CD400006CC3F0000C7360006C33900D5F1
      DE00FFFFFF00FFFFFF00C1C0C000969493000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000706D6D00A3A2A200FFFFFF00FFFF
      FF0058D67B0000C82D0000CD310078E397008AE5A30000CF300000CD310041D5
      6D00FFFEFF00FFFFFF00C3C2C1009A9897000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A676700A19FA000FEFFFE0078DE
      950000CA2E0000D0350019D74F00F1FAF300FBFBFB0021D9560000D4370000D0
      310098E8B000FFFFFF00C5C4C3009E9B9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000064616100AC9FA700BFF5CE0000CA
      240000D2350000D43700B2EFC500FFFFFF00FFFFFF00AFEFC10000D6370000D7
      3C000CD64400DDFBE600D8C8D200A19F9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D5B5A009E999B00EBFDF1005AE0
      800018D748009FEDB700FFFFFF00FFFFFF00FFFFFF00FFFEFF005AE3830000D9
      350000DA370031E56500BCBFBB00B0A2A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005754540094949300FFFFFF00FFFF
      FF00F0FAF400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9FAEE0021E0
      590000DD3C0000E13A0027CB5400B2AEAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000504E4D0092929100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2F4
      D2000AE0480000E0400000E53B003DDB6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000434140008D8C8B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AAF4C00007E6480000E8400000E83D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000747373005C5A5900DAD9D900FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFEFE00FEFE
      FE00FFFEFF00ACE9BE0020D0500064DD87000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F2F2007F7E7E00595756007978
      77007F7D7D0084828100888786008D8C8B0092909000979594009C9A9900A09F
      9E00A6A4A300AE9FA600B0A6A900F8ECF4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FAFAFA00838282005351
      51005D5B5B00646261006A6867006F6D6C00757372007B797800817F7E008785
      84008A878700A19F9E00EFEBED00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008F8F8F001C1C
      1C00262626002626260026262600262626002626260026262600262626002626
      26001C1C1C009F9F9F0000000000000000000000000000000000000000000000
      000000000000F4F7FB00A0B6D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFF0FC00303E
      D600CFD2F500000000000000000000000000000000000000000000000000CFCF
      F4003030CE00EFEFFB00000000000000000000000000303030001C1C1C005757
      5700000000000000000000000000F9F9F900F2F2F200E5E5E500DFDFDF00D8D8
      D800555555001C1C1C0030303000000000000000000000000000000000000000
      000000000000F4F4F6002F69BC001B7DF000165EC000D5DCEB00000000000000
      00000000000000000000000000000000000053575500B3B9B700BAC0BE00BDC3
      C100BEC4C200BFC5C300BFC5C300BFC5C300BFC5C300BFC5C300BDC2C0000000
      00000000000000000000000000000000000000000000EFF0FC003042D600144B
      EC00101ECD00CFD2F50000000000000000000000000000000000CFD0F4001010
      C7000000E9003030CE00EFEFFB0000000000BFBFBF0094949400B7B7B700CACA
      CA00F6F6F600F6F6F600F6F6F600F5F5F500EFEFEF00E3E3E300DDDDDD00D6D6
      D600CACACA00AAAAAA0094949400BFBFBF000000000000000000000000000000
      000085A0CF00306DC100166BD200228AFF00238CFF001761C500648AC500E2E8
      F4000000000000000000000000000000000053575500AEAEAE00B0B1B100AFB5
      B300CACFCE00D1D5D400D3D7D500D3D7D600D3D7D600D3D7D600CFD4D2000000
      000000000000000000000000000000000000000000003045DA001C59ED003371
      FE001246EB00101ECD00CFD2F5000000000000000000CFD0F4001013C8000000
      E9000000FE000000E9003030CE000000000050505000B8B8B8008A8A8A000000
      00008E8E8E0096969600969696009696960095959500909090008D8D8D008A8A
      8A000000000082828200B8B8B80060606000000000000000000000000000CDD6
      E9001A7DEB00228FFF00248FFF00278FFF001E8DFF0078BAFF00245DB200CFD7
      EB000000000000000000000000000000000053575500ABABAB00ABABAB00ABAB
      AB00999A9900AFB1B100DADDDC00E4E6E600E5E8E700E5E8E700E0E2E2000000
      00000000000000000000000000000000000000000000CFD5F700102BD4001E5E
      EE003371FE002B68FE001246EB00CFD2F500CFD1F500031CEA000219FE00000A
      FE000000E9001010C700CFCFF4000000000020202000CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC002020200000000000F4F5F900346DBD00218E
      FD0061B1FF00549DEF002668C000B4E2FF0096C7F700D6DAEC00000000000000
      00000000000000000000000000000000000053575500ABABAB00AAAAAA00A4A4
      A4009C9C9C009B9B9B0096969600C5C6C600F1F2F200F2F3F200DFE0DF00E7E7
      E7000A0AA900E8E8E800F7F7F700000000000000000000000000CFD5F700102B
      D4003B7AFE003371FE002B68FE00101ECD00101DCC000B34FE000628FE000219
      FE001013C800CFD0F40000000000000000001F1F1F00D6D6D600D6D6D600D6D6
      D600D9D9D900DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DBDBDB00D9D9
      D900D6D6D600D6D6D600D6D6D6001F1F1F00000000008AA4D000197CE800369E
      FF00337ED7006488C400B9BEDC0094C7F800396EBA000000000000000000F4F7
      FB00D3DAEA00D1DAEA00EBEFF7000000000053575500ABABAB00AAAAAA00A1A1
      A100989898009090900096969600C5C5C500F7F7F700E7E7E700D0D1D1000A0A
      A8003535D300CCCCCC00DDDDDD00EFEFEF00000000000000000000000000CFD5
      F7001E5EEE003B7AFE003371FE00144AEE001042EE00103FFE000B34FE00031C
      EA00CFD0F4000000000000000000000000001D1D1D00E5E5E500E9E9E900ECEC
      EC00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00E9E9E900E5E5E5001D1D1D00000000002F6CBF002898FF0064B9
      FF006F8DC60000000000FBFBFC003B71BC00E9EBF4000000000000000000B5C5
      E1001565D1000D5BCD006188C6000000000053575500ABABAB00A8A8A8009F9F
      9F00959595008A8A8A0091919100EFF0F000FCFCFC00EBEBEB000909A8003030
      D6003A3AD8004242D9004646DA000303A5000000000000000000000000000000
      0000CFD5F700102BD4002464F1003371FE002B68FE001042EE00101DCC00CFD1
      F5000000000000000000000000000000000050505000D5EDD50032A13200B5D2
      B500FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC005050500000000000177BE7004FB7FF0078BB
      F60000000000000000000000000000000000000000000000000000000000D4DA
      EA00258FFF001D7EFF004477C4000000000053575500ABABAB00A5A5A5009C9C
      9C0093939300BFBFBF0085858500EEEFEF00FCFCFC000C0CAB002D2DD5000000
      CC000000CC000000CC000000CC000303A6000000000000000000000000000000
      0000CFD5F700102ED600296BF1003B7AFE003371FE00144AEE00101ECD00CFD2
      F500000000000000000000000000000000009F9F9F00E5ECE500D7EBD700EDF4
      ED00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5F5009F9F9F00000000001882EF0055C0FF007FB8
      ED0000000000000000000000000000000000000000000000000000000000AEBE
      DC00238BFF001A7AFC005782C5000000000053575500ABABAB00A3A3A3009A9A
      9A009191910094949400A9A9A900EEEFEF00E5E5F4004040CB003737D7003A3A
      D8004040D9003939D7003D3DD8000303A600000000000000000000000000CFD8
      F800347CF00065A0FE005E9AFE00296BF1002464F1003371FE002B68FE001246
      EB00CFD2F50000000000000000000000000000000000BFBFBF00505050003F3F
      3F00000000000000000000000000F9F9F900F1F1F100E3E3E300DBDBDB00D4D4
      D4003838380050505000BFBFBF000000000000000000376FBA005184C5003E75
      BE00000000000000000000000000497EC000177BD20000000000869FCD001B7E
      DA003F93FF001D61C500D3DAEA000000000053575500AAAAAA00A0A0A0009797
      97008E8E8E0076767600BBBBBB00EEEEEE00FCFCFC00E6E7F5005151CD005656
      DE005858DD005B5BDE005555DD000303A6000000000000000000CFD9F900103E
      E00077ADFE006FA7FE0065A0FE00102ED600102BD4003B7AFE003371FE002B68
      FE00101ECD00CFD2F50000000000000000000000000000000000EFEFEF001919
      1900636363007B7B7B0078787800727272006F6F6F0068686800656565004949
      490019191900EFEFEF00000000000000000000000000F8F8FA00F7F7F900F7F7
      FA000000000000000000E8E9F40030B0F4002EACF200618EC9001D83DB002497
      FF005197F6005A83C300000000000000000053575500A8A8A8009E9E9E009595
      95008C8C8C00AAAAAA008E8E8E00EDEEEE00FCFCFC00FCFCFC00E6E7F3005959
      CF00A5A5EC000E0EAB000E0EAB002929B40000000000CFDAFA001044E400448F
      F3007FB3FE0077ADFE00347CF000CFD5F700CFD5F7001E5EEE003B7AFE003371
      FE001246EB00101ECD00CFD2F500000000000000000000000000000000009F9F
      9F00C5C5C500FAFAFA00F4F4F400E8E8E800E2E2E200D5D5D500CFCFCF007979
      79009F9F9F000000000000000000000000000000000000000000000000000000
      000000000000DFE2F0003473BC003BC7FF0033B3F80029A4FB00279CFF004C9F
      FF003068BD00DEE2EF00000000000000000053575500A6A6A6009B9B9B009292
      9200898989007F7F7F0083838300EDEEEE00FCFCFC00FCFCFC00F8F9F900F1F1
      FA005858CC00000000000000000000000000000000003066EC004F9CF600A1CB
      FE00448FF300103EE000CFD8F8000000000000000000CFD5F700102BD4001E5E
      EE003371FE00144BEC00303ED600000000000000000000000000000000000000
      0000BCBCBC000000000000000000F4F4F400EEEEEE00E2E2E200DBDBDB007272
      7200000000000000000000000000000000000000000000000000000000000000
      00002A61B10031B3F40046DBFF0034C2FF005FC8FF008ECBFE00659DE3004374
      BD000000000000000000000000000000000053575500A3A3A300979797008989
      890080808000767676007B7B7B00EBECEC00FCFCFC00FCFCFC00F8F9F9000000
      0000F5F5FB0000000000000000000000000000000000EFF3FE003066EC004F9C
      F6001044E400CFD9F90000000000000000000000000000000000CFD5F700102B
      D4001C59ED003042D600EFF0FC00000000000000000000000000000000000000
      0000B7B7B7000000000000000000FAFAFA00F4F4F400E8E8E800E2E2E2006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      0000C0CFE7005283C300247DC70065D7FF0090E0FF004C79BD009EB0D700F6F6
      F90000000000000000000000000000000000535755009A9A9A008A8A8A007E7E
      7E00747474006C6C6C0072727200E8E9E900FBFCFC00FCFCFC00F8F8F8000000
      0000000000000000000000000000000000000000000000000000EFF3FE003066
      EC00CFDAFA00000000000000000000000000000000000000000000000000CFD5
      F7003045DA00EFF0FC0000000000000000000000000000000000000000000000
      0000B2B2B200000000000000000000000000FAFAFA00EEEEEE00E8E8E8006C6C
      6C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C8CFE600367DC3008FCEF900C8CCE500000000000000
      0000000000000000000000000000000000005357550090909000818181007676
      76006B6B6B006363630067676700E1E3E300F7F8F800F8F9F900F5F6F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818001818180018181800181818001818180018181800181818001212
      1200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F6FA00000000000000
      000000000000000000000000000000000000A8AAA90053575500535755005357
      55005357550053575500565A5800676A680074777600757977006D706E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084777300847773008477
      7300847773008477730084777300847773008477730084777300847773008477
      7300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECEAEAFFE2DDDCFFE3DFDFFF00000000000000000000
      000000000000000000000000000000000000DED3CF00FAF7F500FAF7F500FAF7
      F500EDE9E700ECE7E500ECE7E500E8E0DE00F1EAE800F1E9E700F0E8E600EEE6
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000534B4AFF262626FF1D1D1DFFE4E0DFFF000000000000
      000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
      F7005E70A800E2DDDB00E1DBD900E0D8D600E0D8D600EAE2E000F1E9E700F0E7
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFF5EF00005A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BAD0E200DAE9F60000000000000000000000000000000000000000000000
      000000000000000000007F7978FF565656FF303030FFE4DFDEFF000000000000
      000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
      F700818BA2006680C000E1DBD900E0D8D600E0D8D600DCD3D100DED5D300E6DD
      DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000009FC19F00006C
      0000609860000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAF0F400186D
      B4002399F7002194F400B5D3ED00000000000000000000000000000000000000
      00000000000000000000595453FF383838FF404040FFE4DFDEFF000000000000
      000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
      F700C9E7FE00A5E1FE0088C9F800E0D8D600E0D8D600DCD3D100DBD2D000DAD0
      CF00E8E6E600E8E6E600EDECEC00FFFFFF0000000000000000001065100000BA
      000000C0000000760000307A3000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6ECF200356B99001052
      8B00218EE5002297F70053A1E100000000000000000000000000000000000000
      00000000000000000000837E7CFF676767FF3E3E3EFFE4DFDEFF000000000000
      000000000000000000000000000000000000DED3CF00FBF8F700FBF8F700FBF8
      F70076E2FE0059D4FE0060CBFE00AFB0CD00E0D9D700DBD2D000DAD1CF00D8CF
      CD00E8E6E600E8E6E600E8E6E600EAE9E90000000000AFCDAF000075000000D1
      000000D1000000D10000008A0000EFF5EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2C6D700104C
      800012558E00259BF800249AF800000000000000000000000000FCFCFCFFFCFB
      FBFFFCFBFBFFFCFBFBFF747171FF606060FF565656FFD1CBCAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFDFDFDFF0000000000000000DED3CF00FAF8F600FAF8F600FAF8
      F60061EFFE0050D1FE004DCBFE00688BD200F4EDEB00E0D8D600DAD0CF00DAD0
      CF00E8E6E600E8E6E600E8E6E600E8E6E6000000000070AA700000A0000000DA
      000000DA000000DA000000DA000010711000CFE3CF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFCFD00104C
      8000104D8300279DF800269BF8000000000000000000CAB5B2FF242424FF1B1B
      1BFF202020FF1F1F1FFF555555FF626262FF686868FF201F1FFF1F1F1FFF2020
      20FF262626FF3B3635FFFBFBFBFF00000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF0038C0F90040E7FE0036C4FE0044A4FE005C77C200EDE4E100EDE4E100EBE2
      DF00F5F4F400EAE9E900E8E6E600FAFAFA0000000000007B000000EC000000EC
      000000D6000000E5000000EC000000EC000000BF00009FCB9F00000000000000
      000000000000000000000000000000000000000000003869930014578D003CB3
      FA003AB1F90035A1E700429FDE0000000000000000000000000000000000104C
      8000115289002AA0F800299FF8000000000000000000C2B3B0FF7F7F7FFF6B6B
      6BFF676767FF797979FF646464FF666666FF696969FF6F6F6FFF7F7F7FFF7979
      79FF7F7F7FFF525252FFF5F4F4FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF009FD2F9002EE2FD002ECFFE0035A4FE002971DC00ECE3E000EBE2DF00E9DF
      DC00FFFFFF00FFFFFF00F8F7F700FFFFFF000000000000A8000000F6000000F6
      0000108210000081000000B7000000F6000000F60000008200009FCD9F000000
      000000000000000000000000000000000000000000000F4A7C00155A91003DB4
      FA003CB3FA0039ADF5007FB5DD0000000000000000000000000000000000104C
      8000196AAA002CA2F8002BA1F8000000000000000000EBD9D6FFD2D2D2FFD2D2
      D2FFCACACAFFC4C4C4FFACACACFF9E9E9EFFB1B1B1FFCCCCCCFFC5C5C5FFC7C7
      C7FFD3D3D3FFC1C0C0FFFAF9F9FF00000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007FC5F70019E7FE0017B4FE002392FE00E3D9D500E3D7D400E2D6
      D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF8EF002AF72A0017D31700108F
      100000000000000000000000000060B46000028E020027F827002AF72A000B9D
      0B0000000000000000000000000000000000000000000F4A7C001860960040B7
      FA003FB6FA003DB4FA0045A7E4000000000000000000000000008AA8C2002689
      D00031A8F9002FA5F900399AE3000000000000000000FCFBFBFFEAE8E7FFEAE8
      E8FFEAE8E8FFEAE8E8FFC2BDBCFFB0B0B0FF999999FFD1CBCAFFEBE9E9FFEBE9
      E9FFEBE9E9FFF4F3F3FF0000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EEF6FC0008B6F70011B0FE00149EFE008992BF00DCD0CC00DBCF
      CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFDCAF0035D5350010941000CFE9
      CF0000000000000000000000000000000000DFF0DF000594050028C728004FF1
      4F0040AA4000EFF8EF000000000000000000000000000F4A7C001A649B003CAE
      EF0040B7F9003EB6FA003DB4FA005EABDF009EC9E7009EC3DF002376B40034AB
      F90033AAF90031A7F80090C0E400000000000000000000000000000000000000
      00000000000000000000C3BDBCFF9D9D9DFFB3B3B3FFE4DFDEFF000000000000
      000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFD005EB0F2000BB1FE000AAAFE001F51C400DACDC900D9CC
      C800FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BC6000109B1000CFEACF000000
      00000000000000000000000000000000000000000000DFF1DF0060BC6000089B
      08002DB52D0030A83000EFF8EF0000000000000000000F4A7C00276799001157
      9300125894003FB5F60040B7FA003EB5FA003DB4FA003BB2FA0039B0FA0037AE
      F90036ADF900DAEAF50000000000000000000000000000000000000000000000
      00000000000000000000D4CFCEFFCDCDCDFFB1B1B1FFE4DFDEFF000000000000
      000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFCFB00FBF9F80000DFFE0002A6FE000E73FE003F6CD200C8B6
      B100FFFFFF00FFFFFF00FFFFFF00FFFFFF0040B8410000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF3DF0060C4600000A10300CFEED000000000006F92B000E6ECF2002B6B
      A100125A98001969A800339BDC003FB7FA003EB6FA003CB3FA003BB2FA0038AD
      F60056A5DC000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E0DFFFDDDDDDFFBEBEBEFFE4DFDEFF000000000000
      000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFCFB00FBF8F70000C5F80000BEFE000587FE000959E400BFC7
      E600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFF4E10010B326000000000000000000000000000000
      0000000000007AA5CA003879B1001461A3001964A50084ADD000DDEAF4000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2D3D0FFF6E2DDFFF3DEDAFFFCFCFBFF000000000000
      000000000000000000000000000000000000DED3CF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFD00FBF9F800F9F5F30037ADE80000DBFE000AA0FE002E8CFE006584
      D100FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F7FA00F7F9FC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDD1CD00DED3CF00DED3CF00DED3
      CF00DED3CF00DACEC900D5C8C300C8B6B1002088DF004D77CA009FAAD900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFC003F9FFFFFFC7E38E01F83F001F
      83C10000F00F001F81810000E00F001F80010000803F0001C003000080610000
      E007000084610000F00F00008FE10000F00F0FFC8FE10000E0078E018E410000
      C003C0038C0300008001E007F80300078181F60FF00F001783C1F60FF00F001F
      C7E3F70FFC3F001FFFFFF00FFFBF001FFFFF8000FFFFFFFFFC7F0000FFFFFFFF
      FC3F0000CFFFFFF3FC3F0000C7FFFFC1FC3F0000C1FFFF81FC3F000080FFFFC1
      C0030000807FFFC180010000803F81E180010000801F81E1800100000E0F81C1
      800300000F038001FC3F00001F818003FC3F00007FF08007FC3F0000FFFCF81F
      FC3F0000FFFFFE7FFFFF0000FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsZQProveedorxRequisicion: TDataSource
    DataSet = cdproveedorxrequisicion
    Left = 648
    Top = 64
  end
  object PM_ArticulosxProveedor: TPopupMenu
    Left = 648
    Top = 160
    object CrearCotizacion1: TMenuItem
      Caption = 'Crear Cotizacion'
      OnClick = CrearCotizacion1Click
    end
  end
  object cdproveedorxrequisicion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdproveedorxrequisicionAfterScroll
    Left = 688
    Top = 64
    object StringField2: TStringField
      FieldName = 'sIdProveedor'
      Size = 25
    end
    object cdproveedorxrequisicioniFolioRequisicion: TIntegerField
      FieldName = 'iFolioRequisicion'
    end
  end
  object cdProductos1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 96
    object StringField3: TStringField
      FieldName = 'sIdInsumo'
      Size = 25
    end
    object StringField1: TStringField
      FieldName = 'Activo'
      Size = 5
    end
    object cdProductos1mDescripcion: TStringField
      FieldName = 'mDescripcion'
      Size = 300
    end
    object cdProductos1iItem: TIntegerField
      FieldName = 'iItem'
    end
    object cdProductos1dCantidad: TFloatField
      FieldName = 'dCantidad'
    end
  end
  object cdProductosProveedores: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 128
    object StringField4: TStringField
      FieldName = 'sIdInsumo'
      Size = 25
    end
    object StringField5: TStringField
      FieldName = 'sIdProveedor'
      Size = 5
    end
    object cdProductosProveedoresiItem: TIntegerField
      FieldName = 'iItem'
    end
    object cdProductosProveedoresdCantidad: TFloatField
      FieldName = 'dCantidad'
    end
  end
  object dscdProductos1: TDataSource
    DataSet = cdProductos1
    Left = 648
    Top = 96
  end
  object dscdProductosProveedores: TDataSource
    DataSet = cdProductosProveedores
    Left = 648
    Top = 128
  end
  object cxstylrpstryGrid: TcxStyleRepository
    Left = 580
    Top = 80
    PixelsPerInch = 96
    object Agregado: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlue
    end
  end
  object anexo_requisicion: TZQuery
    Connection = connection.zConnection
    AfterScroll = anexo_requisicionAfterScroll
    SQL.Strings = (
      'select * from anexo_requisicion'
      'where sContrato = :contrato and sStatus = '#39'AUTORIZADO'#39
      'Order By iFolioRequisicion DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 648
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
  end
  object ds_anexo_requisicion: TDataSource
    AutoEdit = False
    DataSet = anexo_requisicion
    Left = 680
    Top = 195
  end
end
