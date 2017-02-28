unit frm_GerencialBarco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, frxClass, frxDBSet, StdCtrls,
  ShellAPI, frm_connection, RxMemDS, Mask,
  ComCtrls, global, ZAbstractDataset, Menus, ExtCtrls;

type
  TfrmGerencialBarco = class(TForm)
    qryContratoPrincipal: TZReadOnlyQuery;
    qryPosicionamiento: TZReadOnlyQuery;
    qryCondicionesClimatologicas: TZReadOnlyQuery;
    qryExistencias: TZReadOnlyQuery;
    qryTodosLosFrentes: TZReadOnlyQuery;
    qryPaquetes: TZReadOnlyQuery;
    qryTiemposMuertos: TZReadOnlyQuery;
    cmdGerencial: TButton;
    qryMovimientosEmbarcacion: TZReadOnlyQuery;
    Fecha: TDateTimePicker;
    Label1: TLabel;
    hInicio: TMaskEdit;
    hTermino: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    qryPersonal: TZReadOnlyQuery;
    qryPersonalxOrden: TZReadOnlyQuery;
    qryEquipos: TZReadOnlyQuery;
    qryEquiposxorden: TZReadOnlyQuery;
    rReporte: TfrxReport;
    dsComentarios: TfrxDBDataset;
    chkOpcion: TCheckBox;
    qryArribos: TZReadOnlyQuery;
    dsArribosReporte: TfrxDBDataset;
    dsClimaReporte: TfrxDBDataset;
    qryClimaReporte: TZReadOnlyQuery;
    embarcacion: TZReadOnlyQuery;
    dsArribosReporteVuelo: TfrxDBDataset;
    qryArribosVuelo: TZReadOnlyQuery;
    totalestripulacion: TZReadOnlyQuery;
    dstotalesporcategorias: TfrxDBDataset;
    dsNotasGenerales: TfrxDBDataset;
    qryNotasGenerales: TZReadOnlyQuery;
    dsTripulacion: TfrxDBDataset;
    Tripulacion: TZQuery;
    dsTotales: TfrxDBDataset;
    totales: TZReadOnlyQuery;
    QryConfiguracion: TZReadOnlyQuery;
    dsConfiguracion: TfrxDBDataset;
    qryOrdenes: TZReadOnlyQuery;
    dsOrdenes: TfrxDBDataset;
    QryConfiguracioniFirmasGeneradores: TStringField;
    QryConfiguracioniFirmas: TStringField;
    QryConfiguracionsOrdenPerEq: TStringField;
    QryConfiguracionsTipoPartida: TStringField;
    QryConfiguracionsImprimePEP: TStringField;
    QryConfiguracionsClaveSeguridad: TStringField;
    QryConfiguracioncStatusProceso: TStringField;
    QryConfiguracionsOrdenExtraordinaria: TStringField;
    QryConfiguracionlLicencia: TStringField;
    QryConfiguracionsDireccion1: TStringField;
    QryConfiguracionsDireccion2: TStringField;
    QryConfiguracionsDireccion3: TStringField;
    QryConfiguracionsCiudad: TStringField;
    QryConfiguracionsTelefono: TStringField;
    QryConfiguracionbImagen: TBlobField;
    QryConfiguracionsContrato: TStringField;
    QryConfiguracionsNombre: TStringField;
    QryConfiguracionsPiePagina: TStringField;
    QryConfiguracionsEmail: TStringField;
    QryConfiguracionsWeb: TStringField;
    QryConfiguracionsSlogan: TStringField;
    QryConfiguracionsFirmasElectronicas: TStringField;
    QryConfiguracionlImprimeExtraordinario: TStringField;
    QryConfiguracionsCodigo: TStringField;
    QryConfiguracionmDescripcion: TMemoField;
    QryConfiguracionsTitulo: TMemoField;
    QryConfiguracionmCliente: TMemoField;
    QryConfiguracionbImagenPEP: TBlobField;
    QryConfiguracionsMostrarAvances: TStringField;
    rxCondiciones: TRxMemoryData;
    dsEmbarcacion: TfrxDBDataset;
    rxCondicionessCantidad1: TStringField;
    rxCondicionessDescripcionTiempo1: TStringField;
    rxCondicionessDireccion1: TStringField;
    rxCondicionessMedida1: TStringField;
    rxCondicionessCantidad2: TStringField;
    rxCondicionessDireccion2: TStringField;
    rxCondicionessMedida2: TStringField;
    rxRecursos: TRxMemoryData;
    rxRecursossRecurso1: TStringField;
    rxRecursossMedida1: TStringField;
    rxRecursosdCantidadProducido1: TFloatField;
    rxRecursosdCantidadActual1: TFloatField;
    rxRecursossRecurso2: TStringField;
    rxRecursossMedida2: TStringField;
    rxRecursosdCantidadConsumo2: TFloatField;
    rxRecursosdCantidadProducido2: TFloatField;
    rxRecursosdCantidadActual2: TFloatField;
    rxRecursossRecurso3: TStringField;
    rxRecursossMedida3: TStringField;
    rxRecursosdCantidadConsumo3: TFloatField;
    rxRecursosdCantidadProducido3: TFloatField;
    rxRecursosdCantidadActual3: TFloatField;
    rxRecursossRecurso4: TStringField;
    rxRecursossMedida4: TStringField;
    rxRecursosdCantidadConsumo4: TFloatField;
    rxRecursosdCantidadProducido4: TFloatField;
    rxRecursosdCantidadActual4: TFloatField;
    rxCondicionessDescripcionTiempo2: TStringField;
    rxRecursosEmbarcacion: TStringField;
    rxRecursosdCantidadConsumo1: TFloatField;
    rxOrdenes: TRxMemoryData;
    rxOrdenessOrden: TStringField;
    rxOrdenessDescripcionOrden: TStringField;
    rxOrdenesdAvanceProgramado: TFloatField;
    rxOrdenesdAvanceReal: TFloatField;
    rxOrdenesdAvanceProgramadoAnt: TFloatField;
    rxOrdenesdAvanceProgramadoDiario: TFloatField;
    rxOrdenesdAvanceAnterior: TFloatField;
    rxOrdenesdAvanceDiario: TFloatField;
    rxOrdenesdTiempoProgramado: TFloatField;
    rxOrdenesdTiempoReal: TFloatField;
    rxOrdenessHoraEfectivo: TStringField;
    rxOrdenessHoraMuerto: TStringField;
    rxOrdenessHoraMalTiempo: TStringField;
    rxOrdenessTipoActividad: TStringField;
    rxOrdenessNumeroActividad: TStringField;
    rxOrdenesmDescripcion: TMemoField;
    rxOrdenesdAvancePartida: TFloatField;
    rxOrdenessTipoNota: TStringField;
    rxOrdenessHoraInicio: TStringField;
    rxOrdenessHoraFinal: TStringField;
    rxOrdenessHoras: TStringField;
    procedure CrearGerencialExcel();
    procedure CrearGerencialPDF();
    procedure cmdGerencialClick(Sender: TObject);
    procedure rReporteGetValue(const VarName: string; var Value: Variant);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerencialBarco: TfrmGerencialBarco;

implementation

{$R *.dfm}
{ Procedure uses OS shell to open and view XLS file }

procedure OpenFileInOSShell(AFile: string);
begin
  ShellExecute(0, 'open', PChar(AFile), nil, nil, SW_SHOW);
end;

procedure TfrmGerencialBarco.cmdGerencialClick(Sender: TObject);
begin
    if chkOpcion.Checked then
       CrearGerencialPDF
    else
       CrearGerencialExcel;
end;

