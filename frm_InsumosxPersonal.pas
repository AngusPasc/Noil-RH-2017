unit frm_InsumosxPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxPageControl, Grids, DBGrids, Mask, rxToolEdit, DBCtrls,
  JvDBDotNetControls, JvExStdCtrls, JvEdit, JvDotNetControls, global, frm_Connection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_Barra, RXDBCtrl,
  NxCollection, AdvGlowButton, UnitValidaTexto, Buttons, JvExMask, JvToolEdit,
  JvDBControls, sLabel, NxEdit, JvMemoryDataset;

type
  TfrmInsumoxPersonal = class(TForm)
    DBGrid1: TDBGrid;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    lbAlmacen: TLabel;
    gridFolios: TDBGrid;
    lbFolio: TLabel;
    Label3: TLabel;
    gridInsXEmpl: TDBGrid;
    lbFechaAsig: TLabel;
    DateEdit3: TDateEdit;
    ckbVigencia: TCheckBox;
    lbSerie: TLabel;
    qryProyectos: TZQuery;
    ds_contratos: TDataSource;
    qryFrentes: TZQuery;
    ds_Frentes: TDataSource;
    qryFrentessIdfolio: TStringField;
    qryFrentessNumeroOrden: TStringField;
    ds_Empleado: TDataSource;
    qryEmpleados: TZReadOnlyQuery;
    almacen: TZReadOnlyQuery;
    ds_almacen: TDataSource;
    tzInsumos: TZReadOnlyQuery;
    tzInsumossIdInsumo: TStringField;
    tzInsumossDescripcion: TStringField;
    tzInsumosdExistencia: TFloatField;
    dsInsumos: TDataSource;
    frmBarra1: TfrmBarra;
    NxHeaderPanel2: TNxHeaderPanel;
    qryFolios: TZQuery;
    ds_Folios: TDataSource;
    qryInsumosXFolios: TZQuery;
    ds_InsumosxFolios: TDataSource;
    qryInsumosXFoliosiId: TIntegerField;
    qryInsumosXFoliossIdInsumo: TStringField;
    qryInsumosXFoliosdFechaEntrega: TDateField;
    qryInsumosXFoliosdFechaExpira: TDateField;
    qryInsumosXFoliosiActivo: TIntegerField;
    qryInsumosXFoliossDescripcion: TStringField;
    qryInsumosXFoliossIdAlmacen: TStringField;
    qryInsumosXFoliosiCantidad: TIntegerField;
    qryInsumosXFoliossNumeroSerie: TStringField;
    qryTodosInsumos: TZQuery;
    qryInsumosXFoliosmaterial: TStringField;
    qryFoliosiFolios: TIntegerField;
    qryFoliossIdEmpleado: TStringField;
    qryFoliosdFecha: TDateField;
    qryFoliossIdFolio: TStringField;
    qryFoliossContrato: TStringField;
    qryFoliossIdUsuario: TStringField;
    GroupBox1: TGroupBox;
    AdvGlowButton1: TAdvGlowButton;
    lbFecha: TLabel;
    dFechaInic: TDateEdit;
    lbFchaFin: TLabel;
    dFechafin: TDateEdit;
    lbProyecto: TLabel;
    dsProyecto: TDBLookupComboBox;
    lbFrente: TLabel;
    dsFrente: TDBLookupComboBox;
    Label2: TLabel;
    txtBusEmpleado: TEdit;
    Label1: TLabel;
    dAlmacen: TDBLookupComboBox;
    edBusqAlmacen: TEdit;
    gridInsumos: TDBGrid;
    Label7: TLabel;
    btnAsignar: TBitBtn;
    btnDenegar: TBitBtn;
    diFolio: TDBEdit;
    fechaFolio: TDBDateEdit;
    qryEmpleadossIdEmpleado: TStringField;
    qryInsumosXFoliosiFolios: TIntegerField;
    guardar: TButton;
    qryProyectossContrato: TStringField;
    Motivo: TDBEdit;
    dbSerie: TDBEdit;
    sWebLabel1: TsWebLabel;
    nombreEmpleado: TsWebLabel;
    lbMotivo: TLabel;
    Label4: TLabel;
    dCantidad: TDBEdit;
    tzInsumossContrato: TStringField;
    tzInsumossIdAlmacen: TStringField;
    fchaAsignacion: TDBDateEdit;
    fchVigencia: TDBDateEdit;
    btnCancelar: TBitBtn;
    MemoriaAlmacenes: TJvMemoryData;
    MemoriaAlmacenessIdAlmacen: TStringField;
    MemoriaAlmacenessDescripcion: TStringField;
    ds_MemoriaAlmacenes: TDataSource;
    tsdCantidad: TNxNumberEdit;
    qryEmpleadossNombreCompleto: TStringField;
    procedure dsProyectoEnter(Sender: TObject);
    procedure dsProyectoExit(Sender: TObject);
    procedure dsFrenteEnter(Sender: TObject);
    procedure dsFrenteExit(Sender: TObject);
    procedure dFechaInicEnter(Sender: TObject);
    procedure dFechaInicExit(Sender: TObject);
    procedure txtBusEmpleadoEnter(Sender: TObject);
    procedure txtBusEmpleadoExit(Sender: TObject);
    procedure dAlmacenEnter(Sender: TObject);
    procedure dAlmacenExit(Sender: TObject);
    procedure edBusqAlmacenEnter(Sender: TObject);
    procedure edBusqAlmacenExit(Sender: TObject);
    procedure MotivoEnter(Sender: TObject);
    procedure MotivoExit(Sender: TObject);
    procedure fchaAsignacionEnter(Sender: TObject);
    procedure fchaAsignacionExit(Sender: TObject);
    procedure fchVigenciaEnter(Sender: TObject);
    procedure fchVigenciaExit(Sender: TObject);
    procedure edCantidadEnter(Sender: TObject);
    procedure edCantidadExit(Sender: TObject);
    procedure dbSerieEnter(Sender: TObject);
    procedure dbSerieExit(Sender: TObject);
    procedure diFolioEnter(Sender: TObject);
    procedure diFolioExit(Sender: TObject);
    procedure fechaEnter(Sender: TObject);
    procedure fechaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsProyectoClick(Sender: TObject);
    procedure txtBusEmpleadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBusqAlmacenKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dAlmacenClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure gridFoliosCellClick(Column: TColumn);
    procedure ckbVigenciaClick(Sender: TObject);
    procedure btnAsignarClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure dFechafinEnter(Sender: TObject);
    procedure dFechafinExit(Sender: TObject);
    procedure fechaFolioEnter(Sender: TObject);
    procedure fechaFolioExit(Sender: TObject);
    procedure NxTabSheet2Show(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure qryEmpleadosAfterScroll(DataSet: TDataSet);
    procedure dbSerieChange(Sender: TObject);
    procedure dCantidadChange(Sender: TObject);
    procedure dCantidadEnter(Sender: TObject);
    procedure dCantidadExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure diFolioKeyPress(Sender: TObject; var Key: Char);
    procedure fechaFolioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
                                             
var
  frmInsumoxPersonal: TfrmInsumoxPersonal;
  maxFolio, dExistencia, cantidad: Integer;
  CantidadAnterior: Integer;

implementation

{$R *.dfm}

procedure TfrmInsumoxPersonal.AdvGlowButton1Click(Sender: TObject);
var
 nombres,
  cadenas: TStringList;
begin


    nombres := TStringList.Create; cadenas := TStringList.Create;
    nombres.Add('Proyecto');
    cadenas.Add(dsProyecto.Text);

    if not validaTexto(nombres, cadenas, 'Contrato', dsFrente.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;


 //ShortDateFormat := 'yyyy-mm-dd';

 // ShowMessage(datetostr(dFechaInic.date));
  qryEmpleados.Active := False;
  qryEmpleados.Params.ParamByName('inicio').AsDate := dFechaInic.Date;
  qryEmpleados.Params.ParamByName('fin').AsDate  := dFechaFin.Date;
  qryEmpleados.Params.ParamByName('contrato').AsString  := qryProyectos.FieldByName('sContrato').AsString;
  qryEmpleados.Params.ParamByName('frente').AsString  := qryFrentes.FieldByName('sIdFolio').AsString;
  qryEmpleados.Params.ParamByName('contrato_').AsString  := global_contrato;
  qryEmpleados.open;
end;

procedure TfrmInsumoxPersonal.btnAsignarClick(Sender: TObject);
begin
  tsdCantidad.Value := 1;
  CantidadAnterior := 0;
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT * FROM alm_empleado_insumo ' +
            'WHERE sIdInsumo = ' + QuotedStr(tzInsumos.FieldByName('sIdInsumo').AsString) +
            ' AND sIdAlmacen = ' + QuotedStr(almacen.fieldbyname('sIdAlmacen').AsString) +
            ' AND iFolios = ' + qryFolios.FieldByName('iFolios').AsString +
            ' AND sNumeroSerie = "" ' +
            ' AND iActivo = 1');
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then begin
       if MessageDlg('Este material ya está asignado, ¿deseas sumarlo a los que ya tiene?', mtConfirmation, mbOkCancel, 0) = mrOk then begin
        CantidadAnterior := connection.QryBusca.FieldByName('iCantidad').AsInteger;
        if qryInsumosxFolios.Locate('iId', connection.QryBusca.FieldByName('iId').AsInteger, []) then begin
          qryInsumosxFolios.Edit;
        end;
       end else begin
        qryInsumosxFolios.Append;
       end;
    end else begin
      qryInsumosxFolios.Append;
    end;


    gridInsumos.Enabled := False;
    gridInsXEmpl.Enabled := False;
    btnCancelar.Visible := True;
    btnCancelar.Enabled := True;
    qryInsumosxFolios.FieldByName('sIdInsumo').AsString := tzInsumos.FieldByName('sIdInsumo').AsString;
    qryInsumosxFolios.FieldByName('sIdAlmacen').AsString := Almacen.FieldByName('sIdAlmacen').AsString;
    qryInsumosxFolios.FieldByName('iActivo').AsInteger := 1;
    qryInsumosxFolios.FieldByName('sDescripcion').AsString := Motivo.Text;
    qryInsumosxFolios.FieldByName('sNumeroSerie').AsString := dbSerie.Text;
    qryInsumosxFolios.FieldByName('iFolios').AsString := qryFolios.FieldByName('iFolios').AsString;
    qryInsumosxFolios.FieldByName('dFechaEntrega').AsDateTime := fchaAsignacion.date;

    Motivo.Enabled := True;
        fchaAsignacion.Enabled := True;
        dbSerie.Enabled := True;
        guardar.Enabled := True;
        btnDenegar.Enabled := False;
        btnAsignar.Enabled := False;
        fchaAsignacion.Date := Date;
        ckbVigencia.Enabled := True;
        dbSerie.Enabled := True;
        dCantidad.Enabled := True;
        Motivo.SetFocus;

    if ckbVigencia.Checked = True then
    begin
        //Valiadcion de fechas


        if (fchaAsignacion.Date > fchVigencia.Date) then
        begin
            showmessage('La fecha final es menor a la fecha inicial');
            fchaAsignacion.SetFocus;
            exit;
        end
        else
         qryInsumosxFolios.FieldByName('dFechaExpira').AsDateTime :=fchVigencia.date;

    end;



end;

procedure TfrmInsumoxPersonal.btnCancelarClick(Sender: TObject);
begin
  if qryInsumosXfolios.State in [dsInsert, dsEdit] then begin
    qryInsumosXfolios.Cancel;
    gridInsXEmpl.Enabled := True;
    GridInsumos.Enabled := True;
    guardar.Enabled := False;
    btnDenegar.Enabled := True;
    btnAsignar.Enabled := True;
    fchaAsignacion.date := 0;
    fchVigencia.Date := 0;
    ckbVigencia.Enabled := False;
    Motivo.Enabled := False;
    dbSerie.Enabled := False;
    dCantidad.Enabled := False;
    dbSerie.Enabled := False;
    btnCancelar.Enabled := False;
    btnCancelar.Visible := False;
  end;  
end;

procedure TfrmInsumoxPersonal.btnDenegarClick(Sender: TObject);
Var
  ExistenciasAnteriores, CantidadTotal: Double;
begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT dExistencia FROM insumos '
            +' WHERE sIdInsumo = :Insumo AND sIdAlmacen = ' + QuotedStr(almacen.fieldbyname('sIdAlmacen').asstring) + ';');
    connection.QryBusca.Params.ParamByName('insumo').AsString  := qryInsumosXFolios.FieldByName('sIdInsumo').AsString;
    connection.QryBusca.Open;
