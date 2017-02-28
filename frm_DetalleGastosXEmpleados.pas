unit frm_DetalleGastosXEmpleados;

interface

uses


    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
      Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, global, ZAbstractDataset,
      ZDataset, frxDBSet, Menus, ComCtrls, ExtCtrls, Buttons, Newpanel, frxClass,
  ImgList, RXCtrls, AdvGlowButton, StrUtils, UDbGrid, Mask, JvExMask, JvToolEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxButtons,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;


type
  TfrmDetalleGastosXEmpleados = class(TForm)
    dszQEmpleados: TDataSource;
    zQEmpleados: TZQuery;
    zQEmpleadossIdEmpleado: TStringField;
    zQEmpleadossNombreCompleto: TStringField;
    frxrepor: TfrxDBDataset;
    frxReport: TfrxReport;
    zegresos: TZQuery;
    imgIteliBarra: TImageList;
    frxreport1: TfrxDBDataset;
    zegresossIdProveedor: TStringField;
    zegresossRazonSocial: TStringField;
    zegresosmdescripcion: TMemoField;
    zegresosdimporte: TFloatField;
    zQEmpleadossPuesto: TStringField;
    zegresossTipoEgreso: TStringField;
    zegresossIdEgreso: TStringField;
    zQEgresosEmpleado: TZQuery;
    dsEgresosEmpleado: TDataSource;
    zegresostipo: TStringField;
    zegresosdIdFecha: TDateField;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    rbgOpciones: TRadioGroup;
    FechaIni: TDateTimePicker;
    FechaFin: TDateTimePicker;
    rdAgrupado: TRadioButton;
    rdDetallado: TRadioButton;
    cmdImprimir: TAdvGlowButton;
    GroupBox1: TGroupBox;
    tsListaEgresos: TRxCheckListBox;
    chxTodos: TCheckBox;
    cmdEmpleados: TcxButton;
    cmdProveedores: TcxButton;
    cmdEgresos: TcxButton;
    grid_catIngresos: TcxGrid;
    BVIew_catIngresos: TcxGridDBTableView;
    BVIew_catIngresossIdEmpleado1: TcxGridDBColumn;
    BVIew_catIngresossNombreCompleto1: TcxGridDBColumn;
    grid_catIngresosLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure FiltroEmpleadoEnter(Sender: TObject);
    procedure FiltroEmpleadoExit(Sender: TObject);
    procedure FiltroEmpleadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure zQEmpleadosAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chxTodosClick(Sender: TObject);
    procedure cmdImprimirClick(Sender: TObject);
    procedure grid_catIngresosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_catIngresosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_catIngresosTitleClick(Column: TColumn);
    procedure grid_catIngresosCellClick(Column: TColumn);
    procedure cmdEmpleadosClick(Sender: TObject);
    procedure cmdProveedoresClick(Sender: TObject);
    procedure cmdEgresosClick(Sender: TObject);
    procedure BVIew_catIngresosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    Tactivo: Boolean;   //Para ejecutar el afterscroll
  public
    { Public declarations }
    descartarAfterScroll : boolean;
  end;

var
  frmDetalleGastosXEmpleados: TfrmDetalleGastosXEmpleados;
  ListaIdEgresos : TStringList;
  UtGrid : ticdbgrid;
  elegido : string ;

implementation
  uses
    frm_connection;

{$R *.dfm}


procedure TfrmDetalleGastosXEmpleados.cmdImprimirClick(Sender: TObject);
var
  sql, restriccion : String;
  fila, num        : Integer;
  seleccionado     : Boolean;
