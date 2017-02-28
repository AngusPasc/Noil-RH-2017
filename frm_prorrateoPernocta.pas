unit frm_prorrateoPernocta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, frm_connection, global,
  StdCtrls, ComCtrls, ZAbstractDataset, RxMemDS, frxClass, frxDBSet, Utilerias,
  ExtCtrls, Newpanel, udbgrid, UnitExcepciones, DBDateTimePicker, Buttons,
  RXDBCtrl;

type
  TfrmProrrateoPernocta = class( TForm )
    dsMovimientosBarcos: TDataSource;
    dsOrdenes: TDataSource;
    dsFasesxOrden: TDataSource;
    qryFasesxOrden: TZQuery;
    Label1: TLabel;
    tNewGroupBox2: tNewGroupBox;
    imgNotas: TImage;
    dbGrigMovimientos: TDBGrid;
    tNewGroupBox1: tNewGroupBox;
    Image1: TImage;
    tNewGroupBox3: tNewGroupBox;
    Image2: TImage;
    Grid_Result: TDBGrid;
    Label2: TLabel;
    tdJornada: TEdit;
    QryMovimientosBarcos: TZQuery;
    QryMovimientosBarcossContrato: TStringField;
    QryMovimientosBarcosdIdFecha: TDateField;
    QryMovimientosBarcossIdDepartamento: TStringField;
    QryMovimientosBarcossIdEmbarcacion: TStringField;
    QryMovimientosBarcossClasificacion: TStringField;
    QryMovimientosBarcossIdFase: TStringField;
    QryMovimientosBarcossHoraInicio: TStringField;
    QryMovimientosBarcossHoraFinal: TStringField;
    QryMovimientosBarcossFactor: TStringField;
    QryMovimientosBarcosmDescripcion: TMemoField;
    QryMovimientosBarcosiIdDiario: TIntegerField;
    Label3: TLabel;
    tESuma: TEdit;
    Prorrateo: TZReadOnlyQuery;
    qryROProrrateos: TZReadOnlyQuery;
    dIdFecha: TDBDateTimePicker;
    btnAjustaOrdenes: TBitBtn;
    btnAjustaMovtos: TBitBtn;
    qryMDOrdenes: TZQuery;
    qryMDOrdenessContrato: TStringField;
    qryMDOrdenessNumeroOrden: TStringField;
    qryMDOrdenesdIdFecha: TDateField;
    qryMDOrdenesiIdDiario: TLargeintField;
    qryMDOrdenessClasificacion: TStringField;
    qryMDOrdenesdPersonalOrden: TFloatField;
    qryMDOrdeneslAplica: TStringField;
    dbGridOrdenes: TRxDBGrid;
    btnTodos: TBitBtn;
    btnActualiza: TBitBtn;
    procedure FormShow( Sender: TObject );
    procedure qryMovimientosBarcosAfterScroll(DataSet: TDataSet);
    procedure dIdFechaExit(Sender: TObject);
    procedure btnAjustaMovtosClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnAjustaOrdenesClick(Sender: TObject);
    procedure dIdFechaEnter(Sender: TObject);
    procedure dIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbGrigMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbGrigMovimientosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbGrigMovimientosTitleClick(Column: TColumn);
    procedure dbGridOrdenesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbGridOrdenesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbGridOrdenesTitleClick(Column: TColumn);
    procedure Grid_ResultTitleClick(Column: TColumn);
    procedure Grid_ResultMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ResultMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CopiaMovimientosBarco;
    procedure ActualizaMovimientosBarco;
    procedure qryMDOrdenesBeforePost(DataSet: TDataSet);
    procedure qryMDOrdenesBeforeDelete(DataSet: TDataSet);
    procedure dbGridOrdenesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnActualizaClick(Sender: TObject);
    procedure InsertaOrdenes();
    procedure InsertaOrdenesExistentes();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProrrateoPernocta      : TfrmProrrateoPernocta;
  dCantidad         : Double;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  utgrid3:ticdbgrid;
  QryBarcoVigencia  : TZReadOnlyQuery;

  rxMovimientos,
  rxPernoctas   : TrxMemoryData;
  QryCopiado,
  QryActualiza  : TZReadOnlyQuery;

implementation

{$R *.dfm}

procedure TfrmProrrateoPernocta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   utgrid.destroy;
   utgrid2.Destroy;
   utgrid3.Destroy;
   QryBarcoVigencia.Destroy;
end;

procedure TfrmProrrateoPernocta.FormShow( Sender: TObject );
var
   lContinua : boolean;