//
//
//    dExistencia:= connection.QryBusca.FieldByName('dExistencia').AsInteger;
//    Cantidad:= dExistencia + 1;


              If MessageDlg ('¿Es Seguro quitar El Material: ?', mtConfirmation ,mbOkCancel,0) = mrOk Then begin
                  ExistenciasAnteriores := connection.QryBusca.FieldByName('dExistencia').AsFloat;
                  CantidadTotal := (ExistenciasAnteriores + qryInsumosxFolios.FieldByName('iCantidad').AsFloat);
                  connection.QryBusca.Active := False;
                  //IF(dExistencia > 0, (dExistencia + '+qryInsumosXfolios.FieldByName('iCantidad').AsString+'), '+qryInsumosXfolios.FieldByName('iCantidad').AsString+')
                  connection.QryBusca.SQL.Text:= 'UPDATE insumos SET dExistencia = '+QuotedStr(FloatToStr(CantidadTotal))+' WHERE sIdInsumo = :Insumo AND sIdAlmacen = :almacen;';
//                  connection.QryBusca.Params.ParamByName('contrato').AsString := qryInsumosXFolios.FieldByName('sContrato').AsString;
                  connection.QryBusca.Params.ParamByName('almacen').AsString := qryInsumosXFolios.FieldByName('sIdAlmacen').AsString;
                  connection.QryBusca.Params.ParamByName('Insumo').AsString := qryInsumosXFolios.FieldByName('sIdInsumo').AsString;
                  connection.QryBusca.ExecSQL;

                  connection.QryBusca.Active := False;
                  connection.QryBusca.SQL.Text := 'DELETE FROM alm_empleado_insumo WHERE  iId = :id AND iActivo = 1;';
                  connection.QryBusca.ParamByName('id').AsInteger :=  qryInsumosXfolios.FieldByName('iId').AsInteger;

                  connection.QryBusca.ExecSQL;

              end;


            tzInsumos.Refresh;
            qryInsumosXfolios.Refresh;
