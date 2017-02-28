unit frm_Proyeccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, DB, frm_Connection, Grids,
  DBGrids, RXDBCtrl, Global, Mask, Buttons,  frxClass,uDbGrid, UnitExcepciones,
  frxDBSet, ZAbstractRODataset, ZDataset, rxToolEdit, rxCurrEdit, sSkinProvider;

type
  TfrmProyeccion = class(TForm)
    gpProyecta: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    PgProyeccion: TPageControl;
    PartidasAnexo: TTabSheet;
    pgPersonal: TTabSheet;
    pgEquipo: TTabSheet;
    rxAnexo: TRxDBGrid;
    ds_Anexo: TDataSource;
    btnProyecta: TBitBtn;
    btnSalir: TBitBtn;
    btnPrinter: TBitBtn;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    dTotalMN: TCurrencyEdit;
    dTotalDLL: TCurrencyEdit;
    GridPersonal: TRxDBGrid;
    ds_recursospersonal: TDataSource;
    ds_recursosequipo: TDataSource;
    GridEquipos: TRxDBGrid;
    dbRecursosPersonal: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    dbAnexo: TfrxDBDataset;
    chkDetalle: TCheckBox;
    Anexo: TZReadOnlyQuery;
    AnexosNumeroActividad: TStringField;
    AnexomDescripcion: TMemoField;
    AnexodCantidadAnexo: TFloatField;
    AnexosMedida: TStringField;
    AnexodVentaMN: TFloatField;
    AnexodPonderado: TFloatField;
    AnexodCantidadInstalar: TFloatField;
    AnexosWbs: TStringField;
    RecursosPersonal: TZReadOnlyQuery;
    RecursosPersonalsContrato: TStringField;
    RecursosPersonalsWbs: TStringField;
    RecursosPersonalsNumeroActividad: TStringField;
    RecursosPersonalsIdPersonal: TStringField;
    RecursosPersonaldCantidad: TFloatField;
    RecursosPersonaldCostoMN: TFloatField;
    RecursosPersonaldCostoDLL: TFloatField;
    RecursosPersonalsDescripcion: TStringField;
    RecursosPersonalsMedida: TStringField;
    RecursosPersonaldVentaMN: TFloatField;
    RecursosPersonalTipo: TStringField;
    RecursosEquipo: TZReadOnlyQuery;
    ProyeccionTotal: TZReadOnlyQuery;
    AnexosContrato: TStringField;
    AnexodFechaInicio: TDateField;
    AnexodFechaFinal: TDateField;
    frxProyeccion: TfrxReport;
    frxProyeccion2: TfrxReport;
    sSkinProvider1: TsSkinProvider;
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProyectaClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure rxAnexoEnter(Sender: TObject);
    procedure AnexoAfterScroll(DataSet: TDataSet);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxProyeccionGetValue(const VarName: String;
      var Value: Variant);
    procedure frxProyeccion2GetValue(const VarName: String;
      var Value: Variant);
    procedure rxAnexoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rxAnexoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rxAnexoTitleClick(Column: TColumn);
    procedure GridPersonalTitleClick(Column: TColumn);
    procedure GridPersonalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridPersonalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridEquiposMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridEquiposMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridEquiposTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProyeccion: TfrmProyeccion;
  UtGrid:ticDbGrid;
  UtGrid2:ticDbGrid;
  UtGrid3:ticDbGrid;
implementation

{$R *.dfm}

procedure TfrmProyeccion.tdFechaInicioEnter(Sender: TObject);
begin
    btnPrinter.Enabled := False ;
    RecursosPersonal.Active := False ;
    RecursosEquipo.Active := False ;
    Anexo.Active := False ;
    tdFechaInicio.Color := global_color_entrada
end;

procedure TfrmProyeccion.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salida
end;

procedure TfrmProyeccion.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus 
end;

