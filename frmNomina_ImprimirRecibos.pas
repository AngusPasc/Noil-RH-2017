unit frmNomina_ImprimirRecibos;

interface

uses
//  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//  Dialogs, DB, DateUtils,
//  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
//  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
//  NxDBGrid, frmPrincipal, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
//  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
//  JvDBDatePickerEdit, DBLabelEdit, frxClass, frxDBSet, global, OleCtrls,
//  OleServer, ExcelXP, ComObj, Excel2000;
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_Connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, dblookup, CustomizeDlg,
  UnitExcel, ComObj,
  JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvEdit,
  DBAdvEd, DBDateTimePicker, DBLabelEdit, HTMLabel, frmNomina_EmpleadosPorNomina;

type
  Tfrm_Nomina_ImprimirRecibos = class(TForm)
    zq_datosdeempleado: TZQuery;
    zq_datosdeempleadosIdEmpleado: TStringField;
    zq_datosdeempleadosNombreCompleto: TStringField;
    zq_datosdeempleadosRfc: TStringField;
    zq_datosdeempleadosDomicilio: TStringField;
    zq_datosdeempleadosCiudad: TStringField;
    zq_datosdeempleadosPuesto: TStringField;
    zq_datosdeempleadosIdArea: TStringField;
    zq_datosdeempleadosTelefono: TStringField;
    zq_datosdeempleadoseMail: TStringField;
    zq_datosdeempleadodSueldo: TFloatField;
    zq_datosdeempleadosStatus: TStringField;
    zq_datosdeempleadosCuenta: TStringField;
    zq_datosdeempleadolLabora: TStringField;
    zq_datosdeempleadosBanco: TStringField;
    zq_datosdeempleadosCuentaInterbancaria: TStringField;
    zq_datosdeempleadosCurp: TStringField;
    zq_datosdeempleadosImss: TStringField;
    zq_datosdeempleadosNacionalidad: TStringField;
    zq_datosdeempleadosEstadoCivil: TStringField;
    zq_datosdeempleadodFechaNacimiento: TDateField;
    zq_datosdeempleadodFechaTerminoLabores: TDateField;
    zq_datosdeempleadodFechaInicioLabores: TDateField;
    zq_datosdeempleadoiId_Puesto: TIntegerField;
    zq_datosdeempleadosLibretaMar: TStringField;
    zq_datosdeempleadosCartilla: TStringField;
    zq_datosdeempleadosCedulaProfesional: TStringField;
    zq_datosdeempleadosLugarNacimiento: TStringField;
    zq_datosdeempleadosCarrera: TStringField;
    zq_datosdeempleadoiId_RegistroPatronal: TIntegerField;
    zq_datosdeempleadodSalarioDiario: TFloatField;
    zq_datosdeempleadodFactorIntegracion: TFloatField;
    zq_datosdeempleadodPromedioVariables: TFloatField;
    zq_datosdeempleadodSalarioIntegrado: TFloatField;
    zq_datosdeempleadodSalarioReal: TFloatField;
    zq_datosdeempleadodDiasLaborados: TFloatField;
    zq_datosdeempleadodFaltas: TFloatField;
    frx_datosdeempleado: TfrxDBDataset;
    ReporteNominas: TfrxReport;
    zq_percepciones: TZQuery;
    zq_percepcionesiId: TIntegerField;
    zq_percepcionesiId_Nomina: TIntegerField;
    zq_percepcionessIdEmpleado: TStringField;
    zq_percepcionesdCantidad: TFloatField;
    zq_percepcionessDescripcion: TStringField;
    zq_percepcionesdImporte: TFloatField;
    zq_percepcioneslImprime: TStringField;
    zq_percepcioneslTipo: TStringField;
    zq_percepcionesdImporteTotal: TFloatField;
    frx_Percepciones: TfrxDBDataset;
    zq_deducciones: TZQuery;
    zq_deduccionesiId: TIntegerField;
    zq_deduccionesiId_Nomina: TIntegerField;
    zq_deduccionessIdEmpleado: TStringField;
    zq_deduccionesdCantidad: TFloatField;
    zq_deduccionessDescripcion: TStringField;
    zq_deduccionesdImporte: TFloatField;
    zq_deduccioneslImprime: TStringField;
    zq_deduccioneslTipo: TStringField;
    zq_deduccionesdImporteTotal: TFloatField;
    frx_Deducciones: TfrxDBDataset;
    Button1: TButton;
    rxSueldo: TRxMemoryData;
    rxSueldoId: TIntegerField;
    rxSueldoiId_Nomina: TIntegerField;
    rxSueldosIdEmpleado: TStringField;
    rxSueldosDescripcionPer: TStringField;
    rxSueldodImportePer: TFloatField;
    rxSueldodCantidadDedu: TFloatField;
    rxSueldosDescripcionDedu: TStringField;
    rxSueldodImporteDedu: TFloatField;
    rxSueldodImporteTotalDedu: TFloatField;
    frxSueldo: TfrxDBDataset;
    rxSueldodCantidadPer: TFloatField;
    rxSueldodImporteTotalPer: TFloatField;
    rxSueldosNombre: TStringField;
    rxSueldosRfc: TStringField;
    rxSueldosPuesto: TStringField;
    rxSueldosImss: TStringField;
    rxSueldosCurp: TStringField;
    rxSueldodDiasLaborados: TFloatField;
    rxSueldodFechaInicio: TDateField;
    rxSueldodFechaFinal: TDateField;
    rxSueldosRegistroPatronal: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_ImprimirRecibos: Tfrm_Nomina_ImprimirRecibos;