end;

procedure TfrmInsumoxPersonal.guardarClick(Sender: TObject);
Var
  ExistenciasAnteriores, CantidadTotal: Double;
begin
  if tsdCantidad.AsInteger > tzInsumos.FieldByName('dExistencia').AsInteger then begin
    ShowMessage('No se puede asignar una cantidad mayor a la existente');
    Exit;
  end;
  Try
    qryInsumosxFolios.FieldByName('iCantidad').AsInteger := tsdCantidad.AsInteger + CantidadAnterior;
    qryInsumosXfolios.Post;
  Finally
    btnCancelar.Enabled := False;
    btnCancelar.Visible := False;
  End;
  gridInsXEmpl.Enabled := True;
  gridInsumos.Enabled := True;

//    dExistencia := tzinsumos.FieldByName('dExistencia').AsInteger;
//    Cantidad := dExistencia - 1;

    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('UPDATE insumos SET dExistencia = (dExistencia - '+tsdCantidad.AsString+') WHERE sIdInsumo = :insumo AND sIdAlmacen = :Almacen AND sContrato = :contrato;');
    connection.QryBusca.Params.ParamByName('contrato').AsString  := tzInsumos.FieldByName('sContrato').AsString;
//  connection.QryBusca.Params.ParamByName('Existencia').AsInteger :=  Cantidad;
    connection.QryBusca.Params.ParamByName('insumo').AsString  := tzInsumos.FieldByName('sIdInsumo').AsString;
    connection.QryBusca.Params.ParamByName('Almacen').AsString := tzInsumos.FieldByName('sIdAlmacen').AsString;
    connection.QryBusca.ExecSQL;
    tzInsumos.Refresh;


    guardar.Enabled := False;
    btnDenegar.Enabled := True;
    btnAsignar.Enabled := True;
    fchaAsignacion.date := 0;
    fchVigencia.Date := 0;
    ckbVigencia.Enabled := False;
    Motivo.Enabled := False;
    dbSerie.Enabled := False;
    dCantidad.Enabled := False;
    dbSerie.Enabled := False;