begin
    UtGrid:=TicdbGrid.create(dbgrigmovimientos);
    UtGrid2:=TicdbGrid.create(dbgridordenes);
    UtGrid3:=TicdbGrid.create(grid_result);
    dIdFecha.Date := Date;

    global_barco := connection.configuracion.FieldValues['sIdEmbarcacion'];

    QryBarcoVigencia := TZReadOnlyQuery.Create(self);
    QryBarcoVigencia.Connection := connection.zConnection;

    //Mostrar los movimientos de barco
    qryMovimientosBarcos.Active := False;
    qryMovimientosBarcos.Params.ParamByName( 'Contrato' ).DataType := ftString;
    qryMovimientosBarcos.Params.ParamByName( 'Contrato' ).Value    := global_contrato;
    qryMovimientosBarcos.Params.ParamByName( 'Fecha' ).DataType    := ftDate;
    qryMovimientosBarcos.Params.ParamByName( 'Fecha' ).Value       := dIdFecha.Date;
    qryMovimientosBarcos.Open;

    qryFasesxOrden.Active := False;
    qryFasesxOrden.Params.ParamByName( 'Fecha' ).DataType := ftDate;
    qryFasesxOrden.Params.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
    qryFasesxOrden.Params.ParamByName( 'Diario' ).DataType := ftInteger;
    qryFasesxOrden.Params.ParamByName( 'Diario' ).Value := -1 ;
    qryFasesxOrden.Open;

    if global_contrato = global_contrato_barco then
    begin
        qryMDOrdenes.Active := False;
        qryMDOrdenes.SQL.Clear;
        qryMDOrdenes.SQL.Add('select * from fasesxorden_personaliza where dIdFecha=:Fecha order by iIdDiario, sContrato, sNumeroOrden ');
        qryMDOrdenes.Params.ParamByName( 'Fecha' ).DataType := ftDate;
        qryMDOrdenes.Params.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
        qryMDOrdenes.Open;

        if qryMDOrdenes.RecordCount = 0 then
           InsertaOrdenes
        else
           InsertaOrdenesExistentes;
    end;

    dIdFecha.setfocus ;
end;

procedure TfrmProrrateoPernocta.Grid_ResultMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid3.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProrrateoPernocta.Grid_ResultMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid3.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProrrateoPernocta.Grid_ResultTitleClick(Column: TColumn);
begin
 UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmProrrateoPernocta.qryMDOrdenesBeforeDelete(DataSet: TDataSet);
begin
    abort;
end;

procedure TfrmProrrateoPernocta.qryMDOrdenesBeforePost(DataSet: TDataSet);
begin
    //Ahora validamos si se cobra o no...
    if (pos('S', QryMDOrdeneslAplica.Text) > 0) or (pos('s', QryMDOrdeneslAplica.Text) > 0) then
       QryMDOrdeneslAplica.Text := 'Si'
    else
       if (pos('N', QryMDOrdeneslAplica.Text) > 0) or (pos('n', QryMDOrdeneslAplica.Text) > 0)  then
          QryMDOrdeneslAplica.Text := 'No'
       else
       begin
           messageDLg('Aplica Prorrateo?(Si/No)!', mtInformation, [mbOk], 0);
           Abort;
           Exit;
       end;

end;

procedure TfrmProrrateoPernocta.qryMovimientosBarcosAfterScroll(
  DataSet: TDataSet);
begin
  if qryMovimientosBarcos.RecordCount > 0 then
  begin
      try
        tdJornada.Text := sFnSumaBarco  (QryMovimientosBarcos.FieldValues['dIdFecha'], QryMovimientosBarcos.FieldValues['sIdEmbarcacion'] , frmProrrateoPernocta, -1 ) ;

        qryFasesxOrden.Active := False;
        qryFasesxOrden.Params.ParamByName( 'Fecha' ).DataType := ftDate;
        qryFasesxOrden.Params.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
        qryFasesxOrden.Params.ParamByName( 'Diario' ).DataType := ftInteger;
        qryFasesxOrden.Params.ParamByName( 'Diario' ).Value := qryMovimientosBarcos.fieldvalues['iIdDiario'];
        qryFasesxOrden.Open;
        tEsuma.Text := sFnSumaMovtos  (QryMovimientosBarcos.FieldValues['dIdFecha'], QryMovimientosBarcos.FieldValues['iIdDiario'] , frmProrrateoPernocta, -1 ) ;

        //Ahora consultamos las ordenes que intervienen en cada movimiento de embarcación..
        qryMDOrdenes.Active := False;
        qryMDOrdenes.SQL.Clear;
        qryMDOrdenes.SQL.Add('select * from fasesxorden_personaliza where dIdFecha=:Fecha and iIdDiario =:diario order by sContrato, sNumeroOrden ');
        qryMDOrdenes.Params.ParamByName( 'Fecha' ).DataType  := ftDate;
        qryMDOrdenes.Params.ParamByName( 'Fecha' ).Value     := dIdFecha.Date;
        qryMDOrdenes.Params.ParamByName( 'diario' ).DataType := ftInteger;
        qryMDOrdenes.Params.ParamByName( 'diario' ).Value    := QryMovimientosBarcos.FieldValues['iIdDiario'];
        qryMDOrdenes.Open;

      except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Calculos de Prorrateos en BASE A PERNOCTAS', 'Al cambiar de registro', 0);
        end;
      end;
  end
end;

procedure TfrmProrrateoPernocta.btnActualizaClick(Sender: TObject);
begin
    //Elimina ragistros de la tabla para prorrateo
    qryMDOrdenes.Active := False;
    qryMDOrdenes.SQL.Clear;
    qryMDOrdenes.SQL.Add('delete from fasesxorden_personaliza where dIdFecha=:Fecha ');
    qryMDOrdenes.Params.ParamByName( 'Fecha' ).DataType := ftDate;
    qryMDOrdenes.Params.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
    qryMDOrdenes.ExecSQL;

    InsertaOrdenes;
end;