procedure TfrmProyeccion.tdFechaFinalEnter(Sender: TObject);
begin
    btnPrinter.Enabled := False ;
    RecursosPersonal.Active := False ;
    RecursosEquipo.Active := False ;
    Anexo.Active := False ;
    tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmProyeccion.tdFechaFinalExit(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_salida
end;

procedure TfrmProyeccion.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnProyecta.SetFocus 
end;

procedure TfrmProyeccion.FormShow(Sender: TObject);
begin
    UtGrid:=TicdbGrid.create(rxanexo);
    UtGrid2:=TicdbGrid.create(gridpersonal);
    UtGrid3:=TicdbGrid.create(gridequipos);
    tdFechaInicio.Date := Date ;
    tdFechaFinal.Date := Date ;
end;

procedure TfrmProyeccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UtGrid.Destroy;
  UtGrid2.Destroy;
  UtGrid3.Destroy;
  action := cafree ;
end;

procedure TfrmProyeccion.btnProyectaClick(Sender: TObject);
begin
  try
    btnPrinter.Enabled := True ;

    Anexo.Active := False ;
    Anexo.Params.ParamByName('Contrato').DataType := ftString ;
    Anexo.Params.ParamByName('Contrato').Value := global_contrato ;
    Anexo.Params.ParamByName('Convenio').DataType := ftString ;
    Anexo.Params.ParamByName('Convenio').Value := global_convenio ;
    Anexo.Params.ParamByName('FechaI').DataType := ftDate ;
    Anexo.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
    Anexo.Params.ParamByName('FechaF').DataType := ftDate ;
    Anexo.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
    dbAnexo.FieldAliases.Clear ;
    dbAnexo.DataSet := Anexo ;
    Anexo.Open ;

    ProyeccionTotal.Active := False ;
    ProyeccionTotal.Params.ParamByName('Contrato').DataType := ftString ;
    ProyeccionTotal.Params.ParamByName('Contrato').Value := global_contrato ;
    ProyeccionTotal.Params.ParamByName('Convenio').DataType := ftString ;
    ProyeccionTotal.Params.ParamByName('Convenio').Value := global_convenio ;
    ProyeccionTotal.Params.ParamByName('FechaI').DataType := ftDate ;
    ProyeccionTotal.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
    ProyeccionTotal.Params.ParamByName('FechaF').DataType := ftDate ;
    ProyeccionTotal.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
    ProyeccionTotal.Open ;
    dTotalMN.Value := 0 ;
    dTotalDLL.Value := 0 ;
    If ProyeccionTotal.RecordCount > 0 then
    Begin
        dTotalMN.Value := ProyeccionTotal.FieldValues['dTotalMN'] ;
        dTotalDLL.Value := ProyeccionTotal.FieldValues['dTotalDLL'] ;
    End ;
    PgProyeccion.ActivePageIndex := 0 ;

    rxAnexo.SetFocus
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'opProyeccion', 'Al proyectar', 0);
    end;
  end;
end;

procedure TfrmProyeccion.btnSalirClick(Sender: TObject);
begin
    Close
end;

procedure TfrmProyeccion.rxAnexoEnter(Sender: TObject);
begin
    If Anexo.Active = True Then
        If Anexo.RecordCount > 0 Then
        Begin
            RecursosPersonal.Active := False ;
            RecursosPersonal.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('Contrato').Value := global_contrato ;
            RecursosPersonal.Params.ParamByName('Actividad').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
            RecursosPersonal.Open ;
            RecursosEquipo.Active := False ;
            RecursosEquipo.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('Contrato').Value := global_contrato ;
            RecursosEquipo.Params.ParamByName('Actividad').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
            RecursosEquipo.Open ;

        End
end;

procedure TfrmProyeccion.rxAnexoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if rxAnexo.datasource.DataSet.IsEmpty=false  then
if rxAnexo.DataSource.DataSet.RecordCount>0 then
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProyeccion.rxAnexoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if rxAnexo.datasource.DataSet.IsEmpty=false  then
if rxAnexo.DataSource.DataSet.RecordCount>0 then
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProyeccion.rxAnexoTitleClick(Column: TColumn);
begin
if rxAnexo.datasource.DataSet.IsEmpty=false  then
if rxAnexo.DataSource.DataSet.RecordCount>0 then
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmProyeccion.AnexoAfterScroll(DataSet: TDataSet);
begin
   If Anexo.RecordCount > 0 Then
   Begin
       RecursosPersonal.Active := False ;
       RecursosPersonal.Params.ParamByName('Contrato').DataType := ftString ;
       RecursosPersonal.Params.ParamByName('Contrato').Value := global_contrato ;
       RecursosPersonal.Params.ParamByName('Actividad').DataType := ftString ;
       RecursosPersonal.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
       RecursosPersonal.Open ;
       RecursosEquipo.Active := False ;
       RecursosEquipo.Params.ParamByName('Contrato').DataType := ftString ;
       RecursosEquipo.Params.ParamByName('Contrato').Value := global_contrato ;
       RecursosEquipo.Params.ParamByName('Actividad').DataType := ftString ;
       RecursosEquipo.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad'] ;
       RecursosEquipo.Open ;
   End
