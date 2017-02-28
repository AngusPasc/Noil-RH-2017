unit frm_CalculoAvancesxPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, utilerias, frm_connection, DBCtrls, StdCtrls, Buttons, DB, Global,
  ComCtrls, math, ZDataset, ZAbstractRODataset, ZAbstractDataset, Grids,
  DBGrids, RXDBCtrl, Gauges, unitexcepciones, udbgrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,CxGridExportLink,ShellApi, ExtCtrls,
  Menus, ExtDlgs;

type
  TfrmCalculoAvancesxPartida = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    ds_actividadesxorden: TDataSource;
    ordenesdetrabajo: TZReadOnlyQuery;
    ActividadesxOrden: TZReadOnlyQuery;
    ActividadesxOrdensContrato: TStringField;
    ActividadesxOrdensIdConvenio: TStringField;
    ActividadesxOrdensNumeroOrden: TStringField;
    ActividadesxOrdeniNivel: TIntegerField;
    ActividadesxOrdensSimbolo: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdensPaquete: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ActividadesxOrdensTipoActividad: TStringField;
    ActividadesxOrdeniItemOrden: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdensMedida: TStringField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdendCargado: TFloatField;
    ActividadesxOrdendInstalado: TFloatField;
    ActividadesxOrdendExcedente: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendVentaDLL: TFloatField;
    ActividadesxOrdeniColor: TIntegerField;
    ActividadesxOrdensWbsSpace: TStringField;
    Bitacora: TZReadOnlyQuery;
    MaximoDiario: TZReadOnlyQuery;
    Progress: TGauge;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdendFechaFinal: TDateField;
    pnl1: TPanel;
    lbl1: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    btnOk: TButton;
    btnTodos: TButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_actividades: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    popup1: TPopupMenu;
    ExportaraExcel1: TMenuItem;
    dlgSave1: TSavePictureDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure btnTodosClick(Sender: TObject);
    procedure ActividadesxOrdenAfterScroll(DataSet: TDataSet);
    procedure cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure ExportaraExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculoAvancesxPartida: TfrmCalculoAvancesxPartida;
  lRegistrarUno: boolean;
  utgrid: ticdbgrid;
implementation
uses
UInteliDialog ;

{$R *.dfm}

procedure TfrmCalculoAvancesxPartida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  
end;

procedure TfrmCalculoAvancesxPartida.btnOkClick(Sender: TObject);
var
  iDiario: Integer;
  dAvance,
    dAvanceFase: Double;
  dInstalado: Double;
  dAvanceAnterior: Double;
  dCantidad: Double;
  dCantidadAnterior: Double;
  dCantidadenFase: Double;
  mDescripcion: WideString;
  iFase: Byte;
  EsPartidaTerminal: Boolean;
  sWbsKardex: string; //****************************BRITO 09/02/11********************************
begin
  try
    if Connection.configuracion.FieldValues['sAvanceBitacora'] <> 'Porcentaje' then
      if ActividadesxOrden.RecordCount > 0 then
        if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' then
        begin
          dInstalado := 0;
              // Inicializo Alcances en 0
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET dAvance = 0 WHERE sContrato = :contrato and ' +
            'sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          connection.zCommand.ExecSQL;

              // Elimino de la Bitacora todos registros productos de la bitacora de alcances