procedure TfrmProrrateoPernocta.btnAjustaMovtosClick(Sender: TObject);
begin
    if QryFasesxOrden.RecordCount > 0 then
    begin
        try
            tEsuma.Text := sFnSumaMovtos  (QryMovimientosBarcos.FieldValues['dIdFecha'], QryMovimientosBarcos.FieldValues['iIdDiario'] , frmProrrateoPernocta, -1 ) ;
        except
            on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Calculos de Prorrateos en BASE A PERNOCTAS', 'Al ajustar horarios', 0);
            end;
        end;
        QryFasesxOrden.Refresh ;
    end
end;

procedure TfrmProrrateoPernocta.btnAjustaOrdenesClick(Sender: TObject);
var
  qAjuste: TZReadOnlyQuery;
begin
  try
      if QryMovimientosBarcos.RecordCount > 0 then
      begin
          QryMovimientosBarcos.First ;
          while NOT QryMovimientosBarcos.Eof do
          begin
              Try
                Try
                  // Localizar el reporte diario para analizar su modo de cálculo
                  qAjuste := TZReadOnlyQuery.Create(Nil);
                  qAjuste.Connection := Connection.zConnection;
                  qAjuste.SQL.Text := 'Select TipoAjuste From reportediario where sContrato = :Contrato and dIdFecha = :Fecha';
                  qAjuste.ParamByName('Contrato').AsString := global_contrato;
                  qAjuste.ParamByName('Fecha').AsDate := dIdFecha.Date;
                  qAjuste.Open;

                  if qAjuste.RecordCount = 0 then Raise Exception.Create('*');
                  RngTipoAjuste := qAjuste.FieldByName('TipoAjuste').AsInteger;
                Finally
                  if Assigned(qAjuste) then
                    qAjuste.Close;

                  qAjuste.Free;
                End;
              Except
                RngTipoAjuste := 0;
              End;

              try
                 tdJornada.Text := sProrrateaBarco (QryMovimientosBarcos.FieldValues['dIdFecha'], QryMovimientosBarcos.FieldValues['sIdEmbarcacion'], frmProrrateoPernocta, -1 ) ;
                 tdJornada.Text := sFnAjustaBarco (QryMovimientosBarcos.FieldValues['dIdFecha'], QryMovimientosBarcos.FieldValues['sIdEmbarcacion'], '1', frmProrrateoPernocta, -1 ) ;
                 tdJornada.Text := sFnSumaBarco (QryMovimientosBarcos.FieldValues['dIdFecha'], QryMovimientosBarcos.FieldValues['sIdEmbarcacion'] , frmProrrateoPernocta, -1 ) ;
              except
                  on e : exception do begin
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Calculos de Prorrateos en BASE A PERNOCTAS', 'Al ajustar ordenes', 0);
                  end;
              end;
              QryMovimientosBarcos.Next
          end;
          QryMovimientosBarcos.Refresh ;
      end;

  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Calculos de Prorrateos en BASE A PERNOCTAS', 'Al ajustar ordenes', 0);
    end;
  end;
end;

