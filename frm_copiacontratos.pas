unit frm_copiacontratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZDataset, DB, ZAbstractRODataset, ZAbstractDataset, StdCtrls,
  Buttons, Grids, DBGrids, ExtCtrls, Mask, JvExMask, JvToolEdit, JvCombobox,
  DBCtrls, RxLookup, Global,Utilerias, JvExControls, JvBitmapButton, BaseGrid,
  AdvGrid, DBAdvGrid, AdvOfficePager, AdvOfficePagerStylers, AdvOfficeButtons,
  GradientLabel, Label3D, RxMemDS, JvMemoryDataset, UnitExcepciones, AdvObj;

type
  TFrmcopiaparametros = class(TForm)
    chkTodos: TCheckBox;
    Panel1: TPanel;
    dbparametros: TJvCheckedComboBox;
    ZQcontrato: TZQuery;
    ZQcontratosContrato: TStringField;
    dscontratos: TDataSource;
    tscontratos1: TComboBox;
    tscontratos2: TComboBox;
    DBcontrato2: TDBAdvGrid;
    JvBitmapButton1: TJvBitmapButton;
    ZQtablas: TZQuery;
    dstablas: TDataSource;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    rbEspecialidades: TAdvOfficeRadioButton;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    rbCuadrillas: TAdvOfficeRadioButton;
    AdvOfficePage1: TAdvOfficePage;
    GradientLabel1: TGradientLabel;
    GradientLabel2: TGradientLabel;
    GradientLabel3: TGradientLabel;
    ZQdatosnuevos: TZQuery;
    rbEquipos: TAdvOfficeRadioButton;
    rbPaquetese: TAdvOfficeRadioButton;
    rbHerramientas: TAdvOfficeRadioButton;
    SaveDialog1: TSaveDialog;
    dbGuardar1: TDBAdvGrid;
    ZQDatosAnteriores: TZQuery;
    dsdatosanteriores: TDataSource;
    JvBitmapButton2: TJvBitmapButton;
    ZQpaquetesanteriores: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure dbparametrosEnter(Sender: TObject);
    procedure dbparametrosChange(Sender: TObject);
    procedure JvBitmapButton1Click(Sender: TObject);
    procedure tscontratos2Change(Sender: TObject);
    procedure rbCuadrillasClick(Sender: TObject);
    procedure rbEspecialidadesClick(Sender: TObject);
    procedure chkTodosClick(Sender: TObject);
    procedure rbEquiposClick(Sender: TObject);
    procedure rbPaqueteseClick(Sender: TObject);
    procedure rbHerramientasClick(Sender: TObject);
    procedure JvBitmapButton2Click(Sender: TObject);
    procedure tscontratos1Enter(Sender: TObject);
    procedure tscontratos1Exit(Sender: TObject);
    procedure dbparametrosExit(Sender: TObject);
    procedure tscontratos2Enter(Sender: TObject);
    procedure tscontratos2Exit(Sender: TObject);
    procedure tscontratos1KeyPress(Sender: TObject; var Key: Char);
    procedure dbparametrosKeyPress(Sender: TObject; var Key: Char);
    procedure tscontratos2KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Frmcopiaparametros: TFrmcopiaparametros;
  a, b, totalparametros, totalparametros1, bandera, parametro, I: Integer;
  Anterior, cadena, cadenatablas, cadenaeliminar, caddatosnuevos, contrato, contratos, guardar :String;
implementation
uses frm_connection;
{$R *.dfm}
Procedure Especialidades(var tscontratos2: TComboBox; ZQtablas: TZQuery );
begin
  connection.zCommand.Active := False ;
  connection.zCommand.SQL.Clear ;
  connection.zcommand.SQL.Add ('INSERT INTO personal ( sContrato, sIdPersonal, iItemOrden, sDescripcion, ' +
  'sIdTipoPersonal,  ' +
  'sMedida, dCantidad, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, dFechaInicio, dFechaFinal, ' +
  'lProrrateo, lCobro, lImprime, lAplicaTM, iJornada, lDistribuye, sAgrupaPersonal, sIdClave, ' +
  'sImss ) ' +
  'VALUES (:contrato, :idpersonal, :itemorden, :descripcion, :idtipopersonal, :medida, :cantidad, ' +
  ':costomn, :costodll, :ventamn, :ventadll, :fechainicio, :fechafinal, :prorrateo, :cobro, ' +
  ':imprime, :aplicatm, :jornada, :distribuye, :agrupapersonal, :idclave, :imss )');
  connection.zcommand.Params.ParamByName('contrato').DataType        := ftString ;
  connection.zcommand.Params.ParamByName('contrato').value           := tscontratos2.Text ;
  connection.zcommand.Params.ParamByName('idpersonal').DataType      := ftString ;
  connection.zcommand.Params.ParamByName('idpersonal').value         := ZQtablas.FieldValues['sIdPersonal'];
  connection.zcommand.Params.ParamByName('itemorden').DataType       := ftInteger ;
  connection.zcommand.Params.ParamByName('itemorden').value          := ZQtablas.FieldValues['iItemOrden'];
  connection.zcommand.Params.ParamByName('descripcion').DataType     := ftString ;
  connection.zcommand.Params.ParamByName('descripcion').value        := ZQtablas.FieldValues['sDescripcion'];
  connection.zcommand.Params.ParamByName('idtipopersonal').DataType  := ftString ;
  connection.zcommand.Params.ParamByName('idtipopersonal').value     := ZQtablas.FieldValues['sIdTipoPersonal'];
  connection.zcommand.Params.ParamByName('medida').DataType          := ftString ;
  connection.zcommand.Params.ParamByName('medida').value             := ZQtablas.FieldValues['sMedida'];
  connection.zcommand.Params.ParamByName('cantidad').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('cantidad').value           := ZQtablas.FieldValues['dCantidad'];
  connection.zcommand.Params.ParamByName('costomn').DataType         := ftFloat ;
  connection.zcommand.Params.ParamByName('costomn').value            := ZQtablas.FieldValues['dCostoMN'];
  connection.zcommand.Params.ParamByName('costodll').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('costodll').value           := ZQtablas.FieldValues['dCostoDLL'];
  connection.zcommand.Params.ParamByName('ventamn').DataType         := ftFloat ;
  connection.zcommand.Params.ParamByName('ventamn').value            := ZQtablas.FieldValues['dVentaMN'];
  connection.zcommand.Params.ParamByName('ventadll').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('ventadll').value           := ZQtablas.FieldValues['dVentaDLL'];
  connection.zcommand.Params.ParamByName('fechainicio').DataType     := ftDate ;
  connection.zcommand.Params.ParamByName('fechainicio').value        := ZQtablas.FieldValues['dFechaInicio'];
  connection.zcommand.Params.ParamByName('fechafinal').DataType      := ftDate ;
  connection.zcommand.Params.ParamByName('fechafinal').value         := ZQtablas.FieldValues['dFechaFinal'];
  connection.zcommand.Params.ParamByName('prorrateo').DataType       := ftString ;
  connection.zcommand.Params.ParamByName('prorrateo').value          := ZQtablas.FieldValues['lProrrateo'];
  connection.zcommand.Params.ParamByName('cobro').DataType           := ftString ;
  connection.zcommand.Params.ParamByName('cobro').value              := ZQtablas.FieldValues['lCobro'];
  connection.zcommand.Params.ParamByName('imprime').DataType         := ftString ;
  connection.zcommand.Params.ParamByName('imprime').value            :=ZQtablas.FieldValues['lImprime'];
  connection.zcommand.Params.ParamByName('aplicatm').DataType        := ftString ;
  connection.zcommand.Params.ParamByName('aplicatm').value           := ZQtablas.FieldValues['lAplicaTM'];
  connection.zcommand.Params.ParamByName('jornada').DataType         := ftInteger ;
  connection.zcommand.Params.ParamByName('jornada').value            := ZQtablas.FieldValues['iJornada'];