end;

procedure TfrmInsumoxPersonal.ckbVigenciaClick(Sender: TObject);
begin

if (ckbVigencia.Checked = true) then
begin
 fchVigencia.Enabled := True;
 fchVigencia.Date := Date;
end
 else
 begin
   fchVigencia.Enabled := False;
   fchVigencia.Date := 0;

 end;
end;

procedure TfrmInsumoxPersonal.dAlmacenClick(Sender: TObject);
begin
    tzInsumos.Active := False;
//    tzInsumos.Params.ParamByName('contrato').AsString  := qryProyectos.FieldByName('sContrato').AsString;
    tzInsumos.Params.ParamByName('idAlmacen').AsString :=  almacen.FieldByName('sIdAlmacen').AsString;;
    tzInsumos.Open;



end;

procedure TfrmInsumoxPersonal.dAlmacenEnter(Sender: TObject);
begin
dAlmacen.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.dAlmacenExit(Sender: TObject);
begin
  dAlmacen.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.dCantidadChange(Sender: TObject);
begin
  if TDBEdit(Sender).Text <> '' then begin
    if StrToInt(TDBEdit(Sender).Text) > 1 then begin
      dbSerie.Text := '';
      dbSerie.Enabled := False;
    end else begin
      dbSerie.Enabled := True;
    end;
  end;