procedure TfrmProrrateoPernocta.btnTodosClick(Sender: TObject);
begin
   try
     if qryMovimientosBarcos.RecordCount > 0 then
     begin
          //Inicio proceso de barco ...
          btnAjustaOrdenes.Click ;

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add( 'delete from fasesxorden where dIdFecha =:fecha' );
          connection.zCommand.Params.ParamByName( 'Fecha' ).DataType := ftDate;
          connection.zCommand.Params.ParamByName( 'Fecha' ).Value := QryMovimientosBarcos.FieldValues['dIdFecha'] ;
          try
              connection.zCommand.ExecSQL;
          except
              ShowMessage( 'Al parecer ya se habia registrado esa orden en el movimiento seleccionado' );
          end ;

          qryMovimientosBarcos.Active := False;
          qryMovimientosBarcos.Params.ParamByName( 'Contrato' ).DataType := ftString;
          qryMovimientosBarcos.Params.ParamByName( 'Contrato' ).Value    := global_contrato;
          qryMovimientosBarcos.Params.ParamByName( 'Fecha' ).DataType    := ftDate;
          qryMovimientosBarcos.Params.ParamByName( 'Fecha' ).Value       := dIdFecha.Date;
          qryMovimientosBarcos.Open;

          // Inicia el ciclo de para insertar todos los registros ....
          while NOT QryMovimientosBarcos.Eof  do
          begin
              qryMDOrdenes.First ;
              while NOT qryMDOrdenes.Eof  do
              begin
                  if qryMdOrdenes.FieldValues['lAplica'] = 'Si' then
                  begin
                      // Proceso de Insercccion ...
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add( 'insert into fasesxorden set ' +
                                                   'sContrato=:Contrato, ' +
                                                   'sNumeroOrden=:Orden, ' +
                                                   'dIdFecha=:Fecha, ' +
                                                   'iIdDiario=:IdDiario ,' +
                                                   'sClasificacion=:Clasificacion, ' +
                                                   'sDescripcion=:Descripcion, ' +
                                                   'dTotalPersonal=0, ' +
                                                   'dPersonalOrden=:dCantidad, ' +
                                                   'sFactorMovto=:ProrrateoBarco, ' +
                                                   'sFactor=0 ' );
                      connection.zCommand.Params.ParamByName( 'Contrato' ).DataType := ftString;
                      connection.zCommand.Params.ParamByName( 'Contrato' ).Value := qryMDOrdenes.FieldValues[ 'sContrato' ];
                      connection.zCommand.Params.ParamByName( 'Orden' ).DataType := ftString;
                      connection.zCommand.Params.ParamByName( 'Orden' ).Value := qryMDOrdenes.FieldValues[ 'sNumeroOrden' ];
                      connection.zCommand.Params.ParamByName( 'Fecha' ).DataType := ftDate;
                      connection.zCommand.Params.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
                      connection.zCommand.Params.ParamByName( 'idDiario' ).DataType := ftInteger;
                      connection.zCommand.Params.ParamByName( 'idDiario' ).Value := qryMovimientosBarcos.FieldValues[ 'iIdDiario' ];
                      connection.zCommand.Params.ParamByName( 'Clasificacion' ).DataType := ftString;
                      connection.zCommand.Params.ParamByName( 'Clasificacion' ).Value := qryMovimientosBarcos.FieldValues[ 'sClasificacion' ];
                      connection.zCommand.Params.ParamByName( 'Descripcion' ).DataType := ftString;
                      connection.zCommand.Params.ParamByName( 'Descripcion' ).Value := qryMovimientosBarcos.FieldValues[ 'mDescripcion' ];
                      connection.zCommand.Params.ParamByName( 'dCantidad' ).DataType := ftFloat;
                      if qryMDOrdenes.FieldValues[ 'dPersonalOrden' ] < 0 then
                          connection.zCommand.Params.ParamByName( 'cantidad' ).Value := 0
                      else
                          connection.zCommand.Params.ParamByName( 'dCantidad' ).Value := qryMDOrdenes.FieldValues[ 'dPersonalOrden' ];
                      connection.zCommand.Params.ParamByName( 'ProrrateoBarco' ).DataType := ftString;
                      connection.zCommand.Params.ParamByName( 'ProrrateoBarco' ).Value := qryMovimientosBarcos.FieldValues[ 'sFactor' ];
                      try
                          connection.zCommand.ExecSQL;
                      except
                          ShowMessage( 'Al parecer ya se habia registrado esa orden en el movimiento seleccionado' );
                      end ;
                  end;
                  qryMDOrdenes.Next
              end ;
              QryMovimientosBarcos.Next
          end;
    end;

    qryFasesxOrden.refresh ;

    // Inicia proceso de ajuste ....
    QryMovimientosBarcos.First ;
    while NOT QryMovimientosBarcos.Eof do
    begin
         btnAjustaMovtos.Click ;
         QryMovimientosBarcos.Next
    end;

    //Actualizar los datos de movimientos y pernoctas...
    if QryBarcoVigencia.RecordCount > 1 then
    begin
         procAjustaBarco(dIdFecha.Date, global_barco, connection.configuracion.FieldValues['iRedondeoEmbarcacion'], frmProrrateoPernocta) ;
         ActualizaMovimientosBarco;
    end;

  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Calculos de Prorrateos en BASE A PERNOCTAS', 'Al aplicar todos', 0);
    end;
  end;
end;

procedure TfrmProrrateoPernocta.dbGridOrdenesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if QryMdOrdenes.RecordCount > 0 then
    begin
        AFont.Color := esColor(0);
        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lAplica').AsString = 'No' then
        begin
            AFont.Color := esColor(0);
            Afont.Style := [fsBold];
            Background  := $00FFAE5E;
        end;
    end;
end;

procedure TfrmProrrateoPernocta.dbGridOrdenesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if dbgridordenes.datasource.DataSet.IsEmpty=false  then
      if dbgridordenes.DataSource.DataSet.RecordCount > 0 then
          UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProrrateoPernocta.dbGridOrdenesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if dbgridordenes.datasource.DataSet.IsEmpty=false  then
   if dbgridordenes.DataSource.DataSet.RecordCount>0 then
       UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProrrateoPernocta.dbGridOrdenesTitleClick(Column: TColumn);
begin
if dbgridordenes.datasource.DataSet.IsEmpty=false  then
if dbgridordenes.DataSource.DataSet.RecordCount>0 then
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmProrrateoPernocta.dbGrigMovimientosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProrrateoPernocta.dbGrigMovimientosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProrrateoPernocta.dbGrigMovimientosTitleClick(Column: TColumn);
begin
    UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmProrrateoPernocta.dIdFechaEnter(Sender: TObject);
begin
    dIdFecha.Color := global_color_entrada
end;

procedure TfrmProrrateoPernocta.dIdFechaExit(Sender: TObject);
var
   lContinua : boolean;