begin
    if zQEmpleados.RecordCount > 0 then begin
    seleccionado := False;
    restriccion := ' AND sIdEgreso IN(';
    fila := 0;
    num := tsListaEgresos.Items.Count;
    while fila < num do begin
      if tsListaEgresos.Checked[fila] = True then begin
        seleccionado := True;
        restriccion := restriccion + QuotedStr(ListaIdEgresos[fila]) + ',';
      end;
      inc(fila);
    end;
    if seleccionado then
      restriccion := MidStr ( restriccion, 1 , (Length(restriccion) - 1) ) + ')'
    else
      restriccion := '';

    if elegido = 'egresos' then
     begin
        if rdAgrupado.Checked then begin
               sql := 'SELECT sIdProveedor, sRazonSocial, sTipoEgreso, sIdEgreso, mdescripcion, SUM(dimporte) AS dimporte, "Agrupado" AS tipo, dIdFecha ' +
                 'FROM  con_tesoreriapegresos ' +
                 'WHERE sIdEgreso = :Proveedor ' +
                 'AND dIdFecha BETWEEN :FechaI and :FechaF ' +
                 restriccion + ' ' +
                 'GROUP BY sIdEgreso ' +
                 'ORDER BY sIdEgreso, dIdFecha;';
          end;
         if rdDetallado.Checked then begin
             Sql := 'SELECT sIdProveedor, sRazonSocial, sTipoEgreso, sIdEgreso, mdescripcion, dimporte, "Detallado" AS tipo, dIdFecha ' +
                'FROM  con_tesoreriapegresos ' +    //poner una pcon_tesoreriapegresos
                'WHERE sIdEgreso = :Proveedor ' +
                'AND dIdFecha BETWEEN :FechaI and :FechaF ' +
                restriccion + ' ' +
                'ORDER BY sIdEgreso, dIdFecha;';
         end;
     end;

     if elegido <> 'egresos' then
     begin
        if rdAgrupado.Checked then begin
               sql := 'SELECT sIdProveedor, sRazonSocial, sTipoEgreso, sIdEgreso, mdescripcion, SUM(dimporte) AS dimporte, "Agrupado" AS tipo, dIdFecha ' +
                 'FROM  con_tesoreriapegresos ' +
                 'WHERE sIdProveedor = :Proveedor ' +
                 'AND dIdFecha BETWEEN :FechaI and :FechaF ' +
                 restriccion + ' ' +
                 'GROUP BY sIdEgreso ' +
                 'ORDER BY sIdEgreso, dIdFecha;';
          end;
         if rdDetallado.Checked then begin
             Sql := 'SELECT sIdProveedor, sRazonSocial, sTipoEgreso, sIdEgreso, mdescripcion, dimporte, "Detallado" AS tipo, dIdFecha ' +
                'FROM  con_tesoreriapegresos ' +
                'WHERE sIdProveedor = :Proveedor ' +
                'AND dIdFecha BETWEEN :FechaI and :FechaF ' +
                restriccion + ' ' +
                'ORDER BY sIdEgreso, dIdFecha;';
         end;
     end;

      zegresos.Active := False;
      zegresos.SQL.Clear ;
      zegresos.Sql.Add(sql) ;
      zegresos.ParamByName('Proveedor').AsString   := dszQEmpleados.DataSet.FieldByName('sIdEmpleado').AsString;
      zegresos.ParamByName('FechaI').AsDate := FechaIni.Date;
      zegresos.ParamByName('FechaF').AsDate := FechaFin.Date;
      zegresos.Open;
      if zegresos.RecordCount > 0 then begin
        frxReport.LoadFromFile(global_files+global_miReporte+ '_CADempleadoegresos.fr3');
        frxReport.ShowReport();


      end
      else begin
        MessageDlg('No se Encontraron Resultados para este Rango de Fechas.',mtInformation,[mbOk],0);
      end;
       if not FileExists(global_files + global_miReporte + '_CADempleadoegresos.fr3') then
      begin
          showmessage('El archivo de reporte '+global_Mireporte+'_CADempleadoegresos.fr3 no existe, notifique al administrador del sistema');
          exit;
          end;
    end;
end;

procedure TfrmDetalleGastosXEmpleados.Button1Click(Sender: TObject);
begin
exit;
end;

procedure TfrmDetalleGastosXEmpleados.chxTodosClick(Sender: TObject);
var
  i : integer;
begin
  if zQEgresosEmpleado.RecordCount > 0 then begin
    if tsListaEgresos.Items.Count > 0 then begin
      for i := 0 to tsListaEgresos.Items.Count - 1 do begin
        tsListaEgresos.Checked[i] := chxTodos.Checked;
      end;
    end;
  end
  else
      chxTodos.Checked := False;
end;


procedure TfrmDetalleGastosXEmpleados.zQEmpleadosAfterScroll(DataSet: TDataSet);
var
  i : Integer;