procedure TfrmGerencialBarco.CrearGerencialExcel();
//var
//  xf: TXLSFile;
//  iColumn, iRow: Integer;
//  Row, Col: integer;
//  FG, BG: TXLColorIndex;
//  R: TRange;
//  FromRow, ToRow: Integer;
//  FromColumn, ToColumn: Integer;
//  Cell: TCells;
//
//  bS: TStream;
//  BlobField: tField;
//   bS2: TStream;
//  BlobField2: tField;
begin

  { Create TXLSFile object.
  After creation it contains one sheet }
  {xf := TXLSFile.Create;
  try

    with xf.Workbook.Sheets[0] do
    begin
      for iColumn := 0 to 350 do
      begin
        Columns[iColumn].Width := 3;
        Rows[iColumn].AutoFit;
        Rows[iColumn].Height := 10;
        Rows[iColumn].HAlign := xlHAlignJustify;
        Rows[iColumn].VAlign := xlVAlignJustify;
        Rows[iColumn].FontColorIndex := 1;
        Rows[iColumn].FontHeight := 5;
      end;
      qryContratoPrincipal.Active := false;
      qryContratoPrincipal.SQL.Clear;
      qryContratoPrincipal.SQL.Add('select co.sNombre, co.bImagen as bImagenA, c.mDescripcion,c.mCliente,c.mComentarios,c.bImagen as bImagenB from contratos c ' +
        ' inner join configuracion co on co.sContrato=c.sContrato ' +
        ' where c.sTipoObra = "BARCO" and co.sIdConvenio=:convenio ');
      qryContratoPrincipal.ParamByName('convenio').AsString := global_convenio;
      qryContratoPrincipal.Open;

      if qryContratoPrincipal.RecordCount > 0 then
      begin
        try
          BlobField := qryContratoPrincipal.FieldByName('bImagenB');
          BS := qryContratoPrincipal.CreateBlobStream(BlobField, bmRead);
          if bs.Size > 1 then
          begin
            Images.AddStretchFromStream(bS, 0, 0, 1, 0, 4, 4);
          end;
          BlobField2 := qryContratoPrincipal.FieldByName('bImagenA');
          BS2 := qryContratoPrincipal.CreateBlobStream(BlobField2, bmRead);
          if bs2.Size > 1 then
          begin
            Images.AddStretchFromStream(bS2, 0, 0, 20, 0, 23, 4);
          end;
        finally
          bS.Free  ;
          bS2.Free  ;
        end   ;

        
        R := Ranges.Add;
        FromRow := 0; ToRow := 4; FromColumn := 5; ToColumn := 19;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.HAlign := xlHAlignJustify;
        R.VAlign := xlVAlignTop;
        R.Value := qryContratoPrincipal.FieldByName('mDescripcion').AsString;

        R := Ranges.Add;
        FromRow := 5; ToRow := 8; FromColumn := 1; ToColumn := 6;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.HAlign := xlHAlignJustify;
        R.VAlign := xlVAlignTop;
        R.Value := qryContratoPrincipal.FieldByName('mCliente').AsString;

        R := Ranges.Add;
        FromRow := 5; ToRow := 8; FromColumn := 17; ToColumn := 23;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.HAlign := xlHAlignJustify;
        R.VAlign := xlVAlignTop;
        R.Value := qryContratoPrincipal.FieldByName('sNombre').AsString;

      end;

      qryContratoPrincipal.Active := false;
      qryContratoPrincipal.SQL.Clear;
      qryContratoPrincipal.SQL.Add('select sContrato, ' +
        ' mDescripcion ' +
        ' from contratos ' +
        ' where sTipoObra = "BARCO" ');
      qryContratoPrincipal.Open;

      {Contrato}
      {R := Ranges.Add;
      FromRow := 9; ToRow := 9; FromColumn := 1; ToColumn := 6;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'CONTRATO:';


      iRow := FromRow;

      R := Ranges.Add;
      FromRow := 9; ToRow := 9; FromColumn := 7; ToColumn := 23;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := qryContratoPrincipal.FieldByName('sContrato').AsString;

      iRow := FromRow;

      R := Ranges.Add;
      FromRow := 10; ToRow := 10; FromColumn := 1; ToColumn := 6;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'OBRA:';

      R := Ranges.Add;
      FromRow := 10; ToRow := 10; FromColumn := 7; ToColumn := 23;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.VAlign := xlVAlignTop;
      R.Value := qryContratoPrincipal.FieldByName('mDescripcion').AsString;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      Rows[10].Height := 50;

      for iRow := 9 to 10 do
      begin
        for iColumn := 1 to 23 do
        begin
//          Cells[iRow, iColumn].BorderColorRGB[xlBorderAll] := RGB(200, 0, 0);
//          Cells[iRow, iColumn].BorderStyle[xlBorderAll] := bsThin;
          Cells[iRow, iColumn].FillPatternBGColorRGB := RGB(255, 200, 0);
          Cells[iRow, iColumn].FillPatternFGColorRGB := RGB(80, 255, 0);
          Cells[iRow, iColumn].FillPattern := xlPatternSolid;
        end;
      end;
            {BARCO}
      {qryPosicionamiento.Active := false;
      qryPosicionamiento.SQL.Clear;
      qryPosicionamiento.SQL.Add('select * ' +
        ' from movimientosdeembarcacion ' +
        ' where dIdFecha = :fecha and ' +
        '       sHoraFinal <=:final ' +
        ' order by sHoraFinal desc ' +
        ' limit 1 ');
      qryPosicionamiento.ParamByName('final').AsString := hTermino.Text;
      qryPosicionamiento.ParamByName('fecha').AsDate := Fecha.Date;
      qryPosicionamiento.Open;

      R := Ranges.Add;
      FromRow := 12; ToRow := 12; FromColumn := 1; ToColumn := 6;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'LOCALIZACION';

      R := Ranges.Add;
      FromRow := 13; ToRow := 17; FromColumn := 1; ToColumn := 6;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignJustify;
      R.VAlign := xlVAlignTop;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := qryPosicionamiento.FieldByName('mDescripcion').AsString;

      qryCondicionesClimatologicas.Active := false;
      qryCondicionesClimatologicas.SQL.Clear;
      qryCondicionesClimatologicas.SQL.Add(' select co.sDescripcion as sCondicion, c.sCantidad, co.sMedida, d.sDescripcion as sDireccion ' +
        ' from condicionesclimatologicas c ' +
        ' inner join condiciones co on co.iIdCondicion=c.iIdCondicion  ' +
        ' inner join direcciones d on d.iIdDireccion=c.iIdDireccion ' +
        ' where dIdFecha = :fecha and  ' +
        '       sHorario <= :final ');
      qryCondicionesClimatologicas.ParamByName('final').AsString := hTermino.Text;
      qryCondicionesClimatologicas.ParamByName('fecha').AsDate := Fecha.Date;
      qryCondicionesClimatologicas.Open;

      R := Ranges.Add;
      FromRow := 12; ToRow := 12; FromColumn := 7; ToColumn := 10;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.Value := 'CONDICIONES METEOROLÓGICAS';

      R := Ranges.Add;
      FromRow := 13; ToRow := 13; FromColumn := 7; ToColumn := 10;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'DIRECCIÓN';

      iRow := 14;
      while not qryCondicionesClimatologicas.EOF do
      begin
        Cells[iRow, 7].Value := qryCondicionesClimatologicas.FieldByName('sCondicion').AsString;
        Cells[iRow, 8].Value := qryCondicionesClimatologicas.FieldByName('sCantidad').AsString;
        Cells[iRow, 9].Value := qryCondicionesClimatologicas.FieldByName('sMedida').AsString;
        Cells[iRow, 10].Value := qryCondicionesClimatologicas.FieldByName('sDireccion').AsString;

        for iColumn := 7 to 10 do
        begin
          Cells[iRow, iColumn].HAlign := xlHAlignCenter;
          Cells[iRow, iColumn].VAlign := xlVAlignCenter;
          Cells[iRow, iColumn].BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
          Cells[iRow, iColumn].BorderStyle[xlBorderAll] := bsDashed;
        end;
        inc(iRow);
        qryCondicionesClimatologicas.Next;
      end;

      qryExistencias.Active := false;
      qryExistencias.SQL.Clear;
      qryExistencias.SQL.Add(' select re.sDescripcion , r.dConsumo, r.dRecibido, r.dProduccion,r.dExistenciaActual , re.sMedida from recursos r ' +
        ' inner join recursosdeexistencias re ' +
        ' 	on (re.iIdRecursoExistencia=r.iIdRecursoExistencia) ' +
        ' where dIdFecha = :fecha  ');
      qryExistencias.ParamByName('fecha').AsDate := Fecha.Date;
      qryExistencias.Open;

      R := Ranges.Add;
      FromRow := 12; ToRow := 12; FromColumn := 11; ToColumn := 23;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'EXISTENCIAS';

      R := Ranges.Add;
      FromRow := 13; ToRow := 13; FromColumn := 14; ToColumn := 15;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'CONSUMIDO';

      R := Ranges.Add;
      FromRow := 13; ToRow := 13; FromColumn := 16; ToColumn := 17;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'PRODUCIDO';

      R := Ranges.Add;
      FromRow := 13; ToRow := 13; FromColumn := 18; ToColumn := 19;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'RECIBIDO';

      R := Ranges.Add;
      FromRow := 13; ToRow := 13; FromColumn := 20; ToColumn := 21;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'ACTUAL';

      R := Ranges.Add;
      FromRow := 13; ToRow := 13; FromColumn := 22; ToColumn := 23;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.Value := 'UNIDAD';

      iRow := 14;
      while not qryExistencias.EOF do
      begin
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 11; ToColumn := 13;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDashed;
        R.Value := qryExistencias.FieldByName('sDescripcion').AsString;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 14; ToColumn := 15;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDashed;
        R.Value := qryExistencias.FieldByName('dConsumo').AsFloat;
        R.HAlign := xlHAlignRight;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 16; ToColumn := 17;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDashed;
        R.Value := qryExistencias.FieldByName('dRecibido').AsFloat;
        R.HAlign := xlHAlignRight;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 18; ToColumn := 19;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDashed;
        R.Value := qryExistencias.FieldByName('dProduccion').AsFloat;
        R.HAlign := xlHAlignRight;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 20; ToColumn := 21;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDashed;
        R.Value := qryExistencias.FieldByName('dExistenciaActual').AsFloat;
        R.HAlign := xlHAlignRight;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 22; ToColumn := 23;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDashed;
        R.Value := qryExistencias.FieldByName('sMedida').AsString;

        inc(iRow);
        qryExistencias.Next;
      end;
      inc(iRow);
      qryTodosLosFrentes.Active := false;
      qryTodosLosFrentes.SQL.Clear;
      qryTodosLosFrentes.SQL.Add('select o.sContrato, ' +
        '   o.sNumeroOrden, ' +
        '   o.sDescripcionCorta, ' +
        '   o.mDescripcion, ' +
        '   r.sIdTurno,  ' +
        '   if (r.dAvProgAnteriorOrden is null,0,r.dAvProgAnteriorOrden) as dProgAnteriorOrden, ' +
        '   if (r.dAvProgActualOrden is null,0,r.dAvProgActualOrden) as dProgActualOrden, ' +
        '   if (r.dAvRealAnteriorOrden is null,0,r.dAvRealAnteriorOrden) as dRealAnteriorOrden, ' +
        '   if (r.dAvRealActualOrden is null,0,r.dAvRealActualOrden) as dRealActualOrden ' +
        ' from ordenesdetrabajo o ' +
        '      inner join contratos c on c.sContrato = o.sContrato ' +
        '      	left join reportediario r on r.sContrato=o.sContrato and r.sNumeroOrden=o.sNumeroOrden and r.dIdFecha=:fecha ' +
        ' where c.sTipoObra <> "barco" ' +
        ' order by o.sContrato, ' +
        '          o.sNumeroOrden ');
      qryTodosLosFrentes.ParamByName('fecha').AsDate := Fecha.Date;
      qryTodosLosFrentes.Open;
      while not qryTodosLosFrentes.EOF do
      begin
        inc(iRow);
        Rows[iRow].Height := 24.75;
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 15;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDouble;
        R.FillPatternBGColorRGB := RGB(34, 189, 53);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
        R.HAlign := xlHAlignCenter;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 16; ToColumn := 17;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDouble;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := 'AVANCE PROG. ANTERIOR';
        R.HAlign := xlHAlignCenter;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 18; ToColumn := 19;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDouble;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := 'AVANCE PROG.';
        R.HAlign := xlHAlignCenter;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 20; ToColumn := 21;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDouble;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := 'AVANCE REAL. ANTERIOR';
        R.HAlign := xlHAlignCenter;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 22; ToColumn := 23;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsDouble;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := 'AVANCE REAL.';
        R.HAlign := xlHAlignCenter;


        inc(iRow);
        Rows[iRow].Height := 24.75;
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 15;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(255, 255, 0);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := qryTodosLosFrentes.FieldByName('mDescripcion').AsString;

//        R := Ranges.Add;
//        FromRow := iRow; ToRow := iRow; FromColumn := 16; ToColumn := 17;
//        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
//        R.MergeCells;
//        R.BorderColorRGB[xlBorderAll] := RGB(200, 0, 0);
//        R.BorderStyle[xlBorderAll] := bsThin;
//        R.FillPatternBGColorRGB := RGB(192, 192, 192);
//        R.FillPatternFGColorRGB := RGB(0, 0, 0);
//        R.FillPattern := xlPatternSolid;
//        R.Value := 'AVANCE PROG. ANTERIOR';
//
//        R := Ranges.Add;
//        FromRow := iRow; ToRow := iRow; FromColumn := 18; ToColumn := 19;
//        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
//        R.MergeCells;
//        R.BorderColorRGB[xlBorderAll] := RGB(200, 0, 0);
//        R.BorderStyle[xlBorderAll] := bsThin;
//        R.FillPatternBGColorRGB := RGB(192, 192, 192);
//        R.FillPatternFGColorRGB := RGB(0, 0, 0);
//        R.FillPattern := xlPatternSolid;
//        R.Value := 'AVANCE PROG.';
//
//        R := Ranges.Add;
//        FromRow := iRow; ToRow := iRow; FromColumn := 20; ToColumn := 21;
//        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
//        R.MergeCells;
//        R.BorderColorRGB[xlBorderAll] := RGB(200, 0, 0);
//        R.BorderStyle[xlBorderAll] := bsThin;
//        R.FillPatternBGColorRGB := RGB(192, 192, 192);
//        R.FillPatternFGColorRGB := RGB(0, 0, 0);
//        R.FillPattern := xlPatternSolid;
//        R.Value := 'AVANCE REAL. ANTERIOR';
//
//        R := Ranges.Add;
//        FromRow := iRow; ToRow := iRow; FromColumn := 22; ToColumn := 23;
//        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
//        R.MergeCells;
//        R.BorderColorRGB[xlBorderAll] := RGB(200, 0, 0);
//        R.BorderStyle[xlBorderAll] := bsThin;
//        R.FillPatternBGColorRGB := RGB(192, 192, 192);
//        R.FillPatternFGColorRGB := RGB(0, 0, 0);
//        R.FillPattern := xlPatternSolid;
//        R.Value := 'AVANCE REAL.';


        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 16; ToColumn := 17;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.HAlign := xlHAlignRight;
        R.Value := qryTodosLosFrentes.FieldByName('dProgAnteriorOrden').AsFloat;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 18; ToColumn := 19;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.HAlign := xlHAlignRight;
        R.Value := qryTodosLosFrentes.FieldByName('dProgActualOrden').AsFloat;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 20; ToColumn := 21;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.HAlign := xlHAlignRight;
        R.Value := qryTodosLosFrentes.FieldByName('dRealAnteriorOrden').AsFloat;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 22; ToColumn := 23;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(192, 192, 192);
        R.FillPatternFGColorRGB := RGB(0, 0, 0);
        R.FillPattern := xlPatternSolid;
        R.HAlign := xlHAlignRight;
        R.Value := qryTodosLosFrentes.FieldByName('dRealActualOrden').AsFloat;

        inc(iRow);
      {tiempos muertos}
        {R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 4;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(255, 200, 0);
        R.FillPatternFGColorRGB := RGB(80, 255, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := 'CLASIFICACION';

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 5; ToColumn := 7;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(255, 200, 0);
        R.FillPatternFGColorRGB := RGB(80, 255, 0);
        R.FillPattern := xlPatternSolid;
        R.Value := 'HORAS';

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 8; ToColumn := 23;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.BorderStyle[xlBorderAll] := bsThin;
        R.FillPatternBGColorRGB := RGB(255, 200, 0);
        R.FillPatternFGColorRGB := RGB(80, 255, 0);
        R.FillPattern := xlPatternSolid;


        inc(iRow);
        qryTiemposMuertos.Active := false;
        qryTiemposMuertos.SQL.Clear;
        qryTiemposMuertos.SQL.Add('select sTiempoEfectivo from reportediario ' +
          ' Where sContrato = :contrato And ' +
          '       dIdFecha =:fecha And ' +
          '       sNumeroOrden = :orden And ' +
          '       sIdTurno = :turno ');
        qryTiemposMuertos.ParamByName('contrato').AsString := qryTodosLosFrentes.FieldByName('sContrato').AsString;
        qryTiemposMuertos.ParamByName('orden').AsString := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
        qryTiemposMuertos.ParamByName('turno').AsString := qryTodosLosFrentes.FieldByName('sIdTurno').AsString;
        qryTiemposMuertos.ParamByName('fecha').AsDate := Fecha.Date;
        qryTiemposMuertos.Open;
        while not qryTiemposMuertos.EOF do
        begin
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 4;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := 'TIEMPO EFECTIVO';
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 5; ToColumn := 7;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := qryTiemposMuertos.FieldByName('sTiempoEfectivo').AsString;
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 8; ToColumn := 23;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := '';
          inc(iRow);
          qryTiemposMuertos.Next;
        end;

        qryTiemposMuertos.Active := false;
        qryTiemposMuertos.SQL.Clear;
        qryTiemposMuertos.SQL.Add('Select t.sTiempoMuerto, ' +
          '   t.mDescripcion, ' +
          '   c.sDescripcion, ' +
          '   c.sClasificacion ' +
          '  from jornadasdiarias t ' +
          ' INNER JOIN tiposdemovimiento c ON (t.sContrato = c.sContrato And ' +
          '   t.sIdTipoMovimiento = c.sIdTipoMovimiento) ' +
          ' Where t.sContrato = :contrato And ' +
          '   t.dIdFecha = :fecha And ' +
          '   t.sNumeroOrden = :orden And ' +
          '   t.sIdTurno = :turno And ' +
          '   t.sTipo = "Tiempo Inactivo" ' +
          ' Order By t.sHoraInicio ASC; ');
        qryTiemposMuertos.ParamByName('contrato').AsString := qryTodosLosFrentes.FieldByName('sContrato').AsString;
        qryTiemposMuertos.ParamByName('orden').AsString := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
        qryTiemposMuertos.ParamByName('turno').AsString := qryTodosLosFrentes.FieldByName('sIdTurno').AsString;
        qryTiemposMuertos.ParamByName('fecha').AsDate := Fecha.Date;
        qryTiemposMuertos.Open;
        while not qryTiemposMuertos.EOF do
        begin
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 4;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := qryTiemposMuertos.FieldByName('sDescripcion').AsString;
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 5; ToColumn := 7;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := qryTiemposMuertos.FieldByName('sTiempoMuerto').AsString;
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 8; ToColumn := 23;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := qryTiemposMuertos.FieldByName('mDescripcion').AsString;
          inc(iRow);
          qryTiemposMuertos.Next;
        end;

        {Paquetes}
        {qryPaquetes.Active := false;
        qryPaquetes.SQL.Clear;
        qryPaquetes.SQL.Add('select ' +
          '   sNumeroActividad, ' +
          '   dAvance, ' +
          '   mDescripcion ' +
          ' from bitacoradeactividades ' +
          ' where sContrato =:contrato and  sNumeroOrden=:orden and   ' +
          ' dIdFecha =:fecha and ' +
          ' lAlcance = "No" and sIdTipoMovimiento <> "N"');
        qryPaquetes.ParamByName('contrato').AsString := qryTodosLosFrentes.FieldByName('sContrato').AsString;
        qryPaquetes.ParamByName('orden').AsString := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
        qryPaquetes.ParamByName('fecha').AsDate := Fecha.Date;
        qryPaquetes.Open;
        while not qryPaquetes.EOF do
        begin
          Rows[iRow].Height := 18;
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 4;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := qryPaquetes.FieldByName('sNumeroActividad').AsString;
          R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
          R.BorderStyle[xlBorderAll] := bsThin;
          R.FillPatternBGColorRGB := RGB(192, 192, 192);
          R.FillPatternFGColorRGB := RGB(0, 0, 0);
          R.FillPattern := xlPatternSolid;


          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 5; ToColumn := 23;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := qryPaquetes.FieldByName('mDescripcion').AsString;
          R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
          R.BorderStyle[xlBorderAll] := bsThin;
          R.FillPatternBGColorRGB := RGB(192, 192, 192);
          R.FillPatternFGColorRGB := RGB(0, 0, 0);
          R.FillPattern := xlPatternSolid;

          inc(iRow);
          qryPaquetes.Next;
        end;
        {Comentarios}
        {qryPaquetes.Active := false;
        qryPaquetes.SQL.Clear;
        qryPaquetes.SQL.Add('select ' +
          '   sHoraInicio, ' +
          '   sHoraFinal, ' +
          '   mDescripcion ' +
          ' from bitacoradeactividades ' +
          ' where sContrato =:contrato and  sNumeroOrden=:orden and  (sHoraInicio = "00:00" or sHoraInicio>=:inicio ) ' +
          ' and (sHoraFinal = "00:00" or sHoraFinal<=:final ) and dIdFecha =:fecha and ' +
          ' lAlcance = "No" and sIdTipoMovimiento = "N"');
        qryPaquetes.ParamByName('contrato').AsString := qryTodosLosFrentes.FieldByName('sContrato').AsString;
        qryPaquetes.ParamByName('orden').AsString := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
        qryPaquetes.ParamByName('fecha').AsDate := Fecha.Date;
        qryPaquetes.ParamByName('inicio').AsString := hInicio.Text;
        qryPaquetes.ParamByName('final').AsString := hTermino.Text;
        qryPaquetes.Open;
        while not qryPaquetes.EOF do
        begin
          Rows[iRow].Height := 18;
          if (qryPaquetes.FieldByName('sHoraInicio').AsString = '00:00') and (qryPaquetes.FieldByName('sHoraFinal').AsString = '00:00') then
          begin
            R := Ranges.Add;
            FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 2;
            R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
            R.MergeCells;
            R.Value := qryPaquetes.FieldByName('sHoraInicio').AsString;
            R := Ranges.Add;
            FromRow := iRow; ToRow := iRow; FromColumn := 3; ToColumn := 4;
            R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
            R.MergeCells;
            R.Value := qryPaquetes.FieldByName('sHoraFinal').AsString;
          end
          else
          begin
            R := Ranges.Add;
            FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 4;
            R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
            R.MergeCells;
            R.Value := 'NOTA';
            R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
            R.BorderStyle[xlBorderAll] := bsThin;
            R.FillPatternBGColorRGB := RGB(255, 255, 255);
            R.FillPatternFGColorRGB := RGB(0, 0, 255);
            R.FillPattern := xlPatternSolid;
          end;
          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := 5; ToColumn := 23;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.Value := qryPaquetes.FieldByName('mDescripcion').AsString;
          inc(iRow);
          qryPaquetes.Next;
        end;
        qryTodosLosFrentes.Next;
      end;

      qryMovimientosEmbarcacion.Active := false;
      qryMovimientosEmbarcacion.SQL.Clear;
      qryMovimientosEmbarcacion.SQL.Add(' select movimientosdeembarcacion.* from movimientosdeembarcacion ' +
        ' inner join tiposdemovimiento  on ' +
        ' (tiposdemovimiento.sContrato = :contrato ' +
        '  And movimientosdeembarcacion.sClasificacion = tiposdemovimiento.sIdTipoMovimiento) ' +
        ' where movimientosdeembarcacion.dIdFecha = :fecha  ' +
        ' and movimientosdeembarcacion.dIdFecha = :fecha and movimientosdeembarcacion.sHoraInicio >= :hinicio and movimientosdeembarcacion.sHoraFinal<=:hfinal ' +
        ' order by movimientosdeembarcacion.sIdEmbarcacion, movimientosdeembarcacion.sHoraInicio  ');
      qryMovimientosEmbarcacion.ParamByName('fecha').AsDate := Fecha.Date;
      qryMovimientosEmbarcacion.ParamByName('hinicio').AsString := hInicio.Text;
      qryMovimientosEmbarcacion.ParamByName('hfinal').AsString := hTermino.Text;
      qryMovimientosEmbarcacion.ParamByName('contrato').AsString := global_contrato_barco;
      qryMovimientosEmbarcacion.Open;

      inc(iRow);
      FromRow := iRow; ToRow := iRow; FromColumn := 0; ToColumn := 23;
      R := Ranges.Add;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.FillPattern := xlPatternSolid;
      R.Value := 'MOVIMIENTOS DE EMBARCACION';
      inc(iRow);
      while not qryMovimientosEmbarcacion.EOF do
      begin
        Rows[iRow].Height := 18;
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 0; ToColumn := 1;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryMovimientosEmbarcacion.FieldByName('sHoraInicio').AsString;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 2; ToColumn := 3;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryMovimientosEmbarcacion.FieldByName('sHoraFinal').AsString;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 4; ToColumn := 23;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryMovimientosEmbarcacion.FieldByName('mDescripcion').AsString;
        inc(iRow);
        qryMovimientosEmbarcacion.Next;
      end;


      qryMovimientosEmbarcacion.Active := false;
      qryMovimientosEmbarcacion.SQL.Clear;
      qryMovimientosEmbarcacion.SQL.Add('Select * from movimientosdeembarcacion where dIdFecha = :fecha' +
        ' And (sTipo="DISPOSICION" Or  sTipo="ARRIBO") and sContrato =:contrato and ' +
        ' sHoraInicio >= :hinicio and sHoraFinal<=:hfinal ' +
        ' order by sHoraInicio,sHoraFinal  ');
      qryMovimientosEmbarcacion.ParamByName('fecha').AsDate := Fecha.Date;
      qryMovimientosEmbarcacion.ParamByName('hinicio').AsString := hInicio.Text;
      qryMovimientosEmbarcacion.ParamByName('hfinal').AsString := hTermino.Text;
      qryMovimientosEmbarcacion.ParamByName('contrato').AsString := global_contrato_barco;
      qryMovimientosEmbarcacion.Open;

      inc(iRow);
      FromRow := iRow; ToRow := iRow; FromColumn := 0; ToColumn := 23;
      R := Ranges.Add;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.HAlign := xlHAlignCenter;
      R.VAlign := xlVAlignCenter;
      R.FillPattern := xlPatternSolid;
      R.Value := 'ARRIBO DE EMBARCACIONES Y HELICÓPTEROS';
      inc(iRow);
      while not qryMovimientosEmbarcacion.EOF do
      begin
        Rows[iRow].Height := 18;
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 0; ToColumn := 1;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryMovimientosEmbarcacion.FieldByName('sHoraInicio').AsString;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 2; ToColumn := 3;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryMovimientosEmbarcacion.FieldByName('sHoraFinal').AsString;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 4; ToColumn := 23;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryMovimientosEmbarcacion.FieldByName('mDescripcion').AsString;
        inc(iRow);
        qryMovimientosEmbarcacion.Next;
      end;

      {Personal}
      {inc(iRow);
      R := Ranges.Add;
      FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := qryTodosLosFrentes.RecordCount + 4;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.Value := 'PERSONAL';
      R.HAlign := xlHAlignCenter;
      inc(iColumn);

      inc(iRow);
      iColumn := 5;
      qryTodosLosFrentes.First;
      while not qryTodosLosFrentes.EOF do
      begin
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := iColumn; ToColumn := iColumn;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsDotted;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
        inc(iColumn);
        Rows[iRow].Height := 30;
        qryTodosLosFrentes.Next;
      end;

      inc(iRow);
      qryPersonal.Active := false;
      qryPersonal.SQL.Clear;
      qryPersonal.SQL.Add('select sIdPersonal,sDescripcion from bitacoradepersonal ' +
        ' where dIdFecha =:fecha ' +
        ' group by sIdPersonal ' +
        ' order by sIdPersonal');
      qryPersonal.ParamByName('fecha').AsDate := Fecha.Date;
      qryPersonal.Open;
      while not qryPersonal.EOF do
      begin
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 1;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryPersonal.FieldByName('sIdPersonal').AsString;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 2; ToColumn := 4;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryPersonal.FieldByName('sDescripcion').AsString;

        Rows[iRow].Height := 17;

        iColumn := 5;
        qryTodosLosFrentes.First;
        while not qryTodosLosFrentes.EOF do
        begin

          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := iColumn; ToColumn := iColumn;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.BorderStyle[xlBorderAll] := bsThin;
          R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);

          qryPersonalxOrden.Active := false;
          qryPersonalxOrden.SQL.Clear;
          qryPersonalxOrden.SQL.Add('select if(sum(bp.dCantidad) is null,0,sum(bp.dCantidad)) as dCantidad from bitacoradepersonal bp ' +
            '	inner join bitacoradeactividades b  on ' +
            '	    	b.iIdDiario=bp.iIdDiario and b.sContrato=bp.sContrato and ' +
            '	      b.dIdFecha=bp.dIdFecha ' +
            '	where bp.dIdFecha =:fecha and bp.sIdPersonal=:personal  and sNumeroOrden=:orden ' +
            '	group by sNumeroOrden ' +
            '	order by sNumeroOrden');
          qryPersonalxOrden.ParamByName('fecha').AsDate := Fecha.Date;
          qryPersonalxOrden.ParamByName('personal').AsString := qryPersonal.FieldByName('sIdPersonal').AsString;
          qryPersonalxOrden.ParamByName('orden').AsString := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
          qryPersonalxOrden.Open;

          if qryPersonalxOrden.RecordCount > 0 then
          begin
            R := Ranges.Add;
            FromRow := iRow; ToRow := iRow; FromColumn := iColumn; ToColumn := iColumn;
            R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
            R.MergeCells;
            R.BorderStyle[xlBorderAll] := bsThin;
            R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
            R.Value := qryPersonalxOrden.FieldByName('dCantidad').AsFloat;
            R.HAlign := xlHAlignRight;
            qryPersonalxOrden.Next;
          end;
          qryTodosLosFrentes.Next;
          inc(iColumn);
        end;

        inc(iRow);
        qryPersonal.Next;
      end;


      {Equipo}
      {inc(iRow, 2);
      R := Ranges.Add;
      FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := qryTodosLosFrentes.RecordCount + 4;
      R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
      R.MergeCells;
      R.BorderStyle[xlBorderAll] := bsDouble;
      R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
      R.Value := 'EQUIPOS';
      R.HAlign := xlHAlignCenter;
      inc(iColumn);

      inc(iRow);
      iColumn := 5;
      qryTodosLosFrentes.First;
      while not qryTodosLosFrentes.EOF do
      begin
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := iColumn; ToColumn := iColumn;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsDotted;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
        inc(iColumn);
        Rows[iRow].Height := 30;
        qryTodosLosFrentes.Next;
      end;

      inc(iRow);
      qryEquipos.Active := false;
      qryEquipos.SQL.Clear;
      qryEquipos.SQL.Add('select sIdEquipo,sDescripcion from bitacoradeequipos ' +
        ' where dIdFecha =:fecha ' +
        ' group by sIdEquipo ' +
        ' order by sIdEquipo');
      qryEquipos.ParamByName('fecha').AsDate := Fecha.Date;
      qryEquipos.Open;
      while not qryEquipos.EOF do
      begin
        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 1; ToColumn := 1;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryEquipos.FieldByName('sIdEquipo').AsString;

        R := Ranges.Add;
        FromRow := iRow; ToRow := iRow; FromColumn := 2; ToColumn := 4;
        R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
        R.MergeCells;
        R.BorderStyle[xlBorderAll] := bsThin;
        R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
        R.Value := qryEquipos.FieldByName('sDescripcion').AsString;

        Rows[iRow].Height := 17;

        iColumn := 5;
        qryTodosLosFrentes.First;
        while not qryTodosLosFrentes.EOF do
        begin

          R := Ranges.Add;
          FromRow := iRow; ToRow := iRow; FromColumn := iColumn; ToColumn := iColumn;
          R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
          R.MergeCells;
          R.BorderStyle[xlBorderAll] := bsThin;
          R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);

          qryEquiposxorden.Active := false;
          qryEquiposxorden.SQL.Clear;
          qryEquiposxorden.SQL.Add('select if(sum(bp.dCantidad) is null,0,sum(bp.dCantidad)) as dCantidad from bitacoradeequipos bp ' +
            '	inner join bitacoradeactividades b  on ' +
            '	    	b.iIdDiario=bp.iIdDiario and b.sContrato=bp.sContrato and ' +
            '	      b.dIdFecha=bp.dIdFecha ' +
            '	where bp.dIdFecha =:fecha and bp.sIdEquipo=:equipo  and sNumeroOrden=:orden ' +
            '	group by sNumeroOrden ' +
            '	order by sNumeroOrden');
          qryEquiposxorden.ParamByName('fecha').AsDate := Fecha.Date;
          qryEquiposxorden.ParamByName('equipo').AsString := qryEquipos.FieldByName('sIdEquipo').AsString;
          qryEquiposxorden.ParamByName('orden').AsString := qryTodosLosFrentes.FieldByName('sNumeroOrden').AsString;
          qryEquiposxorden.Open;

          if qryEquiposxorden.RecordCount > 0 then
          begin
            R := Ranges.Add;
            FromRow := iRow; ToRow := iRow; FromColumn := iColumn; ToColumn := iColumn;
            R.AddRect(FromRow, ToRow, FromColumn, ToColumn);
            R.MergeCells;
            R.BorderStyle[xlBorderAll] := bsThin;
            R.BorderColorRGB[xlBorderAll] := RGB(0, 0, 0);
            R.Value := qryEquiposxorden.FieldByName('dCantidad').AsFloat;
            R.HAlign := xlHAlignRight;
            qryEquiposxorden.Next;
          end;
          qryTodosLosFrentes.Next;
          inc(iColumn);
        end;

        inc(iRow);
        qryEquipos.Next;
      end;
    end;
    { Save workbook data to Excel file 'out.xls'}
    {xf.SaveAs('GerencialBarco.xls');
  finally
    xf.Destroy;
  end;

  OpenFileInOSShell('GerencialBarco.xls');}
end;



procedure TfrmGerencialBarco.CrearGerencialPDF;
var
   //estas variables solo con para corres el reporte..
   dParamFecha, fechaAntes : tdate;
   sParamTurno, sTurnoBarco, sParamContrato, sParamOrden, cadena : String;

   //Varianles Gerencial
   num, fila : integer;
   dProgramadoAcum,
   dProgramadoAnt,
   dProgramadoDia,
   dRealAcum,
   dRealAnt,
   dRealDia,
   dTiempoProg,
   dTiempoReal  : double;

   lAplica  : boolean;
   sHoras   : string;
   ArrayPaquetes: array[1..10, 1..4] of string;
   iNivel   : integer;
   WbsAnterior : string;

begin
    dParamFecha := StrToDate('31/03/2012');
    sPAramTurno := 'A';
    sTurnoBarco := '';
    sParamContrato := '428231822';
    sParamOrden := 'BARCO';

    //Primero verificamos los horarios y fechas..
    lAplica := False;
    if (hTermino.Text < hInicio.Text) or (hTermino.Text = '24:00') then
       lAplica := true;

    //Datos de la configuracion
    QryConfiguracion.Active;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c.iFirmasGeneradores, c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, '+
                             'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, '+
                             'c.sDireccion1, c.sDireccion2, c.sDireccion3, c.sCiudad, c.sTelefono,  '+
                             'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, '+
                             'c2.sCodigo, c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen as bImagenPEP ,c.sMostrarAvances '+
                             'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                             'Where c2.sContrato = :Contrato');
    QryConfiguracion.ParamByName('Contrato').AsString := global_contrato_barco;
    QryConfiguracion.Open;

    //Condiciones climatologicas
    QryClimaReporte.Active := False;
    QryClimaReporte.SQL.Clear;
    QryClimaReporte.SQL.Add('select sCantidad, c.sDescripcion as sDescripcionTiempo,d.sDescripcion as sDireccion, c.sMedida '+
                        'from condicionesclimatologicas cm '+
                        'inner join condiciones c on (cm.iIdCondicion=c.iIdCondicion ) '+
                        'inner join direcciones d on (cm.iIdDireccion=d.iIdDireccion) '+
                        'where cm.sContrato=:Contrato and cm.dIdFecha=:Fecha '+
                        'Group By sDescripcionTiempo');
    QryClimaReporte.Params.ParamByName('Contrato').DataType := ftString;
    QryClimaReporte.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco;
    QryClimaReporte.Params.ParamByName('Fecha').DataType    := ftDate;
    QryClimaReporte.Params.ParamByName('Fecha').Value       := fecha.Date;
    QryClimaReporte.Open;

    rxCondiciones.EmptyTable;
    num := 1;
    if QryClimaReporte.RecordCount > 0 then
    begin
        rxCondiciones.Append;
        rxCondiciones.Post;
    end;
    while not QryClimaReporte.Eof do
    begin
        rxCondiciones.Edit;
        rxCondiciones.FieldValues['sDescripcionTiempo'+ IntToStr(num)] := QryClimaReporte.FieldValues['sDescripcionTiempo'];
        rxCondiciones.FieldValues['sCantidad'+IntToStr(num)]  := QryClimaReporte.FieldValues['sCantidad'];
        rxCondiciones.FieldValues['sDireccion'+IntToStr(num)] := QryClimaReporte.FieldValues['sDireccion'];
        rxCondiciones.FieldValues['sMedida'+IntToStr(num)]    := QryClimaReporte.FieldValues['sMedida'];
        rxCondiciones.Post;
        inc(num);
        QryClimaReporte.Next;
    end;

    //Existencias de combustible de la embarcación
    embarcacion.Active := False;
    embarcacion.SQL.Clear;
    embarcacion.SQL.Add('select re.sDescripcion as sRecurso, re.sMedida, r.dConsumo, r.dProduccion, r.dRecibido, r.dExistenciaActual, e.sDescripcion as Embarcacion '+
                        'from recursos r '+
                        'inner join recursosdeexistencias re on (r.iIdRecursoExistencia=re.iIdRecursoExistencia) '+
                        'inner join embarcaciones e on (e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion and e.sTipo = "Principal") '+
                        'where r.sContrato =:Contrato and r.dIdFecha=:Fecha ');
    embarcacion.Params.ParamByName('Contrato').DataType := ftString;
    embarcacion.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco;
    embarcacion.Params.ParamByName('Fecha').DataType    := ftDate;
    embarcacion.Params.ParamByName('Fecha').Value       := fecha.Date;
    embarcacion.Open;

    rxRecursos.EmptyTable;
    num := 1;
    if embarcacion.RecordCount > 0 then
    begin
        rxRecursos.Append;
        rxRecursos.Post;
    end;
    while not embarcacion.Eof do
    begin
        rxRecursos.Edit;
        rxRecursos.FieldValues['sRecurso'+ IntToStr(num)]          := embarcacion.FieldValues['sRecurso'];
        rxRecursos.FieldValues['sMedida'+IntToStr(num)]            := embarcacion.FieldValues['sMedida'];
        rxRecursos.FieldValues['dCantidadConsumo'+IntToStr(num)]   := embarcacion.FieldValues['dConsumo'];
        rxRecursos.FieldValues['dCantidadProducido'+IntToStr(num)] := embarcacion.FieldValues['dProduccion'] + embarcacion.FieldValues['dRecibido'];
        rxRecursos.FieldValues['dCantidadActual'+IntToStr(num)]    := embarcacion.FieldValues['dExistenciaActual'];
        rxRecursos.FieldValues['Embarcacion']                      := embarcacion.FieldValues['Embarcacion'];
        rxRecursos.Post;
        inc(num);
        Global_nombre_Embarcacion := embarcacion.FieldValues['Embarcacion'];
        embarcacion.Next;
    end;

    //Ordenes afectadas
    connection.zCommand.Active;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select b.sContrato, o.sIdFolio, c.mDescripcion, c.sTitulo, r.sIdConvenio from bitacoradeactividades b '+
                                'inner join reportediario r on (r.sContrato = b.sContrato and r.dIdFecha = b.dIdFecha and r.sNumeroOrden = b.sNumeroOrden) '+
                                'inner join contratos c on (b.sContrato = c.sContrato) '+
                                'inner join ordenesdetrabajo o on (o.sContrato = c.sContrato) '+
                                'where b.dIdFecha =:fecha group by b.sContrato');
    connection.zCommand.ParamByName('fecha').AsDate := fecha.Date;
    connection.zCommand.Open;

    rxOrdenes.EmptyTable;
    while not connection.zCommand.Eof do
    begin
        dProgramadoAcum:= 0;
        dProgramadoAnt := 0;
        dProgramadoDia := 0;
        dRealAcum      := 0;
        dRealAnt       := 0;
        dRealDia       := 0;
        dTiempoProg    := 0;
        dTiempoReal    := 0;

        //Avances Porgramados
        connection.QryBusca2.Active;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select p.dAvancePonderadoDia, p.dAvancePonderadoGlobal from avancesglobales p '+
                                     'where p.sContrato =:Contrato and p.sIdConvenio =:Convenio and p.dIdFecha =:Fecha and p.sNumeroOrden ="" ');
        connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
        connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
        connection.QryBusca2.ParamByName('Fecha').AsDate      := fecha.Date;
        connection.QryBusca2.Open;

        if connection.QryBusca2.RecordCount > 0 then
        begin
            dProgramadoAcum := connection.QryBusca2.FieldValues['dAvancePonderadoGlobal'];
            dProgramadoAnt  := connection.QryBusca2.FieldValues['dAvancePonderadoGlobal'] - connection.QryBusca2.FieldValues['dAvancePonderadoDia'];
            dProgramadoDia  := connection.QryBusca2.FieldValues['dAvancePonderadoDia'];
        end;

        //Avances Fisicos Anterior
        connection.QryBusca2.Active;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select sum(dAvance) as Avance from avancesglobalesxorden p '+
                                     'where p.sContrato =:Contrato and p.sIdConvenio =:Convenio and p.dIdFecha < :Fecha and p.sNumeroOrden ="" group by sContrato');
        connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
        connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
        connection.QryBusca2.ParamByName('Fecha').AsDate      := fecha.Date;
        connection.QryBusca2.Open;

        if connection.QryBusca2.RecordCount > 0 then
           dRealAnt := connection.QryBusca2.FieldValues['Avance'];

        //Avances Fisicos Actual
        connection.QryBusca2.Active;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select sum(dAvance) as Avance from avancesglobalesxorden p '+
                                     'where p.sContrato =:Contrato and p.sIdConvenio =:Convenio and p.dIdFecha = :Fecha and p.sNumeroOrden ="" group by sContrato');
        connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
        connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
        connection.QryBusca2.ParamByName('Fecha').AsDate      := fecha.Date;
        connection.QryBusca2.Open;

        if connection.QryBusca2.RecordCount > 0 then
           dRealDia := connection.QryBusca2.FieldValues['Avance'];

        dRealAcum := dRealDia + dRealAnt;

        //Quedan pendientes los dias reales y programados *****

        //Primero las jornadas diarias.
        if lAplica then
        begin
            //Primero Obtenemos el tiempo efectivo antes de las 00:00 hrs.
            connection.QryBusca.Active;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select j.sHoraInicio, j.sHoraFinal, j.dPersonal, j.dFrente, j.sJornada, j.mDescripcion, j.sTiempoMuerto, p.sDescripcion '+
                                        'from jornadasdiarias j '+
                                        'inner join ordenesdetrabajo o on (o.sContrato = j.sContrato and o.sNumeroOrden = j.sNumeroOrden) '+
                                        'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) '+
                                        'where j.sContrato =:Contrato and j.dIdFecha =:Fecha and j.sTipo = "Disponibilidad del Sitio"');
            connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca.ParamByName('fecha').AsDate      := fecha.Date - 1;
            connection.QryBusca.Open;
        end
        else
        begin
            //Primero Obtenemos el tiempo efectivo deepues de las 00:00 hrs.
            connection.QryBusca.Active;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select j.sHoraInicio, j.sHoraFinal, j.dPersonal, j.dFrente, j.sJornada, j.mDescripcion, j.sTiempoMuerto, p.sDescripcion '+
                                        'from jornadasdiarias j '+
                                        'inner join ordenesdetrabajo o on (o.sContrato = j.sContrato and o.sNumeroOrden = j.sNumeroOrden) '+
                                        'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) '+
                                        'where j.sContrato =:Contrato and j.dIdFecha =:Fecha and j.sTipo = "Disponibilidad del Sitio"');
            connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca.ParamByName('fecha').AsDate      := fecha.Date ;
            connection.QryBusca.Open;
        end;

        //Guardamos los datos de las disponibilidades,
        while not connection.QryBusca.Eof do
        begin
            rxOrdenes.Append;
            rxOrdenes.FieldValues['sOrden']                 := connection.zCommand.FieldValues['sIdFolio'];
            rxOrdenes.FieldValues['sDescripcionOrden']      := connection.zCommand.FieldValues['mDescripcion'];
            rxOrdenes.FieldValues['dAvanceProgramado']      := dProgramadoAcum;
            rxOrdenes.FieldValues['dAvanceProgramadoAnt']   := dProgramadoAnt;
            rxOrdenes.FieldValues['dAvanceProgramadoDiario']:= dProgramadoDia;
            rxOrdenes.FieldValues['dAvanceReal']            := dRealAcum;
            rxOrdenes.FieldValues['dAvanceAnterior']        := dRealAnt;
            rxOrdenes.FieldValues['dAvanceDiario']          := dRealDia;
            rxOrdenes.FieldValues['dTiempoProgramado']      := dTiempoProg;
            rxOrdenes.FieldValues['dTiempoReal']            := dTiempoReal;
            rxOrdenes.FieldValues['sTipoNota']              := 'Tiempos';
            rxOrdenes.FieldValues['sNumeroActividad']       := 'Tiempo Efectivo';
            rxOrdenes.FieldValues['sHoras']                 := connection.QryBusca.FieldValues['sJornada'];
            rxOrdenes.FieldValues['mDescripcion']           := connection.QryBusca.FieldValues['sDescripcion'];
            rxOrdenes.Post;
            connection.QryBusca.Next;
        end;

        //Clasificaciones Tiempos muertos y efectivos..
        connection.QryBusca2.Active;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select sContrato, sIdTipoMovimiento, sDescripcion as TipoTiempo '+
                                     'from tiposdemovimiento where sContrato =:Contrato and sClasificacion = "Tiempo Muerto"');
        connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
        connection.QryBusca2.Open;

        while not connection.QryBusca2.Eof do
        begin
            if lAplica then
            begin
                //Primero Obtenemos el tiempo efectivo antes de las 00:00 hrs.
                connection.QryBusca.Active;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('select sArea, sTiempoMuerto, mDescripcion from jornadasdiarias '+
                                            'where sContrato =:Contrato and dIdFecha =:Fecha and sTipo = "Tiempo Inactivo" and sIdTipoMovimiento =:Tipo');
                connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
                connection.QryBusca.ParamByName('fecha').AsDate      := fecha.Date - 1;
                connection.QryBusca.ParamByName('Tipo').AsString     := connection.QryBusca2.FieldValues['sIdTipoMovimiento'];
                connection.QryBusca.Open;
            end
            else
            begin
                //Primero Obtenemos el tiempo efectivo despues de las 00:00 hrs.
                connection.QryBusca.Active;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('select sArea, sTiempoMuerto, mDescripcion from jornadasdiarias '+
                                            'where sContrato =:Contrato and dIdFecha =:Fecha and sTipo = "Tiempo Inactivo" and sIdTipoMovimiento =:Tipo');
                connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
                connection.QryBusca.ParamByName('fecha').AsDate      := fecha.Date - 1;
                connection.QryBusca.ParamByName('Tipo').AsString     := connection.QryBusca2.FieldValues['sIdTipoMovimiento'];
                connection.QryBusca.Open;
            end;

            //Guardamos los datos de las afectaciones.
            while not connection.QryBusca.Eof do
            begin
                rxOrdenes.Append;
                rxOrdenes.FieldValues['sOrden']                 := connection.zCommand.FieldValues['sIdFolio'];
                rxOrdenes.FieldValues['sDescripcionOrden']      := connection.zCommand.FieldValues['mDescripcion'];
                rxOrdenes.FieldValues['dAvanceProgramado']      := dProgramadoAcum;
                rxOrdenes.FieldValues['dAvanceProgramadoAnt']   := dProgramadoAnt;
                rxOrdenes.FieldValues['dAvanceProgramadoDiario']:= dProgramadoDia;
                rxOrdenes.FieldValues['dAvanceReal']            := dRealAcum;
                rxOrdenes.FieldValues['dAvanceAnterior']        := dRealAnt;
                rxOrdenes.FieldValues['dAvanceDiario']          := dRealDia;
                rxOrdenes.FieldValues['dTiempoProgramado']      := dTiempoProg;
                rxOrdenes.FieldValues['dTiempoReal']            := dTiempoReal;
                rxOrdenes.FieldValues['sTipoNota']              := 'Tiempos';
                rxOrdenes.FieldValues['sNumeroActividad']       := connection.QryBusca2.FieldValues['TipoTiempo'];
                rxOrdenes.FieldValues['sHoras']                 := connection.QryBusca.FieldValues['sTiempoMuerto'];
                rxOrdenes.FieldValues['mDescripcion']           := connection.QryBusca.FieldValues['mDescripcion'];
                rxOrdenes.Post;
                connection.QryBusca.Next;
            end;
            connection.QryBusca2.Next;
        end;

        //Ahora las partidas reportadas
        connection.QryBusca2.Active;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select b.sContrato, o.sWbsAnterior, b.sWbs, o.iNivel, o.sNumeroOrden, b.sNumeroActividad, b.dAvanceAnterior, b.dAvanceActual, b.mDescripcion '+
                                     'from bitacoradeactividades b '+
                                     'inner join actividadesxorden o on (o.sContrato = b.sContrato and o.sIdConvenio =:Convenio and b.sWbs = o.sWbs and b.sNumeroActividad = o.sNumeroActividad and o.sTipoActividad = "Actividad") '+
                                     'where b.sContrato =:Contrato and b.dIdFecha =:Fecha and b.sIdTipoMovimiento = "E" ');
        connection.QryBusca2.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
        connection.QryBusca2.ParamByName('Convenio').AsString := connection.zCommand.FieldValues['sIdConvenio'];
        connection.QryBusca2.ParamByName('Fecha').AsDate      := fecha.Date;
        connection.QryBusca2.Open;

        while not connection.QryBusca2.Eof do
        begin
            num := 1;
            iNivel      := connection.QryBusca2.FieldValues['iNivel'] - 1;
            WbsAnterior := connection.QryBusca2.FieldValues['sWbsAnterior'];
            ArrayPaquetes[num,1] := connection.QryBusca2.FieldValues['sNumeroActividad'];
            ArrayPaquetes[num,2] := connection.QryBusca2.FieldValues['mDescripcion'];
            ArrayPaquetes[num,3] := 'Actividad';
            ArrayPaquetes[num,4] := FloatToStr(connection.QryBusca2.FieldValues['dAvanceActual']);
            inc(num);

            while iNivel > 0 do
            begin
                //Consultamos los paquetes que le corresponden a cada partida.
                connection.QryBusca.Active;
                connection.QryBusca.SQL.Clear;
                connection.QryBusca.SQL.Add('select sWbsAnterior, sNumeroActividad, mDescripcion '+
                                            'from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
                connection.QryBusca.ParamByName('Contrato').AsString  := connection.zCommand.FieldValues['sContrato'];
                connection.QryBusca.ParamByName('Convenio').AsString  := connection.zCommand.FieldValues['sIdConvenio'];
                connection.QryBusca.ParamByName('Orden').AsString     := connection.QryBusca2.FieldValues['sNumeroOrden'];
                connection.QryBusca.ParamByName('Wbs').AsString       := WbsAnterior;
                connection.QryBusca.Open;

               while not connection.QryBusca.Eof do
               begin
                    WbsAnterior := connection.QryBusca.FieldValues['sWbsAnterior'];
                    ArrayPaquetes[num,1] := connection.QryBusca.FieldValues['sNumeroActividad'];
                    ArrayPaquetes[num,2] := connection.QryBusca.FieldValues['mDescripcion'];
                    ArrayPaquetes[num,3] := 'Paquete';
                    ArrayPaquetes[num,4] := FloatToStr(0);
                    inc(num);
                    connection.QryBusca.Next;
                end;
                dec(iNivel);
            end;

            dec(num);
            while num > 0 do
            begin
                //Insertamos las partidas y paquetes..
                rxOrdenes.Append;
                rxOrdenes.FieldValues['sOrden']                 := connection.zCommand.FieldValues['sIdFolio'];
                rxOrdenes.FieldValues['sDescripcionOrden']      := connection.zCommand.FieldValues['mDescripcion'];
                rxOrdenes.FieldValues['dAvanceProgramado']      := dProgramadoAcum;
                rxOrdenes.FieldValues['dAvanceProgramadoAnt']   := dProgramadoAnt;
                rxOrdenes.FieldValues['dAvanceProgramadoDiario']:= dProgramadoDia;
                rxOrdenes.FieldValues['dAvanceReal']            := dRealAcum;
                rxOrdenes.FieldValues['dAvanceAnterior']        := dRealAnt;
                rxOrdenes.FieldValues['dAvanceDiario']          := dRealDia;
                rxOrdenes.FieldValues['dTiempoProgramado']      := dTiempoProg;
                rxOrdenes.FieldValues['dTiempoReal']            := dTiempoReal;
                rxOrdenes.FieldValues['sTipoNota']              := 'Partidas';
                rxOrdenes.FieldValues['sTipoActividad']         := ArrayPaquetes[num, 3];
                rxOrdenes.FieldValues['sNumeroActividad']       := ArrayPaquetes[num, 1];
                rxOrdenes.FieldValues['mDescripcion']           := ArrayPaquetes[num, 2];
                rxOrdenes.FieldValues['dAvancePartida']         := ArrayPaquetes[num, 4];
                rxOrdenes.Post;
                dec(num);
            end;

            //Ahora inseratamos todas las notas del gerencial por partida..
            connection.QryBusca.Active;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select sHoraInicio, sHoraFinal, mDescripcion, sConceptoGerencial '+
                                        'from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha '+
                                        'and sWbs =:Wbs and sNumeroOrden =:Orden and sIdTipoMovimiento = "G"');
            connection.QryBusca.ParamByName('Contrato').AsString := connection.zCommand.FieldValues['sContrato'];
            connection.QryBusca.ParamByName('Fecha').AsDate      := fecha.Date;
            connection.QryBusca.ParamByName('Orden').AsString    := connection.QryBusca2.FieldValues['sNumeroOrden'];
            connection.QryBusca.ParamByName('Wbs').AsString      := connection.QryBusca2.FieldValues['sWbs'];
            connection.QryBusca.Open;

            while not connection.QryBusca.Eof do
            begin
                rxOrdenes.Append;
                rxOrdenes.FieldValues['sOrden']                 := connection.zCommand.FieldValues['sIdFolio'];
                rxOrdenes.FieldValues['sDescripcionOrden']      := connection.zCommand.FieldValues['mDescripcion'];
                rxOrdenes.FieldValues['dAvanceProgramado']      := dProgramadoAcum;
                rxOrdenes.FieldValues['dAvanceProgramadoAnt']   := dProgramadoAnt;
                rxOrdenes.FieldValues['dAvanceProgramadoDiario']:= dProgramadoDia;
                rxOrdenes.FieldValues['dAvanceReal']            := dRealAcum;
                rxOrdenes.FieldValues['dAvanceAnterior']        := dRealAnt;
                rxOrdenes.FieldValues['dAvanceDiario']          := dRealDia;
                rxOrdenes.FieldValues['dTiempoProgramado']      := dTiempoProg;
                rxOrdenes.FieldValues['dTiempoReal']            := dTiempoReal;
                rxOrdenes.FieldValues['sTipoNota']              := 'Notas';
                rxOrdenes.FieldValues['sTipoActividad']         := 'Notas';
                rxOrdenes.FieldValues['sNumeroActividad']       := connection.QryBusca.FieldValues['sHoraInicio'] +' - '+ connection.QryBusca.FieldValues['sHoraFinal'];;
                rxOrdenes.FieldValues['mDescripcion']           := connection.QryBusca.FieldValues['mDescripcion'];
                rxOrdenes.FieldValues['dAvancePartida']         := 0;
                rxOrdenes.Post;
                connection.QryBusca.Next;
            end;

            connection.QryBusca2.Next;
        end;

        connection.zCommand.Next;
    end;      

   //Cargar el query de arribos
  qryArribos.Active := False;
  qryArribos.SQL.Clear;
  qryArribos.SQL.Add('Select m.sContrato, m.dIdFecha, m.sHoraInicio, m.sHoraFinal, mDescripcion, ' +
    'e.sIdTipoEmbarcacion from movimientosdeembarcacion m ' +
    'inner join embarcaciones e On ( m.sContrato=e.sContrato And m.sIdEmbarcacion=e.sIdEmbarcacion) ' +
    'Where m.dIdFecha= :fecha And m.sContrato= :contrato And m.sTipo = "ARRIBO" and sIdTipoEmbarcacion <> "AE" ' + sTurnoBarco + 'order by sHoraInicio');
  qryArribos.ParamByName('Contrato').DataType := ftString;
  qryArribos.ParamByName('Contrato').Value := sParamContrato;
  qryArribos.ParamByName('Fecha').DataType := ftDate;
  qryArribos.ParamByName('Fecha').Value := dParamFecha;
  qryArribos.Open;

    //Cargar el query de arribos
  qryArribosVuelo.Active := False;
  qryArribosVuelo.SQL.Clear;
  qryArribosVuelo.SQL.Add('Select m.sContrato, m.dIdFecha, m.sHoraInicio, m.sHoraFinal, mDescripcion, ' +
    'e.sIdTipoEmbarcacion from movimientosdeembarcacion m ' +
    'inner join embarcaciones e On ( m.sContrato=e.sContrato And m.sIdEmbarcacion=e.sIdEmbarcacion) ' +
    'Where m.dIdFecha= :fecha And m.sContrato= :contrato And m.sTipo = "ARRIBO" and sIdTipoEmbarcacion = "AE" ' + sTurnoBarco + 'order by sHoraInicio');
  qryArribosVuelo.ParamByName('Contrato').DataType := ftString;
  qryArribosVuelo.ParamByName('Contrato').Value := sParamContrato;
  qryArribosVuelo.ParamByName('Fecha').DataType := ftDate;
  qryArribosVuelo.ParamByName('Fecha').Value := dParamFecha;
  qryArribosVuelo.Open;      

  //Cargar el query de Notas Generales
  qryNotasGenerales.Active := False;
  qryNotasGenerales.Sql.Clear;
  qryNotasGenerales.Sql.Add('select mDescripcion from bitacoradeactividades ' +
    'where sContrato=:Contrato and dIdFecha=:Fecha and sIdTipoMovimiento="B" and sIdTurno =:Turno ');
  qryNotasGenerales.ParamByName('Contrato').DataType := ftString;
  qryNotasGenerales.ParamByName('Contrato').Value := sParamContrato;
  qryNotasGenerales.ParamByName('Turno').DataType := ftString;
  qryNotasGenerales.ParamByName('Turno').Value := sParamTurno;
  qryNotasGenerales.ParamByName('Fecha').DataType := ftDate;
  qryNotasGenerales.ParamByName('Fecha').Value := dParamFecha;
  qryNotasGenerales.Open;

    //Cargar el query de Notas Generales

    //Vigencia de personal de tripulacion..
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ');
  connection.zCommand.Open;

  Tripulacion.Active := False;
  Tripulacion.SQL.Clear;
  Tripulacion.SQL.Add(
    ' SELECT c.sIdCategoria,td.dIdFecha, c.sDescripcion as sCategoria , t.sDescripcion, Sum(td.iNacionales) as iNacionales,' +
    ' Sum(td.iExtranjeros) as iExtranjeros FROM tripulaciondiaria td INNER JOIN tripulacion t ON ' +
    ' (t.sContrato = td.sContrato And t.sIdTripulacion = td.sIdTripulacion and t.dFechaVigencia =:FechaVig ) ' +
    ' INNER JOIN categorias c ON (t.sIdCategoria = c.sIdCategoria and c.dFechaVigencia =:FechaVig ) ' +
    ' Where td.sContrato =:Contrato And td.dIdFecha = :Fecha and td.sIdTurno =:Turno ' +
    ' Group By t.sIdTripulacion Order By c.sIdCategoria, t.sIdTripulacion ');
  Tripulacion.ParamByName('Contrato').DataType := ftString;
  Tripulacion.ParamByName('Contrato').Value := sParamContrato;
  Tripulacion.ParamByName('Turno').DataType := ftString;
  Tripulacion.ParamByName('Turno').Value := sParamTurno;
  Tripulacion.ParamByName('Fecha').DataType := ftDate;
  Tripulacion.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  Tripulacion.ParamByName('FechaVig').DataType := ftDate;
  Tripulacion.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  Tripulacion.Open;

    //Cargo totalizado
  Totales.Active := False;
  Totales.Sql.Clear;
  Totales.Sql.Add('select t.sDescripcion, sum(td.iNacionales) as nacionales, t.sMiGrupoResumen from tripulaciondiaria td ' +
    'inner join categorias t On (t.sIdCategoria=td.sIdCategoria and t.dFechaVigencia =:FechaVig) ' +
    'where td.sContrato=:Contrato and dIdFecha=:Fecha and sIdTurno =:Turno group by t.sIdCategoria order by t.sIdCategoria, t.sDescripcion');
  Totales.ParamByName('Contrato').DataType := ftString;
  Totales.ParamByName('Contrato').Value := sParamContrato;
  Totales.ParamByName('Turno').DataType := ftString;
  Totales.ParamByName('Turno').Value := sParamTurno;
  Totales.ParamByName('Fecha').DataType := ftDate;
  Totales.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  Totales.ParamByName('FechaVig').DataType := ftDate;
  Totales.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  Totales.Open;

    rReporte.PreviewOptions.MDIChild := True ;
    rReporte.PreviewOptions.Modal := False ;
    //rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
    rReporte.PreviewOptions.ShowCaptions := False ;
    rReporte.Previewoptions.ZoomMode := zmPageWidth ;
    rReporte.LoadFromFile (global_files + GLobal_MiReporte+'_GerencialOrdenes.fr3') ;
    rReporte.ShowReport() ;
    if not FileExists(global_files + GLobal_MiReporte+'_GerencialOrdenes.fr3') then
        showmessage('El archivo de reporte '+GLobal_MiReporte+'_GerencialOrdenes.fr3 no existe, notifique al administrador del sistema');
end;

procedure TfrmGerencialBarco.FormShow(Sender: TObject);
begin
    Fecha.Date := date;
end;

procedure TfrmGerencialBarco.rReporteGetValue(const VarName: string;
  var Value: Variant);
begin
   //Reporte Gerencial
   If CompareText(VarName, 'HORA_INICIO') = 0 then
       Value := hInicio.Text ;
   If CompareText(VarName, 'HORA_FINAL') = 0 then
       Value := hTermino.Text ;
   If CompareText(VarName, 'FECHA_REPORTE') = 0 then
       Value := fecha.Date ;
   If CompareText(VarName, 'FECHA_REPORTECONS') = 0 then
       Value := global_fecha_reportecons ;
   If CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
       Value := global_dias_por_transcurrir ;
   If CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
       Value := global_dias_transcurridos ;
   If CompareText(VarName, 'EMBARCACION') = 0 then
       Value := global_nombre_Embarcacion ;
end;

end.