begin
    dIdFecha.Color := global_color_salida;

    teSuma.Text    := '0.000000' ;
    tdJornada.Text := '0.000000' ;

    global_barco :=  connection.configuracion.FieldValues['sIdEmbarcacion'] ;

    QryBarcoVigencia.Active := False;
    QryBarcoVigencia.SQL.Clear;
    QryBarcoVigencia.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia '+
                       'where sContrato =:Contrato and dFechaInicio <= :Fecha and dFechaFinal >=:Fecha order by dFechaInicio');
    QryBarcoVigencia.ParamByName('Contrato').AsString := global_contrato_barco;
    QryBarcoVigencia.ParamByName('Fecha').AsDate      := dIdFecha.Date;
    QryBarcoVigencia.Open;

    if QryBarcoVigencia.RecordCount > 0 then
       global_barco := QryBarcoVigencia.FieldValues['sIdEmbarcacion']
    else
       messageDLG('No existe una Vigencia de Embarcacion Principal', mtInformation, [mbOk], 0);

    if QryBarcoVigencia.RecordCount > 1 then
       CopiaMovimientosBarco;

    //Mostrar los movimientos de barco
    qryMovimientosBarcos.Active := False;
    qryMovimientosBarcos.Params.ParamByName( 'Contrato' ).DataType := ftString;
    qryMovimientosBarcos.Params.ParamByName( 'Contrato' ).Value    := global_contrato;
    qryMovimientosBarcos.Params.ParamByName( 'Fecha' ).DataType    := ftDate;
    qryMovimientosBarcos.Params.ParamByName( 'Fecha' ).Value       := dIdFecha.Date;
    qryMovimientosBarcos.Open;
    try
      if qryMovimientosBarcos.RecordCount > 0 then
        tdJornada.Text := sFnSumaBarco  (QryMovimientosBarcos.FieldValues['dIdFecha'], global_barco , frmProrrateoPernocta, -1 ) ;
    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Calculos de Prorrateos en BASE A PERNOCTAS', 'Al seleccionar fecha', 0);
      end;
    end;

    if global_contrato = global_contrato_barco then
    begin
        qryMDOrdenes.Active := False;
        qryMDOrdenes.SQL.Clear;
        qryMDOrdenes.SQL.Add('select * from fasesxorden_personaliza where dIdFecha=:Fecha order by iIdDiario, sContrato, sNumeroOrden ');
        qryMDOrdenes.Params.ParamByName( 'Fecha' ).DataType := ftDate;
        qryMDOrdenes.Params.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
        qryMDOrdenes.Open;

        if qryMDOrdenes.RecordCount = 0 then
           InsertaOrdenes
        else
           InsertaOrdenesExistentes;
    end;
end;

procedure TfrmProrrateoPernocta.dIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        btnTodos.SetFocus
end;