//  connection.zcommand.Params.ParamByName('distribuye').value         := ftString ;
  connection.zcommand.Params.ParamByName('distribuye').value         := ZQtablas.FieldValues['lDistribuye'];
  connection.zcommand.Params.ParamByName('agrupapersonal').DataType  := ftString ;
  connection.zcommand.Params.ParamByName('agrupapersonal').value     := ZQtablas.FieldValues['sAgrupaPersonal'];
  connection.zcommand.Params.ParamByName('idclave').DataType         := ftString ;
  connection.zcommand.Params.ParamByName('idclave').value            := ZQtablas.FieldValues['sIdClave'];
  connection.zcommand.Params.ParamByName('imss').DataType            := ftFloat ;
  connection.zcommand.Params.ParamByName('imss').value               := ZQtablas.FieldValues['sImss'];
  connection.zCommand.ExecSQL;
end;

Procedure Equipos(var tscontratos2: TComboBox; ZQtablas: TZQuery );
begin
  connection.zCommand.Active := False ;
  connection.zCommand.SQL.Clear ;
  connection.zcommand.SQL.Add ('INSERT INTO equipos ( sContrato, sIdEquipo, iItemOrden, sDescripcion, ' +
  'sIdTipoEquipo, sMedida, dCantidad, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, dFechaInicio, dFechaFinal, ' +
  'lProrrateo, lCobro, lImprime, iJornada, lDistribuye ) ' +
  'VALUES (:contrato, :idequipo, :itemorden, :descripcion, :idtipoequipo, :medida, :cantidad, ' +
  ':costomn, :costodll, :ventamn, :ventadll, :fechainicio, :fechafinal, :prorrateo, :cobro, ' +
  ':imprime, :jornada, :distribuye)');
  connection.zcommand.Params.ParamByName('contrato').DataType        := ftString ;
  connection.zcommand.Params.ParamByName('contrato').value           := tscontratos2.Text ;
  connection.zcommand.Params.ParamByName('idequipo').DataType        := ftString ;
  connection.zcommand.Params.ParamByName('idequipo').value           := ZQtablas.FieldValues['sIdEquipo'];
  connection.zcommand.Params.ParamByName('itemorden').DataType       := ftInteger ;
  connection.zcommand.Params.ParamByName('itemorden').value          := ZQtablas.FieldValues['iItemOrden'];
  connection.zcommand.Params.ParamByName('descripcion').DataType     := ftString ;
  connection.zcommand.Params.ParamByName('descripcion').value        := ZQtablas.FieldValues['sDescripcion'];
  connection.zcommand.Params.ParamByName('idtipoequipo').DataType    := ftString ;
  connection.zcommand.Params.ParamByName('idtipoequipo').value       := ZQtablas.FieldValues['sIdTipoEquipo'];
  connection.zcommand.Params.ParamByName('medida').DataType          := ftString ;
  connection.zcommand.Params.ParamByName('medida').value             := ZQtablas.FieldValues['sMedida'];
  connection.zcommand.Params.ParamByName('cantidad').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('cantidad').value           := ZQtablas.FieldValues['dCantidad'];
  connection.zcommand.Params.ParamByName('costomn').DataType         := ftFloat ;
  connection.zcommand.Params.ParamByName('costomn').value            := ZQtablas.FieldValues['dCostoMN'];
  connection.zcommand.Params.ParamByName('costodll').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('costodll').value           := ZQtablas.FieldValues['dCostoDLL'];
  connection.zcommand.Params.ParamByName('ventamn').DataType         := ftFloat ;
  connection.zcommand.Params.ParamByName('ventamn').value            := ZQtablas.FieldValues['dVentaMN'];
  connection.zcommand.Params.ParamByName('ventadll').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('ventadll').value           := ZQtablas.FieldValues['dVentaDLL'];
  connection.zcommand.Params.ParamByName('fechainicio').DataType     := ftDate ;
  connection.zcommand.Params.ParamByName('fechainicio').value        := ZQtablas.FieldValues['dFechaInicio'];
  connection.zcommand.Params.ParamByName('fechafinal').DataType      := ftDate ;
  connection.zcommand.Params.ParamByName('fechafinal').value         := ZQtablas.FieldValues['dFechaFinal'];
  connection.zcommand.Params.ParamByName('prorrateo').DataType       := ftString ;
  connection.zcommand.Params.ParamByName('prorrateo').value          := ZQtablas.FieldValues['lProrrateo'];
  connection.zcommand.Params.ParamByName('cobro').DataType           := ftString ;
  connection.zcommand.Params.ParamByName('cobro').value              := ZQtablas.FieldValues['lCobro'];
  connection.zcommand.Params.ParamByName('imprime').DataType         := ftString ;
  connection.zcommand.Params.ParamByName('imprime').value            :=ZQtablas.FieldValues['lImprime'];
  connection.zcommand.Params.ParamByName('jornada').DataType         := ftInteger ;
  connection.zcommand.Params.ParamByName('jornada').value            := ZQtablas.FieldValues['iJornada'];
//  connection.zcommand.Params.ParamByName('distribuye').value         := ftString ;
  connection.zcommand.Params.ParamByName('distribuye').value         := ZQtablas.FieldValues['lDistribuye'];
  connection.zCommand.ExecSQL;
end;
Procedure Herramientas(var tscontratos2: TComboBox; ZQtablas: TZQuery );
begin
  connection.zCommand.Active := False ;
  connection.zCommand.SQL.Clear ;
  connection.zcommand.SQL.Add ('INSERT INTO herramientas ( sContrato, sIdHerramientas, sDescripcion, ' +
  'sMedida, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sSimbolo, fFecha ) ' +
  'VALUES (:contrato, :IdHerramientas, :descripcion, :medida, :costomn, :costodll, :ventamn, :ventadll, :Simbolo, :Fecha )');
  connection.zcommand.Params.ParamByName('contrato').DataType        := ftString ;
  connection.zcommand.Params.ParamByName('contrato').value           := tscontratos2.Text ;
  connection.zcommand.Params.ParamByName('IdHerramientas').DataType  := ftString ;
  connection.zcommand.Params.ParamByName('IdHerramientas').value     := ZQtablas.FieldValues['sIdHerramientas'];
  connection.zcommand.Params.ParamByName('descripcion').DataType     := ftString ;
  connection.zcommand.Params.ParamByName('descripcion').value        := ZQtablas.FieldValues['sDescripcion'];
  connection.zcommand.Params.ParamByName('medida').DataType          := ftString ;
  connection.zcommand.Params.ParamByName('medida').value             := ZQtablas.FieldValues['sMedida'];
  connection.zcommand.Params.ParamByName('costomn').DataType         := ftFloat ;
  connection.zcommand.Params.ParamByName('costomn').value            := ZQtablas.FieldValues['dCostoMN'];
  connection.zcommand.Params.ParamByName('costodll').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('costodll').value           := ZQtablas.FieldValues['dCostoDLL'];
  connection.zcommand.Params.ParamByName('ventamn').DataType         := ftFloat ;
  connection.zcommand.Params.ParamByName('ventamn').value            := ZQtablas.FieldValues['dVentaMN'];
  connection.zcommand.Params.ParamByName('ventadll').DataType        := ftFloat ;
  connection.zcommand.Params.ParamByName('ventadll').value           := ZQtablas.FieldValues['dVentaDLL'];
  connection.zcommand.Params.ParamByName('Simbolo').DataType         := ftString ;
  connection.zcommand.Params.ParamByName('Simbolo').value            := ZQtablas.FieldValues['sSimbolo'];
  connection.zcommand.Params.ParamByName('Fecha').DataType           := ftDate ;
  connection.zcommand.Params.ParamByName('Fecha').value              := ZQtablas.FieldValues['fFecha'];
  connection.zCommand.ExecSQL;