implementation

{$R *.dfm}

procedure Tfrm_Nomina_ImprimirRecibos.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Nomina_ImprimirRecibos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Nomina_ImprimirRecibos.FormShow(Sender: TObject);
var
  empleado, registro : string;
  x : integer;
begin
  Try
    if global_nomina > 0 then
    begin
      zq_Percepciones.Active := False;
      zq_Percepciones.Params.ParamByName('IdNomina').AsInteger := global_nomina;
      zq_Percepciones.Open;
      zq_Deducciones.Active := False;
      zq_Deducciones.Params.ParamByName('IdNomina').AsInteger := global_nomina;
      zq_Deducciones.Open;
      zq_datosdeempleado.Active := False;
      zq_datosdeempleado.Params.ParamByName('IdNomina').AsInteger := global_nomina;
      zq_datosdeempleado.Open;

      //Aqui primero comparamos cual de los zquerys tiene registros..

      rxSueldo.Active := True;
      rxSueldo.EmptyTable;
      empleado := '';
      //primero las percepciones...
      while not zq_percepciones.Eof do
      begin
          if empleado <> zq_percepciones.FieldValues['sIdEmpleado'] then
          begin
              for x:= 1 to 15 do
              begin
                  rxSueldo.Append;
                  rxSueldo.FieldValues['Id']          :=  zq_percepciones.FieldValues['iId'];
                  rxSueldo.FieldValues['iId_Nomina']  :=  zq_percepciones.FieldValues['iId_Nomina'];
                  rxSueldo.FieldValues['sIdEmpleado'] :=  zq_percepciones.FieldValues['sIdEmpleado'];
                  rxSueldo.FieldValues['dCantidadPer']      := 0;
                  rxSueldo.FieldValues['dImportePer']       := 0;
                  rxSueldo.FieldValues['dImporteTotalPer']  := 0;
                  rxSueldo.FieldValues['dCantidadDedu']     := 0;
                  rxSueldo.FieldValues['dImporteDedu']      := 0;
                  rxSueldo.FieldValues['dImporteTotalDedu'] := 0;
                  rxSueldo.Post;
              end;
              empleado :=  zq_percepciones.FieldValues['sIdEmpleado'];
          end;
          rxSueldo.First;
          while not rxSueldo.Eof do
          begin
              if (rxSueldo.FieldValues['sIdEmpleado'] = zq_percepciones.FieldValues['sIdEmpleado'])
                 and (rxSueldo.FieldValues['sDescripcionPer'] = Null) then
              begin
                  rxSueldo.Edit;
                  rxSueldo.FieldValues['dCantidadPer']     := zq_percepciones.FieldValues['dCantidad'];
                  rxSueldo.FieldValues['sDescripcionPer']  := zq_percepciones.FieldValues['sDescripcion'];
                  rxSueldo.FieldValues['dImportePer']      := zq_percepciones.FieldValues['dImporte'];
                  rxSueldo.FieldValues['dImporteTotalPer'] := zq_percepciones.FieldValues['dImporteTotal'];
                  rxSueldo.Post;
                  rxSueldo.Last;
              end;
              rxSueldo.Next;
          end;
          zq_percepciones.Next;
      end;

      rxSueldo.First;
      //luego las deduciones...
      while not zq_Deducciones.Eof do
      begin
          rxSueldo.First;
          while not rxSueldo.Eof do
          begin
              if (rxSueldo.FieldValues['sIdEmpleado'] = zq_Deducciones.FieldValues['sIdEmpleado'])
                 and (rxSueldo.FieldValues['sDescripcionDedu'] = Null) then
              begin
                  rxSueldo.Edit;
                  rxSueldo.FieldValues['dCantidadDedu']     := zq_Deducciones.FieldValues['dCantidad'];
                  rxSueldo.FieldValues['sDescripcionDedu']  := zq_Deducciones.FieldValues['sDescripcion'];
                  rxSueldo.FieldValues['dImporteDedu']      := zq_Deducciones.FieldValues['dImporte'];
                  rxSueldo.FieldValues['dImporteTotalDedu'] := zq_Deducciones.FieldValues['dImporteTotal'];
                  rxSueldo.Post;
                  rxSueldo.Last;
              end;
              rxSueldo.Next;
          end;
          zq_Deducciones.Next;
      end;

      //Consultamso fecha de inicio y temrino
      connection.zCommand.Active := False;
      connection.zCommand.sql.Clear ;
      connection.zCommand.SQL.Text := 'SELECT * FROM nom_nominas WHERE iId =:nomina ';
      connection.zCommand.ParamByName('nomina').AsInteger := global_nomina;
      connection.zCommand.Open;

      //Ahora introducimos los datos del empleado
      while not zq_datosdeempleado.Eof do
      begin
          rxSueldo.First;
          while not rxSueldo.Eof do
          begin
              if (rxSueldo.FieldValues['sIdEmpleado'] = zq_datosdeempleado.FieldValues['sIdEmpleado']) then
              begin

                  rxSueldo.Edit;
                  try
                     registro := IntToStr(zq_datosdeempleado.FieldValues['iId_RegistroPatronal']);
                     rxSueldo.FieldValues['sRegistroPatronal'] := registro;
                  Except
                  end;
                  rxSueldo.FieldValues['sNombre'] := zq_datosdeempleado.FieldValues['sNombreCompleto'];
                  rxSueldo.FieldValues['sRfc']    := zq_datosdeempleado.FieldValues['sRfc'];
                  rxSueldo.FieldValues['sPuesto'] := zq_datosdeempleado.FieldValues['sPuesto'];
                  rxSueldo.FieldValues['sImss']   := zq_datosdeempleado.FieldValues['sImss'];
                  rxSueldo.FieldValues['sCurp']   := zq_datosdeempleado.FieldValues['sCurp'];
                  rxSueldo.FieldValues['dDiasLaborados'] := zq_datosdeempleado.FieldValues['dDiasLaborados'];
                  rxSueldo.FieldValues['dFechaInicio']   := connection.zCommand.FieldValues['dFechaInicial'];
                  rxSueldo.FieldValues['dFechaFinal']    := connection.zCommand.FieldValues['dFechaFinal'];
                  rxSueldo.Post;
                  rxSueldo.Last;
              end;
              rxSueldo.Next;
          end;     
         zq_datosdeempleado.Next;
      end;
      rxSueldo.First;
      ReporteNominas.LoadFromFile(global_files +global_MiReporte+ '_Recibos_de_Nomina.fr3');
      ReporteNominas.ShowReport();
    end
    else
    begin
      ShowMessage('No existen nóminas para imprimir recibos.');
    end;
  Finally
    Close;
  End;

end;

end.