procedure TfrmProrrateoPernocta.CopiaMovimientosBarco;
begin
     {Rx para guardar los movimientos de barco provicionalmente...}
     rxMovimientos := TrxMemoryData.Create(self);
     rxMovimientos.Active := False;
     rxMovimientos.FieldDefs.Add('sContrato', ftString, 15, True);
     rxMovimientos.FieldDefs.Add('dIdFecha', ftDate, 0, True);
     rxMovimientos.FieldDefs.Add('iIdDiario', ftInteger, 0, True);
     rxMovimientos.FieldDefs.Add('sIdEmbarcacion', ftString, 10, True);
     rxMovimientos.Active := True;

     rxMovimientos.EmptyTable;

     {Rx para guardar las perncotas provicionalmente...}
     rxPernoctas := TrxMemoryData.Create(self);
     rxPernoctas.Active := False;
     rxPernoctas.FieldDefs.Add('sContrato', ftString, 15, True);
     rxPernoctas.FieldDefs.Add('dIdFecha', ftDate, 0, True);
     rxPernoctas.FieldDefs.Add('iIdDiario', ftInteger, 0, True);
     rxPernoctas.FieldDefs.Add('sIdPersonal', ftString, 25, True);
     rxPernoctas.FieldDefs.Add('sIdPernocta', ftString, 10, True);
     rxPernoctas.Active := True;

     rxPernoctas.EmptyTable;

     {Inciamos Querys proceso de copiado...}
     QryCopiado := TZReadOnlyQuery.Create(self);
     QryCopiado.Connection := connection.zConnection;

     QryActualiza := TZReadOnlyQuery.Create(self);
     QryActualiza.Connection := connection.zConnection;

     {Consultamos los movimientos de embarcacion...}
     QryCopiado.Active := False;
     QryCopiado.SQL.Clear;
     QryCopiado.SQL.Add( 'select sContrato, dIdFecha, iIdDiario, sIdEmbarcacion from movimientosdeembarcacion where sContrato =:Contrato and dIdFecha =:Fecha ');
     QryCopiado.Params.ParamByName( 'Contrato' ).DataType := ftString;
     QryCopiado.Params.ParamByName( 'Contrato' ).Value    := global_contrato ;
     QryCopiado.Params.ParamByName( 'Fecha' ).DataType    := ftDate;
     QryCopiado.Params.ParamByName( 'Fecha' ).Value       := dIdFecha.Date;
     QryCopiado.Open;

     {Copiamos los datos..}
     while not QryCopiado.Eof do
     begin
         rxMovimientos.Append;
         rxMovimientos.FieldValues['sContrato']      := QryCopiado.FieldValues['sContrato'];
         rxMovimientos.FieldValues['dIdFecha']       := QryCopiado.FieldValues['dIdFecha'];
         rxMovimientos.FieldValues['iIdDiario']      := QryCopiado.FieldValues['iIdDiario'];
         rxMovimientos.FieldValues['sIdEmbarcacion'] := QryCopiado.FieldValues['sIdEmbarcacion'];
         rxMovimientos.Post;
         QryCopiado.Next;
     end;

     {Ahora actualizamos los movimientos a una sola embarcacion...}
     QryActualiza.Active := False;
     QryActualiza.SQL.Clear;
     QryActualiza.SQL.Add( 'Update movimientosdeembarcacion set sIdEmbarcacion =:Embarcacion where sContrato =:Contrato and dIdFecha =:Fecha ');
     QryActualiza.Params.ParamByName( 'Embarcacion' ).DataType := ftString;
     QryActualiza.Params.ParamByName( 'Embarcacion' ).Value    := global_barco;
     QryActualiza.Params.ParamByName( 'Contrato' ).DataType    := ftString;
     QryActualiza.Params.ParamByName( 'Contrato' ).Value       := global_contrato ;
     QryActualiza.Params.ParamByName( 'Fecha' ).DataType       := ftDate;
     QryActualiza.Params.ParamByName( 'Fecha' ).Value          := dIdFecha.Date ;
     QryActualiza.ExecSQL;

     {Consultamos las pernoctas del barco...}
     QryCopiado.Active := False;
     QryCopiado.SQL.Clear;
     QryCopiado.SQL.Add( 'select sContrato, dIdFecha, iIdDiario, sIdPersonal, sIdPernocta from bitacoradepersonal where dIdFecha =:Fecha and sIdPernocta <> :Embarcacion ');
     QryCopiado.Params.ParamByName( 'Fecha' ).DataType       := ftDate;
     QryCopiado.Params.ParamByName( 'Fecha' ).Value          := dIdFecha.Date;
     QryCopiado.Params.ParamByName( 'Embarcacion' ).DataType := ftString;
     QryCopiado.Params.ParamByName( 'Embarcacion' ).Value    := global_barco;
     QryCopiado.Open;

     {Copiamos los datos..}
     while not QryCopiado.Eof do
     begin
         rxPernoctas.Append;
         rxPernoctas.FieldValues['sContrato']    := QryCopiado.FieldValues['sContrato'];
         rxPernoctas.FieldValues['dIdFecha']     := QryCopiado.FieldValues['dIdFecha'];
         rxPernoctas.FieldValues['iIdDiario']    := QryCopiado.FieldValues['iIdDiario'];
         rxPernoctas.FieldValues['sIdPersonal']  := QryCopiado.FieldValues['sIdPersonal'];
         rxPernoctas.FieldValues['sIdPernocta']  := QryCopiado.FieldValues['sIdPernocta'];
         rxPernoctas.Post;
         QryCopiado.Next;
     end;

     {Ahora actualizamos los movimientos a una sola embarcacion...}
     QryActualiza.Active := False;
     QryActualiza.SQL.Clear;
     QryActualiza.SQL.Add( 'Update bitacoradepersonal set sIdPernocta =:Pernocta where dIdFecha =:Fecha and sIdPernocta <> :Embarcacion ');
     QryActualiza.Params.ParamByName( 'Pernocta' ).DataType    := ftString;
     QryActualiza.Params.ParamByName( 'Pernocta' ).Value       := global_barco;
     QryActualiza.Params.ParamByName( 'Embarcacion' ).DataType := ftString;
     QryActualiza.Params.ParamByName( 'Embarcacion' ).Value    := global_barco ;
     QryActualiza.Params.ParamByName( 'Fecha' ).DataType       := ftDate;
     QryActualiza.Params.ParamByName( 'Fecha' ).Value          := dIdFecha.Date ;
     QryActualiza.ExecSQL;
end;

procedure TfrmProrrateoPernocta.ActualizaMovimientosBarco;
begin
    rxMovimientos.First;
    while not rxMovimientos.Eof do
    begin
         {Ahora actualizamos los movimientos a una sola embarcacion...}
         QryActualiza.Active := False;
         QryActualiza.SQL.Clear;
         QryActualiza.SQL.Add( 'Update movimientosdeembarcacion set sIdEmbarcacion =:Embarcacion where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdDiario ');
         QryActualiza.Params.ParamByName( 'Embarcacion' ).DataType := ftString;
         QryActualiza.Params.ParamByName( 'Embarcacion' ).Value    := rxMovimientos.FieldValues['sIdEmbarcacion'];
         QryActualiza.Params.ParamByName( 'Contrato' ).DataType    := ftString;
         QryActualiza.Params.ParamByName( 'Contrato' ).Value       := rxMovimientos.FieldValues['sContrato'];
         QryActualiza.Params.ParamByName( 'Fecha' ).DataType       := ftDate;
         QryActualiza.Params.ParamByName( 'Fecha' ).Value          := rxMovimientos.FieldValues['dIdFecha'];
         QryActualiza.Params.ParamByName( 'IdDiario' ).DataType    := ftInteger;
         QryActualiza.Params.ParamByName( 'IdDiario' ).Value       := rxMovimientos.FieldValues['iIdDiario'];
         QryActualiza.ExecSQL;
         rxMovimientos.Next;
    end;

    rxPernoctas.First;
    while not rxPernoctas.Eof do
    begin
         {Ahora actualizamos los movimientos a una sola embarcacion...}
         QryActualiza.Active := False;
         QryActualiza.SQL.Clear;
         QryActualiza.SQL.Add( 'Update bitacoradepersonal set sIdPernocta =:Pernocta where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdDiario and sIdPersonal = :Personal');
         QryActualiza.Params.ParamByName( 'Pernocta' ).DataType    := ftString;
         QryActualiza.Params.ParamByName( 'Pernocta' ).Value       := rxPernoctas.FieldValues['sIdPernocta'];
         QryActualiza.Params.ParamByName( 'Contrato' ).DataType    := ftString;
         QryActualiza.Params.ParamByName( 'Contrato' ).Value       := rxPernoctas.FieldValues['sContrato'];
         QryActualiza.Params.ParamByName( 'Fecha' ).DataType       := ftDate;
         QryActualiza.Params.ParamByName( 'Fecha' ).Value          := rxPernoctas.FieldValues['dIdFecha'];
         QryActualiza.Params.ParamByName( 'IdDiario' ).DataType    := ftInteger;
         QryActualiza.Params.ParamByName( 'IdDiario' ).Value       := rxPernoctas.FieldValues['iIdDiario'];
         QryActualiza.Params.ParamByName( 'Personal' ).DataType    := ftString;
         QryActualiza.Params.ParamByName( 'Personal' ).Value       := rxPernoctas.FieldValues['sIdPersonal'];
         QryActualiza.ExecSQL;
         rxPernoctas.Next;
    end;