end;
Procedure Cuadrillas(var tscontratos2: TComboBox; ZQtablas: TZQuery );
begin
     connection.zCommand.Active := False ;
     connection.zCommand.SQL.Clear ;
     connection.zcommand.SQL.Add ('INSERT INTO paquetes_p ( sContrato, sNumeroPaquete, sDescripcion, sIdPernocta, ' +
                                  'sIdPlataforma ) ' +
                                  'VALUES (:contrato, :NumeroPaquete, :descripcion, :idpernocta, :idplataforma )');
    connection.zcommand.Params.ParamByName('contrato').DataType        := ftString ;
    connection.zcommand.Params.ParamByName('contrato').value           := tscontratos2.Text ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').DataType   := ftString ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').value      := ZQtablas.FieldValues['sNumeroPaquete'];
    connection.zcommand.Params.ParamByName('descripcion').DataType     := ftString ;
    connection.zcommand.Params.ParamByName('descripcion').value        := ZQtablas.FieldValues['sDescripcion'];
    connection.zcommand.Params.ParamByName('idpernocta').DataType      := ftString ;
    connection.zcommand.Params.ParamByName('idpernocta').value         := ZQtablas.FieldValues['sIdPernocta'];
    connection.zcommand.Params.ParamByName('idplataforma').DataType    := ftString ;
    connection.zcommand.Params.ParamByName('idplataforma').value       := ZQtablas.FieldValues['sIdPlataforma'];
    connection.zCommand.ExecSQL;
end;

Procedure personalxcuadrilla(var tscontratos2: TComboBox; ZQtablas:TZQuery);
begin
     connection.zCommand.Active := False ;
     connection.zCommand.SQL.Clear ;
     connection.zcommand.SQL.Add ('INSERT INTO paquetesdepersonal ( sContrato, sNumeroPaquete, sIdPersonal, dCantidad, ' +
                                  'mComentarios ) ' +
                                  'VALUES (:contrato, :NumeroPaquete, :IdPersonal, :Cantidad, :Comentarios )');
    connection.zcommand.Params.ParamByName('contrato').DataType        := ftString ;
    connection.zcommand.Params.ParamByName('contrato').value           := tscontratos2.Text ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').DataType   := ftString ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').value      := ZQtablas.FieldValues['sNumeroPaquete'];
    connection.zcommand.Params.ParamByName('IdPersonal').DataType      := ftString ;
    connection.zcommand.Params.ParamByName('IdPersonal').value         := ZQtablas.FieldValues['sIdPersonal'];
    connection.zcommand.Params.ParamByName('Cantidad').DataType        := ftString ;
    connection.zcommand.Params.ParamByName('Cantidad').value           := ZQtablas.FieldValues['dCantidad'];
    connection.zcommand.Params.ParamByName('Comentarios').DataType     := ftString ;
    connection.zcommand.Params.ParamByName('Comentarios').value        := ZQtablas.FieldValues['mComentarios'];
    connection.zCommand.ExecSQL;
end;

Procedure equiposxpaquete(var tscontratos2: TComboBox; ZQtablas: TZQuery);
begin
     connection.zCommand.Active := False ;
     connection.zCommand.SQL.Clear ;
     connection.zcommand.SQL.Add ('INSERT INTO paquetesdeequipo ( sContrato, sNumeroPaquete, sIdEquipo, dCantidad ) ' +
                                  'VALUES (:contrato, :NumeroPaquete, :IdEquipo, :Cantidad )');
    connection.zcommand.Params.ParamByName('contrato').DataType        := ftString ;
    connection.zcommand.Params.ParamByName('contrato').value           := tscontratos2.Text ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').DataType   := ftString ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').value      := ZQtablas.FieldValues['sNumeroPaquete'];
    connection.zcommand.Params.ParamByName('IdEquipo').DataType        := ftString ;
    connection.zcommand.Params.ParamByName('IdEquipo').value           := ZQtablas.FieldValues['sIdEquipo'];
    connection.zcommand.Params.ParamByName('Cantidad').DataType        := ftString ;
    connection.zcommand.Params.ParamByName('Cantidad').value           := ZQtablas.FieldValues['dCantidad'];
    connection.zCommand.ExecSQL;
end;

Procedure Paquetese(var tscontratos2: TComboBox; ZQtablas: TZQuery );
begin
    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zcommand.SQL.Add ('INSERT INTO paquetes_e ( sContrato, sNumeroPaquete, sDescripcion, sIdPernocta ) ' +
                                  'VALUES (:contrato, :NumeroPaquete, :descripcion, :idpernocta )');
    connection.zcommand.Params.ParamByName('contrato').DataType        := ftString ;
    connection.zcommand.Params.ParamByName('contrato').value           := tscontratos2.Text ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').DataType   := ftString ;
    connection.zcommand.Params.ParamByName('NumeroPaquete').value      := ZQtablas.FieldValues['sNumeroPaquete'];
    connection.zcommand.Params.ParamByName('descripcion').DataType     := ftString ;
    connection.zcommand.Params.ParamByName('descripcion').value        := ZQtablas.FieldValues['sDescripcion'];
    connection.zcommand.Params.ParamByName('idpernocta').DataType      := ftString ;
    connection.zcommand.Params.ParamByName('idpernocta').value         := ZQtablas.FieldValues['sIdPernocta'];
    connection.zCommand.ExecSQL;
end;

procedure Buscar (var contrato, cadena: String);
begin
             Connection.qryBusca.Active := False ;
             Connection.qryBusca.SQL.Clear ;
             Connection.qryBusca.SQL.Add(cadena);
             Connection.qryBusca.Params.ParamByName( 'Contrato' ).DataType  := ftString;
             Connection.qryBusca.Params.ParamByName( 'Contrato' ).value     := contrato ;
             Connection.qryBusca.Open;
end;
procedure Buscar2 (var tscontratos1,tscontratos2: TComboBox; cadena: String; ZQtablas: TZQuery );
begin
             ZQtablas.Active := False ;
             ZQtablas.SQL.Clear ;
             ZQtablas.SQL.Add(cadena);
             ZQtablas.Params.ParamByName( 'contrato1' ).DataType  := ftString;
             ZQtablas.Params.ParamByName( 'contrato1' ).value     := tscontratos1.Text ;
             ZQtablas.Params.ParamByName( 'contrato2' ).DataType  := ftString;
             ZQtablas.Params.ParamByName( 'contrato2' ).value     := tscontratos2.Text ;
             ZQtablas.Open;
end;


procedure tablas (var tscontratos1: TComboBox; ZQtablas: TZQuery; cadenatablas: String);
begin
   ZQtablas.Active := False;
   ZQtablas.SQL.Clear;
   ZQtablas.SQL.Add(cadenatablas) ;
   ZQtablas.Params.ParamByName('Contrato').DataType := ftString ;
   ZQtablas.Params.ParamByName('Contrato').Value    := tscontratos1.Text ;
   ZQtablas.Open ;
end;

procedure eliminar (var tscontratos2: TComboBox; ZQtablas: TZQuery; cadenaeliminar: String; dbparametros:TJvCheckedComboBox);
begin
   connection.zCommand.Active := False;
   Connection.zCommand.SQL.Clear;
   connection.zCommand.SQL.Add(cadenaeliminar);
   Connection.zCommand.Params.ParamByName( 'Contrato' ).DataType     := ftString;
   connection.zCommand.Params.ParamByName( 'Contrato' ).value        := tscontratos2.Text ;
   connection.zCommand.Params.ParamByName( 'Descripcion' ).DataType  := ftString;
   connection.zCommand.Params.ParamByName( 'Descripcion' ).value     := dbparametros.Items[I];
   connection.zcommand.ExecSQL ;
end;

procedure eliminarpaquetesxtablas (var tscontratos2: TComboBox; cadenaeliminar: String);
begin
   connection.zCommand.Active := False;
   Connection.zCommand.SQL.Clear;
   connection.zCommand.SQL.Add(cadenaeliminar);
   Connection.zCommand.Params.ParamByName( 'Contrato' ).DataType     := ftString;
   connection.zCommand.Params.ParamByName( 'Contrato' ).value        := tscontratos2.Text ;
   connection.zcommand.ExecSQL ;
end;

procedure datosnuevos (var tscontratos2: TComboBox; ZQdatosnuevos: TZQuery; caddatosnuevos: String; dbparametros:TJvCheckedComboBox; DBcontrato2:TDBAdvGrid );
begin
   ZQdatosnuevos.Active := False;
   ZQdatosnuevos.SQL.Clear;
   ZQdatosnuevos.SQL.Add(caddatosnuevos) ;
   ZQdatosnuevos.Params.ParamByName('Contrato').DataType := ftString ;
   ZQdatosnuevos.Params.ParamByName('Contrato').Value    := tscontratos2.Text ;
   ZQdatosnuevos.Open ;
   DBcontrato2.SetFocus ;