end;

procedure TfrmInsumoxPersonal.dCantidadEnter(Sender: TObject);
begin
  TDBEdit(Sender).Color := Global_Color_Entrada;
end;

procedure TfrmInsumoxPersonal.dCantidadExit(Sender: TObject);
begin
  TDBEdit(Sender).Color := Global_Color_Salida;
end;

procedure TfrmInsumoxPersonal.DBGrid1CellClick(Column: TColumn);
begin
    qryFolios.Active := False;
    qryFolios.Params.ParamByName('Empleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').AsString;
    qryFolios.Open;


    //ShowMessage(intTostr(maxFolio));

      gridFolios.Enabled := True;
      diFolio.Enabled := False;
      fechaFolio.Enabled := False;
      nombreEmpleado.Caption := qryEmpleados.FieldByName('sNombreCompleto').AsString;
end;

procedure TfrmInsumoxPersonal.fechaEnter(Sender: TObject);
begin
    // fecha.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.fechaExit(Sender: TObject);
begin
  //fecha.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.fechaFolioEnter(Sender: TObject);
begin
fechaFolio.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.fechaFolioExit(Sender: TObject);
begin
fechaFolio.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.fechaFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key := UpCase(Key);
    if key = #13 then
      diFolio.SetFocus
end;

procedure TfrmInsumoxPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmInsumoxPersonal.FormCreate(Sender: TObject);
begin
  NxPageControl1.ActivePage := NxTabSheet1;
end;

procedure TfrmInsumoxPersonal.FormShow(Sender: TObject);
begin

  dFechaInic.Date := Now();
  dFechaFin.Date := Now();

  NxPageControl1.ActivePage := NxTabSheet1;
  qryProyectos.Active := False;
  qryProyectos.open;

  qryFrentes.Active := False;
  qryFrentes.open;

  almacen.Active := False;
  almacen.Params.ParamByName('Usuario').AsString := Global_Usuario;
  almacen.Open;

   tzInsumos.Active := False;
   //tzInsumos.Params.ParamByName('idAlmacen').AsString := almacen.fieldbyname('sIdAlmacen').asstring;
   tzInsumos.Open;

   qryFrentes.Open;

   //qryEmpleados.Active :=False;
   //qryEmpleados.Open;

   tzInsumos.Active := False;
   //tzInsumos.Params.ParamByName('contrato').AsString := global_contrato;
   //tzInsumos.Params.ParamByName('idAlmacen').AsString := almacen.fieldbyname('sIdAlmacen').AsString;
   tzInsumos.Open;

   qryFolios.active:=false;
   qryFolios.Open;


end;

procedure TfrmInsumoxPersonal.frmBarra1btnAddClick(Sender: TObject);
begin
  qryFolios.Append;
  qryFolios.FieldByName('sIdFolio').AsString    := qryFrentes.FieldByName('sIdFolio').AsString;
  qryFolios.FieldByName('sIdEmpleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').AsString;
  qryFolios.FieldByName('sContrato').AsString   := qryProyectos.FieldByName('sContrato').AsString;

  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT MAX(iFolios) as maxFolio FROM alm_foliosinsumos;');
  connection.QryBusca.Open;

  maxFolio := connection.QryBusca.FieldByName('maxFolio').AsInteger;
  qryFolios.FieldByName('iFolios').AsInteger :=  maxFolio + 1;
  diFolio.Enabled := True;
  fechaFolio.Enabled := True;
  frmBarra1.btnAddClick(Sender);
  diFolio.SetFocus;
end;

procedure TfrmInsumoxPersonal.frmBarra1btnCancelClick(Sender: TObject);
begin
  qryFolios.Cancel;
  diFolio.Enabled := False;
  fechaFolio.Enabled := False;
  frmBarra1.btnCancelClick(Sender); 
end;