//          connection.zCommand.Active := False;
//          connection.zCommand.SQL.Clear;
//          connection.zCommand.SQL.Add('DELETE FROM bitacoradeactividades WHERE sContrato = :contrato And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And lAlcance = "Si"');
//          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
//          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
//          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
//          connection.zCommand.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
//          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
//          connection.zCommand.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
//          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
//          connection.zCommand.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
//          connection.zCommand.ExecSQL;

              // Inicializo la bitacora en 0
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dAvance = 0 WHERE sContrato = :contrato And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          connection.zCommand.ExecSQL;

              // Primero, se verifica si la partida existe dentro de la bitacora de alcances ....
          Bitacora.Active := False;
          Bitacora.SQL.Clear;
          Bitacora.SQL.Add('select b.dIdFecha, b.sIdTurno, b.iIdDiario, b.iFase, b.dCantidad, b.dAvance, b.mDescripcion, a.dAvance as dAlcance from bitacoradealcances b ' +
            'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
            'where b.sContrato = :contrato and b.sNumeroOrden = :Orden And b.sWbs = :Wbs And ' +
            'b.sNumeroActividad = :Actividad order by iFase, b.dIdFecha, b.sIdTurno, b.iIdDiario');
          Bitacora.Params.ParamByName('Contrato').DataType := ftString;
          Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
          Bitacora.Params.ParamByName('Orden').DataType := ftString;
          Bitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
          Bitacora.Params.ParamByName('Wbs').DataType := ftString;
          Bitacora.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          Bitacora.Params.ParamByName('Actividad').DataType := ftString;
          Bitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          Bitacora.Open;
          if Bitacora.RecordCount > 0 then
          begin
            iFase := 0;
            Progress.Visible := True;
            Progress.MaxValue := Bitacora.RecordCount;
            Progress.MinValue := 1;
            while not Bitacora.Eof do
            begin
              Progress.Progress := Bitacora.RecNo;
              if iFase <> Bitacora.FieldValues['iFase'] then
              begin
                iFase := Bitacora.FieldValues['iFase'];
                dCantidadenFase := 0;
                dAvanceFase := 0;

                          // Comprobamos si la nueva fase es una fase terminal .....
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select sContrato From alcancesxactividad Where sContrato = :Contrato And sNumeroActividad = :Actividad And iFase > :Fase');
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
                Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
                Connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
                Connection.qryBusca.Params.ParamByName('Fase').Value := Bitacora.FieldValues['iFase'];
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount = 0 then
                  EsPartidaTerminal := True
                else
                  EsPartidaTerminal := False;
              end;
              dAvance := 0;
              dAvanceAnterior := 0;
              mDescripcion := Bitacora.fieldValues['mDescripcion'];
              if ActividadesxOrden.FieldValues['dCantidad'] = 0 then
                dAvance := 0
              else
                dAvance := (Bitacora.FieldValues['dAlcance'] / 100) * ((100 * Bitacora.FieldValues['dCantidad']) / ActividadesxOrden.FieldValues['dCantidad']);

              if (dCantidadenFase + Bitacora.FieldValues['dCantidad']) >= ActividadesxOrden.FieldValues['dCantidad'] then
                dAvance := Bitacora.FieldValues['dAlcance'] - dAvanceFase;

              if (dAvanceAnterior + dAvance) >= 100 then
                dAvance := 100 - dAvanceAnterior;

              dAvanceAnterior := dAvanceAnterior + dAvance;
              dCantidadenFase := dCantidadenFase + Bitacora.FieldValues['dCantidad'];
              dAvanceFase := dAvanceFase + dAvance;


                      // Una Vez obtenido el valor del nuevo avance de la partida ..
                      // Se almacena en la bitacora ...
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET dAvance = :Avance ' +
                'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
              connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
              connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
              connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Avance').value := dAvance;
              connection.zCommand.ExecSQL;

                      // Primero Busco que exista la referencia con al bitacora de actividades

              connection.qryBusca.Active := False;
              connection.qryBusca.SQL.Clear;
              connection.qryBusca.SQL.Add('select  sContrato from bitacoradeactividades ' +
                'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario And ' +
                'sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
              connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
              connection.qryBusca.Params.ParamByName('contrato').value := Global_Contrato;
              connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
              connection.qryBusca.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
              connection.qryBusca.Params.ParamByName('diario').DataType := ftInteger;
              connection.qryBusca.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
              connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
              connection.qryBusca.Params.ParamByName('orden').value := ActividadesxOrden.FieldValues['sNumeroOrden'];
              connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
              connection.qryBusca.Params.ParamByName('wbs').value := ActividadesxOrden.FieldValues['sWbs'];
              connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
              connection.qryBusca.Params.ParamByName('actividad').value := ActividadesxOrden.FieldValues['sNumeroActividad'];
              connection.qryBusca.Open;
              if connection.QryBusca.RecordCount > 0 then
              begin
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET mDescripcion = :Descripcion, dAvance = :Avance ' +
                  'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario And ' +
                  'sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
                connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                connection.zCommand.Params.ParamByName('descripcion').value := mDescripcion;
                connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                connection.zCommand.Params.ParamByName('orden').value := ActividadesxOrden.FieldValues['sNumeroOrden'];
                connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                connection.zCommand.Params.ParamByName('wbs').value := ActividadesxOrden.FieldValues['sWbs'];
                connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                connection.zCommand.Params.ParamByName('actividad').value := ActividadesxOrden.FieldValues['sNumeroActividad'];
                connection.zCommand.ExecSQL;
              end
              else
              begin
                          // Si no realizo actualizacion, indica que no existe la liga con la bitacora de actividades ...
                          // Insertar el registro a la bitacora de forma manual ...

                          // Primero se obtiene el maximo diario ...
                MaximoDiario.Active := False;
                MaximoDiario.SQL.Clear;
                MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades where ' +
                  '( sContrato = :contrato ) and ( dIdFecha = :fecha ) Group By sContrato , dIdFecha');
                MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
                MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
                MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
                MaximoDiario.Params.ParamByName('Fecha').Value := Bitacora.FieldValues['dIdFecha'];
                MaximoDiario.Open;
                if MaximoDiario.FieldByName('TotalDiario').IsNull then
                  iDiario := 1
                else
                  iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                    ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, dAvance ,mDescripcion ) ' +
                    ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :wbs, :actividad, :tipo, :Avance, :descripcion)');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                  connection.zCommand.Params.ParamByName('orden').value := ActividadesxOrden.FieldValues['sNumeroOrden'];
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                  connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('diario').value := iDiario;
                  connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                  connection.zCommand.Params.ParamByName('turno').value := Bitacora.FieldValues['sIdTurno'];
                  {08/03/2012: adal, si global_depto = '' manda error de clave foranea, se le pone = NULL}
                  if global_depto = '' then
                  begin
                    connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                    connection.zCommand.Params.ParamByName('depto').value := NULL;
                  end
                  else
                  begin
                    connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                    connection.zCommand.Params.ParamByName('depto').value := global_depto;
                  end;
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').value := ActividadesxOrden.FieldValues['sWbs'];
                  connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('actividad').value := ActividadesxOrden.FieldValues['sNumeroActividad'];
                  connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                  connection.zCommand.Params.ParamByName('tipo').value := connection.configuracion.fieldvalues['sTipoAlcance'];
                  connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                  connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                  connection.zCommand.Params.ParamByName('descripcion').value := mDescripcion;
                  connection.zCommand.ExecSQL;

                              // Despues de meter a la bitacora el nuevo registro, actualizo la bitacora de alcances con el nuevo IdDiario Asignado
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET iIdDiario = :NewDiario ' +
                    'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                  connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('NewDiario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('NewDiario').value := iDiario;
                  connection.zCommand.ExecSQL;
                except
                  on E: Exception do
                  begin
                    MessageDlg('Proceso(Actualización de Bitacora): Ocurrio un error al actualizar el avance de la partida en la bitacora de actividades ' +
                      'Informe al administrador del sistema Del siguiente mensaje de error:  ' + chr(10) + chr(10) + e.Message, mtWarning, [mbOk], 0);
                  end;
                end
              end;
              if EsPartidaTerminal then
              begin
                dInstalado := dInstalado + Bitacora.FieldValues['dCantidad'];
                          // Ahora Introduzco la cantidad en la partida si se trata de una partida terminal ...
                MaximoDiario.Active := False;
                MaximoDiario.SQL.Clear;
                MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha = :fecha Group By sContrato');
                MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
                MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
                MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
                MaximoDiario.Params.ParamByName('Fecha').Value := Bitacora.FieldValues['dIdFecha'];
                MaximoDiario.Open;
                if MaximoDiario.FieldByName('TotalDiario').IsNull then
                  iDiario := 1
                else
                  iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;
                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                    ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, dCantidad , mDescripcion , lAlcance, mNotas) ' +
                    ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :wbs, :actividad, :tipo, :cantidad, :descripcion, "Si", "" )');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                  connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('diario').value := iDiario;
                  connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                  connection.zCommand.Params.ParamByName('turno').value := Bitacora.FieldValues['sIdTurno'];
                  {08/03/2012: adal, si global_depto = '' manda error de clave foranea, se le pone = NULL}
                  if global_depto = '' then
                  begin
                    connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                    connection.zCommand.Params.ParamByName('depto').value := NULL;
                  end
                  else
                  begin
                    connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                    connection.zCommand.Params.ParamByName('depto').value := global_depto;
                  end;
                  connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                  connection.zCommand.Params.ParamByName('orden').value := ActividadesxOrden.FieldValues['sNumeroOrden'];
                  connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('wbs').value := ActividadesxOrden.FieldValues['sWbs'];
                  connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('actividad').value := ActividadesxOrden.FieldValues['sNumeroActividad'];
                  connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                  connection.zCommand.Params.ParamByName('tipo').value := connection.configuracion.fieldvalues['sTipoOperacion'];
                  connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('cantidad').value := Bitacora.FieldValues['dCantidad'];
                  connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                  connection.zCommand.Params.ParamByName('descripcion').value := Bitacora.FieldValues['mDescripcion'];
                  connection.zCommand.ExecSQL;
                except
                  on e: Exception do
                  begin
                    MessageDlg('ERROR: Ocurrio un error al actualizar en el programa la partida No. ' + ActividadesxOrden.FieldValues['sNumeroActividad'] + ', notificar al administrador del sistema' +
                      ' Del siguiente mensaje de error:  ' + chr(10) + chr(10) + e.Message, mtWarning, [mbOk], 0);
                  end;
                end
              end;
              Bitacora.Next;
            end;
            Progress.Progress := 0;
            Progress.Visible := False;
          end
          else
          begin
                  // Inicializo Query . Para solo enviar Parametros en el ciclo
            Bitacora.Active := False;
            Bitacora.SQL.Clear;
            Bitacora.SQL.Add('select iIdDiario, dIdFecha, sIdTurno, dCantidad, dAvance, mDescripcion from bitacoradeactividades ' +
              'where sContrato = :contrato and sNumeroOrden = :Orden and dCantidad > 0 And sWbs = :Wbs And ' +
              'sNumeroActividad = :Actividad and lAlcance = "No" order by dIdFecha, sIdTurno, iIdDiario');
            Bitacora.Params.ParamByName('Contrato').DataType := ftString;
            Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
            Bitacora.Params.ParamByName('Orden').DataType := ftString;
            Bitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
            Bitacora.Params.ParamByName('Wbs').DataType := ftString;
            Bitacora.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
            Bitacora.Params.ParamByName('Actividad').DataType := ftString;
            Bitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
            Bitacora.Open;
            dAvance := 0;
            dAvanceAnterior := 0;
            if Bitacora.RecordCount > 0 then
            begin
              Progress.Visible := True;
              Progress.MaxValue := Bitacora.RecordCount;
              Progress.MinValue := 1;
            end;
            while not Bitacora.Eof do
            begin
              Progress.Progress := Bitacora.RecNo;
              dCantidad := Bitacora.FieldValues['dCantidad'];
              dInstalado := dInstalado + Bitacora.FieldValues['dCantidad'];
              if ActividadesxOrden.FieldValues['dCantidad'] = 0 then
                dAvance := 0
              else
                dAvance := (100 / ActividadesxOrden.FieldValues['dCantidad']) * dCantidad;

              if (dAvanceAnterior + dAvance) >= 100 then
                dAvance := 100 - dAvanceAnterior;
              dAvanceAnterior := dAvanceAnterior + dAvance;
              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dAvance = :Avance ' +
                  'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
                connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                connection.zCommand.ExecSQL;
              except
                MessageDlg('Proceso(Actualización de Bitacora): Error al definir el registro de la bitacora como alcance', mtWarning, [mbOk], 0);
              end;
              Bitacora.Next;
            end;
            Progress.Progress := 0;
            Progress.Visible := False;
          end;

              //Ahora los acumulados se almacenan en los catalogos principales ...
              // Primero en el programa de trabajo
          try
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE actividadesxorden SET dInstalado = :Instalado, dExcedente = :Excedente ' +
              'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
            connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('convenio').value := global_convenio;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').value := ActividadesxOrden.FieldValues['sNumeroOrden'];
            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
            connection.zCommand.Params.ParamByName('Wbs').value := ActividadesxOrden.FieldValues['sWbs'];
            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('Actividad').value := ActividadesxOrden.FieldValues['sNumeroActividad'];
            if (dInstalado > ActividadesxOrden.FieldValues['dCantidad']) then
            begin
              connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Instalado').value := ActividadesxOrden.FieldValues['dCantidad'];
              connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Excedente').value := dInstalado - ActividadesxOrden.FieldValues['dCantidad'];
            end
            else
            begin
              connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Instalado').value := dInstalado;
              connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Excedente').value := 0;
            end;
            connection.zCommand.ExecSQL;
          except
            MessageDlg('ERROR: Ocurrio un error al actualizar en el programa la partida No. ' + ActividadesxOrden.FieldValues['sWbs'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
          end;

              // Ahora Ajusto la Partida del Anexo ....
          Connection.qryBusca.Active := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select Sum(dInstalado + dExcedente) as dTotal From actividadesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And ' +
            'sNumeroActividad = :Actividad And sTipoActividad = "Actividad" Group By sNumeroActividad');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
          begin
            Connection.qryBusca2.Active := False;
            Connection.qryBusca2.SQL.Clear;
            Connection.qryBusca2.SQL.Add('Select dCantidadAnexo from actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad');
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
            Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
            Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sWbs'];
            Connection.qryBusca2.Open;
            if Connection.qryBusca2.RecordCount > 0 then
            begin
              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('UPDATE actividadesxanexo SET dInstalado = :Instalado, dExcedente = :Excedente ' +
                  'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad');
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
                connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                connection.zCommand.Params.ParamByName('convenio').value := global_convenio;
                connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                connection.zCommand.Params.ParamByName('Actividad').value := ActividadesxOrden.FieldValues['sWbs'];
                if Connection.qryBusca.FieldValues['dTotal'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] then
                begin
                  connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Instalado').value := Connection.qryBusca2.FieldValues['dCantidadAnexo'];
                  connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Excedente').value := Connection.qryBusca.FieldValues['dTotal'] - Connection.qryBusca2.FieldValues['dCantidadAnexo'];
                end
                else
                begin
                  connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Instalado').value := Connection.qryBusca.FieldValues['dTotal'];
                  connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Excedente').value := 0;
                end;
                connection.zCommand.ExecSQL;
              except
                MessageDlg('ERROR: Ocurrio un error al actualizar en el programa la partida No. ' + ActividadesxOrden.FieldValues['sWbs'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
              end
            end
          end
        end;
           //****************************BRITO 09/02/11********************************
    if lRegistrarUno then begin
               //registrar la operacion en el kardex
      sWbsKardex := ActividadesxOrden.FieldByName('sWbs').AsString;
      Kardex('Regeneraciones', 'Concepto regenerado', sWbsKardex, 'Partida', tsNumeroOrden.Text, '', '');
    end;
           //****************************BRITO 09/02/11********************************

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Regeneracion de Avances x Concepto', 'Al regenerar concepto seleccionado', 0);
    end;
  end;

end;

procedure TfrmCalculoAvancesxPartida.FormShow(Sender: TObject);
begin
  try
    
    connection.configuracion.refresh;
    OrdenesdeTrabajo.Active := False;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato;
    ordenesdetrabajo.Params.ParamByName('status').DataType := ftString;
    ordenesdetrabajo.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
    OrdenesdeTrabajo.Open;
    if OrdenesdeTrabajo.RecordCount > 0 then
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    Progress.Visible := False;
    tsNumeroOrden.SetFocus;
    lRegistrarUno := True;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Regeneracion de Avances x Concepto', 'Al hacer las consultas de inicio', 0);
    end;
  end;
end;

procedure TfrmCalculoAvancesxPartida.tsNumeroOrdenExit(Sender: TObject);
begin
  ActividadesxOrden.Active := False;
  ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString;
  ActividadesxOrden.Params.ParamByName('Contrato').Value := Global_Contrato;
  ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString;
  ActividadesxOrden.Params.ParamByName('Convenio').Value := Global_Convenio;
  ActividadesxOrden.Params.ParamByName('Orden').DataType := ftString;
  ActividadesxOrden.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
  ActividadesxOrden.Open;
  tsNumeroOrden.Color := global_color_salidaERP;
end;

procedure TfrmCalculoAvancesxPartida.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    grid_actividades.SetFocus
end;

procedure TfrmCalculoAvancesxPartida.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entradaERP;
end;

procedure TfrmCalculoAvancesxPartida.ActividadesxOrdenCalcFields(
  DataSet: TDataSet);
begin
  if ActividadesxOrden.FieldValues['sWbs'] <> Null then
    ActividadesxOrdensWbsSpace.Text := espaces(ActividadesxOrden.FieldValues['iNivel']) + ActividadesxOrden.FieldValues['sWbs']
end;

procedure TfrmCalculoAvancesxPartida.btnTodosClick(Sender: TObject);
begin
  try
    lRegistrarUno := False;
    ActividadesxOrden.First;
    while not ActividadesxOrden.Eof do
    begin
      btnOk.Click;
      ActividadesxOrden.Next;
    end;
    //registrar el conjunto en un solo registro de kardex
    Kardex('Regeneraciones', 'Regenera Orden', 'Todas', 'Partida', tsNumeroOrden.Text, '', '');
    lRegistrarUno := True;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Regeneracion de Avances x Concepto', 'Al regenerar todos los conceptos', 0);
    end;
  end;
end;

procedure TfrmCalculoAvancesxPartida.cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
 // try
  //  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
  //    if ActividadesxOrden.RecordCount > 0 then
  //    begin
   //     AFont.Color := esColor(ActividadesxOrden.FieldValues['iColor']);
   //     if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
   ////       Afont.Style := [fsBold]
    //    else
    //      if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
     //     begin
     ////       Afont.Style := [fsBold, fsItalic];
     //       AFont.Color := clRed;
     //     end
    //  end
 // except
  //  on e: exception do begin
   //   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Regeneracion de Avances x Concepto', 'Al cambiar de registro', 0);
   // end;
 //end;
end;

procedure TfrmCalculoAvancesxPartida.ExportaraExcel1Click(Sender: TObject);
Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

 begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, grid_actividades);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
 end;
end;

procedure TfrmCalculoAvancesxPartida.ActividadesxOrdenAfterScroll(
  DataSet: TDataSet);
begin
  Grid_Actividades.Hint := ActividadesxOrden.FieldValues['mDescripcion']
end;

end.