end;
procedure datosanteriores (var tscontratos2: TComboBox; ZQdatosanteriores: TZQuery; cadena: String; dbGuardar1:TDBAdvGrid );
begin
   ZQdatosanteriores.Active := False;
   ZQdatosanteriores.SQL.Clear;
   ZQdatosanteriores.SQL.Add(cadena) ;
   ZQdatosanteriores.Params.ParamByName('Contrato').DataType := ftString ;
   ZQdatosanteriores.Params.ParamByName('Contrato').Value    := tscontratos2.Text ;
   ZQdatosanteriores.Open ;
   dbGuardar1.SetFocus ;
end;

procedure paquetesanteriores (var tscontratos2: TComboBox; ZQpaquetesanteriores: TZQuery; guardar: String );
begin
   ZQpaquetesanteriores.Active := False;
   ZQpaquetesanteriores.SQL.Clear;
   ZQpaquetesanteriores.SQL.Add(guardar) ;
   ZQpaquetesanteriores.Params.ParamByName('Contrato').DataType := ftString ;
   ZQpaquetesanteriores.Params.ParamByName('Contrato').Value    := tscontratos2.Text ;
   ZQpaquetesanteriores.Open ;
end;

procedure TFrmcopiaparametros.tscontratos1Enter(Sender: TObject);
begin
  tscontratos1.Color := global_color_entrada;
end;

procedure TFrmcopiaparametros.tscontratos1Exit(Sender: TObject);
begin
  tscontratos1.Color := global_color_salida;
end;

procedure TFrmcopiaparametros.tscontratos1KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        dbparametros.SetFocus
end;

procedure TFrmcopiaparametros.tscontratos2Change(Sender: TObject);
begin
  try
    if (tscontratos2.Text <> '')and (tscontratos2.Text <> tscontratos1.Text)  then
       begin
         if rbEspecialidades.Checked then
             begin
                 caddatosnuevos:='Select sDescripcion from personal where sContrato = :Contrato ' ;
                 datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
             end;
         if rbCuadrillas.Checked then
             begin
                  caddatosnuevos:='Select sDescripcion from paquetes_p where sContrato = :Contrato ' ;
                  datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
             end;
         if rbEquipos.Checked then
             begin
                  caddatosnuevos:='Select sDescripcion from equipos where sContrato = :Contrato ' ;
                  datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
             end;
         if rbPaquetese.Checked then
             begin
                  caddatosnuevos:='Select sDescripcion from paquetes_e where sContrato = :Contrato ' ;
                  datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
             end;
         if rbHerramientas.Checked then
             begin
                  caddatosnuevos:='Select sDescripcion from herramientas where sContrato = :Contrato ' ;
                  datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
             end;

       end
    Else
      ShowMessage('El Contrato Destino Debe Ser Diferente al de Origen');

  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al seleccionar contrato origen', 0);
    end;
  end;
end;


procedure TFrmcopiaparametros.tscontratos2Enter(Sender: TObject);
begin
tscontratos2.Color := global_color_entrada;
end;

procedure TFrmcopiaparametros.tscontratos2Exit(Sender: TObject);
begin
tscontratos2.Color := global_color_salida;
end;

procedure TFrmcopiaparametros.tscontratos2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tscontratos1.SetFocus
end;

procedure TFrmcopiaparametros.chkTodosClick(Sender: TObject);
begin
  JvBitmapButton1.Enabled:=False;
end;

procedure TFrmcopiaparametros.dbparametrosChange(Sender: TObject);
begin
  try
    totalparametros1:=0;
        for b := 0 to dbparametros.Items.Count - 1 do
          begin
            if dbparametros.Checked[b]=True then
               totalparametros1:=totalparametros1 +1;
          end;
        if totalparametros1=dbparametros.items.Count then
               chkTodos.Checked:=True
        else
               chkTodos.Checked:=False;
   JvBitmapButton1.Enabled:=True;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al seleccionar parametro', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.dbparametrosEnter(Sender: TObject);

begin
  try
    dbparametros.Color := global_color_entrada;
    totalparametros:=0;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    contrato:=tscontratos1.Text ;
    if (tscontratos1.Text <> tscontratos2.Text) then
     begin
      if tscontratos1.Text<>Anterior then
                bandera:=0;

      if rbEspecialidades.Checked then
          begin
            if bandera=0 then
              begin
                 cadena:='Select sDescripcion from personal where sContrato = :Contrato ';
                 Buscar (contrato, cadena);
                 if Connection.qryBusca.RecordCount > 0 then
                    begin
                          dbparametros.Clear;
                          while not Connection.qryBusca.Eof do
                             begin
                                dbparametros.Items.Add(Connection.qryBusca.FieldValues['sDescripcion']);
                                Connection.qryBusca.Next;
                             end;
                          bandera:=1;
                    end
                 else
                       begin
                       dbparametros.Clear;
                       bandera:=0;

                       end;
                       parametro:=1;
                       Anterior:= tscontratos1.Text;
              end;
          end;
       if rbCuadrillas.Checked then
          begin
            if bandera=0 then
               begin
                 cadena:='Select sDescripcion from paquetes_p where sContrato = :Contrato ';
                 Buscar (contrato, cadena);
                    if Connection.qryBusca.RecordCount > 0 then
                      begin
                            dbparametros.Clear;
                            while not Connection.qryBusca.Eof do
                            begin
                               dbparametros.Items.Add(Connection.qryBusca.FieldValues['sDescripcion']);
                               Connection.qryBusca.Next;
                            end;
                            bandera:=1;
                      end
                 else
                       begin
                       dbparametros.Clear;
                       bandera:=0;
                       end;
                       parametro:=2;
                       Anterior:= tscontratos1.Text;

               end;
          end;

          ///
          if rbEquipos.Checked then
          begin
            if bandera=0 then
               begin
                 cadena:='Select sDescripcion from equipos where sContrato = :Contrato ';
                 Buscar (contrato, cadena);
                    if Connection.qryBusca.RecordCount > 0 then
                      begin
                            dbparametros.Clear;
                            while not Connection.qryBusca.Eof do
                            begin
                               dbparametros.Items.Add(Connection.qryBusca.FieldValues['sDescripcion']);
                               Connection.qryBusca.Next;
                            end;
                            bandera:=1;
                      end
                 else
                       begin
                       dbparametros.Clear;
                       bandera:=0;
                       end;
                       parametro:=2;
                       Anterior:= tscontratos1.Text;

               end;
          end;
              ///
      if rbPaquetese.Checked then
          begin
            if bandera=0 then
               begin
                 cadena:='Select sDescripcion from paquetes_e where sContrato = :Contrato ';
                 Buscar (contrato, cadena);
                    if Connection.qryBusca.RecordCount > 0 then
                      begin
                            dbparametros.Clear;
                            while not Connection.qryBusca.Eof do
                            begin
                               dbparametros.Items.Add(Connection.qryBusca.FieldValues['sDescripcion']);
                               Connection.qryBusca.Next;
                            end;
                            bandera:=1;
                      end
                 else
                       begin
                       dbparametros.Clear;
                       bandera:=0;
                       end;
                       parametro:=2;
                       Anterior:= tscontratos1.Text;

               end;
          end;
             ///
      if rbHerramientas.Checked then
          begin
            if bandera=0 then
               begin
                 cadena:='Select sDescripcion from herramientas where sContrato = :Contrato ';
                 Buscar (contrato, cadena);
                    if Connection.qryBusca.RecordCount > 0 then
                      begin
                            dbparametros.Clear;
                            while not Connection.qryBusca.Eof do
                            begin
                               dbparametros.Items.Add(Connection.qryBusca.FieldValues['sDescripcion']);
                               Connection.qryBusca.Next;
                            end;
                            bandera:=1;
                      end
                 else
                       begin
                       dbparametros.Clear;
                       bandera:=0;
                       end;
                       parametro:=2;
                       Anterior:= tscontratos1.Text;

               end;
          end;
             ///
       if chkTodos.Checked then
            begin
                for a := 0 to dbparametros.Items.Count - 1 do
                   dbparametros.Checked[a]:=True;
            end;
       for b := 0 to dbparametros.Items.Count - 1 do
            begin
                if dbparametros.Checked[b]=True then
                   totalparametros:=totalparametros +1;
            end;

       if (dbparametros.items.Count=0) or (totalparametros<>dbparametros.items.Count) then
                 chkTodos.Checked:=False
       else
           if totalparametros=dbparametros.items.Count then
                   chkTodos.Checked:=True

       end
    else
      ShowMessage('Los Contratos no Deben Ser Iguales');
    JvBitmapButton1.Enabled:=True;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al definir parametros', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.dbparametrosExit(Sender: TObject);
