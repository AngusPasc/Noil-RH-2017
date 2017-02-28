object FrmEvaluacionPersonal: TFrmEvaluacionPersonal
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Evaluaci'#243'n del Personal'
  ClientHeight = 443
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxgrd1: TcxGrid
    Left = 0
    Top = 0
    Width = 883
    Height = 443
    Align = alClient
    TabOrder = 0
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCellDblClick = cxgrdbtblvwGrid1DBTableView1CellDblClick
      DataController.DataSource = dsEmpleados
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object folioGrid1DBTableViewIdPersonal: TcxGridDBColumn
        DataBinding.FieldName = 'IdPersonal'
      end
      object folioGrid1DBTableView1IdPersonal: TcxGridDBColumn
        Caption = 'Ficha'
        DataBinding.FieldName = 'sIdEmpleado'
        Width = 78
      end
      object folioGrid1DBTableView1sNombreCompleto: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'sNombreCompleto'
        Width = 205
      end
      object folioGrid1DBTableView1sApellidoPaterno: TcxGridDBColumn
        Caption = 'Apellido Paterno'
        DataBinding.FieldName = 'sApellidoPaterno'
      end
      object folioGrid1DBTableView1sApellidoMaterno: TcxGridDBColumn
        Caption = 'Apellido Materno'
        DataBinding.FieldName = 'sApellidoMaterno'
        Width = 126
      end
      object folioGrid1DBTableView1codigodepartamento: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'codigodepartamento'
        Width = 170
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  object zqryEmpleados: TZQuery
    Connection = connection.zConnection
    Active = True
    ReadOnly = True
    SQL.Strings = (
      
        'select IdPersonal, sIdEmpleado, sNombreCompleto, sApellidoPatern' +
        'o, sApellidoMaterno, '
      
        'codigoDepartamento, iEdad, lSexo, dFechaNacimiento from empleado' +
        's where sStatusPersonal = '#39'Contratado'#39)
    Params = <>
    Left = 208
    Top = 136
    object sIdEmpleado: TStringField
      FieldName = 'sIdEmpleado'
    end
    object sNombreCompleto: TStringField
      FieldName = 'sNombreCompleto'
      Size = 50
    end
    object sApellidoPaterno: TStringField
      FieldName = 'sApellidoPaterno'
      Size = 35
    end
    object sApellidoMaterno: TStringField
      FieldName = 'sApellidoMaterno'
      Size = 35
    end
    object codigodepartamento: TStringField
      FieldName = 'codigodepartamento'
      Size = 8
    end
    object iEdad: TIntegerField
      FieldName = 'iEdad'
    end
    object strngfldFolioEmpleadoslSexo: TStringField
      FieldName = 'lSexo'
    end
    object dFechaNacimiento: TDateField
      FieldName = 'dFechaNacimiento'
    end
    object atncfldEmpleadosIdPersonal: TAutoIncField
      FieldName = 'IdPersonal'
    end
  end
  object dsEmpleados: TDataSource
    AutoEdit = False
    DataSet = zqryEmpleados
    Left = 360
    Top = 192
  end
end