begin
  if descartarAfterScroll = False then
  begin
    if zQEmpleados.RecordCount > 0 then
    begin
      if Tactivo = true then
      begin
        i := 0;
        zQEgresosEmpleado.Active := False;
        zQEgresosEmpleado.Params.ParamByName('Empleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
        zQEgresosEmpleado.Open;
        if zQEgresosEmpleado.RecordCount > 0 then
        begin
          tsListaEgresos.Clear;
          ListaIdEgresos.Clear;
          chxTodos.Checked := True;
          zQEgresosEmpleado.First;
          while not zQEgresosEmpleado.Eof do
          begin
            tsListaEgresos.Items.Add(zQEgresosEmpleado.FieldByName('egreso').AsString);
            ListaIdEgresos.Add(zQEgresosEmpleado.FieldByName('iId').AsString);
            if chxTodos.Checked then
            begin
              tsListaEgresos.Checked[i] := True;
            end
            else
            begin
              tsListaEgresos.Checked[i] := False;
            end;
            inc(i);
            zQEgresosEmpleado.Next;
          end;
        end
        else
        begin
          tsListaEgresos.Clear;
          chxTodos.Checked := False;
        end;
      end;
    end;
  end;
end;

procedure TfrmDetalleGastosXEmpleados.FiltroEmpleadoEnter(Sender: TObject);
begin
  if TEdit(Sender).Text = 'Buscar Empleado...' then
  begin
    TEdit(Sender).Text := '';
  end;
  if TEdit(Sender).Text = 'Buscar Proveedor...' then
     TEdit(Sender).Text := '';
end;

procedure TfrmDetalleGastosXEmpleados.FiltroEmpleadoExit(Sender: TObject);
begin
   {if TEdit(Sender).Text = '' then
   begin
      if lblempleado.Caption = 'Empleado:' then
         TEdit(Sender).Text := 'Buscar Empleado...'
      else
         TEdit(Sender).Text := 'Buscar Proveedor...'
   end;}
end;

procedure TfrmDetalleGastosXEmpleados.FiltroEmpleadoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 {if TEdit(Sender).Text <> '' then begin
    zqEmpleados.Filter := 'sNombreCompleto LIKE ''*'+TEdit(Sender).Text+'*''';
    zqEmpleados.Filtered := True;
  end else begin
    zqEmpleados.Filter := '';
    zqEmpleados.Filtered := False;
  end;
  zQEmpleados.AfterScroll(zQEmpleados);  }
end;

procedure TfrmDetalleGastosXEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ListaIdEgresos.free;
  action := cafree;
  //UtGrid.Destroy;
end;

procedure TfrmDetalleGastosXEmpleados.FormShow(Sender: TObject);
  var
    mes, dia, año :Word;
    primerdia : tdatetime;
begin
  descartarAfterScroll := True; //Para descartar los after scoll que no se esten usando en este form show


  Tactivo := False;
  //UtGrid:=TicdbGrid.create(grid_catIngresos);
  ListaIdEgresos := TStringList.Create;
  zQEmpleados.Open ;
  FechaIni.Date:= Now;
  decodedate(FechaIni.Date, año, mes, dia);
  primerdia := encodeDate(año, mes, 1);
  FechaIni.Date:= primerdia;
  FechaFin.Date := Now;
  Tactivo := true;
  cmdEmpleados.Click;

  descartarAfterScroll := False;
end;

procedure TfrmDetalleGastosXEmpleados.grid_catIngresosCellClick(
  Column: TColumn);
begin
  //usuario.Text := dszQEmpleados.DataSet.FieldByName('sNombreCompleto').AsString ;
end;

procedure TfrmDetalleGastosXEmpleados.grid_catIngresosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
  //usuario.Text := dszQEmpleados.DataSet.FieldByName('sNombreCompleto').AsString ;
end;

procedure TfrmDetalleGastosXEmpleados.grid_catIngresosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
  //usuario.Text := dszQEmpleados.DataSet.FieldByName('sNombreCompleto').AsString ;
end;

procedure TfrmDetalleGastosXEmpleados.grid_catIngresosTitleClick(
  Column: TColumn);
begin
  //UtGrid.DbGridTitleClick(Column);
  //usuario.Text := dszQEmpleados.DataSet.FieldByName('sNombreCompleto').AsString ;
end;

procedure TfrmDetalleGastosXEmpleados.cmdEmpleadosClick(Sender: TObject);
var i:integer;
begin
  BVIew_catIngresos.DataController.DataSource := nil;
  i:=0;
  Tactivo := False;
  //lblempleado.Caption := 'Empleado:';
  //grid_catIngresos.Columns[1].Title.Caption := 'Nombre Completo';
  while i <= BVIew_catIngresos.ColumnCount-1 do
  begin
    if BVIew_catIngresos.Columns[i].DataBinding.FieldName = 'sNombreCompleto' then
      BVIew_catIngresos.Columns[i].Caption := 'Nombre Completo';
    i:=i+1;
  end;
  //FiltroEmpleado.Text := 'Buscar Empleado...';
  {Ahora cambiamos la consulta}
  zQEmpleados.Active := False;
  zQEmpleados.SQL.Clear;
  zQEmpleados.SQL.Add('select e.sIdEmpleado, ifnull(concat(e.sNombreCompleto," ", e.sApellidoPaterno, " ", e.sApellidoMaterno),e.sNombreCompleto) as sNombreCompleto, '+
                      'd.titulodepartamento as sPuesto '+
                      'from empleados e '+
                      'inner join nuc_departamento d on (d.iddepartamento = e.iddepartamento) '+
                      'order by sNombreCompleto');
  zQEmpleados.Open;
  BVIew_catIngresos.DataController.DataSource := dszQEmpleados;
  grid_catIngresos.SetFocus;
  Tactivo := true;
  zQEmpleadosAfterScroll(zQEmpleados);
  elegido := 'empleados' ;
  cmdEmpleados.Enabled    := False ;
  cmdProveedores.Enabled  := True  ;
  cmdEgresos.Enabled      := True  ;
end;

procedure TfrmDetalleGastosXEmpleados.cmdProveedoresClick(Sender: TObject);
var i:integer;
begin
  BVIew_catIngresos.DataController.DataSource := nil;
  i:=0;
  Tactivo := false;
  //lblempleado.Caption := 'Proveedor:';
  //grid_catIngresos.Columns[1].Title.Caption := 'Razon Social';
 while i <= BVIew_catIngresos.ColumnCount-1 do
  begin
    if BVIew_catIngresos.Columns[i].DataBinding.FieldName = 'sNombreCompleto' then
      BVIew_catIngresos.Columns[i].Caption := 'Razón Social';
    i:=i+1;
  end;
  //FiltroEmpleado.Text := 'Buscar Proveedor...';

  zQEmpleados.Active := False;
  zQEmpleados.SQL.Clear;
  zQEmpleados.SQL.Add('select sIdProveedor as sIdEmpleado, sRazonSocial as sNombreCompleto, "" as sPuesto '+
                      'from proveedores order by sRazonSocial ');
  zQEmpleados.Open;
  BVIew_catIngresos.DataController.DataSource := dszQEmpleados;
  grid_catIngresos.SetFocus;
  Tactivo:= true;
  zQEmpleadosAfterScroll(zQEmpleados);
   elegido := 'proveedores' ;
  cmdProveedores.Enabled  := False ;
  cmdEmpleados.Enabled    := True  ;
  cmdEgresos.Enabled      := True  ;
end;

procedure TfrmDetalleGastosXEmpleados.BVIew_catIngresosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //usuario.Text := dszQEmpleados.DataSet.FieldByName('sNombreCompleto').AsString ;
end;

procedure TfrmDetalleGastosXEmpleados.cmdEgresosClick(Sender: TObject);
var i:integer;
begin
  i:=0;
  Tactivo := false;
  //lblempleado.Caption := 'Egresos:';
  //grid_catIngresos.Columns[1].Title.Caption := 'Descripcion';
  while i <= BVIew_catIngresos.ColumnCount-1 do
  begin
    if BVIew_catIngresos.Columns[i].DataBinding.FieldName = 'sNombreCompleto' then
      BVIew_catIngresos.Columns[i].Caption := 'Descripción';
    i:=i+1;
  end;
  //FiltroEmpleado.Text := 'Buscar Egreso...';

  zQEmpleados.Active := False;
  zQEmpleados.SQL.Clear;
  zQEmpleados.SQL.Add('select sIdEgreso as sIdEmpleado,  SubStr(mDescripcion, 1, 255) as sNombreCompleto, "" as sPuesto '+
                      'from con_catalogodeegresos order by sIdEgreso ');
  zQEmpleados.Open;
  BVIew_catIngresos.DataController.DataSource := dszQEmpleados;
  grid_catIngresos.SetFocus;
  Tactivo := true;
  zQEmpleadosAfterScroll(zQEmpleados);
  elegido := 'egresos' ;
  cmdEgresos.Enabled     := False ;
  cmdProveedores.Enabled := True ;
  cmdEmpleados.Enabled   := True ;
end;

end.