begin
dbparametros.Color := global_color_salida;
end;

procedure TFrmcopiaparametros.dbparametrosKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tscontratos2.SetFocus 
end;

procedure TFrmcopiaparametros.FormShow(Sender: TObject);
var parametro: Integer  ;

begin
  try
    JvBitmapButton2.Enabled:=False;
    bandera:=0;
    Anterior:='';
    rbEspecialidades.Checked:=True;
    zqcontrato.Active := False;
    zqcontrato.SQL.Clear;
    zqcontrato.SQL.Add('select * from contratos') ;
    zqcontrato.Open;
    tscontratos1.Items.Clear;
    If zqcontrato.RecordCount > 0 Then
            While NOT zqcontrato.Eof Do
            Begin
               tscontratos1.Items.Add(zqcontrato.FieldValues['sContrato']);
               tscontratos2.Items.Add(zqcontrato.FieldValues['sContrato']);
               zqcontrato.Next
            End ;
    tscontratos1.ItemIndex:=0;        
    tscontratos2.ItemIndex:=1;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al mostrar formulario', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.JvBitmapButton1Click(Sender: TObject);
var
    db, busca: string;
   Encontrado: Boolean;
begin
  try
     contrato:=tscontratos2.Text;
     if dbparametros.Text<>'' then
      begin /////
       if rbEspecialidades.Checked then
         begin
             cadena:='select * from personal where sContrato = :Contrato';
             datosanteriores (tscontratos2, ZQdatosanteriores, cadena, dbGuardar1 );
             Buscar (contrato, cadena);
             cadenatablas:='Select * from personal where sContrato = :Contrato ';
             tablas (tscontratos1, ZQtablas, cadenatablas);
             for I := 0 to dbparametros.Items.Count - 1 do
             begin
              Connection.qryBusca.First;
              if dbparametros.Checked[I]=True then
                  begin
                        If Connection.qryBusca.RecordCount > 0 Then
                             begin
                                  Encontrado:=False;
                                  if Encontrado=False then
                                         begin
                                             while Not Connection.qryBusca.Eof do
                                                      begin
                                                          db:=dbparametros.Items[I];
                                                          busca:=Connection.qryBusca.FieldValues['sDescripcion'];
                                                          if dbparametros.Items[I]=Connection.qryBusca.FieldValues['sDescripcion'] then
                                                              begin
                                                                If MessageDlg('¿Desea Eliminar '+Connection.qryBusca.FieldValues['sDescripcion']+' y Sustituir el del Contrato Origen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                                                       begin
                                                                            cadenaeliminar:='Delete from personal where sContrato = :Contrato and sDescripcion= :Descripcion ';
                                                                            eliminar (tscontratos2, ZQtablas, cadenaeliminar, dbparametros);
                                                                            Especialidades(tscontratos2, ZQtablas);
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                       end
                                                                else
                                                                       begin
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                       end;
                                                              end
                                                            else
                                                            Connection.qryBusca.Next;
                                                       end;
                                                if Encontrado<>True then
                                                       begin
                                                           Especialidades(tscontratos2, ZQtablas);
                                                       end;
                                         end;
                             end
                        else
                            begin
                                Especialidades(tscontratos2, ZQtablas);
                            end;
                   ZQtablas.Next
                  end
                else
                   ZQtablas.Next;
              end;
           contratos:=tscontratos2.Text;
         end;
     if rbCuadrillas.Checked then
         begin
             guardar:='select * from paquetesdepersonal where sContrato = :Contrato';
             paquetesanteriores(tscontratos2, ZQpaquetesanteriores, guardar);
             cadena:='select * from paquetes_p where sContrato = :Contrato';
             datosanteriores (tscontratos2, ZQdatosanteriores, cadena, dbGuardar1 );
             Buscar (contrato, cadena);
             cadenatablas:='Select * from paquetes_p where sContrato = :Contrato ';
             tablas (tscontratos1, ZQtablas, cadenatablas);
             for I := 0 to dbparametros.Items.Count - 1 do
             begin
              Connection.qryBusca.First;
              if dbparametros.Checked[I]=True then
                  begin
                        If Connection.qryBusca.RecordCount > 0 Then
                             begin
                                  Encontrado:=False;
                                  if Encontrado=False then
                                         begin
                                             while Not Connection.qryBusca.Eof do
                                                      begin
                                                          db:=dbparametros.Items[I];
                                                          busca:=Connection.qryBusca.FieldValues['sDescripcion'];
                                                          if dbparametros.Items[I]=Connection.qryBusca.FieldValues['sDescripcion'] then
                                                              begin
                                                                If MessageDlg('¿Desea Eliminar '+Connection.qryBusca.FieldValues['sDescripcion']+' y Sustituir el del Contrato Origen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                                                       begin
                                                                            cadenaeliminar:='Delete from paquetes_p where sContrato = :Contrato and sDescripcion= :Descripcion ';
                                                                            eliminar (tscontratos2, ZQtablas, cadenaeliminar, dbparametros);
                                                                            Cuadrillas(tscontratos2, ZQtablas);
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                        end
                                                                else
                                                                       begin
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                       end;
                                                              end
                                                            else
                                                            Connection.qryBusca.Next;
                                                       end;
                                                if Encontrado<>True then
                                                       begin
                                                           Cuadrillas(tscontratos2, ZQtablas);
                                                       end;
                                         end;
                             end
                        else
                            begin
                                Cuadrillas(tscontratos2, ZQtablas);
                            end;
                   ZQtablas.Next
                  end
                else
                   ZQtablas.Next;
              end;
            cadenaeliminar:='Delete from paquetesdepersonal where sContrato = :Contrato';
            eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
            cadena:='Select a.* from (`paquetesdepersonal` as a  ' +
            'INNER JOIN `paquetes_p` as b on a.`sContrato`=b.`sContrato` and a.`sNumeroPaquete`=b.`sNumeroPaquete`) ' +
            'inner join paquetes_p as c on b.sNumeroPaquete=c.`sNumeroPaquete` and a.`sContrato`=b.sContrato ' +
            'where a.sContrato= :contrato1 and c.sContrato= :contrato2' ;
            Buscar2 (tscontratos1,tscontratos2, cadena, ZQtablas);
            if ZQtablas.RecordCount > 0 then
                while Not ZQtablas.Eof do
                   begin
                    personalxcuadrilla(tscontratos2, ZQtablas );
                    ZQtablas.Next;
                   end;
          contratos:=tscontratos2.Text;
         end;
         ////
       if rbEquipos.Checked then
         begin
             cadena:='select * from equipos where sContrato = :Contrato';
             datosanteriores (tscontratos2, ZQdatosanteriores, cadena, dbGuardar1 );
             Buscar (contrato, cadena);
             cadenatablas:='Select * from equipos where sContrato = :Contrato ';
             tablas (tscontratos1, ZQtablas, cadenatablas);
             for I := 0 to dbparametros.Items.Count - 1 do
             begin
              Connection.qryBusca.First;
                     if dbparametros.Checked[I]=True then
                  begin
                        If Connection.qryBusca.RecordCount > 0 Then
                             begin
                                  Encontrado:=False;
                                  if Encontrado=False then
                                         begin
                                             while Not Connection.qryBusca.Eof do
                                                      begin
                                                          db:=dbparametros.Items[I];
                                                          busca:=Connection.qryBusca.FieldValues['sDescripcion'];
                                                          if dbparametros.Items[I]=Connection.qryBusca.FieldValues['sDescripcion'] then
                                                              begin
                                                                If MessageDlg('¿Desea Eliminar '+Connection.qryBusca.FieldValues['sDescripcion']+' y Sustituir el del Contrato Origen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                                                       begin
                                                                            cadenaeliminar:='Delete from equipos where sContrato = :Contrato and sDescripcion= :Descripcion ';
                                                                            eliminar (tscontratos2, ZQtablas, cadenaeliminar, dbparametros);
                                                                            Equipos(tscontratos2, ZQtablas);
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                        end
                                                                else
                                                                       begin
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                       end;
                                                              end
                                                            else
                                                            Connection.qryBusca.Next;
                                                       end;
                                                if Encontrado<>True then
                                                       begin
                                                           Equipos(tscontratos2, ZQtablas);
                                                       end;
                                         end;
                             end
                        else
                            begin
                                Equipos(tscontratos2, ZQtablas);
                            end;
                   ZQtablas.Next
                  end
                else
                   ZQtablas.Next;
              end;
          contratos:=tscontratos2.Text;
         end;
        ///
     if rbPaquetese.Checked then
         begin
             guardar:='select * from paquetesdeequipo where sContrato = :Contrato';
             paquetesanteriores(tscontratos2, ZQpaquetesanteriores, guardar);
             cadena:='select * from paquetes_e where sContrato = :Contrato';
             Buscar (contrato, cadena);
             datosanteriores (tscontratos2, ZQdatosanteriores, cadena, dbGuardar1 );
             cadenatablas:='Select * from paquetes_e where sContrato = :Contrato ';
             tablas (tscontratos1, ZQtablas, cadenatablas);
             for I := 0 to dbparametros.Items.Count - 1 do
             begin
              Connection.qryBusca.First;
                     if dbparametros.Checked[I]=True then
                  begin
                        If Connection.qryBusca.RecordCount > 0 Then
                             begin
                                  Encontrado:=False;
                                  if Encontrado=False then
                                         begin
                                             while Not Connection.qryBusca.Eof do
                                                      begin
                                                          db:=dbparametros.Items[I];
                                                          busca:=Connection.qryBusca.FieldValues['sDescripcion'];
                                                          if dbparametros.Items[I]=Connection.qryBusca.FieldValues['sDescripcion'] then
                                                              begin
                                                                If MessageDlg('¿Desea Eliminar '+Connection.qryBusca.FieldValues['sDescripcion']+' y Sustituir el del Contrato Origen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                                                       begin
                                                                            cadenaeliminar:='Delete from paquetes_e where sContrato = :Contrato and sDescripcion= :Descripcion ';
                                                                            eliminar (tscontratos2, ZQtablas, cadenaeliminar, dbparametros);
                                                                            Paquetese(tscontratos2, ZQtablas);
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                        end
                                                                else
                                                                       begin
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                       end;
                                                              end
                                                            else
                                                            Connection.qryBusca.Next;
                                                       end;
                                                if Encontrado<>True then
                                                       begin
                                                           Paquetese(tscontratos2, ZQtablas);
                                                       end;
                                         end;
                             end
                        else
                            begin
                                Paquetese(tscontratos2, ZQtablas);
                            end;
                   ZQtablas.Next
                  end
                else
                   ZQtablas.Next;
              end;
            cadenaeliminar:='Delete from paquetesdeequipo where sContrato = :Contrato';
            eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
            cadena:='Select a.* from (`paquetesdeequipo` as a  ' +
            'INNER JOIN `paquetes_e` as b on a.`sContrato`=b.`sContrato` and a.`sNumeroPaquete`=b.`sNumeroPaquete`) ' +
            'inner join paquetes_e as c on b.sNumeroPaquete=c.`sNumeroPaquete` and a.`sContrato`=b.sContrato ' +
            'where a.sContrato= :contrato1 and c.sContrato= :contrato2' ;
            Buscar2 (tscontratos1,tscontratos2, cadena, ZQtablas);
            if ZQtablas.RecordCount > 0 then
                while Not ZQtablas.Eof do
                   begin
                    equiposxpaquete(tscontratos2, ZQtablas);
                    ZQtablas.Next;
                   end;

        contratos:=tscontratos2.Text;
         end;

       if rbHerramientas.Checked then
         begin
             cadena:='select * from herramientas where sContrato = :Contrato';
             datosanteriores (tscontratos2, ZQdatosanteriores, cadena, dbGuardar1 );
             Buscar (contrato, cadena);
             cadenatablas:='Select * from herramientas where sContrato = :Contrato ';
             tablas (tscontratos1, ZQtablas, cadenatablas);
             for I := 0 to dbparametros.Items.Count - 1 do
             begin
              Connection.qryBusca.First;
              if dbparametros.Checked[I]=True then
                  begin
                        If Connection.qryBusca.RecordCount > 0 Then
                             begin
                                  Encontrado:=False;
                                  if Encontrado=False then
                                         begin
                                             while Not Connection.qryBusca.Eof do
                                                      begin
                                                          db:=dbparametros.Items[I];
                                                          busca:=Connection.qryBusca.FieldValues['sDescripcion'];
                                                          if dbparametros.Items[I]=Connection.qryBusca.FieldValues['sDescripcion'] then
                                                              begin
                                                                If MessageDlg('¿Desea Eliminar '+Connection.qryBusca.FieldValues['sDescripcion']+' y Sustituir el del Contrato Origen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                                                       begin

                                                                            cadenaeliminar:='Delete from herramientas where sContrato = :Contrato and sDescripcion= :Descripcion ';
                                                                            eliminar (tscontratos2, ZQtablas, cadenaeliminar, dbparametros);
                                                                            Herramientas(tscontratos2, ZQtablas);
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                        end
                                                                else
                                                                       begin
                                                                            Connection.qryBusca.Next;
                                                                            Encontrado:=True;
                                                                       end;
                                                              end
                                                            else
                                                            Connection.qryBusca.Next;
                                                       end;
                                                if Encontrado<>True then
                                                       begin
                                                           Herramientas(tscontratos2, ZQtablas);
                                                       end;
                                         end;
                             end
                        else
                            begin
                                Herramientas(tscontratos2, ZQtablas);
                            end;
                   ZQtablas.Next
                  end
                else
                   ZQtablas.Next;
              end;
           contratos:=tscontratos2.Text;
         end;

         ///

     datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
     end ///
   Else
      ShowMessage ('Seleccione los Parametros de la Lista');
   JvBitmapButton2.Enabled:=True;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al iniciar proceso', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.JvBitmapButton2Click(Sender: TObject);
var H, J :Integer;
begin
  try
      ZQtablas.Open ;
      //ZQDatosAnteriores.Open;
      //ZQPaquetesAnteriores.Open;

      if rbEspecialidades.Checked then
               begin
                  ZQDatosAnteriores.First;
                      if ZQDatosAnteriores.FieldValues['sContrato']=tscontratos2.Text then
                          begin
                            cadenaeliminar:='Delete from personal where sContrato= :contrato';
                            eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                            If ZQDatosAnteriores.RecordCount > 0 then
                                 while not ZQDatosAnteriores.eof do
                                       for H := 0 to ZQDatosAnteriores.RecordCount - 1 do
                                           begin
                                               ZQtablas.Append;
                                               ZQtablas.FieldValues['sIdPersonal']         := ZQDatosAnteriores.FieldValues['sIdPersonal'];
                                               ZQtablas.FieldValues['iItemOrden']          := ZQDatosAnteriores.FieldValues['iItemOrden'];
                                               ZQtablas.FieldValues['sDescripcion']        := ZQDatosAnteriores.FieldValues['sDescripcion'];
                                               ZQtablas.FieldValues['sIdTipoPersonal']     := ZQDatosAnteriores.FieldValues['sIdTipoPersonal'];
                                               ZQtablas.FieldValues['sMedida']             := ZQDatosAnteriores.FieldValues['sMedida'];
                                               ZQtablas.FieldValues['dCantidad']           := ZQDatosAnteriores.FieldValues['dCantidad'];
                                               ZQtablas.FieldValues['dCostoMN']            := ZQDatosAnteriores.FieldValues['dCostoMN'];
                                               ZQtablas.FieldValues['dCostoDLL']           := ZQDatosAnteriores.FieldValues['dCostoDLL'];
                                               ZQtablas.FieldValues['dVentaMN']            := ZQDatosAnteriores.FieldValues['dVentaMN'];
                                               ZQtablas.FieldValues['dVentaDLL']           := ZQDatosAnteriores.FieldValues['dVentaDLL'];
                                               ZQtablas.FieldValues['dFechaInicio']        := ZQDatosAnteriores.FieldValues['dFechaInicio'];
                                               ZQtablas.FieldValues['dFechaFinal']         := ZQDatosAnteriores.FieldValues['dFechaFinal'];
                                               ZQtablas.FieldValues['lProrrateo']          := ZQDatosAnteriores.FieldValues['lProrrateo'];
                                                ZQtablas.FieldValues['lCobro']              := ZQDatosAnteriores.FieldValues['lCobro'];
                                                ZQtablas.FieldValues['lImprime']            :=ZQDatosAnteriores.FieldValues['lImprime'];
                                                ZQtablas.FieldValues['lAplicaTM']           := ZQDatosAnteriores.FieldValues['lAplicaTM'];
                                               ZQtablas.FieldValues['iJornada']            := ZQDatosAnteriores.FieldValues['iJornada'];
                                                ZQtablas.FieldValues['lDistribuye']         := ZQDatosAnteriores.FieldValues['lDistribuye'];
                                                ZQtablas.FieldValues['sAgrupaPersonal']     := ZQDatosAnteriores.FieldValues['sAgrupaPersonal'];
                                               ZQtablas.FieldValues['sIdClave']            := ZQDatosAnteriores.FieldValues['sIdClave'];
                                                ZQtablas.FieldValues['sImss']               := ZQDatosAnteriores.FieldValues['sImss'];
                                               Especialidades( tscontratos2, ZQtablas);
                                               ZQDatosAnteriores.Next;
                                               ZQtablas.Cancel;
                                             end;
                             rbEspecialidadesClick(Sender);
                        end
                   else
                       if contratos=tscontratos2.Text then
                          begin
                                    cadenaeliminar:='Delete from personal where sContrato= :contrato';
                                    eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                                    rbEspecialidadesClick(Sender);
                           end
                        else
                           ShowMessage ('El contrato modificado no es el mismo que el contrato destino, Cambie al Contrato Modificado');

                   end;
     if rbEquipos.Checked then
       begin
         ZQDatosAnteriores.First;
         if ZQDatosAnteriores.FieldValues['sContrato']=tscontratos2.Text then
         begin
           cadenaeliminar:='Delete from equipos where sContrato= :contrato';
           eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
           If ZQDatosAnteriores.RecordCount > 0 then
              while not ZQDatosAnteriores.eof do
                 for H := 0 to ZQDatosAnteriores.RecordCount - 1 do
                   begin
                      ZQtablas.Append;
                      ZQtablas.FieldValues['sIdEquipo']           := ZQDatosAnteriores.FieldValues['sIdEquipo'];
                      ZQtablas.FieldValues['iItemOrden']          := ZQDatosAnteriores.FieldValues['iItemOrden'];
                      ZQtablas.FieldValues['sDescripcion']        := ZQDatosAnteriores.FieldValues['sDescripcion'];
                      ZQtablas.FieldValues['sIdTipoEquipo']       := ZQDatosAnteriores.FieldValues['sIdTipoEquipo'];
                      ZQtablas.FieldValues['sMedida']             := ZQDatosAnteriores.FieldValues['sMedida'];
                      ZQtablas.FieldValues['dCantidad']           := ZQDatosAnteriores.FieldValues['dCantidad'];
                      ZQtablas.FieldValues['dCostoMN']            := ZQDatosAnteriores.FieldValues['dCostoMN'];
                      ZQtablas.FieldValues['dCostoDLL']           := ZQDatosAnteriores.FieldValues['dCostoDLL'];
                      ZQtablas.FieldValues['dVentaMN']            := ZQDatosAnteriores.FieldValues['dVentaMN'];
                      ZQtablas.FieldValues['dVentaDLL']           := ZQDatosAnteriores.FieldValues['dVentaDLL'];
                      ZQtablas.FieldValues['dFechaInicio']        := ZQDatosAnteriores.FieldValues['dFechaInicio'];
                      ZQtablas.FieldValues['dFechaFinal']         := ZQDatosAnteriores.FieldValues['dFechaFinal'];
                      ZQtablas.FieldValues['lProrrateo']          := ZQDatosAnteriores.FieldValues['lProrrateo'];
                      ZQtablas.FieldValues['lCobro']              := ZQDatosAnteriores.FieldValues['lCobro'];
                      ZQtablas.FieldValues['lImprime']            :=ZQDatosAnteriores.FieldValues['lImprime'];
                      ZQtablas.FieldValues['iJornada']            := ZQDatosAnteriores.FieldValues['iJornada'];
                      ZQtablas.FieldValues['lDistribuye']         := ZQDatosAnteriores.FieldValues['lDistribuye'];
                      Equipos( tscontratos2, ZQtablas);
                      ZQDatosAnteriores.Next;
                      ZQtablas.Cancel;
                   end;
            rbEquiposClick(Sender);
         end
          else
                       if contratos=tscontratos2.Text then
                          begin
                               cadenaeliminar:='Delete from equipos where sContrato= :contrato';
                               eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                               rbEquiposClick(Sender);
                           end
                        else
                           ShowMessage ('El contrato modificado no es el mismo que el contrato destino, Cambie al Contrato Modificado');
          end;
     if rbHerramientas.Checked then
       begin
         ZQDatosAnteriores.First;
         if ZQDatosAnteriores.FieldValues['sContrato']=tscontratos2.Text then
         begin
           cadenaeliminar:='Delete from herramientas where sContrato= :contrato';
           eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
           If ZQDatosAnteriores.RecordCount > 0 then
              while not ZQDatosAnteriores.eof do
                 for H := 0 to ZQDatosAnteriores.RecordCount - 1 do
                   begin
                      ZQtablas.Append;
                      ZQtablas.FieldValues['sIdHerramientas']     := ZQDatosAnteriores.FieldValues['sIdHerramientas'];
                      ZQtablas.FieldValues['sDescripcion']        := ZQDatosAnteriores.FieldValues['sDescripcion'];
                      ZQtablas.FieldValues['sMedida']             := ZQDatosAnteriores.FieldValues['sMedida'];
    //                  ZQtablas.FieldValues['dCantidad']           := ZQDatosAnteriores.FieldValues['dCantidad'];
                      ZQtablas.FieldValues['dCostoMN']            := ZQDatosAnteriores.FieldValues['dCostoMN'];
                      ZQtablas.FieldValues['dCostoDLL']           := ZQDatosAnteriores.FieldValues['dCostoDLL'];
                      ZQtablas.FieldValues['dVentaMN']            := ZQDatosAnteriores.FieldValues['dVentaMN'];
                      ZQtablas.FieldValues['dVentaDLL']           := ZQDatosAnteriores.FieldValues['dVentaDLL'];
    //                  ZQtablas.FieldValues['dFechaInicio']        := ZQDatosAnteriores.FieldValues['dFechaInicio'];
    //                  ZQtablas.FieldValues['dFechaFinal']         := ZQDatosAnteriores.FieldValues['dFechaFinal'];
                      ZQtablas.FieldValues['sSimbolo']          := ZQDatosAnteriores.FieldValues['sSimbolo'];
                      ZQtablas.FieldValues['fFecha']              := ZQDatosAnteriores.FieldValues['fFecha'];
                      Herramientas( tscontratos2, ZQtablas);
                      ZQDatosAnteriores.Next;
                      ZQtablas.Cancel;
                   end;
            rbHerramientasClick(Sender);
         end
        else
                       if contratos=tscontratos2.Text then
                          begin
                               cadenaeliminar:='Delete from herramientas where sContrato= :contrato';
                               eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                               rbHerramientasClick(Sender);
                           end
                        else
                           ShowMessage ('El contrato modificado no es el mismo que el contrato destino, Cambie al Contrato Modificado');
          end;

     if rbPaquetese.Checked then
       begin

         ZQDatosAnteriores.First;
         ZQpaquetesAnteriores.First;
         if ZQDatosAnteriores.FieldValues['sContrato']=tscontratos2.Text then
         begin
           cadenaeliminar:='Delete from paquetes_e where sContrato= :contrato';
           eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
           cadenaeliminar:='Delete from paquetesdeequipo where sContrato= :contrato';
           eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
           cadenatablas:='select * from paquetes_e where sContrato = :Contrato';
           tablas (tscontratos1, ZQtablas, cadenatablas);
           If ZQDatosAnteriores.RecordCount > 0 then
              while not ZQDatosAnteriores.eof do
                 for H := 0 to ZQDatosAnteriores.RecordCount - 1 do
                   begin
                      ZQtablas.Append;
                      ZQtablas.FieldValues['sNumeroPaquete']      := ZQDatosAnteriores.FieldValues['sNumeroPaquete'];
                      ZQtablas.FieldValues['sDescripcion']        := ZQDatosAnteriores.FieldValues['sDescripcion'];
                      ZQtablas.FieldValues['sIdPernocta']         := ZQDatosAnteriores.FieldValues['sIdPernocta'];
                      Paquetese( tscontratos2, ZQtablas);
                      ZQDatosAnteriores.Next;
                      ZQtablas.Cancel;
                   end;
           cadenatablas:='select * from paquetesdeequipo where sContrato = :Contrato';
           tablas (tscontratos1, ZQtablas, cadenatablas);
           If ZQpaquetesAnteriores.RecordCount > 0 then
              while not ZQpaquetesAnteriores.eof do
                 for J := 0 to ZQpaquetesAnteriores.RecordCount - 1 do
                   begin
                      ZQtablas.Append;
                      ZQtablas.FieldValues['sNumeroPaquete']:=ZQpaquetesAnteriores.FieldValues['sNumeroPaquete'];
                      ZQtablas.FieldValues['sIdEquipo']:=ZQpaquetesAnteriores.FieldValues['sIdEquipo'];
                      ZQtablas.FieldValues['dCantidad']:=ZQpaquetesAnteriores.FieldValues['dCantidad'];
                      equiposxpaquete(tscontratos2, ZQtablas);
                      ZQpaquetesAnteriores.Next;
                      ZQtablas.Cancel;
                   end;
            rbPaqueteseClick(Sender);
         end
         else
                       if contratos=tscontratos2.Text then
                          begin
                                cadenaeliminar:='Delete from paquetes_e where sContrato= :contrato';
                                eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                                cadenaeliminar:='Delete from paquetesdeequipo where sContrato= :contrato';
                                eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                                rbPaqueteseClick(Sender);
                           end
                        else
                           ShowMessage ('El contrato modificado no es el mismo que el contrato destino, Cambie al Contrato Modificado');
        end;
    if rbCuadrillas.Checked then
       begin

         ZQDatosAnteriores.First;
         ZQpaquetesAnteriores.First;
         if ZQDatosAnteriores.FieldValues['sContrato']=tscontratos2.Text then
         begin
           cadenaeliminar:='Delete from paquetes_p where sContrato= :contrato';
           eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
           cadenaeliminar:='Delete from paquetesdepersonal where sContrato= :contrato';
           eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
           cadenatablas:='select * from paquetes_p where sContrato = :Contrato';
           tablas (tscontratos1, ZQtablas, cadenatablas);
           If ZQDatosAnteriores.RecordCount > 0 then
              while not ZQDatosAnteriores.eof do
                 for H := 0 to ZQDatosAnteriores.RecordCount - 1 do
                   begin
                      ZQtablas.Append;
                      ZQtablas.FieldValues['sNumeroPaquete']      := ZQDatosAnteriores.FieldValues['sNumeroPaquete'];
                      ZQtablas.FieldValues['sDescripcion']        := ZQDatosAnteriores.FieldValues['sDescripcion'];
                      ZQtablas.FieldValues['sIdPernocta']         := ZQDatosAnteriores.FieldValues['sIdPernocta'];
                      ZQtablas.FieldValues['sIdPlataforma']       := ZQDatosAnteriores.FieldValues['sIdPlataforma'];
                      Cuadrillas( tscontratos2, ZQtablas);
                      ZQDatosAnteriores.Next;
                      ZQtablas.Cancel;
                   end;
           cadenatablas:='select * from paquetesdepersonal where sContrato = :Contrato';
           tablas (tscontratos1, ZQtablas, cadenatablas);
           If ZQpaquetesAnteriores.RecordCount > 0 then
              while not ZQpaquetesAnteriores.eof do
                 for J := 0 to ZQpaquetesAnteriores.RecordCount - 1 do
                   begin
                      ZQtablas.Append;
                      ZQtablas.FieldValues['sNumeroPaquete']:=ZQpaquetesAnteriores.FieldValues['sNumeroPaquete'];
                      ZQtablas.FieldValues['sIdPersonal']:=ZQpaquetesAnteriores.FieldValues['sIdPersonal'];
                      ZQtablas.FieldValues['dCantidad']:=ZQpaquetesAnteriores.FieldValues['dCantidad'];
                      ZQtablas.FieldValues['mComentarios']:=ZQpaquetesAnteriores.FieldValues['mComentarios'];
                      personalxcuadrilla(tscontratos2, ZQtablas);
                      ZQpaquetesAnteriores.Next;
                      ZQtablas.Cancel;
                   end;
            rbCuadrillasClick(Sender);
         end
         else
                       if contratos=tscontratos2.Text then
                          begin
                                cadenaeliminar:='Delete from paquetes_p where sContrato= :contrato';
                                eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                                cadenaeliminar:='Delete from paquetesdepersonal where sContrato= :contrato';
                                eliminarpaquetesxtablas (tscontratos2, cadenaeliminar);
                                rbCuadrillasClick(Sender);
                           end
                        else
                           ShowMessage ('El contrato modificado no es el mismo que el contrato destino, Cambie al Contrato Modificado');
        end;


    //end;
    //else
    //   ShowMessage('Vacio')
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al revertir proceso', 0);
    end;
  end;
end;


procedure TFrmcopiaparametros.rbCuadrillasClick(Sender: TObject);
begin
  try
    bandera:=0;
    caddatosnuevos:='Select sDescripcion from paquetes_p where sContrato = :Contrato ' ;
    datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
    dbparametros.Clear;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al consultar cuadrillas', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.rbEquiposClick(Sender: TObject);
begin
  try
    bandera:=0;
    caddatosnuevos:='Select sDescripcion from equipos where sContrato = :Contrato ' ;
    datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
    dbparametros.Clear;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al consultar equipos', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.rbEspecialidadesClick(Sender: TObject);
begin
  try
    bandera:=0;
    caddatosnuevos:='Select sDescripcion from personal where sContrato = :Contrato ' ;
    datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
    dbparametros.Clear;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al consultar personal', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.rbHerramientasClick(Sender: TObject);
begin
  try
    bandera:=0;
    caddatosnuevos:='Select sDescripcion from herramientas where sContrato = :Contrato ' ;
    datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
    dbparametros.Clear;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al consultar herramientas', 0);
    end;
  end;
end;

procedure TFrmcopiaparametros.rbPaqueteseClick(Sender: TObject);
begin
  try
    bandera:=0;
    caddatosnuevos:='Select sDescripcion from paquetes_e where sContrato = :Contrato ' ;
    datosnuevos (tscontratos2, ZQdatosnuevos, caddatosnuevos, dbparametros, DBcontrato2);
    dbparametros.Clear;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Copiar Parametos de Contratos', 'Al consultar paquetes de herramientas', 0);
    end;
  end;
end;

// End Final

end.