end;

procedure TfrmProyeccion.btnPrinterClick(Sender: TObject);
begin
  try
    if Anexo.RecordCount > 0 then
    begin
        If chkDetalle.State = cbChecked Then
        Begin
            frxProyeccion.ShowReport;
        End
        Else
        Begin
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select Sum(e.dCantidad) as dGenerado From estimacionxpartida e INNER JOIN estimaciones e1 ON ' +
                                             '(e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador) Where ' +
                                             'e1.sContrato = :contrato And e1.dFechaInicio >= :Inicio And e1.dFechaFinal <= :Final And ' +
                                             'e.sNumeroActividad = :Actividad Group By e.sNumeroActividad' ) ;
            Connection.QryBusca.Open;
            frxProyeccion2.ShowReport ;
        End;
    end
    else begin
        showmessage('No hay datos para imprimir');
    end;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'opProyeccion', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmProyeccion.frxProyeccionGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := 'Del ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaInicio.Date) + ' al ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaFinal.Date);
  If CompareText(VarName, 'TOTAL_MN') = 0 then
      Value := dTotalMN.Value ;
  If CompareText(VarName, 'TOTAL_DLL') = 0 then
      Value := dTotalDLL.Value ;
end;

procedure TfrmProyeccion.GridEquiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if Gridequipos.datasource.DataSet.IsEmpty=false  then
if Gridequipos.DataSource.DataSet.RecordCount>0 then
UtGrid3.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProyeccion.GridEquiposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if Gridequipos.datasource.DataSet.IsEmpty=false  then
if Gridequipos.DataSource.DataSet.RecordCount>0 then
UtGrid3.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProyeccion.GridEquiposTitleClick(Column: TColumn);
begin
if Gridequipos.datasource.DataSet.IsEmpty=false  then
if Gridequipos.DataSource.DataSet.RecordCount>0 then
UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmProyeccion.GridPersonalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if GridPersonal.datasource.DataSet.IsEmpty=false  then
if GridPersonal.DataSource.DataSet.RecordCount>0 then
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProyeccion.GridPersonalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if GridPersonal.datasource.DataSet.IsEmpty=false  then
if GridPersonal.DataSource.DataSet.RecordCount>0 then
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProyeccion.GridPersonalTitleClick(Column: TColumn);
begin
if GridPersonal.datasource.DataSet.IsEmpty=false  then
if GridPersonal.DataSource.DataSet.RecordCount>0 then
UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmProyeccion.frxProyeccion2GetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := 'Del ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaInicio.Date) + ' al ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaFinal.Date);
  If CompareText(VarName, 'TOTAL_MN') = 0 then
      Value := dTotalMN.Value ;
  If CompareText(VarName, 'TOTAL_DLL') = 0 then
      Value := dTotalDLL.Value ;
  If CompareText(VarName, 'GENERADO') = 0 then
  Begin
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
      Connection.QryBusca.Params.ParamByName('Inicio').DataType := ftDate ;
      Connection.QryBusca.Params.ParamByName('Inicio').Value := tdFechaInicio.Date ;
      Connection.QryBusca.Params.ParamByName('Final').DataType := ftDate ;
      Connection.QryBusca.Params.ParamByName('Final').Value := tdFechaFinal.Date ;
      Connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad']  ;
      Connection.QryBusca.Open ;
      If Connection.QryBusca.RecordCount > 0 then
          Value := Connection.QryBusca.FieldValues['dGenerado']
      Else
          Value := 0

  End
end;

end.