end;

procedure TfrmProrrateoPernocta.InsertaOrdenes;
begin
    // Selecciono todas las ordenes de la base de datos que dentro del campo sCodigo incluya el numero de contrato ...
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add( 'select o.sContrato, c.sCodigo, o.sNumeroOrden, c.sTipoObra from ordenesdetrabajo o ' +
                                  'inner join contratos c On (c.sContrato=o.sContrato and c.sTipoObra <> "BARCO") ' +
                                  'where o.cIdStatus="P"' );
    connection.QryBusca2.Open;

    // Se realiza el ciclo para que todas las ordenes se incluyan dentro del memory con el total de personal pernoctando
    while not connection.QryBusca2.Eof do
    begin
       // Obtener el total de personal pernoctando ....
       connection.QryBusca.Active := False;
       connection.QryBusca.SQL.Clear;
       connection.QryBusca.SQL.Add('SELECT SUM(bp.dCantidad) as dCantidad FROM bitacoradepersonal bp ' +
                                   'inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario and ba.sNumeroOrden = :orden) ' +
                                   'inner join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal and p.lProrrateo = "Si") ' +
                                   'WHERE bp.sContrato = :contrato and bp.dIdFecha = :Fecha ' +
                                   'and bp.sIdPernocta= :barco GROUP BY bp.dIdFecha, bp.sIdPernocta' );
       connection.QryBusca.ParamByName( 'Contrato' ).DataType := ftString;
       connection.QryBusca.ParamByName( 'Contrato' ).Value := connection.QryBusca2.FieldValues[ 'sContrato' ];
       connection.QryBusca.ParamByName( 'Orden' ).DataType := ftString;
       connection.QryBusca.ParamByName( 'Orden' ).Value := connection.QryBusca2.FieldValues[ 'sNumeroOrden' ];
       connection.QryBusca.ParamByName( 'barco' ).DataType := ftString;
       connection.QryBusca.ParamByName( 'barco' ).Value := qryMovimientosBarcos.FieldValues[ 'sIdEmbarcacion' ];
       connection.QryBusca.ParamByName( 'Fecha' ).DataType := ftDate;
       connection.QryBusca.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
       connection.QryBusca.Open;

       if connection.QryBusca.RecordCount > 0 then
       Begin
           dCantidad := connection.QryBusca.FieldValues[ 'dCantidad' ];

           qryMovimientosBarcos.First;
           while not qryMovimientosBarcos.Eof  do
           begin
               connection.QryBusca.Active := False;
               connection.QryBusca.SQL.Clear;
               connection.QryBusca.SQL.Add('insert into fasesxorden_personaliza (sContrato, sNumeroOrden, dIdFecha, iIdDiario, sClasificacion, dPersonalOrden, lAplica) '+
                                           'values (:contrato, :orden, :fecha, :diario, :clasificacion, :personal, :aplica)');
               connection.QryBusca.ParamByName('Contrato').AsString := connection.QryBusca2.FieldValues[ 'sContrato' ];
               connection.QryBusca.ParamByName('orden').AsString    := connection.QryBusca2.FieldValues[ 'sNumeroOrden' ];
               connection.QryBusca.ParamByName('fecha').AsDate      := dIdFecha.Date;
               connection.QryBusca.ParamByName('diario').AsInteger  := qryMovimientosBarcos.FieldValues['iIdDiario'];
               connection.QryBusca.ParamByName('Clasificacion').AsString := qryMovimientosBarcos.FieldValues['sClasificacion'];
               connection.QryBusca.ParamByName('personal').AsFloat  := dCantidad;
               connection.QryBusca.ParamByName('aplica').AsString   := 'Si';
               connection.QryBusca.ExecSQL;       

               qryMovimientosBarcos.Next;
           end;

       End
       else
          dCantidad := 0;
       connection.QryBusca2.Next;
    end ;
end;

procedure TfrmProrrateoPernocta.InsertaOrdenesExistentes;
var
  lContinua : boolean;