procedure TfrmInsumoxPersonal.frmBarra1btnDeleteClick(Sender: TObject);
begin
    if qryfolios.RecordCount > 0 then
    begin
        if qryFolios.FieldByName('iFolios').AsString <> '' then
        begin
            if application.MessageBox('¿Desea Eliminar el Folio?','Eliminar',mb_YesNo+Mb_iconQuestion) = idYes then
            begin
                connection.QryBusca.Active := False;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('SELECT * FROM alm_empleado_insumo WHERE iFolios = :Folio;');
                connection.QryBusca.Params.ParamByName('Folio').AsInteger := qryfolios.FieldByName('iFolios').AsInteger;
                connection.QryBusca.Open;
                if connection.QryBusca.RecordCount > 0 then
                begin
                    application.MessageBox('Imposible Eliminar el Folio.'+#13+'Hay Materiales Asignados a este Folio.','Error al Eliminar',mb_Ok+Mb_iconError);
                    exit;
                end else
                begin
                   qryFolios.Delete;
                end;
            end;
        end;
    end;
end;

procedure TfrmInsumoxPersonal.frmBarra1btnEditClick(Sender: TObject);
begin
  diFolio.Enabled := True;
  fechaFolio.Enabled := True;
  diFolio.SetFocus;
  qryFolios.Edit;
  frmBarra1.btnEditClick(Sender);
end;

procedure TfrmInsumoxPersonal.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure TfrmInsumoxPersonal.frmBarra1btnPostClick(Sender: TObject);
begin
  qryFolios.FieldByName('sIdUsuario').AsString := global_usuario;
  qryFolios.FieldByName('dFecha').AsDateTime := fechaFolio.Date;
  qryFolios.Post;
  diFolio.Enabled := False;
  fechaFolio.Enabled := False;
  frmBarra1.btnPostClick(Sender); 
end;

procedure TfrmInsumoxPersonal.frmBarra1btnRefreshClick(Sender: TObject);
begin
    if qryFolios.RecordCount > 0 then
        qryfolios.Refresh;
end;

procedure TfrmInsumoxPersonal.frmBarra2btnAddClick(Sender: TObject);
begin
  //frmBarra2.btnAddClick(Sender);


end;

procedure TfrmInsumoxPersonal.frmBarra2btnPostClick(Sender: TObject);
begin
  //frmBarra2.btnPostClick(Sender);

end;

procedure TfrmInsumoxPersonal.gridFoliosCellClick(Column: TColumn);
begin

  dAlmacen.Enabled := True;
  edBusqAlmacen.Enabled := True;
  gridInsumos.Enabled := True;
  btnAsignar.Enabled := True;
  btnDenegar.Enabled := True;
  gridInsXEmpl.Enabled := True;

end;

procedure TfrmInsumoxPersonal.dbSerieChange(Sender: TObject);
begin
  if Length(TDBEdit(Sender).Text) > 0 then begin
    dCantidad.Text := '1';
    dCantidad.Enabled := False;
  end else begin
    dCantidad.Enabled := True;
  end;
end;

procedure TfrmInsumoxPersonal.dbSerieEnter(Sender: TObject);
begin
   dbSerie.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.dbSerieExit(Sender: TObject);
begin
   dbSerie.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.dFechafinEnter(Sender: TObject);
begin
dFechainic.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.dFechafinExit(Sender: TObject);
begin
dFechafin.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.dFechaInicEnter(Sender: TObject);
begin
     dFechainic.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.dFechaInicExit(Sender: TObject);
begin
    dFechaInic.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.diFolioEnter(Sender: TObject);
begin
diFolio.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.diFolioExit(Sender: TObject);
begin
    diFolio.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.diFolioKeyPress(Sender: TObject; var Key: Char);
begin
    Key := UpCase(Key);
    if key = #13 then
      fechaFolio.SetFocus
end;

procedure TfrmInsumoxPersonal.dsFrenteEnter(Sender: TObject);
begin
     dsFrente.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.dsFrenteExit(Sender: TObject);
begin
     dsFrente.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.dsProyectoClick(Sender: TObject);
begin

    qryFrentes.Active := False;
    qryFrentes.SQL.Clear;
    qryFrentes.SQL.Add('SELECT sIdfolio, sNumeroOrden FROM ordenesdetrabajo WHERE sContrato = :Contrato');
    qryFrentes.Params.ParamByName('Contrato').DataType := ftString;
    qryFrentes.Params.ParamByName('Contrato').AsString := qryProyectos.FieldByName('sContrato').AsString;
    qryFrentes.Open;

//    qryEmpleados.Active := False;
//    qryEmpleados.SQL.Clear;
//    qryEmpleados.SQL.Add('SELECT sIdEmpleado, sNombre FROM empleados WHERE sContrato = :Contrato;');
//    qryEmpleados.Params.ParamByName('Contrato').DataType := ftString;
//    qryEmpleados.Params.ParamByName('Contrato').AsString := qryProyectos.FieldByName('Scontrato').AsString;
//    qryEmpleados.Open;
    dAlmacen.Enabled := True;
    almacen.Active := False;
    almacen.Params.ParamByName('Usuario').AsString := Global_Usuario;
//    almacen.Params.ParamByName('contrato').AsString := qryProyectos.FieldByName('Scontrato').AsString;;
    almacen.Open;

    tzInsumos.Close;
    qryEmpleados.Close;
    qryinsumosXfolios.Close;
    qryFolios.Close;
end;

procedure TfrmInsumoxPersonal.dsProyectoEnter(Sender: TObject);
begin
dsProyecto.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.dsProyectoExit(Sender: TObject);
begin
dsProyecto.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.txtBusEmpleadoEnter(Sender: TObject);
begin
   txtBusEmpleado.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.txtBusEmpleadoExit(Sender: TObject);
begin
  txtBusEmpleado.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.txtBusEmpleadoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if length(trim(txtBusEmpleado.Text)) > 0 then
        begin
        qryEmpleados.Filtered := False;
        qryEmpleados.Filter := ' sNombreCompleto LIKE ' + QuotedStr('*' + txtBusEmpleado.Text + '*');
        qryEmpleados.Filtered := True;
        end
     else
        begin
        qryEmpleados.Filtered := False;
        end;
end;

procedure TfrmInsumoxPersonal.edBusqAlmacenEnter(Sender: TObject);
begin
edBusqAlmacen.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.edBusqAlmacenExit(Sender: TObject);
begin
 edBusqAlmacen.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.edBusqAlmacenKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if length(trim(edBusqAlmacen.Text)) > 0 then
        begin
        tzInsumos.Filtered := False;
        tzInsumos.Filter := ' sDescripcion LIKE ' + QuotedStr('*' + edBusqAlmacen.Text + '* ');
        tzInsumos.Filtered := True;
        end
     else
        begin
        tzInsumos.Filtered := False;
        end;
end;

procedure TfrmInsumoxPersonal.edCantidadEnter(Sender: TObject);
begin
   //edCantidad.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.edCantidadExit(Sender: TObject);
begin
  //edCantidad.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.fchaAsignacionEnter(Sender: TObject);
begin
fchaAsignacion.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.fchaAsignacionExit(Sender: TObject);
begin
  fchaAsignacion.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.fchVigenciaEnter(Sender: TObject);
begin
fchVigencia.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.fchVigenciaExit(Sender: TObject);
begin
  fchVigencia.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.MotivoEnter(Sender: TObject);
begin
  Motivo.Color := global_color_entrada
end;

procedure TfrmInsumoxPersonal.MotivoExit(Sender: TObject);
begin
    Motivo.Color := global_color_salida
end;

procedure TfrmInsumoxPersonal.NxTabSheet2Show(Sender: TObject);
begin
    dAlmacen.Enabled := True;
    almacen.Active := False;
    almacen.Params.ParamByName('Usuario').AsString := Global_Usuario;
    almacen.Open;
    MemoriaAlmacenes.LoadFromDataSet(almacen, 0, lmCopy);

    qryInsumosXFolios.Active := False;
    qryInsumosxFolios.Params.ParamByName('Folio').AsInteger := qryFolios.FieldByName('iFolios').AsInteger;
    qryInsumosXFolios.Open;


    tzInsumos.Active := False;
    tzInsumos.Params.ParamByName('idAlmacen').AsString :=  almacen.FieldByName('sIdAlmacen').AsString;;
    tzInsumos.Open;
end;

procedure TfrmInsumoxPersonal.qryEmpleadosAfterScroll(DataSet: TDataSet);
begin
 
  qryFolios.Active := False;
    qryFolios.Params.ParamByName('Empleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').AsString;
    qryFolios.Open;
  nombreEmpleado.Caption := qryEmpleados.FieldByName('sNombreCompleto').AsString;
end;

end.
