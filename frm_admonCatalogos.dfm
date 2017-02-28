object frmAdmonCatalogos: TfrmAdmonCatalogos
  Left = 363
  Top = 274
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Administraci'#243'n de Catalogos del Sistema'
  ClientHeight = 385
  ClientWidth = 612
  Color = 7847370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgCatalogos: TPageControl
    Left = 0
    Top = 0
    Width = 612
    Height = 385
    Hint = 'Datos Generadores'
    ActivePage = TabTipReprogramacion
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnChange = pgCatalogosChange
    object TabTipReprogramacion: TTabSheet
      Caption = 'Tipos de Reprogramaci'#243'n'
      object grid_tiposdeConvenio: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de reprogramaci'#243'n, puede editarlos al' +
          ' dar click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_TiposConvenio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoConvenio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 370
            Visible = True
          end>
      end
    end
    object TabTipEmbarcacion: TTabSheet
      Caption = 'Tipos de Embarcaci'#243'n'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_tiposdeembarcacion: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de enbarcaci'#243'n, puede editarlos al da' +
          'r click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_tiposdeembarcacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoEmbarcacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 333
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sTitulo'
            Title.Alignment = taCenter
            Title.Caption = 'Titulo'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iRenglon'
            Title.Alignment = taRightJustify
            Title.Caption = 'Renglon'
            Width = 58
            Visible = True
          end>
      end
    end
    object TabTipEquipos: TTabSheet
      Caption = 'Tipos de Equipo'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_tiposdeequipo: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de equipos, puede editarlos al dar cl' +
          'ick en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_tiposdeequipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoEquipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 301
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sMascara'
            Title.Alignment = taCenter
            Title.Caption = 'Mascara'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lPersonalEQ'
            Title.Alignment = taCenter
            Title.Caption = 'Personal y EQ'
            Width = 85
            Visible = True
          end>
      end
    end
    object TabTipEstimacion: TTabSheet
      Caption = 'Tipos de Estimaci'#243'n'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_tiposdeEstimacion: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de estimaci'#243'n, puede editarlos al dar' +
          ' click  en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_TiposdeEstimacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoEstimacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 321
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Width = 49
            Visible = True
          end>
      end
    end
    object TabTipOrden: TTabSheet
      Caption = 'Tipos de Orden'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_tiposdeOrden: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de orden, puede editarlos al dar clic' +
          'k en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_TiposdeOrden
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 377
            Visible = True
          end>
      end
    end
    object TabTipPermiso: TTabSheet
      Caption = 'Tipos de Permiso'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_tiposdePermiso: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de permisos, puede editarlos al dar c' +
          'lick  en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_TiposdePermiso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoPermiso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 341
            Visible = True
          end>
      end
    end
    object TabTipPersonal: TTabSheet
      Caption = 'Tipos de Personal'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_tiposdepersonal: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_tiposdepersonal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdTipoPersonal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 298
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sMascara'
            Title.Alignment = taCenter
            Title.Caption = 'Mascara'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lPersonalEQ'
            Title.Caption = 'Personal y EQ'
            Width = 82
            Visible = True
          end>
      end
    end
    object tabEstatus: TTabSheet
      Caption = 'Estatus de Ordenes de Trabajo'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grid_estatus: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_estatus
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cIdStatus'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Estatus'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 340
            Visible = True
          end>
      end
    end
    object TabFases: TTabSheet
      Caption = 'Fases de los Proyectos'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_fasesxproyecto: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_fasesxproyecto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdFase'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Fase'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 319
            Visible = True
          end>
      end
    end
    object TabCategorias: TTabSheet
      Caption = 'Categorias'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbCategorias: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las categorias, puede editarlos al dar click en' +
          ' cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_Categorias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopOpciones
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdCategoria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Categoria'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaVigencia'
            Title.Alignment = taCenter
            Title.Caption = 'F. Inicio'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMiGrupoResumen'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo Resumen Personal'
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lPersonalAnexo'
            Title.Alignment = taCenter
            Title.Caption = 'P. Anexo'
            Width = 66
            Visible = True
          end>
      end
    end
    object TabDirecciones: TTabSheet
      Caption = 'Direcciones'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las direcciones, puede editarlos al dar click e' +
          'n cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = dsDirecciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iIdDireccion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Direccion'
            Width = 340
            Visible = True
          end>
      end
    end
    object TabCondiciones: TTabSheet
      Caption = 'Condiciones Climatologicas'
      ImageIndex = 12
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid2: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las condiciones climatologicas, puede editarlos' +
          ' al dar click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = dsCondiciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iIdCondicion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Direccion'
            Width = 340
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMedida'
            Title.Caption = 'Medida'
            Visible = True
          end>
      end
    end
    object TabRecursos: TTabSheet
      Caption = 'Mezclas/Recursos'
      ImageIndex = 13
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid3: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las mezclas/recursos, puede editarlos al dar cl' +
          'ick en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = dsMezclas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iIdRecursoExistencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripcion'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMedida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iIdRecursoExistencia'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lCombustible'
            Title.Alignment = taCenter
            Title.Caption = 'EsCombustible?'
            Width = 118
            Visible = True
          end>
      end
    end
    object TabBarco: TTabSheet
      Caption = 'Movimientos de Barco'
      ImageIndex = 14
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object UGridMovimientos: TJvDBUltimGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los movimientos de barco, puede editarlos al da' +
          'r click en cualquier campo.'
        Align = alClient
        Color = 7338239
        DataSource = dsTiposMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        ShowCellHint = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <
          item
            ControlName = 'cmbOrden'
            FieldName = 'iOrden'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'cmbGenera'
            FieldName = 'lGenera'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'cmbGrafica'
            FieldName = 'lGrafica'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'JvDBLookupCombo2'
            FieldName = 'iIdEstimacionContrato'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end>
        RowsHeight = 18
        TitleRowHeight = 19
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sIdTipoMovimiento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 220
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sTipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Sigla'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Orden'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCantidad'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sMedida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaMN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Precio MN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaDLL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Precio DLL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lGenera'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Mostrar en Gen.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lGrafica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Grafica'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iIdEstimacionContrato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Anexo '
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end>
      end
      object cmbGenera: TJvDBComboBox
        Left = 161
        Top = 161
        Width = 145
        Height = 22
        BeepOnError = True
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        DataField = 'lGenera'
        DataSource = dsTiposMovimiento
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UpdateFieldImmediatelly = True
        Visible = False
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cmbGrafica: TJvDBComboBox
        Left = 168
        Top = 133
        Width = 145
        Height = 22
        BeepOnError = True
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        DataField = 'lGrafica'
        DataSource = dsTiposMovimiento
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UpdateFieldImmediatelly = True
        Visible = False
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cmbOrden: TJvDBComboBox
        Left = 168
        Top = 105
        Width = 145
        Height = 22
        BeepOnError = True
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        DataField = 'iOrden'
        DataSource = dsTiposMovimiento
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UpdateFieldImmediatelly = True
        Visible = False
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBLookupCombo2: TJvDBLookupCombo
        Left = 168
        Top = 77
        Width = 145
        Height = 22
        DataField = 'iIdEstimacionContrato'
        DataSource = dsTiposMovimiento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'iIdEstimacionContrato'
        LookupDisplay = 'sdesc'
        LookupSource = DsEstimacionxContrato
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
    end
    object TabEstimaciones: TTabSheet
      Caption = 'Estimaciones de Barco'
      ImageIndex = 15
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid4: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las estimaciones de barco, puede editarlos al d' +
          'ar click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = dsEstimaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iNumeroEstimacion'
            Title.Caption = 'No. Estimacion'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Caption = 'F. Inicio'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Caption = 'F. Final'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMoneda'
            Title.Caption = 'Moneda'
            Width = 223
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Anexos'
      ImageIndex = 16
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object UGridAnexos: TJvDBUltimGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los anexos, puede editarlos al dar click en cua' +
          'lquier campo.'
        Align = alClient
        Color = 7338239
        DataSource = ds_Anexos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        ShowCellHint = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <
          item
            ControlName = 'JvDBLookupCombo1'
            FieldName = 'iIdEstimacionContrato'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'cmbtipo'
            FieldName = 'sTipo'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'cmbtierra'
            FieldName = 'sTierra'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end>
        RowsHeight = 18
        TitleRowHeight = 19
        Columns = <
          item
            Expanded = False
            FieldName = 'sAnexo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Anexo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCantidad'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sMedida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaMn'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Precio Mn'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaDll'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Precio Dll'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sTipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Anexo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sTierra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Aplic. Tierra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iIdEstimacionContrato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Tipo de Obra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Orden'
            Width = 50
            Visible = True
          end>
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 168
        Top = 136
        Width = 145
        Height = 22
        DataField = 'iIdEstimacionContrato'
        DataSource = ds_Anexos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'iIdEstimacionContrato'
        LookupDisplay = 'sdesc'
        LookupSource = DsEstimacionxContrato
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object cmbtipo: TJvDBComboBox
        Left = 168
        Top = 64
        Width = 145
        Height = 22
        BevelEdges = []
        BevelInner = bvSpace
        BevelOuter = bvNone
        DataField = 'sTipo'
        DataSource = ds_Anexos
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UpdateFieldImmediatelly = True
        Visible = False
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cmbtierra: TJvDBComboBox
        Left = 168
        Top = 93
        Width = 145
        Height = 22
        BeepOnError = True
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        DataField = 'sTierra'
        DataSource = ds_Anexos
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        UpdateFieldImmediatelly = True
        Visible = False
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Reprogramacion Barco'
      ImageIndex = 17
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid5: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_reprograma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'iOrden'
            Title.Alignment = taCenter
            Title.Caption = 'No. Reprog.'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Alignment = taCenter
            Title.Caption = 'F. Inicio'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Alignment = taCenter
            Title.Caption = 'F. Final'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dDuracion'
            Title.Alignment = taCenter
            Title.Caption = 'Duracion'
            Width = 77
            Visible = True
          end>
      end
    end
    object pgMonedas: TTabSheet
      Caption = 'Tipos Moneda'
      ImageIndex = 18
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbGridMonedas: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de de moneda, puede editarlos al dar ' +
          'click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_Moneda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdMoneda'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcionCorta'
            Title.Alignment = taCenter
            Title.Caption = 'Moneda'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dIVA'
            Title.Alignment = taCenter
            Title.Caption = '% IVA'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pernoctas'
      ImageIndex = 19
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid6: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las pernoctas, puede editarlos al dar click en ' +
          'cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_pernoctas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdCuenta'
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdPernocta'
            Title.Alignment = taCenter
            Title.Caption = 'Pernoctan'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Width = 269
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sMedida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaMN'
            Title.Alignment = taCenter
            Title.Caption = 'Venta M.N.'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaDLL'
            Title.Alignment = taCenter
            Title.Caption = 'Venta DLL'
            Width = 68
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Estimacion del Contrato'
      ImageIndex = 20
      object JvDBGrid1: TJvDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las estimaciones de contratos, puede editarlos ' +
          'al dar click  en cualquier campo.'
        Align = alClient
        Color = 7338239
        DataSource = DsEstimacionxContratoG
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        PostOnEnterKey = True
        ShowCellHint = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <
          item
            ControlName = 'JvDBRichEdit1'
            FieldName = 'sDescripcion'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
            LeaveOnUpDownKey = True
          end>
        RowsHeight = 19
        TitleRowHeight = 18
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sPartida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Partida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 350
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Orden'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end>
      end
      object JvDBRichEdit1: TJvDBRichEdit
        Left = 72
        Top = 48
        Width = 185
        Height = 25
        DataField = 'sDescripcion'
        DataSource = DsEstimacionxContratoG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PlainText = True
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Formas Pago'
      ImageIndex = 21
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        604
        255)
      object JvDBGrid2: TJvDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 601
        Height = 257
        Hint = 
          'Aqu'#237' se muestran los tipos de permisos, puede editarlos al dar c' +
          'lick  en cualquier campo.'
        Anchors = [akLeft, akTop, akRight]
        Color = 7338239
        DataSource = dsFormasPago
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 19
        TitleRowHeight = 18
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdFormaPago'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Id Pago'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Descripcion'
            Width = 370
            Visible = True
          end>
      end
    end
    object TabClasificacionesPernoctas: TTabSheet
      Caption = 'Clasificacion Pernoctas'
      ImageIndex = 22
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object JvDBUltimGrid1: TJvDBUltimGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran las clasificaciones de las pernoctas, puede edi' +
          'tarlos al dar click  en cualquier campo.'
        Align = alClient
        Color = 7338239
        DataSource = DsClasificacionPernoctas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        ShowCellHint = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <
          item
            ControlName = 'cmbOrden'
            FieldName = 'iOrden'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'cmbGenera'
            FieldName = 'lGenera'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'cmbGrafica'
            FieldName = 'lGrafica'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end
          item
            ControlName = 'JvDBLookupCombo2'
            FieldName = 'iIdEstimacionContrato'
            FitCell = fcCellSize
            LeaveOnEnterKey = True
          end>
        RowsHeight = 18
        TitleRowHeight = 19
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sIdTipoMovimiento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Id'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 220
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sTipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Sigla'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 47
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'iOrden'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Orden'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCantidad'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sMedida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaMN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Precio MN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dVentaDLL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Precio DLL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lGenera'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Mostrar en Gen.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lGrafica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Grafica'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'iIdEstimacionContrato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Anexo '
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Despiezados'
      ImageIndex = 22
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grid_Despiece: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_despiece
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sMaterial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Material'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sTipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDimension'
            Title.Alignment = taCenter
            Title.Caption = 'Dimension'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dExtPulgada'
            Title.Alignment = taCenter
            Title.Caption = #216' Ext. Pulg.'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dExtMts'
            Title.Alignment = taCenter
            Title.Caption = #216' Ext. Mts.'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dPerimMts'
            Title.Alignment = taCenter
            Title.Caption = 'Perim. Mts.'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dInxIn'
            Title.Alignment = taCenter
            Title.Caption = 'in x in'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dKg_mts'
            Title.Alignment = taCenter
            Title.Caption = 'kg m'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dArea_m2'
            Title.Alignment = taCenter
            Title.Caption = 'area m2'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dM_mts2'
            Title.Alignment = taCenter
            Title.Caption = 'mm2'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dDiamInterior'
            Title.Caption = #216' Int. Pulg.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dConstantePi'
            Title.Caption = 'Const.  Pi'
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Embarcacion Vigencia'
      ImageIndex = 23
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grd_BarcoVigencia: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_BarcoVigencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdEmbarcacion'
            Title.Alignment = taCenter
            Title.Caption = 'Id Embarcacion'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Alignment = taCenter
            Title.Caption = 'Descripcion'
            Width = 198
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaInicio'
            Title.Alignment = taCenter
            Title.Caption = 'F. Inicio'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dFechaFinal'
            Title.Alignment = taCenter
            Title.Caption = 'F. Final'
            Width = 84
            Visible = True
          end>
      end
    end
    object pgInformacion: TTabSheet
      Caption = 'Informacion Cliente'
      ImageIndex = 24
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_informacion
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdInformacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Informacion'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sDescripcion'
            Title.Caption = 'Descripci'#243'n'
            Width = 319
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Tipo de Cambio'
      ImageIndex = 25
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid8: TDBGrid
        Tag = 2123
        Left = 0
        Top = 0
        Width = 604
        Height = 255
        Hint = 
          'Aqu'#237' se muestran los tipos de de moneda, puede editarlos al dar ' +
          'click en cualquier campo.'
        Align = alClient
        Color = 7338239
        Ctl3D = False
        DataSource = ds_tipocambio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnMouseMove = DBGrid5MouseMove
        OnMouseUp = DBGrid5MouseUp
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sIdMoneda'
            Title.Alignment = taCenter
            Title.Caption = 'Id Moneda'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dIdFecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dCambio'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Cambio'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sIdMonedaConv'
            Title.Alignment = taCenter
            Title.Caption = 'A Moneda'
            Width = 71
            Visible = True
          end>
      end
    end
  end
  object ds_TiposdeEstimacion: TDataSource
    DataSet = TiposdeEstimacion
    Left = 17
    Top = 337
  end
  object TiposdeEstimacion: TZQuery
    Connection = connection.zConnection
    BeforePost = TiposdeEstimacionBeforePost
    OnDeleteError = TiposdeEstimacionDeleteError
    OnPostError = TiposdeEstimacionPostError
    SQL.Strings = (
      'select * from tiposdeestimacion order by sIdTipoEstimacion')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 45
    Top = 337
    object TiposdeEstimacionsIdTipoEstimacion: TStringField
      FieldName = 'sIdTipoEstimacion'
      Required = True
      Size = 2
    end
    object TiposdeEstimacionsDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 30
    end
    object TiposdeEstimacioniGrupo: TIntegerField
      FieldName = 'iGrupo'
      Required = True
      OnSetText = TiposdeEstimacioniGrupoSetText
    end
    object TiposdeEstimacionmComentarios: TMemoField
      FieldName = 'mComentarios'
      Required = True
      BlobType = ftMemo
    end
  end
  object TiposdeConvenio: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdeConvenioDeleteError
    OnPostError = TiposdeConvenioPostError
    SQL.Strings = (
      'select * from tiposdeconvenio order by sIdTipoConvenio')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 46
    Top = 224
  end
  object ds_TiposConvenio: TDataSource
    DataSet = TiposdeConvenio
    Left = 17
    Top = 225
  end
  object ds_tiposdeembarcacion: TDataSource
    DataSet = TiposdeEmbarcacion
    Left = 80
    Top = 336
  end
  object TiposdeEmbarcacion: TZQuery
    Connection = connection.zConnection
    BeforePost = TiposdeEmbarcacionBeforePost
    OnDeleteError = TiposdeEmbarcacionDeleteError
    OnPostError = TiposdeEmbarcacionPostError
    SQL.Strings = (
      'select * from tiposdeembarcacion order by sIdTipoEmbarcacion')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 335
    object TiposdeEmbarcacionsIdTipoEmbarcacion: TStringField
      FieldName = 'sIdTipoEmbarcacion'
      Required = True
      Size = 4
    end
    object TiposdeEmbarcacionsDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 50
    end
    object TiposdeEmbarcacioniRenglon: TIntegerField
      FieldName = 'iRenglon'
      Required = True
      OnSetText = TiposdeEmbarcacioniRenglonSetText
    end
    object TiposdeEmbarcacionsTitulo: TStringField
      FieldName = 'sTitulo'
      Required = True
      Size = 30
    end
  end
  object ds_tiposdeequipo: TDataSource
    DataSet = TiposdeEquipo
    Left = 80
    Top = 252
  end
  object TiposdeEquipo: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdeEquipoDeleteError
    OnPostError = TiposdeEquipoPostError
    SQL.Strings = (
      'select * from tiposdeequipo Order By sIdTipoEquipo')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 252
  end
  object ds_tiposdepersonal: TDataSource
    DataSet = TiposdePersonal
    Left = 80
    Top = 280
  end
  object TiposdePersonal: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdePersonalDeleteError
    OnPostError = TiposdePersonalPostError
    SQL.Strings = (
      'select * from tiposdepersonal Order By sIdTipoPersonal')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 280
  end
  object TiposdePermiso: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdePermisoDeleteError
    OnPostError = TiposdePermisoPostError
    SQL.Strings = (
      'select * from tiposdepermiso order by sIdTipoPermiso')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 108
    Top = 307
  end
  object ds_TiposdePermiso: TDataSource
    DataSet = TiposdePermiso
    Left = 80
    Top = 308
  end
  object ds_TiposdeOrden: TDataSource
    DataSet = TiposdeOrden
    Left = 17
    Top = 197
  end
  object TiposdeOrden: TZQuery
    Connection = connection.zConnection
    OnDeleteError = TiposdeOrdenDeleteError
    OnPostError = TiposdeOrdenPostError
    SQL.Strings = (
      'select * from tiposdeorden Order By sIdTipoOrden')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 46
    Top = 197
  end
  object ds_estatus: TDataSource
    DataSet = Estatus
    Left = 142
    Top = 308
  end
  object Estatus: TZQuery
    Connection = connection.zConnection
    OnDeleteError = EstatusDeleteError
    OnPostError = EstatusPostError
    SQL.Strings = (
      'select * from estatus order by cIdStatus')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 171
    Top = 307
  end
  object ds_fasesxproyecto: TDataSource
    DataSet = FasesxProyecto
    Left = 142
    Top = 336
  end
  object FasesxProyecto: TZQuery
    Connection = connection.zConnection
    OnDeleteError = FasesxProyectoDeleteError
    OnPostError = FasesxProyectoPostError
    SQL.Strings = (
      'select * from fasesxproyecto order by sIdFase')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 170
    Top = 336
  end
  object ds_Categorias: TDataSource
    DataSet = Categorias
    Left = 17
    Top = 253
  end
  object Categorias: TZQuery
    Connection = connection.zConnection
    BeforeEdit = CategoriasBeforeEdit
    AfterEdit = CategoriasAfterEdit
    BeforePost = CategoriasBeforePost
    AfterPost = CategoriasAfterPost
    BeforeDelete = CategoriasBeforeDelete
    OnDeleteError = CategoriasDeleteError
    OnPostError = CategoriasPostError
    OnNewRecord = CategoriasNewRecord
    SQL.Strings = (
      
        'select * from categorias order by dFechaVigencia DESC, sIdCatego' +
        'ria')
    Params = <>
    Left = 46
    Top = 253
  end
  object dsDirecciones: TDataSource
    DataSet = qryDirecciones
    Left = 18
    Top = 169
  end
  object qryDirecciones: TZQuery
    Connection = connection.zConnection
    AfterScroll = qryDireccionesAfterScroll
    BeforePost = qryDireccionesBeforePost
    AfterPost = qryDireccionesAfterPost
    AfterCancel = qryDireccionesAfterCancel
    BeforeDelete = qryDireccionesBeforeDelete
    OnDeleteError = qryDireccionesDeleteError
    OnPostError = qryDireccionesPostError
    SQL.Strings = (
      'select * from direcciones')
    Params = <>
    Left = 46
    Top = 169
    object qryDireccionesiIdDireccion: TLargeintField
      FieldName = 'iIdDireccion'
      OnChange = qryDireccionesiIdDireccionChange
      OnSetText = qryDireccionesiIdDireccionSetText
    end
    object qryDireccionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 60
    end
  end
  object dsCondiciones: TDataSource
    DataSet = qryCondiciones
    Left = 377
    Top = 308
  end
  object qryMezclas: TZQuery
    Connection = connection.zConnection
    OnDeleteError = qryMezclasDeleteError
    OnPostError = qryMezclasPostError
    SQL.Strings = (
      'select * from recursosdeexistencias')
    Params = <>
    Left = 406
    Top = 336
  end
  object dsMezclas: TDataSource
    DataSet = qryMezclas
    Left = 378
    Top = 336
  end
  object dsTiposMovimiento: TDataSource
    DataSet = QryTiposdeMovimiento
    Left = 320
    Top = 336
  end
  object QryEstimaciones: TZQuery
    Connection = connection.zConnection
    AfterInsert = QryEstimacionesAfterInsert
    BeforePost = QryEstimacionesBeforePost
    OnDeleteError = QryEstimacionesDeleteError
    OnPostError = QryEstimacionesPostError
    SQL.Strings = (
      'select * from estimacionperiodo '
      
        'where sContrato =:Contrato  and sIdTipoEstimacion = "N" order by' +
        ' iNumeroEstimacion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 348
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object QryEstimacionessContrato: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object QryEstimacionesiNumeroEstimacion: TStringField
      FieldName = 'iNumeroEstimacion'
      Required = True
      OnSetText = QryEstimacionesiNumeroEstimacionSetText
      Size = 10
    end
    object QryEstimacionessIdTipoEstimacion: TStringField
      FieldName = 'sIdTipoEstimacion'
      Size = 2
    end
    object QryEstimacionesdIdFecha: TDateField
      FieldName = 'dIdFecha'
    end
    object QryEstimacionesdFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object QryEstimacionesdFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object QryEstimacionessMoneda: TStringField
      FieldName = 'sMoneda'
      Size = 15
    end
    object QryEstimacioneslEstimado: TStringField
      FieldName = 'lEstimado'
      Size = 2
    end
    object QryEstimacionesdMontoMNGeneradores: TFloatField
      FieldName = 'dMontoMNGeneradores'
    end
    object QryEstimacionesdMontoDLLGeneradores: TFloatField
      FieldName = 'dMontoDLLGeneradores'
    end
    object QryEstimacionesdMontoMN: TFloatField
      FieldName = 'dMontoMN'
    end
    object QryEstimacionesdMontoDLL: TFloatField
      FieldName = 'dMontoDLL'
    end
    object QryEstimacionesdMontoAcumuladoMN: TFloatField
      FieldName = 'dMontoAcumuladoMN'
    end
    object QryEstimacionesdMontoAcumuladoDLL: TFloatField
      FieldName = 'dMontoAcumuladoDLL'
    end
    object QryEstimacionesdRetencionMN: TFloatField
      FieldName = 'dRetencionMN'
    end
    object QryEstimacionesdRetencionDLL: TFloatField
      FieldName = 'dRetencionDLL'
    end
    object QryEstimacionessElementoPEP: TStringField
      FieldName = 'sElementoPEP'
      Size = 50
    end
    object QryEstimacionessFondo: TStringField
      FieldName = 'sFondo'
      Size = 50
    end
    object QryEstimacionessPosicionFinanciera: TStringField
      FieldName = 'sPosicionFinanciera'
      Size = 50
    end
    object QryEstimacionessCuentaMayor: TStringField
      FieldName = 'sCuentaMayor'
      Size = 50
    end
    object QryEstimacionessCentroGestor: TStringField
      FieldName = 'sCentroGestor'
      Size = 50
    end
    object QryEstimacionessCentroCosto: TStringField
      FieldName = 'sCentroCosto'
      Size = 50
    end
    object QryEstimacionessCentroBeneficio: TStringField
      FieldName = 'sCentroBeneficio'
      Size = 50
    end
    object QryEstimacionessProyecto: TStringField
      FieldName = 'sProyecto'
      Size = 50
    end
    object QryEstimacionesmComentarios: TMemoField
      FieldName = 'mComentarios'
      BlobType = ftMemo
    end
    object QryEstimacionesdAvanceFisicoProgramado: TFloatField
      FieldName = 'dAvanceFisicoProgramado'
    end
    object QryEstimacionesdAvanceFisicoReal: TFloatField
      FieldName = 'dAvanceFisicoReal'
    end
    object QryEstimacionesdAvanceFinancieroProgramado: TFloatField
      FieldName = 'dAvanceFinancieroProgramado'
    end
    object QryEstimacionesdAvanceFinancieroReal: TFloatField
      FieldName = 'dAvanceFinancieroReal'
    end
    object QryEstimacionesdFechaInicioContrato: TDateField
      FieldName = 'dFechaInicioContrato'
      Required = True
    end
    object QryEstimacionesdFechaFinalContrato: TDateField
      FieldName = 'dFechaFinalContrato'
      Required = True
    end
    object QryEstimacionesdMontoContratoMN: TFloatField
      FieldName = 'dMontoContratoMN'
    end
    object QryEstimacionesdMontoContratoDLL: TFloatField
      FieldName = 'dMontoContratoDLL'
    end
    object QryEstimacionesdMontoProgramadoMensualMN: TFloatField
      FieldName = 'dMontoProgramadoMensualMN'
    end
    object QryEstimacionesdMontoProgramadoMensualDLL: TFloatField
      FieldName = 'dMontoProgramadoMensualDLL'
    end
    object QryEstimacionesdMontoProgramadoAcumuladoMN: TFloatField
      FieldName = 'dMontoProgramadoAcumuladoMN'
    end
    object QryEstimacionesdMontoProgramadoAcumuladoDLL: TFloatField
      FieldName = 'dMontoProgramadoAcumuladoDLL'
    end
    object QryEstimacionessIdUsuarioAutoriza: TStringField
      FieldName = 'sIdUsuarioAutoriza'
      Size = 10
    end
    object QryEstimacionessFirmas: TMemoField
      FieldName = 'sFirmas'
      BlobType = ftMemo
    end
  end
  object dsEstimaciones: TDataSource
    DataSet = QryEstimaciones
    Left = 320
    Top = 308
  end
  object ds_Anexos: TDataSource
    DataSet = anexos
    Left = 260
    Top = 308
  end
  object ds_reprograma: TDataSource
    DataSet = QryReprograma
    Left = 260
    Top = 336
  end
  object QryReprograma: TZQuery
    Connection = connection.zConnection
    AfterInsert = QryReprogramaAfterInsert
    AfterEdit = QryReprogramaAfterEdit
    BeforePost = QryReprogramaBeforePost
    OnDeleteError = QryReprogramaDeleteError
    OnPostError = QryReprogramaPostError
    SQL.Strings = (
      'select * from reprogramacion_barco'
      'where sContrato =:Contrato ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 289
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object QryReprogramaiOrden: TIntegerField
      FieldName = 'iOrden'
    end
    object DateField2: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object DateField3: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object QryReprogramadDuracion: TIntegerField
      FieldName = 'dDuracion'
    end
  end
  object ds_Moneda: TDataSource
    DataSet = Monedas
    Left = 204
    Top = 308
  end
  object Monedas: TZQuery
    Connection = connection.zConnection
    OnDeleteError = MonedasDeleteError
    OnPostError = MonedasPostError
    SQL.Strings = (
      'select * from tiposdemoneda ')
    Params = <>
    Left = 232
    Top = 308
  end
  object ds_pernoctas: TDataSource
    DataSet = Pernoctas
    Left = 17
    Top = 309
  end
  object Pernoctas: TZQuery
    Connection = connection.zConnection
    BeforePost = PernoctasBeforePost
    OnDeleteError = PernoctasDeleteError
    OnPostError = PernoctasPostError
    SQL.Strings = (
      'select * from cuentas order by sIdCuenta')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 45
    Top = 309
    object PernoctassIdCuenta: TStringField
      FieldName = 'sIdCuenta'
      OnSetText = PernoctassIdCuentaSetText
      Size = 4
    end
    object PernoctassIdPernocta: TStringField
      FieldName = 'sIdPernocta'
      OnChange = PernoctassIdPernoctaChange
      Size = 10
    end
    object PernoctassDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 100
    end
    object PernoctassMedida: TStringField
      FieldName = 'sMedida'
      Size = 10
    end
    object PernoctasdCostoMN: TFloatField
      FieldName = 'dCostoMN'
    end
    object PernoctasdCostoDLL: TFloatField
      FieldName = 'dCostoDLL'
      OnSetText = PernoctasdCostoDLLSetText
    end
    object PernoctasdVentaMN: TFloatField
      FieldName = 'dVentaMN'
    end
    object PernoctasdVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      OnSetText = PernoctasdVentaDLLSetText
    end
  end
  object QEstimacionxContrato: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select *,mid(sdescripcion,1,255) as sdesc from estimacionxcontra' +
        'to where scontrato=:contrato order by iorden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 171
    Top = 251
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
  end
  object DsEstimacionxContrato: TDataSource
    AutoEdit = False
    DataSet = QEstimacionxContrato
    Left = 142
    Top = 252
  end
  object QEstimacionxContratoG: TZQuery
    Connection = connection.zConnection
    AfterInsert = QEstimacionxContratoGAfterInsert
    BeforePost = QEstimacionxContratoGBeforePost
    OnDeleteError = QEstimacionxContratoGDeleteError
    OnPostError = QEstimacionxContratoGPostError
    SQL.Strings = (
      
        'select * from estimacionxcontrato where scontrato=:contrato orde' +
        'r by iorden'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Left = 171
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    object QEstimacionxContratoGsContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object QEstimacionxContratoGiIdEstimacionContrato: TLargeintField
      FieldName = 'iIdEstimacionContrato'
    end
    object QEstimacionxContratoGsPartida: TStringField
      FieldName = 'sPartida'
      Required = True
      OnSetText = QEstimacionxContratoGsPartidaSetText
      Size = 10
    end
    object QEstimacionxContratoGsDescripcion: TMemoField
      FieldName = 'sDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object QEstimacionxContratoGiOrden: TLargeintField
      FieldName = 'iOrden'
      Required = True
    end
  end
  object DsEstimacionxContratoG: TDataSource
    DataSet = QEstimacionxContratoG
    Left = 142
    Top = 280
  end
  object qryFormasPago: TZQuery
    Connection = connection.zConnection
    OnDeleteError = qryFormasPagoDeleteError
    OnPostError = qryFormasPagoPostError
    SQL.Strings = (
      'select * from formas_pago')
    Params = <>
    Left = 232
    Top = 336
  end
  object dsFormasPago: TDataSource
    DataSet = qryFormasPago
    Left = 204
    Top = 335
  end
  object QryTiposdeMovimiento: TZQuery
    Connection = connection.zConnection
    AfterInsert = QryTiposdeMovimientoAfterInsert
    BeforePost = QryTiposdeMovimientoBeforePost
    OnDeleteError = QryTiposdeMovimientoDeleteError
    OnPostError = QryTiposdeMovimientoPostError
    SQL.Strings = (
      'select * from tiposdemovimiento where sContrato =:Contrato'
      'And sClasificacion="Movimiento de Barco"'
      'order by iOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 349
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object QryTiposdeMovimientosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object QryTiposdeMovimientosIdTipoMovimiento: TStringField
      FieldName = 'sIdTipoMovimiento'
      Required = True
      Size = 10
    end
    object QryTiposdeMovimientosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object QryTiposdeMovimientosClasificacion: TStringField
      FieldName = 'sClasificacion'
      Size = 26
    end
    object QryTiposdeMovimientosMedida: TStringField
      FieldName = 'sMedida'
      Size = 10
    end
    object QryTiposdeMovimientosTipo: TStringField
      FieldName = 'sTipo'
      Size = 12
    end
    object QryTiposdeMovimientoiOrden: TStringField
      FieldName = 'iOrden'
      OnSetText = QryTiposdeMovimientoiOrdenSetText
      Size = 1
    end
    object QryTiposdeMovimientolGrafica: TStringField
      FieldName = 'lGrafica'
      Size = 2
    end
    object QryTiposdeMovimientoiColor: TIntegerField
      FieldName = 'iColor'
    end
    object QryTiposdeMovimientodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      OnSetText = QryTiposdeMovimientodVentaMNSetText
      currency = True
    end
    object QryTiposdeMovimientodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      OnSetText = QryTiposdeMovimientodVentaDLLSetText
      currency = True
    end
    object QryTiposdeMovimientolGenera: TStringField
      FieldName = 'lGenera'
      Size = 2
    end
    object QryTiposdeMovimientoiIdEstimacionContrato: TIntegerField
      FieldName = 'iIdEstimacionContrato'
      Required = True
      OnGetText = QryTiposdeMovimientoiIdEstimacionContratoGetText
    end
    object QryTiposdeMovimientodCantidad: TFloatField
      FieldName = 'dCantidad'
    end
  end
  object anexos: TZQuery
    Connection = connection.zConnection
    AfterScroll = anexosAfterScroll
    AfterInsert = anexosAfterInsert
    BeforePost = anexosBeforePost
    OnDeleteError = anexosDeleteError
    OnPostError = anexosPostError
    SQL.Strings = (
      
        'select * from anexos Order by iidestimacionContrato,iorden,sAnex' +
        'o')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 289
    Top = 308
    object anexossAnexo: TStringField
      FieldName = 'sAnexo'
      Required = True
      OnChange = anexossAnexoChange
      Size = 10
    end
    object anexossDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 200
    end
    object anexosiIdEstimacionContrato: TIntegerField
      FieldName = 'iIdEstimacionContrato'
      Required = True
      OnGetText = anexosiIdEstimacionContratoGetText
    end
    object anexossTipo: TStringField
      FieldName = 'sTipo'
      Size = 11
    end
    object anexossTierra: TStringField
      FieldName = 'sTierra'
      Size = 2
    end
    object anexossMedida: TStringField
      FieldName = 'sMedida'
      Size = 10
    end
    object anexosdVentaMn: TFloatField
      FieldName = 'dVentaMn'
      Required = True
      OnSetText = anexosdVentaMnSetText
      currency = True
    end
    object anexosdVentaDll: TFloatField
      FieldName = 'dVentaDll'
      Required = True
      OnSetText = anexosdVentaDllSetText
      currency = True
    end
    object anexosiOrden: TLargeintField
      FieldName = 'iOrden'
      OnSetText = anexosiOrdenSetText
    end
    object anexosdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
      OnSetText = anexosdCantidadSetText
    end
  end
  object QryClasificacionPernoctas: TZQuery
    Connection = connection.zConnection
    AfterInsert = QryClasificacionPernoctasAfterInsert
    BeforePost = QryClasificacionPernoctasBeforePost
    OnDeleteError = QryClasificacionPernoctasDeleteError
    OnPostError = QryClasificacionPernoctasPostError
    SQL.Strings = (
      'select * from tiposdemovimiento where sContrato =:Contrato'
      'And sClasificacion="Clasificacion de Pernoctas"'
      'order by iOrden')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 45
    Top = 281
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object StringField2: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'sIdTipoMovimiento'
      Required = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'sClasificacion'
      Size = 26
    end
    object StringField6: TStringField
      FieldName = 'sMedida'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'sTipo'
      Size = 12
    end
    object StringField8: TStringField
      FieldName = 'iOrden'
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'lGrafica'
      Size = 2
    end
    object IntegerField1: TIntegerField
      FieldName = 'iColor'
    end
    object FloatField1: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object FloatField2: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object StringField10: TStringField
      FieldName = 'lGenera'
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'iIdEstimacionContrato'
      Required = True
      OnGetText = IntegerField2GetText
    end
    object QryClasificacionPernoctasdCantidad: TFloatField
      FieldName = 'dCantidad'
      Required = True
    end
  end
  object DsClasificacionPernoctas: TDataSource
    DataSet = QryClasificacionPernoctas
    Left = 17
    Top = 281
  end
  object qryCondiciones: TZQuery
    Connection = connection.zConnection
    AfterScroll = qryCondicionesAfterScroll
    AfterPost = qryCondicionesAfterPost
    AfterCancel = qryCondicionesAfterCancel
    BeforeDelete = qryCondicionesBeforeDelete
    OnDeleteError = qryCondicionesDeleteError
    OnPostError = qryCondicionesPostError
    SQL.Strings = (
      'select * from condiciones')
    Params = <>
    Left = 406
    Top = 307
    object qryCondicionesiIdCondicion: TLargeintField
      FieldName = 'iIdCondicion'
      OnChange = qryCondicionesiIdCondicionChange
      OnSetText = qryCondicionesiIdCondicionSetText
    end
    object qryCondicionessDescripcion: TStringField
      FieldName = 'sDescripcion'
      Required = True
      Size = 100
    end
    object qryCondicionessMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 45
    end
  end
  object ds_despiece: TDataSource
    DataSet = Q_despiece
    Left = 441
    Top = 340
  end
  object Q_despiece: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from perimetros order by iIdPerimetro')
    Params = <>
    Left = 470
    Top = 339
  end
  object ds_BarcoVigencia: TDataSource
    DataSet = QryBarcoVigencia
    Left = 444
    Top = 312
  end
  object QryBarcoVigencia: TZQuery
    Connection = connection.zConnection
    OnCalcFields = QryBarcoVigenciaCalcFields
    AfterInsert = QryBarcoVigenciaAfterInsert
    BeforePost = QryBarcoVigenciaBeforePost
    OnDeleteError = QryBarcoVigenciaDeleteError
    OnPostError = QryBarcoVigenciaPostError
    SQL.Strings = (
      'select * from embarcacion_vigencia'
      'where sContrato =:Contrato order by dFechaInicio')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 473
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end>
    object StringField11: TStringField
      FieldName = 'sContrato'
      Size = 15
    end
    object QryBarcoVigenciasIdEmbarcacion: TStringField
      FieldName = 'sIdEmbarcacion'
      OnChange = QryBarcoVigenciasIdEmbarcacionChange
    end
    object QryBarcoVigenciasDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescripcion'
      Calculated = True
    end
    object DateField1: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object DateField4: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
  end
  object ds_informacion: TDataSource
    DataSet = QryInformacion
    Left = 510
    Top = 312
  end
  object QryInformacion: TZQuery
    Connection = connection.zConnection
    OnDeleteError = FasesxProyectoDeleteError
    OnPostError = FasesxProyectoPostError
    SQL.Strings = (
      'select * from informacionxcliente order by sIdInformacion')
    Params = <>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 538
    Top = 312
  end
  object ds_tipocambio: TDataSource
    DataSet = tipocambio
    Left = 508
    Top = 340
  end
  object tipocambio: TZQuery
    Connection = connection.zConnection
    BeforePost = tipocambioBeforePost
    OnDeleteError = MonedasDeleteError
    OnPostError = MonedasPostError
    SQL.Strings = (
      'select * from tiposdecambio order by dIdFecha')
    Params = <>
    Left = 536
    Top = 340
  end
  object PopOpciones: TPopupMenu
    OnPopup = PopOpcionesPopup
    Left = 384
    Top = 216
    object CrearVigencia: TMenuItem
      Caption = 'Crear Nueva Vigencia de Categorias'
      OnClick = CrearVigenciaClick
    end
  end
end