begin
    // Selecciono todas las ordenes de la base de datos que dentro del campo sCodigo incluya el numero de contrato ...
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add( 'select o.sContrato, c.sCodigo, o.sNumeroOrden, c.sTipoObra from ordenesdetrabajo o ' +
                                  'inner join contratos c On (c.sContrato=o.sContrato and c.sTipoObra <> "BARCO") ' +
                                  'where o.cIdStatus="P"' );
    connection.QryBusca2.Open;

    // Se realiza el ciclo para que todas las ordenes se incluyan dentro del memory con el total de personal pernoctando
    while not connection.QryBusca2.Eof do
    begin
       // Obtener el total de personal pernoctando ....
       connection.QryBusca.Active := False;
       connection.QryBusca.SQL.Clear;
       connection.QryBusca.SQL.Add('SELECT SUM(bp.dCantidad) as dCantidad FROM bitacoradepersonal bp ' +
                                   'inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario and ba.sNumeroOrden = :orden) ' +
                                   'inner join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal and p.lProrrateo = "Si") ' +
                                   'WHERE bp.sContrato = :contrato and bp.dIdFecha = :Fecha ' +
                                   'and bp.sIdPernocta= :barco GROUP BY bp.dIdFecha, bp.sIdPernocta' );
       connection.QryBusca.ParamByName( 'Contrato' ).DataType := ftString;
       connection.QryBusca.ParamByName( 'Contrato' ).Value := connection.QryBusca2.FieldValues[ 'sContrato' ];
       connection.QryBusca.ParamByName( 'Orden' ).DataType := ftString;
       connection.QryBusca.ParamByName( 'Orden' ).Value := connection.QryBusca2.FieldValues[ 'sNumeroOrden' ];
       connection.QryBusca.ParamByName( 'barco' ).DataType := ftString;
       connection.QryBusca.ParamByName( 'barco' ).Value := qryMovimientosBarcos.FieldValues[ 'sIdEmbarcacion' ];
       connection.QryBusca.ParamByName( 'Fecha' ).DataType := ftDate;
       connection.QryBusca.ParamByName( 'Fecha' ).Value := dIdFecha.Date;
       connection.QryBusca.Open;

       if connection.QryBusca.RecordCount > 0 then
       Begin
           dCantidad := connection.QryBusca.FieldValues[ 'dCantidad' ];

           qryMovimientosBarcos.First;
           while not qryMovimientosBarcos.Eof  do
           begin
               lContinua := False;
               qryMDOrdenes.First;
               while not qryMDOrdenes.Eof do
               begin
                   if (qryMDOrdenes.FieldValues['sNumeroOrden'] = connection.QryBusca2.FieldValues[ 'sNumeroOrden' ]) and
                      (DateTosTr(qryMDOrdenes.FieldValues['dIdFecha']) = DateToStr(dIdFecha.Date)) and
                      (qryMDOrdenes.FieldValues['iIdDiario']    = qryMovimientosBarcos.FieldValues['iIdDiario'] )
                   then
                      lContinua := True;
                   qryMDOrdenes.Next;
               end;

               if lContinua = False then
               begin
                   connection.QryBusca.Active := False;
                   connection.QryBusca.SQL.Clear;
                   connection.QryBusca.SQL.Add('insert into fasesxorden_personaliza (sContrato, sNumeroOrden, dIdFecha, iIdDiario, sClasificacion, dPersonalOrden, lAplica) '+
                                               'values (:contrato, :orden, :fecha, :diario, :clasificacion, :personal, :aplica)');
                   connection.QryBusca.ParamByName('Contrato').AsString := connection.QryBusca2.FieldValues[ 'sContrato' ];
                   connection.QryBusca.ParamByName('orden').AsString    := connection.QryBusca2.FieldValues[ 'sNumeroOrden' ];
                   connection.QryBusca.ParamByName('fecha').AsDate      := dIdFecha.Date;
                   connection.QryBusca.ParamByName('diario').AsInteger  := qryMovimientosBarcos.FieldValues['iIdDiario'];
                   connection.QryBusca.ParamByName('Clasificacion').AsString := qryMovimientosBarcos.FieldValues['sClasificacion'];
                   connection.QryBusca.ParamByName('personal').AsFloat  := dCantidad;
                   connection.QryBusca.ParamByName('aplica').AsString   := 'Si';
                   connection.QryBusca.ExecSQL;
               end
               else
               begin
                   qryMDOrdenes.First;
                   while not qryMDOrdenes.Eof do
                   begin
                       if (qryMDOrdenes.FieldValues['sNumeroOrden'] = connection.QryBusca2.FieldValues[ 'sNumeroOrden' ]) and
                          (DateTosTr(qryMDOrdenes.FieldValues['dIdFecha']) = DateToStr(dIdFecha.Date)) and
                          (qryMDOrdenes.FieldValues['iIdDiario'] = qryMovimientosBarcos.FieldValues['iIdDiario']) then
                       begin
                           qryMDOrdenes.Edit;
                           qryMDOrdenes.FieldValues[ 'dPersonalOrden' ]:= dCantidad;
                           qryMDOrdenes.Post;
                       end;
                       qryMDOrdenes.Next;
                   end;
               end;
               qryMovimientosBarcos.Next;
           end;
       End
       else
          dCantidad := 0;
       connection.QryBusca2.Next;
    end ;
end;

end.

