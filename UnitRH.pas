unit UnitRH;

interface

  {$region 'Uses'}

    uses
      UnitMetodos,

      Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
      Dialogs, DB, DateUtils, StrUtils, UnitExcel, ComObj, frm_connection, Math,
      ZDataset, ZAbstractRODataset, ZAbstractDataset, ZSqlProcessor, DBClient,
      Midas, MidasLib ;

  {$endregion}

  {$region 'Metodos'}

    //Plantilla de importacion de empleados y retorna el path del archivo de excel.
    function PlantillaEmpleados( Path : TDirectoryPath ):TExcelFilePath;
    //Importacion de empleados, retorna el numero de empleados importados.
    function ImportarEmpleados( Path : TExcelFilePath ):Integer;

  {$endregion}

implementation

  function PlantillaEmpleados( Path : TDirectoryPath ):TExcelFilePath;
  const
    TIPOS_PERSONAL : array[ 0..1 ] of string = ( 'Tierra', 'A Bordo' );
    GENEROS_PERSONAL : array[ 0..1 ] of string = ( 'Masculino', 'Femenino' );
    TIPOS_CREDITO : array[ 0..2 ] of string = ( 'Fijo', 'Salario', 'SalMinZona' );
    ESTADOS_CIVILES_PERSONAL : array[ 0..5 ] of string = ( 'Casado', 'Soltero', 'Viudo', 'Divorciado', 'Concuvinato', 'Separado' );
    ENCABEZADOS : array[ 0..8 ] of string = ( 'EMPLEADO', 'CATEGORIA', 'DATOS BANCARIOS Y SUELDOS', 'INFORMACION PERSONAL', 'DATOS PROFESIONALES', 'DOCUMENTACION / FOLIOS', 'DETALLE DEL CONTRATO', 'EN CASO DE EMERGENCIA LLAMAR', 'NOMINA' );
    HOJAS : array[ 0..15 ] of string = (
      'ORGANIZACIONES',
      'NACIONALIDADES',
      'DEPARTAMENTOS',
      'ESTATUS',
      'REGISTROS_PATRONALES',
      'PUESTOS',
      'BANCOS',
      'TIPOS_PERSONAL',
      'GENEROS',
      'ESTADOS_CIVILES',
      'ESCUELAS',
      'PROFESIONES',
      'HORARIOS_LABORES',
      'DIAS_DESCANSO',
      'PERIODOS_PAGO',
      'NOMINA'
    );

    TURNO_ORGANIZACIONES : integer = 0;
    TURNO_NACIONALIDADES : integer = 1;
    TURNO_DEPARTAMENTOS : integer = 2;
    TURNO_ESTATUS : integer = 3;
    TURNO_REGISTROS_PATRONALES : integer = 4;
    TURNO_PUESTOS : integer = 5;
    TURNO_BANCOS : integer = 6;
    TURNO_TIPOS_PERSONAL : integer = 7;
    TURNO_GENEROS : integer = 8;
    TURNO_ESTADOS_CIVILES : integer = 9;

    {$region 'Columnas Excel Encabezados'}

    COL_EMPRESA : string = 'A';
    COL_ID_EMPLEADO : string = 'B';
    COL_NOMBRE : string = 'C';
    COL_APELLIDO_PATERNO : string = 'D';
    COL_APELLIDO_MATERNO : string = 'E';
    COL_CALLE : string = 'F';
    COL_NUMERO : string = 'G';
    COL_CODIGO_POSTAL : string = 'H';
    COL_COLONIA : string = 'I';
    COL_LOCALIDAD : string = 'J';
    COL_CIUDAD : string = 'K';
    COL_ESTADO : string = 'L';
    COL_PAIS : string = 'M';
    COL_TEL_CASA : string = 'N';
    COL_TEL_MOVIL : string = 'O';
    COL_DEPARTAMENTO : string = 'P';
    COL_ESTATUS : string = 'Q';
    COL_REGISTRO_PATRONAL : string = 'R';
    COL_TIPO_PERSONAL : string = 'S';
    COL_PUESTO : string = 'T';
    COL_BANCO : string = 'U';
    COL_CUENTA : string = 'V';
    COL_CLABE : string = 'W';
    COL_SUCURSAL : string = 'X';
    COL_SD : string = 'Y';
    COL_SDI : string = 'Z';
    COL_SUELTO_PACTADO : string = 'AA';
    COL_SEXO : string = 'AB';
    COL_ESTADO_CIVIL : string = 'AC';
    COL_FECHA_NACIMIENTO : string = 'AD';
    COL_ESCUELA : string = 'AE';
    COL_PROFESION : string = 'AF';
    COL_LUGAR_DE_NACIMIENTO : string = 'AG';
    COL_CURP : string = 'AH';
    COL_NSS : string = 'AI';
    COL_CARTILLA_MILITAR : string = 'AJ';
    COL_CEDULA_PROFESIONAL : string = 'AK';
    COL_EMAIL : string = 'AL';
    COL_RFC : string = 'AM';
    COL_INFONAVIT : string = 'AN';
    COL_HORARIO_DE_LABORES : string = 'AO';
    COL_DIA_DE_DESCANSO : string = 'AP';
    COL_PERIODOS_DE_PAGO : string = 'AQ';
    COL_NOMBRE_EMERGENCIA : string = 'AR';
    COL_PARENTESCO : string = 'AS';
    COL_TIPO_SANGRE : string = 'AT';
    COL_TELEFONO : string = 'AU';
    COL_NO_INFONAVIT : string = 'AV';
    COL_TIPO_CREDITO : string = 'AW';
    COL_APLICACION : string = 'AX';
    COL_TERMINO : string = 'AY';
    COL_IMPORTE_FACT : string = 'AZ';

    {$endregion}

    {$region 'Sentencias SQL'}

    SQL_ORGANIZACIONES : TSQLStatement = (
      '/*Organizaciones*/ '+
      'select '+
        '0 as Padre, '+
        '0 as IdOrganizacion, '+
        '"*" as CodigoOrganizacion, '+
        '"<<TODAS LAS EMPRESAS>>" as NombreOrganizacion '+
      'from nuc_organizacion  '+
      'union '+
      'select '+
        'Padre, '+
        'IdOrganizacion, '+
        'CodigoOrganizacion, '+
        'NombreOrganizacion '+
      'from nuc_organizacion '+
      'where '+
        'Padre = :padre and '+
        'Activo = "Si"; '
    );

    SQL_NACIONALIDADES : TSQLStatement = (
      '/*Nacionalidades*/ '+
      'select '+
        'n.iIdNacionalidad as IdNacionalidad, '+
        'concat( n.sDescripcion, " - ", n.sNacionalidad ) as Nacionalidad '+
      'from rh_nacionalidades as n ; '
    );

    SQL_DEPARTAMENTOS : TSQLStatement = (
      '/*Departamentos*/ '+
      'select '+
       'd.IdDepartamento, '+
       'concat( d.TituloDepartamento, " - ", d.CodigoDepartamento ) as Departamento '+
      'from nuc_departamento d '+
      'where '+
        'd.IdPadre <> -5 and d.Activo = "Si" '+
      'order by '+
        'd.TituloDepartamento ; '
    );

    SQL_ESTATUS : TSQLStatement = (
      '/*Estatus*/ '+
      'select '+
        's.iIdEstatus as IdEstatus, '+
        's.sDescripcion as Estatus '+
      'from rh_estatusempleados as s ; '
    );

    SQL_ENTIDADES_EDUCATIVAS : TSQLStatement = (
      '/*Escuelas*/'+
      'select '+
        'ed.id_entidadeseducativas as IdEscuela, '+
        'ed.sNombre as Escuela '+
      'from rh_entidadeseducativas as ed ;'
    );

    SQL_PROFESIONES : TSQLStatement = (
      'select '+
        'p.iIdProfesiones as IdProfesion, '+
        'p.sDescripcion as Profesion '+
      'from rh_profesiones as p;'
    );

    SQL_HORARIOS_LABORALES : TSQLStatement = (
      'select '+
      'hl.iIdhorario as IdHorario, '+
      'hl.sDescripcion as Horario '+
      'from rh_horariolaboral as hl ;'
    );

    SQL_DIAS_DESCANSO : TSQLStatement = (
      'select '+
        'dd.iIdDiasdescanso as IdDescanso, '+
        'dd.sDescripcion as Descanso '+
      'from rh_diasdescanso as dd ;'
    );

    SQL_PERIODOS_PAGO : TSQLStatement = (
      'select '+
        'pp.iIdPeriodo as IdPeriodo, '+
        'pp.sDescripcion as Periodo '+
      'from rh_periodopagos as pp ;'
    );

    SQL_REGISTROS_PATRONALES : TSQLStatement = (
      '/*Registros patronales*/ '+
      'select '+
        'rp.iIdRegistroPatronal as IdRegistroPatronal, '+
        'rp.sRegistroPatronal as RegistroPatronal '+
      'from registrospatronales as rp '+
      'order by rp.sRazonSocial; '
    );

    SQL_PUESTOS : TSQLStatement = (
      '/*Puestos*/ '+
      'select '+
        'nc.idcargo as IdCargo, '+
        'concat( trim( nc.codigocargo ), " - ", '+
                'nc.titulocargo, " - ", '+
                'tn.Descripcion ) as Cargo '+
      ' '+
      'from nuc_cargo as nc '+
      'inner join nom_tiponomina tn '+
        'on ( nc.IdTipoNomina = tn.IdTipoNomina ) ; '
    );

    SQL_BANCOS : TSQLStatement = (
      '/*Bancos*/ '+
      'select '+
        'b.IdBanco as IdBanco, '+
        'b.nombre as Banco '+
      'from con_bancosnomina as b ; '
    );

    {$endregion}

  var
    ZOrganizaciones,
    ZNacionalidades,
    ZDepartamentos,
    ZEstatus,
    ZRegistrosPatronales,
    ZPuestos,
    ZBancos,
    ZEscuelas,
    ZProfesiones,
    ZHorarios,
    ZDiasDescanso,
    ZPeriodosPago : TZReadOnlyQuery;

    CDTiposPersonal,
    CDGeneros,
    CDEstadosCiviles,
    CDTipoCredito : TClientDataSet;

    ItemTitulo,
    ItemEncabezado,
    ItemArray : Integer;

    Excel,
    Book,
    Sheet,
    Range : TExcelInstance;

    Rango : TExcelRangeAlias;

    Fila : TExcelFila;
    Columna : TExcelColumna;

    Columnas : array[ 0..8 ] of array of string;

    {Funciones anonimas}
    {$region 'Funciones'}

    procedure CrearComboExcel( var FRango : TExcelInstance; FRangoLista : TExcelRangeAlias );
    begin

      FRango.Validation.Delete;
      FRango.Validation.Add( xlValidateList, xlValidAlertStop, xlBetween, '=' + FRangoLista );
      FRango.Validation.IgnoreBlank := True;
      FRango.Validation.InCellDropdown := True;
      FRango.Validation.InputTitle := EmptyStr;
      FRango.Validation.ErrorTitle := EmptyStr;
      FRango.Validation.InputMessage := EmptyStr;
      FRango.Validation.ErrorMessage := EmptyStr;
      FRango.Validation.ShowInput := False;
      FRango.Validation.ShowError := False;

    end;

    function ZDatasetToListExcel( var FDataset : TZReadOnlyQuery; FField : TFieldName ; var FSheet : TExcelInstance; FColumn : TExcelColAlias; FStartRow : TExcelRow = 1 ):TExcelRangeAlias;
    var
      FFila : TExcelFila;
    begin

      try
        FFila := TExcelFila.Create( FStartRow );
        FDataset.First;

        FFila.Old();

        while not FDataset.Eof do
        begin
          FSheet.Range[ FColumn + FFila.StrFila ].Value := FDataset.FieldByName( FField ).AsString;
          FDataset.Next;
          FFila.SigFila();
        end;

        FDataset.First;
        Result := Format( '$%s$%s:$%s$%s', [ FColumn, IntToStr( FFila.OldRow ), FColumn, FFila.StrFila( -1 ) ] );

      finally
        FFila.Free;
      end;

    end;

    function CDatasetToListExcel( var FDataset : TClientDataSet; FField : TFieldName ; var FSheet : TExcelInstance; FColumn : TExcelColAlias; FStartRow : TExcelRow = 1 ):TExcelRangeAlias;
    var
      FFila : TExcelFila;
    begin

      try
        FFila := TExcelFila.Create( FStartRow );
        FDataset.First;

        FFila.Old();

        while not FDataset.Eof do
        begin
          FSheet.Range[ FColumn + FFila.StrFila ].Value := FDataset.FieldByName( FField ).AsString;
          FDataset.Next;
          FFila.SigFila();
        end;

        FDataset.First;
        Result := Format( '$%s$%s:$%s$%s', [ FColumn, IntToStr( FFila.OldRow ), FColumn, FFila.StrFila( -1 ) ] );

      finally
        FFila.Free;
      end;

    end;


    {$endregion}

  begin
    try
      try

        {Inicializar Dataset's}
        {$region 'Inicializacion'}

        InicializarZDataSet( ZOrganizaciones );
        InicializarZDataSet( ZNacionalidades );
        InicializarZDataSet( ZDepartamentos );
        InicializarZDataSet( ZEstatus );
        InicializarZDataSet( ZRegistrosPatronales );
        InicializarZDataSet( ZPuestos );
        InicializarZDataSet( ZBancos );
        InicializarZDataSet( ZEscuelas );
        InicializarZDataSet( ZProfesiones );
        InicializarZDataSet( ZHorarios );
        InicializarZDataSet( ZDiasDescanso );
        InicializarZDataSet( ZPeriodosPago );

        CDTiposPersonal := TClientDataSet.Create( nil );
        CDTiposPersonal.FieldDefs.Add( 'TipoPersonal', ftString, 255, True );
        CDTiposPersonal.CreateDataSet;
        CDTiposPersonal.Open;

        CDGeneros := TClientDataSet.Create( nil );
        CDGeneros.FieldDefs.Add( 'Genero', ftString, 255, True );
        CDGeneros.CreateDataSet;
        CDGeneros.Open;

        CDEstadosCiviles := TClientDataSet.Create( nil );
        CDEstadosCiviles.FieldDefs.Add( 'EstadoCivil', ftString, 255, True );
        CDEstadosCiviles.CreateDataSet;
        CDEstadosCiviles.Open;

        CDTipoCredito := TClientDataSet.Create( nil );
        CDTipoCredito.FieldDefs.Add( 'TipoCredito', ftString, 255, True );
        CDTipoCredito.CreateDataSet;
        CDTipoCredito.Open;

        for ItemArray := 0 to Length( TIPOS_PERSONAL ) - 1 do
        begin
          CDTiposPersonal.Append;
          CDTiposPersonal.FieldByName( 'TipoPersonal' ).AsString := TIPOS_PERSONAL[ ItemArray ];
          CDTiposPersonal.Post;
        end;

        for ItemArray := 0 to Length( GENEROS_PERSONAL ) - 1 do
        begin
          CDGeneros.Append;
          CDGeneros.FieldByName( 'Genero' ).AsString := GENEROS_PERSONAL[ ItemArray ];
          CDGeneros.Post;
        end;

        for ItemArray := 0 to Length( ESTADOS_CIVILES_PERSONAL ) - 1 do
        begin
          CDEstadosCiviles.Append;
          CDEstadosCiviles.FieldByName( 'EstadoCivil' ).AsString := ESTADOS_CIVILES_PERSONAL[ ItemArray ];
          CDEstadosCiviles.Post;
        end;

        for ItemArray := 0 to Length( TIPOS_CREDITO ) - 1 do
        begin
          CDTipoCredito.Append;
          CDTipoCredito.FieldByName( 'TipoCredito' ).AsString := TIPOS_CREDITO[ ItemArray ];
          CDTipoCredito.Post;
        end;

        {$endregion}

        {Posibles excepciones}
        {$region 'Excepciones'}

        ZOrganizaciones.SQL.Text := SQL_ORGANIZACIONES;
        ZOrganizaciones.ParamByName( 'padre' ).AsInteger := -5;
        ZOrganizaciones.Open;

        if ZOrganizaciones.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón organizaciones registradas.' );

        ZNacionalidades.SQL.Text := SQL_NACIONALIDADES;
        ZNacionalidades.Open;

        if ZNacionalidades.RecordCount = 0 then
          raise Exception.Create( 'No hay nacionalidades registradas.' );


        ZDepartamentos.SQL.Text := SQL_DEPARTAMENTOS;
        ZDepartamentos.Open;

        if ZDepartamentos.RecordCount = 0 then
          raise Exception.Create( 'No hay departamentos registrados.' );

        ZEstatus.SQL.Text := SQL_ESTATUS;
        ZEstatus.Open;

        if ZEstatus.RecordCount = 0 then
          raise Exception.Create( 'No hay estatus registrados.' );

        ZRegistrosPatronales.SQL.Text := SQL_REGISTROS_PATRONALES;
        ZRegistrosPatronales.Open;

        if ZRegistrosPatronales.RecordCount = 0 then
          raise Exception.Create( 'No se encontraron registros patronales.' );

        ZPuestos.SQL.Text :=  SQL_PUESTOS;
        ZPuestos.Open;

        if ZPuestos.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón puestos/cargos registrados.' );

        ZBancos.SQL.Text := SQL_BANCOS;
        ZBancos.Open;

        if ZBancos.RecordCount = 0 then
          raise Exception.Create( 'No hay bancos registrados.' );

        ZEscuelas.SQL.Text := SQL_ENTIDADES_EDUCATIVAS;
        ZEscuelas.Open;

        if ZEscuelas.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón entidades educativas registradas.' );

        ZProfesiones.SQL.Text := SQL_PROFESIONES;
        ZProfesiones.Open;

        if ZProfesiones.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado profesiones registradas.' );

        ZHorarios.SQL.Text := SQL_HORARIOS_LABORALES;
        ZHorarios.Open;

        if ZHorarios.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado horarios laborales registrados.' );

        ZDiasDescanso.SQL.Text := SQL_DIAS_DESCANSO;
        ZDiasDescanso.Open;

        if ZDiasDescanso.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado dias de descanso registrados.' );

        ZPeriodosPago.SQL.Text := SQL_PERIODOS_PAGO;
        ZPeriodosPago.Open;

        if ZPeriodosPago.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado periodos de pago registrados.' );

        {$endregion}

        {Inicializar Excel}
        {$region 'Excel'}

        if not InicializarExcel( Excel, Book, Sheet, False ) then
          raise Exception.Create( 'No se puede conectar a Microsoft Excel, favor de verificar su instalación.' );

        Sheet.Name := 'EMPLEADOS';

        Fila := TExcelFila.Create;
        Columna := TExcelColumna.Create;

        for ItemArray := 0 to Length( HOJAS ) - 1 do
        begin
          Sheet := Book.Sheets.Add;
          Sheet.Name := HOJAS[ ItemArray ];        
        end;

        Sheet := Book.Sheets[ 'EMPLEADOS' ];
        Sheet.Select;

        {$endregion}

        {Inicializar Encabezados}
        {$region 'Encabezados'}

        SetLength( Columnas[0], 16 );
        Columnas[ 0, 0 ] := 'EMPRESA';
        Columnas[ 0, 1 ] := 'ID EMPLEADO';
        Columnas[ 0, 2 ] := 'NOMBRE';
        Columnas[ 0, 3 ] := 'APELLIDO PATERNO';
        Columnas[ 0, 4 ] := 'APELLIDO MATERNO';
        Columnas[ 0, 5 ] := 'CALLE';
        Columnas[ 0, 6 ] := 'NUMERO';
        Columnas[ 0, 7 ] := 'CODIGO POSTAL';
        Columnas[ 0, 8 ] := 'COLONIA';
        Columnas[ 0, 9 ] := 'LOCALIDAD';
        Columnas[ 0, 10 ] := 'CIUDAD';
        Columnas[ 0, 11 ] := 'ESTADO';
        Columnas[ 0, 12 ] := 'PAIS / NACIONALIDAD';
        Columnas[ 0, 13 ] := 'TEL. CASA';
        Columnas[ 0, 14 ] := 'TEL. MOVIL';
        Columnas[ 0, 15 ] := 'DEPARTAMENTO';

        SetLength( Columnas[ 1 ], 4 );
        Columnas[ 1, 0 ] := 'ESTATUS';
        Columnas[ 1, 1 ] := 'REGISTRO PATRONAL';
        Columnas[ 1, 2 ] := 'TIPO PERSONAL';
        Columnas[ 1, 3 ] := 'PUESTO';

        SetLength( Columnas[ 2 ], 7 );
        Columnas[ 2, 0 ] := 'BANCO';
        Columnas[ 2, 1 ] := 'CUENTA';
        Columnas[ 2, 2 ] := 'CLABE';
        Columnas[ 2, 3 ] := 'SUCURSAL';
        Columnas[ 2, 4 ] := 'SD';
        Columnas[ 2, 5 ] := 'SDI';
        Columnas[ 2, 6 ] := 'SUELTO PACTADO';

        SetLength( Columnas[ 3 ], 3 );
        Columnas[ 3, 0 ] := 'SEXO';
        Columnas[ 3, 1 ] := 'ESTADO CIVIL';
        Columnas[ 3, 2 ] := 'FECHA NACIMIENTO';

        SetLength( Columnas[ 4 ], 2 );
        Columnas[ 4, 0 ] := 'ESCUELA';
        Columnas[ 4, 1 ] := 'PROFESION';

        SetLength( Columnas[ 5 ], 8 );
        Columnas[ 5, 0 ] := 'LUGAR DE NACIMIENTO';
        Columnas[ 5, 1 ] := 'CURP';
        Columnas[ 5, 2 ] := 'NSS';
        Columnas[ 5, 3 ] := 'CARTILLA MILITAR';
        Columnas[ 5, 4 ] := 'CEDULA PROFESIONAL';
        Columnas[ 5, 5 ] := 'EMAIL';
        Columnas[ 5, 6 ] := 'RFC';
        Columnas[ 5, 7 ] := 'INFONAVIT';

        SetLength( Columnas[ 6 ], 3 );
        Columnas[ 6, 0 ] := 'HORARIO DE LABORES';
        Columnas[ 6, 1 ] := 'DIA DE DESCANSO';
        Columnas[ 6, 2 ] := 'PERIODOS DE PAGO';

        SetLength( Columnas[ 7 ], 4 );
        Columnas[ 7, 0 ] := 'NOMBRE EMERGENCIA';
        Columnas[ 7, 1 ] := 'PARENTESCO';
        Columnas[ 7, 2 ] := 'TIPO SANGRE';
        Columnas[ 7, 3 ] := 'TELEFONO';

        SetLength( Columnas[ 8 ], 5 );
        Columnas[ 8, 0 ] := 'NO. INFONAVIT';
        Columnas[ 8, 1 ] := 'TIPO CREDITO';
        Columnas[ 8, 2 ] := 'APLICACIÓN';
        Columnas[ 8, 3 ] := 'TERMINO';
        Columnas[ 8, 4 ] := 'IMPORTE/FACT';


        {$endregion}

        {Pintar Encabezado}
        {$region 'Encabezados'}

        ItemTitulo := 0;
        while ItemTitulo <= Length( ENCABEZADOS ) - 1 do
        begin

          Columna.Old();
          ItemEncabezado := 0;
          while ItemEncabezado <= Length( Columnas[ ItemTitulo ] ) - 1 do
          begin

            Excel.Range[ Columna.Columna() + '2' ].Value := Columnas[ ItemTitulo, ItemEncabezado ];
            Excel.Columns[ Columna.Columna() + ':' + Columna.Columna() ].EntireColumn.AutoFit;
            Columna.SigColumna();

            Inc( ItemEncabezado );

          end;
          Range := Excel.Range[ ColumnaNombre( Columna.OldColumn ) + '2:' + Columna._Columna_( -1 ) + '2' ];
          Range.Interior.ColorIndex := 37;
          Range.VerticalAlignment := xlCenter;
          Range.HorizontalAlignment := xlCenter;
          Range.Font.Bold := True;
          Range.Borders.Color := clBlack;

          Range := Excel.Range[ ColumnaNombre( Columna.OldColumn ) + '1:' + Columna._Columna_( -1 ) + '1' ];
          Range.MergeCells := True;
          Range.Value := ENCABEZADOS[ ItemTitulo ];
          Range.Interior.ColorIndex := 33;
          Range.VerticalAlignment := xlCenter;
          Range.HorizontalAlignment := xlCenter;
          Range.Borders.Color := clBlack;

          Inc( ItemTitulo );

        end;

        {$endregion}

        {Inicializar los droptown"s}
        {$region 'droptown"s'}

        for ItemArray := 0 to Length( HOJAS ) - 1 do
        begin

          Sheet := Book.Sheets[ HOJAS[ ItemArray ] ];

          case ItemArray of
            0: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZOrganizaciones, 'NombreOrganizacion', Sheet, COL_EMPRESA );
            1: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZNacionalidades, 'Nacionalidad', Sheet, COL_PAIS );
            2: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZDepartamentos, 'Departamento', Sheet, COL_DEPARTAMENTO );
            3: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZEstatus, 'Estatus', Sheet, COL_ESTATUS );
            4: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZRegistrosPatronales, 'RegistroPatronal', Sheet, COL_REGISTRO_PATRONAL );
            5: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZPuestos, 'Cargo', Sheet, COL_PUESTO );
            6: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZBancos, 'Banco', Sheet, COL_BANCO );
            7: Rango := HOJAS[ ItemArray ] + '!' + CDatasetToListExcel( CDTiposPersonal, 'TipoPersonal', Sheet, COL_TIPO_PERSONAL );
            8: Rango := HOJAS[ ItemArray ] + '!' + CDatasetToListExcel( CDGeneros, 'Genero', Sheet, COL_SEXO );
            9: Rango := HOJAS[ ItemArray ] + '!' + CDatasetToListExcel( CDEstadosCiviles, 'EstadoCivil', Sheet, COL_ESTADO_CIVIL );
            10: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZEscuelas, 'Escuela', Sheet, COL_ESCUELA );
            11: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZProfesiones, 'Profesion', Sheet, COL_PROFESION );
            12: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZHorarios, 'Horario', Sheet, COL_HORARIO_DE_LABORES );
            13: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZDiasDescanso, 'Descanso', Sheet, COL_DIA_DE_DESCANSO );
            14: Rango := HOJAS[ ItemArray ] + '!' + ZDatasetToListExcel( ZPeriodosPago, 'Periodo', Sheet, COL_PERIODOS_DE_PAGO );
            15: Rango := HOJAS[ ItemArray ] + '!' + CDatasetToListExcel( CDTipoCredito, 'TipoCredito', Sheet, COL_TIPO_CREDITO );
          end;

          case ItemArray of
            0: Range := Excel.Range[ COL_EMPRESA + '3:' + COL_EMPRESA + '1000' ];
            1: Range := Excel.Range[ COL_PAIS + '3:' + COL_PAIS + '1000' ];
            2: Range := Excel.Range[ COL_DEPARTAMENTO + '3:' + COL_DEPARTAMENTO + '1000' ];
            3: Range := Excel.Range[ COL_ESTATUS + '3:' + COL_ESTATUS + '1000' ];
            4: Range := Excel.Range[ COL_REGISTRO_PATRONAL + '3:' + COL_REGISTRO_PATRONAL + '1000' ];
            5: Range := Excel.Range[ COL_PUESTO + '3:' + COL_PUESTO + '1000' ];
            6: Range := Excel.Range[ COL_BANCO + '3:' + COL_BANCO + '1000' ];
            7: Range := Excel.Range[ COL_TIPO_PERSONAL + '3:' + COL_TIPO_PERSONAL + '1000' ];
            8: Range := Excel.Range[ COL_SEXO + '3:' + COL_SEXO + '1000' ];
            9: Range := Excel.Range[ COL_ESTADO_CIVIL + '3:' + COL_ESTADO_CIVIL + '1000' ];
            10: Range := Excel.Range[ COL_ESCUELA + '3:' + COL_ESCUELA + '1000' ];
            11: Range := Excel.Range[ COL_PROFESION + '3:' + COL_PROFESION + '1000'];
            12: Range := Excel.Range[ COL_HORARIO_DE_LABORES + '3:' + COL_HORARIO_DE_LABORES + '1000'];
            13: Range := Excel.Range[ COL_DIA_DE_DESCANSO + '3:' + COL_DIA_DE_DESCANSO + '1000'];
            14: Range := Excel.Range[ COL_PERIODOS_DE_PAGO + '3:' + COL_PERIODOS_DE_PAGO + '1000'];
            15: Range := Excel.Range[ COL_TIPO_CREDITO + '3:' + COL_TIPO_CREDITO + '1000' ];
          end;

          Sheet.Visible := False;
          CrearComboExcel( Range, Rango );
        end;

        {$endregion}

        Excel.Visible := True;
        TaskMessageDlg( 'Listo', 'La plantilla esta lista.', mtInformation, [ mbOK ], 0 );
      except
        on e:Exception do
          TaskMessageDlg( 'Detalles al generar la plantilla.', e.Message, mtInformation, [ mbOK ], 0 );
      end;
    finally

      {Liberar memoria}
      {$region 'Liberar Objetos'}

      ZOrganizaciones.Free;
      ZNacionalidades.Free;
      ZDepartamentos.Free;
      ZEstatus.Free;
      ZRegistrosPatronales.Free;
      ZPuestos.Free;
      ZBancos.Free;
      ZEscuelas.Free;
      ZProfesiones.Free;
      ZHorarios.Free;
      ZDiasDescanso.Free;
      ZPeriodosPago.Free;

      CDTiposPersonal.Free;
      CDGeneros.Free;
      CDEstadosCiviles.Free;
      CDTipoCredito.Free;

      Fila.Free;
      Columna.Free;

      {$endregion}

    end;
  
  end;

  function ImportarEmpleados( Path : TExcelFilePath ):Integer;
  const
    TIPOS_PERSONAL : array[ 0..1 ] of string = ( 'Tierra', 'A Bordo' );
    GENEROS_PERSONAL : array[ 0..1 ] of string = ( 'Masculino', 'Femenino' );
    TIPOS_CREDITO : array[ 0..2 ] of string = ( 'Fijo', 'Salario', 'SalMinZona' );
    ESTADOS_CIVILES_PERSONAL : array[ 0..5 ] of string = ( 'Casado', 'Soltero', 'Viudo', 'Divorciado', 'Concuvinato', 'Separado' );
    ENCABEZADOS : array[ 0..8 ] of string = ( 'EMPLEADO', 'CATEGORIA', 'DATOS BANCARIOS Y SUELDOS', 'INFORMACION PERSONAL', 'DATOS PROFESIONALES', 'DOCUMENTACION / FOLIOS', 'DETALLE DEL CONTRATO', 'EN CASO DE EMERGENCIA LLAMAR', 'NOMINA' );
    HOJAS : array[ 0..15 ] of string = (
      'ORGANIZACIONES',
      'NACIONALIDADES',
      'DEPARTAMENTOS',
      'ESTATUS',
      'REGISTROS_PATRONALES',
      'PUESTOS',
      'BANCOS',
      'TIPOS_PERSONAL',
      'GENEROS',
      'ESTADOS_CIVILES',
      'ESCUELAS',
      'PROFESIONES',
      'HORARIOS_LABORES',
      'DIAS_DESCANSO',
      'PERIODOS_PAGO',
      'NOMINA'
    );

    TURNO_ORGANIZACIONES : integer = 0;
    TURNO_NACIONALIDADES : integer = 1;
    TURNO_DEPARTAMENTOS : integer = 2;
    TURNO_ESTATUS : integer = 3;
    TURNO_REGISTROS_PATRONALES : integer = 4;
    TURNO_PUESTOS : integer = 5;
    TURNO_BANCOS : integer = 6;
    TURNO_TIPOS_PERSONAL : integer = 7;
    TURNO_GENEROS : integer = 8;
    TURNO_ESTADOS_CIVILES : integer = 9;

    {$region 'Columnas Excel Encabezados'}

    COL_EMPRESA : string = 'A';
    COL_ID_EMPLEADO : string = 'B';
    COL_NOMBRE : string = 'C';
    COL_APELLIDO_PATERNO : string = 'D';
    COL_APELLIDO_MATERNO : string = 'E';
    COL_CALLE : string = 'F';
    COL_NUMERO : string = 'G';
    COL_CODIGO_POSTAL : string = 'H';
    COL_COLONIA : string = 'I';
    COL_LOCALIDAD : string = 'J';
    COL_CIUDAD : string = 'K';
    COL_ESTADO : string = 'L';
    COL_PAIS : string = 'M';
    COL_TEL_CASA : string = 'N';
    COL_TEL_MOVIL : string = 'O';
    COL_DEPARTAMENTO : string = 'P';
    COL_ESTATUS : string = 'Q';
    COL_REGISTRO_PATRONAL : string = 'R';
    COL_TIPO_PERSONAL : string = 'S';
    COL_PUESTO : string = 'T';
    COL_BANCO : string = 'U';
    COL_CUENTA : string = 'V';
    COL_CLABE : string = 'W';
    COL_SUCURSAL : string = 'X';
    COL_SD : string = 'Y';
    COL_SDI : string = 'Z';
    COL_SUELTO_PACTADO : string = 'AA';
    COL_SEXO : string = 'AB';
    COL_ESTADO_CIVIL : string = 'AC';
    COL_FECHA_NACIMIENTO : string = 'AD';
    COL_ESCUELA : string = 'AE';
    COL_PROFESION : string = 'AF';
    COL_LUGAR_DE_NACIMIENTO : string = 'AG';
    COL_CURP : string = 'AH';
    COL_NSS : string = 'AI';
    COL_CARTILLA_MILITAR : string = 'AJ';
    COL_CEDULA_PROFESIONAL : string = 'AK';
    COL_EMAIL : string = 'AL';
    COL_RFC : string = 'AM';
    COL_INFONAVIT : string = 'AN';
    COL_HORARIO_DE_LABORES : string = 'AO';
    COL_DIA_DE_DESCANSO : string = 'AP';
    COL_PERIODOS_DE_PAGO : string = 'AQ';
    COL_NOMBRE_EMERGENCIA : string = 'AR';
    COL_PARENTESCO : string = 'AS';
    COL_TIPO_SANGRE : string = 'AT';
    COL_TELEFONO : string = 'AU';
    COL_NO_INFONAVIT : string = 'AV';
    COL_TIPO_CREDITO : string = 'AW';
    COL_APLICACION : string = 'AX';
    COL_TERMINO : string = 'AY';
    COL_IMPORTE_FACT : string = 'AZ';

    {$endregion}

    {$region 'Sentencias SQL'}

    SQL_ORGANIZACIONES : TSQLStatement = (
      '/*Organizaciones*/ '+
      'select '+
        '0 as Padre, '+
        '0 as IdOrganizacion, '+
        '"*" as CodigoOrganizacion, '+
        '"<<TODAS LAS EMPRESAS>>" as NombreOrganizacion '+
      'from nuc_organizacion  '+
      'union '+
      'select '+
        'Padre, '+
        'IdOrganizacion, '+
        'CodigoOrganizacion, '+
        'NombreOrganizacion '+
      'from nuc_organizacion '+
      'where '+
        'Padre = :padre and '+
        'Activo = "Si"; '
    );

    SQL_NACIONALIDADES : TSQLStatement = (
      '/*Nacionalidades*/ '+
      'select '+
        'n.iIdNacionalidad as IdNacionalidad, '+
        'concat( n.sDescripcion, " - ", n.sNacionalidad ) as Nacionalidad, '+
        'n.sDescripcion as Pais '+
      'from rh_nacionalidades as n ; '
    );

    SQL_DEPARTAMENTOS : TSQLStatement = (
      '/*Departamentos*/ '+
      'select '+
       'd.IdDepartamento, '+
       'concat( d.TituloDepartamento, " - ", d.CodigoDepartamento ) as Departamento '+
      'from nuc_departamento d '+
      'where '+
        'd.IdPadre <> -5 and d.Activo = "Si" '+
      'order by '+
        'd.TituloDepartamento ; '
    );

    SQL_ESTATUS : TSQLStatement = (
      '/*Estatus*/ '+
      'select '+
        's.iIdEstatus as IdEstatus, '+
        's.sDescripcion as Estatus '+
      'from rh_estatusempleados as s ; '
    );

    SQL_REGISTROS_PATRONALES : TSQLStatement = (
      '/*Registros patronales*/ '+
      'select '+
        'rp.iIdRegistroPatronal as IdRegistroPatronal, '+
        'rp.sRegistroPatronal as RegistroPatronal '+
      'from registrospatronales as rp '+
      'order by rp.sRazonSocial; '
    );

    SQL_ENTIDADES_EDUCATIVAS : TSQLStatement = (
      '/*Escuelas*/'+
      'select '+
        'ed.id_entidadeseducativas as IdEscuela, '+
        'ed.sNombre as Escuela '+
      'from rh_entidadeseducativas as ed ;'
    );

    SQL_PROFESIONES : TSQLStatement = (
      'select '+
        'p.iIdProfesiones as IdProfesion, '+
        'p.sDescripcion as Profesion '+
      'from rh_profesiones as p;'
    );

    SQL_HORARIOS_LABORALES : TSQLStatement = (
      'select '+
      'hl.iIdhorario as IdHorario, '+
      'hl.sDescripcion as Horario '+
      'from rh_horariolaboral as hl ;'
    );

    SQL_DIAS_DESCANSO : TSQLStatement = (
      'select '+
        'dd.iIdDiasdescanso as IdDiasDescanso, '+
        'dd.sDescripcion as Descanso '+
      'from rh_diasdescanso as dd ;'
    );

    SQL_PERIODOS_PAGO : TSQLStatement = (
      'select '+
        'pp.iIdPeriodo as IdPeriodo, '+
        'pp.sDescripcion as Periodo '+
      'from rh_periodopagos as pp ;'
    );

    SQL_PUESTOS : TSQLStatement = (
      '/*Puestos*/ '+
      'select '+
        'nc.idcargo as IdCargo, '+
        'concat( trim( nc.codigocargo ), " - ", '+
                'nc.titulocargo, " - ", '+
                'tn.Descripcion ) as Cargo '+
      ' '+
      'from nuc_cargo as nc '+
      'inner join nom_tiponomina tn '+
        'on ( nc.IdTipoNomina = tn.IdTipoNomina ) ; '
    );

    SQL_BANCOS : TSQLStatement = (
      '/*Bancos*/ '+
      'select '+
        'b.sIdBanco as IdBanco, '+
        'b.sDescripcion as Banco '+
      'from rh_bancos as b ; '
    );

    {$endregion}

    {$region 'Sentencias SQL Inserccion'}

    SQL_INSERT_EMPLEADOS : string = (
      '/*Insertar en "Empleados"*/ '+
      'insert into empleados( '+
        'idorganizacion, sIdEmpleado, '+
        'sNombreCompleto, sApellidoPaterno, '+
        'sApellidoMaterno, sCalle, '+
        'sNumero, sCp, '+
        'sColonia, sLocalidad, '+
        'sCiudad, sEstado, '+
        'iIdNacionalidad, sTelefono, '+
        'sTelefonoCelular, iddepartamento, '+
        'iIdEstatus, iIdRegistroPatronal, '+
        'sStatusTipoPersonal, iId_Puesto, '+
        'sIdBanco, sCuenta, sCuentaInterbancaria, '+
        'sSucursal, '+
        'dSueldoDiario, dSueldoIntegrado, '+
        'dSueldo, lSexo, '+
        'sEstadoCivil, dFechaNacimiento, '+
        'id_entidadeseducativas, iIdProfesiones, '+
        'sLugarNacimiento, sCurp, '+
        'sNoCreditoInfonavit, sCartilla, '+
        'sCedulaProfesional, sEMail, '+
        'sRfc, sImss, '+
        'iIdhorario, iIdDiasdescanso, '+
        'iIdPeriodo, '+
        'sNombre_Emergencia, sParentesco_Emergencia, '+
        'sTipoSangre, sNumero_Emergencia '+
      ') values ( '+
        ':idorganizacion, :sIdEmpleado, '+
        ':sNombreCompleto, :sApellidoPaterno, '+
        ':sApellidoMaterno, :sCalle, '+
        ':sNumero, :sCp, '+
        ':sColonia, :sLocalidad, '+
        ':sCiudad, :sEstado, '+
        ':iIdNacionalidad, :sTelefono, '+
        ':sTelefonoCelular, :iddepartamento, '+
        ':iIdEstatus, :iIdRegistroPatronal, '+
        ':sStatusTipoPersonal, :iId_Puesto, '+
        ':sIdBanco, :sCuenta, :sCuentaInterbancaria, '+
        ':sSucursal, '+
        ':dSueldoDiario, :dSueldoIntegrado, '+
        ':dSueldo, :lSexo, '+
        ':sEstadoCivil, :dFechaNacimiento, '+
        ':id_entidadeseducativas, :iIdProfesiones, '+
        ':sLugarNacimiento, :sCurp, '+
        ':sNoCreditoInfonavit, :sCartilla, '+
        ':sCedulaProfesional, :sEMail, '+
        ':sRfc, :sImss, '+
        ':iIdhorario, :iIdDiasdescanso, '+
        ':iIdPeriodo, '+
        ':sNombre_Emergencia, :sParentesco_Emergencia, '+
        ':sTipoSangre, :sNumero_Emergencia '+
      '); '
    );

    SQL_INSERT_NUC_EMPLEADOS : TSQLStatement = (
      '/*Insertar en "nuc_personal"*/ '+
      'insert into nuc_personal( '+
        'idpersonal, '+
        'codigopersonal, '+
        'Nombres, '+
        'APaterno, '+
        'AMaterno, '+
        'Calle, '+
        'Numero, '+
        'CP, '+
        'Colonia, '+
        'Ciudad, '+
        'Estado, '+
        'nacionalidad, '+
        'telefono, '+
        'iddepartamento, '+
        'idcargo, '+
        'sexo, '+
        'EstadoCivil, '+
        'fechanacimiento, '+
        'curp, '+
        'numerosegurosocial, '+
        'correo, '+
        'rfc, '+
        'contacto, '+
        'gruposanguineo, '+
        'Infonavit,	 '+
        'NumeroInfonavit, '+
        'tAplicacionInfonavit, '+
        'AplicacionInfonavit, '+
        'TerminoInfonavit, '+
        'FactorInfonavit, '+
        'fechaalta, '+
        'Pais, '+
        'telefonocontacto '+
      ') values ( '+
        '( select ( max( n.idpersonal ) + 1 ) from nuc_personal as n ), '+
        ':codigopersonal, '+
        ':Nombres, '+
        ':APaterno, '+
        ':AMaterno, '+
        ':Calle, '+
        ':Numero, '+
        ':CP, '+
        ':Colonia, '+
        ':Ciudad, '+
        ':Estado, '+
        ':nacionalidad, '+
        ':telefono, '+
        ':iddepartamento, '+
        ':idcargo, '+
        ':sexo, '+
        ':EstadoCivil, '+
        ':fechanacimiento, '+
        ':curp, '+
        ':numerosegurosocial, '+
        ':correo, '+
        ':rfc, '+
        ':contacto, '+
        ':gruposanguineo, '+
        ':Infonavit, '+
        ':NumeroInfonavit, '+
        ':tAplicacionInfonavit, '+
        ':AplicacionInfonavit, '+
        ':TerminoInfonavit, '+
        ':FactorInfonavit, '+
        'now(), '+
        ':Pais, '+
        ':telefonocontacto '+
      '); '
    );

    {$endregion}

    {$region 'Funciones'}

    function AbrirPlantilla():TExcelFilePath;
    var
      Dialogo : TOpenDialog;
    begin
      try
        Dialogo := TOpenDialog.Create( nil );
        Dialogo.Filter := 'Libros de Excel|*.xlsx|Libros de Excel|*.xls';
        Dialogo.Title := 'Seleccionar plantilla de importación';
        Dialogo.FilterIndex := 1;
        if Dialogo.Execute() then
          Result := Dialogo.FileName
        else
          Result := EmptyStr;
        
      finally
        Dialogo.Free;

      end;
    end;

    {$endregion}

  var

    {Variables}
    {$region 'Variables'}

    ZOrganizaciones,
    ZNacionalidades,
    ZDepartamentos,
    ZEstatus,
    ZRegistrosPatronales,
    ZPuestos,
    ZBancos,
    ZEscuelas,
    ZProfesiones,
    ZHorarios,
    ZDiasDescanso,
    ZPeriodosPago : TZReadOnlyQuery;

    ZNucPersonal,
    ZEmpleados : TZQuery;

    CDTiposPersonal,
    CDGeneros,
    CDEstadosCiviles,
    CDTipoCredito : TClientDataSet;

    Excel,
    Book,
    Sheet,
    Range : TExcelInstance;

    Rango : TExcelRangeAlias;

    ColItem,
    ItemArray : Integer;

    Fila : TExcelFila;
    Columna : TExcelColumna;

    ListaErroneos,
    ListaVacios : TStringList;

    ExcelCreado,
    ItemLocalizado : Boolean;

    Archivo : TExcelFilePath;

    Columnas : TStringList;

    {$endregion}

  begin
    try
      try

        {Obtener direccion de archivo}
        {$region 'Archivo'}

        Archivo := AbrirPlantilla();
        if Length( Trim( Archivo ) ) = 0 then
          raise Exception.Create( 'No se especificó un archivo de importación' );

        {$endregion}

        {Inicializar Dataset's}
        {$region 'Inicializacion'}

        ExcelCreado := False;

        InicializarZDataSet( ZOrganizaciones );
        InicializarZDataSet( ZNacionalidades );
        InicializarZDataSet( ZDepartamentos );
        InicializarZDataSet( ZEstatus );
        InicializarZDataSet( ZRegistrosPatronales );
        InicializarZDataSet( ZPuestos );
        InicializarZDataSet( ZBancos );
        InicializarZDataSet( ZEscuelas );
        InicializarZDataSet( ZProfesiones );
        InicializarZDataSet( ZHorarios );
        InicializarZDataSet( ZDiasDescanso );
        InicializarZDataSet( ZPeriodosPago );
        InicializarZDataSet( ZNucPersonal );
        InicializarZDataSet( ZEmpleados );

        CDTiposPersonal := TClientDataSet.Create( nil );
        CDTiposPersonal.FieldDefs.Add( 'TipoPersonal', ftString, 255, True );
        CDTiposPersonal.CreateDataSet;
        CDTiposPersonal.Open;

        CDGeneros := TClientDataSet.Create( nil );
        CDGeneros.FieldDefs.Add( 'Genero', ftString, 255, True );
        CDGeneros.CreateDataSet;
        CDGeneros.Open;

        CDEstadosCiviles := TClientDataSet.Create( nil );
        CDEstadosCiviles.FieldDefs.Add( 'EstadoCivil', ftString, 255, True );
        CDEstadosCiviles.CreateDataSet;
        CDEstadosCiviles.Open;

        CDTipoCredito := TClientDataSet.Create( nil );
        CDTipoCredito.FieldDefs.Add( 'TipoCredito', ftString, 255, True );
        CDTipoCredito.CreateDataSet;
        CDTipoCredito.Open;

        for ItemArray := 0 to Length( TIPOS_PERSONAL ) - 1 do
        begin
          CDTiposPersonal.Append;
          CDTiposPersonal.FieldByName( 'TipoPersonal' ).AsString := TIPOS_PERSONAL[ ItemArray ];
          CDTiposPersonal.Post;
        end;

        for ItemArray := 0 to Length( GENEROS_PERSONAL ) - 1 do
        begin
          CDGeneros.Append;
          CDGeneros.FieldByName( 'Genero' ).AsString := GENEROS_PERSONAL[ ItemArray ];
          CDGeneros.Post;
        end;

        for ItemArray := 0 to Length( ESTADOS_CIVILES_PERSONAL ) - 1 do
        begin
          CDEstadosCiviles.Append;
          CDEstadosCiviles.FieldByName( 'EstadoCivil' ).AsString := ESTADOS_CIVILES_PERSONAL[ ItemArray ];
          CDEstadosCiviles.Post;
        end;

        for ItemArray := 0 to Length( TIPOS_CREDITO ) - 1 do
        begin
          CDTipoCredito.Append;
          CDTipoCredito.FieldByName( 'TipoCredito' ).AsString := TIPOS_CREDITO[ ItemArray ];
          CDTipoCredito.Post;
        end;

        {$endregion}

        {Posibles excepciones}
        {$region 'Excepciones'}

        ZOrganizaciones.SQL.Text := SQL_ORGANIZACIONES;
        ZOrganizaciones.ParamByName( 'padre' ).AsInteger := -5;
        ZOrganizaciones.Open;

        if ZOrganizaciones.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón organizaciones registradas.' );

        ZNacionalidades.SQL.Text := SQL_NACIONALIDADES;
        ZNacionalidades.Open;

        if ZNacionalidades.RecordCount = 0 then
          raise Exception.Create( 'No hay nacionalidades registradas.' );

        ZDepartamentos.SQL.Text := SQL_DEPARTAMENTOS;
        ZDepartamentos.Open;

        if ZDepartamentos.RecordCount = 0 then
          raise Exception.Create( 'No hay departamentos registrados.' );

        ZEstatus.SQL.Text := SQL_ESTATUS;
        ZEstatus.Open;

        if ZEstatus.RecordCount = 0 then
          raise Exception.Create( 'No hay estatus registrados.' );

        ZRegistrosPatronales.SQL.Text := SQL_REGISTROS_PATRONALES;
        ZRegistrosPatronales.Open;

        if ZRegistrosPatronales.RecordCount = 0 then
          raise Exception.Create( 'No se encontraron registros patronales.' );

        ZPuestos.SQL.Text :=  SQL_PUESTOS;
        ZPuestos.Open;

        if ZPuestos.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón puestos/cargos registrados.' );

        ZBancos.SQL.Text := SQL_BANCOS;
        ZBancos.Open;

        if ZBancos.RecordCount = 0 then
          raise Exception.Create( 'No hay bancos registrados.' );

        ZEscuelas.SQL.Text := SQL_ENTIDADES_EDUCATIVAS;
        ZEscuelas.Open;

        if ZEscuelas.RecordCount = 0 then
          raise Exception.Create( 'No se encontrarón entidades educativas registradas.' );

        ZProfesiones.SQL.Text := SQL_PROFESIONES;
        ZProfesiones.Open;

        if ZProfesiones.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado profesiones registradas.' );

        ZHorarios.SQL.Text := SQL_HORARIOS_LABORALES;
        ZHorarios.Open;

        if ZHorarios.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado horarios laborales registrados.' );

        ZDiasDescanso.SQL.Text := SQL_DIAS_DESCANSO;
        ZDiasDescanso.Open;

        if ZDiasDescanso.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado dias de descanso registrados.' );

        ZPeriodosPago.SQL.Text := SQL_PERIODOS_PAGO;
        ZPeriodosPago.Open;

        if ZPeriodosPago.RecordCount = 0 then
          raise Exception.Create( 'No se han encontrado periodos de pago registrados.' );

        {$endregion}

        {Inicializar Excel}
        {$region 'Excel'}

        if not InicializarExcel( Excel, Book, Sheet, False ) then
          raise Exception.Create( 'No se puede conectar a Microsoft Excel, favor de verificar su instalación.' );

        ExcelCreado := True;

        Fila := TExcelFila.Create( 3 );
        Columna := TExcelColumna.Create;

        Book.Close();
        Excel.Workbooks.Open( Archivo );
        Book := Excel.WorkBooks[ 1 ];

        if not SheetExists( Book, 'EMPLEADOS' ) then
          raise Exception.Create( 'No se encontro la hoja "EMPLEADOS", favor de verificar su plantilla' );

        Sheet := Book.Sheets[ 'EMPLEADOS' ];
        Sheet.Select;

        {$endregion}

        {Validaciones}
        {$region 'Validar datos'}

        ListaVacios := TStringList.Create();
        ListaVacios.Clear;

        ListaErroneos := TStringList.Create();
        ListaErroneos.Clear;
        {Validacion campos vacios}
        Fila.First( 2 );

        while Length( Trim( Excel.Range[ COL_EMPRESA + Fila.StrFila ].Value ) ) > 0 do
        begin

          for ItemArray := 0 to Length( HOJAS ) - 1 do
          begin

            if not ItemArray in [ 10, 11, 13 ] then
            begin
              case ItemArray of
                0: ItemLocalizado := ZOrganizaciones.Locate( 'NombreOrganizacion', Excel.Range[ COL_EMPRESA + Fila.StrFila ].Value, [] ) ;
                1: ItemLocalizado := ZNacionalidades.Locate( 'Nacionalidad', Excel.Range[ COL_PAIS + Fila.StrFila ].Value, [] ) ;
                2: ItemLocalizado := ZDepartamentos.Locate( 'Departamento', Excel.Range[ COL_DEPARTAMENTO + Fila.StrFila ].Value, [] ) ;
                3: ItemLocalizado := ZEstatus.Locate( 'Estatus', Excel.Range[ COL_ESTATUS + Fila.StrFila ].Value, [] ) ;
                4: ItemLocalizado := ZRegistrosPatronales.Locate( 'RegistroPatronal', Excel.Range[ COL_REGISTRO_PATRONAL + Fila.StrFila ].Value, [] ) ;
                5: ItemLocalizado := ZPuestos.Locate( 'Cargo', Excel.Range[ COL_PUESTO + Fila.StrFila ].Value, [] ) ;
                6: ItemLocalizado := ZBancos.Locate( 'Banco', Excel.Range[ COL_BANCO + Fila.StrFila ].Value, [] ) ;
                7: ItemLocalizado := CDTiposPersonal.Locate( 'TipoPersonal', Excel.Range[ COL_TIPO_PERSONAL + Fila.StrFila ].Value, [] ) ;
                8: ItemLocalizado := CDGeneros.Locate( 'Genero', Excel.Range[ COL_SEXO + Fila.StrFila ].Value, [] ) ;
                9: ItemLocalizado := CDEstadosCiviles.Locate( 'EstadoCivil', Excel.Range[ COL_ESTADO_CIVIL + Fila.StrFila ].Value, [] ) ;
                10: ItemLocalizado := ZEscuelas.Locate( 'Escuela', Excel.Range[ COL_ESCUELA + Fila.StrFila ].Value, [] ) ;
                11: ItemLocalizado := ZProfesiones.Locate( 'Profesion', Excel.Range[ COL_PROFESION + Fila.StrFila ].Value, [] );
                12: ItemLocalizado := ZHorarios.Locate( 'Horario', Excel.Range[ COL_HORARIO_DE_LABORES + Fila.StrFila ].Value, [] );
                13: ItemLocalizado := ZDiasDescanso.Locate( 'Descanso', Excel.Range[ COL_DIA_DE_DESCANSO + Fila.StrFila ].Value, [] );
                14: ItemLocalizado := ZPeriodosPago.Locate( 'Periodo', Excel.Range[ COL_PERIODOS_DE_PAGO + Fila.StrFila ].Value, [] );
                15: ItemLocalizado := CDTipoCredito.Locate( 'TipoCredito', Excel.Range[ COL_TIPO_CREDITO + Fila.StrFila ].Value, [] );
              end;

              case ItemArray of
                0: Range := Excel.Range[ COL_EMPRESA + Fila.StrFila ];
                1: Range := Excel.Range[ COL_PAIS + Fila.StrFila ];
                2: Range := Excel.Range[ COL_DEPARTAMENTO + Fila.StrFila ];
                3: Range := Excel.Range[ COL_ESTATUS + Fila.StrFila ];
                4: Range := Excel.Range[ COL_REGISTRO_PATRONAL + Fila.StrFila ];
                5: Range := Excel.Range[ COL_PUESTO + Fila.StrFila ];
                6: Range := Excel.Range[ COL_BANCO + Fila.StrFila ];
                7: Range := Excel.Range[ COL_TIPO_PERSONAL + Fila.StrFila ];
                8: Range := Excel.Range[ COL_SEXO + Fila.StrFila ];
                9: Range := Excel.Range[ COL_ESTADO_CIVIL + Fila.StrFila ];
                10: Range := Excel.Range[ COL_ESCUELA + Fila.StrFila ];
                11: Range := Excel.Range[ COL_PROFESION + Fila.StrFila ];
                12: Range := Excel.Range[ COL_HORARIO_DE_LABORES + Fila.StrFila ];
                13: Range := Excel.Range[ COL_DIA_DE_DESCANSO + Fila.StrFila ];
                14: Range := Excel.Range[ COL_PERIODOS_DE_PAGO + Fila.StrFila ];
                15: Range := Excel.Range[ COL_TIPO_CREDITO + Fila.StrFila ];
              end;

              if not ItemLocalizado then
              begin
                ListaErroneos.Add( ColumnaNombre( Range.Column ) + Fila.StrFila );

                Range.Borders.Color := clRed;
                Range.Borders.Weight := xlMedium;
                Range.Borders.LineStyle := xlDash;
              end
              else
                Range.Borders.LineStyle := xlNone;

            end;

          end;

          Fila.SigFila();

        end;

        if ListaErroneos.Count > 0 then
          raise Exception.Create( 'Hay datos erroneos' );

        {$endregion}

        {Importacion de datos}
        {$region 'Leer datos'}

        {$region 'Empleados'}

        Columnas := GenerarListaColumnas( 1, 50 );

        connection.zConnection.StartTransaction;
        ZEmpleados.SQL.Text := SQL_INSERT_EMPLEADOS;

        Fila.First( 2 );

        while Length( Trim( Excel.Range[ COL_EMPRESA + Fila.StrFila ].Value ) ) > 0 do
        begin

          ZEmpleados.Active := False;
          for ColItem := 1 to Columnas.Count - 1 do
          begin

            case ( ColItem ) of
              1:ZOrganizaciones.Locate( 'NombreOrganizacion', Excel.Range[ COL_EMPRESA + Fila.StrFila ].Value, [] ) ;
              13:ZNacionalidades.Locate( 'Nacionalidad', Excel.Range[ COL_PAIS + Fila.StrFila ].Value, [] ) ;
              16:ZDepartamentos.Locate( 'Departamento', Excel.Range[ COL_DEPARTAMENTO + Fila.StrFila ].Value, [] ) ;
              17:ZEstatus.Locate( 'Estatus', Excel.Range[ COL_ESTATUS + Fila.StrFila ].Value, [] ) ;
              18:ZRegistrosPatronales.Locate( 'RegistroPatronal', Excel.Range[ COL_REGISTRO_PATRONAL + Fila.StrFila ].Value, [] ) ;
              20:ZPuestos.Locate( 'Cargo', Excel.Range[ COL_PUESTO + Fila.StrFila ].Value, [] ) ;
              31:ZEscuelas.Locate( 'Escuela', Excel.Range[ COL_ESCUELA + Fila.StrFila ].Value, [] ) ;
              32:ZProfesiones.Locate( 'Profesion', Excel.Range[ COL_PROFESION + Fila.StrFila ].Value, [] );
              41:ZHorarios.Locate( 'Horario', Excel.Range[ COL_HORARIO_DE_LABORES + Fila.StrFila ].Value, [] );
              42:ZDiasDescanso.Locate( 'Descanso', Excel.Range[ COL_DIA_DE_DESCANSO + Fila.StrFila ].Value, [] );
              43:ZPeriodosPago.Locate( 'Periodo', Excel.Range[ COL_PERIODOS_DE_PAGO + Fila.StrFila ].Value, [] );
            end;

            case ( ColItem ) of

              1: ZEmpleados.ParamByName( 'idorganizacion' ).AsInteger := ZOrganizaciones.FieldByName( 'IdOrganizacion' ).AsInteger;
              2: ZEmpleados.ParamByName( 'sIdEmpleado' ).AsString := Excel.Range [ COL_ID_EMPLEADO + Fila.StrFila ].Value;
              3: ZEmpleados.ParamByName( 'sNombreCompleto' ).AsString := Excel.Range [ COL_NOMBRE + Fila.StrFila ].Value;
              4: ZEmpleados.ParamByName( 'sApellidoPaterno' ).AsString := Excel.Range [ COL_APELLIDO_PATERNO + Fila.StrFila ].Value;
              5: ZEmpleados.ParamByName( 'sApellidoMaterno' ).AsString := Excel.Range [ COL_APELLIDO_MATERNO + Fila.StrFila ].Value;
              6: ZEmpleados.ParamByName( 'sCalle' ).AsString := Excel.Range [ COL_CALLE + Fila.StrFila ].Value;
              7: ZEmpleados.ParamByName( 'sNumero' ).AsString := Excel.Range [ COL_NUMERO + Fila.StrFila ].Value;
              8: ZEmpleados.ParamByName( 'sCp' ).AsString := Excel.Range [ COL_CODIGO_POSTAL + Fila.StrFila ].Value;
              9: ZEmpleados.ParamByName( 'sColonia' ).AsString := Excel.Range [ COL_COLONIA + Fila.StrFila ].Value;
              10: ZEmpleados.ParamByName( 'sLocalidad' ).AsString := Excel.Range [ COL_LOCALIDAD + Fila.StrFila ].Value;
              11: ZEmpleados.ParamByName( 'sCiudad' ).AsString := Excel.Range [ COL_CIUDAD + Fila.StrFila ].Value;
              12: ZEmpleados.ParamByName( 'sEstado' ).AsString := Excel.Range [ COL_ESTADO + Fila.StrFila ].Value;
              13: ZEmpleados.ParamByName( 'iIdNacionalidad' ).AsInteger := ZNacionalidades.FieldByName( 'IdNacionalidad' ).AsInteger;
              14: ZEmpleados.ParamByName( 'sTelefono' ).AsString := Excel.Range [ COL_TEL_CASA + Fila.StrFila ].Value;
              15: ZEmpleados.ParamByName( 'sTelefonoCelular' ).AsString := Excel.Range [ COL_TEL_MOVIL + Fila.StrFila ].Value;
              16: ZEmpleados.ParamByName( 'iddepartamento' ).AsInteger := ZDepartamentos.FieldByName( 'IdDepartamento' ).AsInteger;
              17: ZEmpleados.ParamByName( 'iIdEstatus' ).AsInteger := ZEstatus.FieldByName( 'IdEstatus' ).AsInteger;
              18: ZEmpleados.ParamByName( 'iIdRegistroPatronal' ).AsInteger := ZRegistrosPatronales.FieldByName( 'IdRegistroPatronal' ).AsInteger;
              19: ZEmpleados.ParamByName( 'sStatusTipoPersonal' ).AsString := Excel.Range [ COL_TIPO_PERSONAL + Fila.StrFila ].Value;
              20: ZEmpleados.ParamByName( 'iId_Puesto' ).AsInteger := ZPuestos.FieldByName( 'IdCargo' ).AsInteger;
              21: ZEmpleados.ParamByName( 'sIdBanco' ).AsString := Excel.Range [ COL_BANCO + Fila.StrFila ].Value;
              22: ZEmpleados.ParamByName( 'sCuenta' ).AsString := Excel.Range [ COL_CUENTA + Fila.StrFila ].Value;
              23: ZEmpleados.ParamByName( 'sCuentaInterbancaria' ).AsString := Excel.Range [ COL_CLABE + Fila.StrFila ].Value;
              24: ZEmpleados.ParamByName( 'sSucursal' ).AsString := Excel.Range [ COL_SUCURSAL + Fila.StrFila ].Value;
              25: ZEmpleados.ParamByName( 'dSueldoDiario' ).AsString := Excel.Range [ COL_SD + Fila.StrFila ].Value;
              26: ZEmpleados.ParamByName( 'dSueldoIntegrado' ).AsString := Excel.Range [ COL_SDI + Fila.StrFila ].Value;
              27: ZEmpleados.ParamByName( 'dSueldo' ).AsString := Excel.Range [ COL_SUELTO_PACTADO + Fila.StrFila ].Value;
              28: ZEmpleados.ParamByName( 'lSexo' ).AsString := Excel.Range [ COL_SEXO + Fila.StrFila ].Value;
              29: ZEmpleados.ParamByName( 'sEstadoCivil' ).AsString := Excel.Range [ COL_ESTADO_CIVIL + Fila.StrFila ].Value;
              30: ZEmpleados.ParamByName( 'dFechaNacimiento' ).AsString := FormatDateTime( 'YYYY-MM-DD', StrToDate( Excel.Range [ COL_FECHA_NACIMIENTO + Fila.StrFila ].Value ) );
              31: ZEmpleados.ParamByName( 'id_entidadeseducativas' ).AsInteger := ZEscuelas.FieldByName( 'IdEscuela' ).AsInteger;
              32: ZEmpleados.ParamByName( 'iIdProfesiones' ).AsInteger := ZProfesiones.FieldByName( 'IdProfesion' ).AsInteger;
              33: ZEmpleados.ParamByName( 'sLugarNacimiento' ).AsString := Excel.Range [ COL_LUGAR_DE_NACIMIENTO + Fila.StrFila ].Value;
              34: ZEmpleados.ParamByName( 'sCurp' ).AsString := Excel.Range [ COL_CURP + Fila.StrFila ].Value;
              35: ZEmpleados.ParamByName( 'sNoCreditoInfonavit' ).AsString := Excel.Range [ COL_NSS + Fila.StrFila ].Value;
              36: ZEmpleados.ParamByName( 'sCartilla' ).AsString := Excel.Range [ COL_CARTILLA_MILITAR + Fila.StrFila ].Value;
              37: ZEmpleados.ParamByName( 'sCedulaProfesional' ).AsString := Excel.Range [ COL_CEDULA_PROFESIONAL + Fila.StrFila ].Value;
              38: ZEmpleados.ParamByName( 'sEMail' ).AsString := Excel.Range [ COL_EMAIL + Fila.StrFila ].Value;
              39: ZEmpleados.ParamByName( 'sRfc' ).AsString := Excel.Range [ COL_RFC + Fila.StrFila ].Value;
              40: ZEmpleados.ParamByName( 'sImss' ).AsString := Excel.Range [ COL_INFONAVIT + Fila.StrFila ].Value;
              41: ZEmpleados.ParamByName( 'iIdhorario' ).AsInteger := ZHorarios.FieldByName( 'IdHorario' ).AsInteger;
              42: ZEmpleados.ParamByName( 'iIdDiasdescanso' ).AsInteger := ZDiasDescanso.FieldByName( 'IdDiasDescanso' ).AsInteger;
              43: ZEmpleados.ParamByName( 'iIdPeriodo' ).AsInteger := ZPeriodosPago.FieldByName( 'IdPeriodo' ).AsInteger;
              44: ZEmpleados.ParamByName( 'sNombre_Emergencia' ).AsString := Excel.Range [ COL_NOMBRE_EMERGENCIA + Fila.StrFila ].Value;
              45: ZEmpleados.ParamByName( 'sParentesco_Emergencia' ).AsString := Excel.Range [ COL_PARENTESCO + Fila.StrFila ].Value;
              46: ZEmpleados.ParamByName( 'sTipoSangre' ).AsString := Excel.Range [ COL_TIPO_SANGRE + Fila.StrFila ].Value;
              47: ZEmpleados.ParamByName( 'sNumero_Emergencia' ).AsString := Excel.Range [ COL_TELEFONO + Fila.StrFila ].Value;
            end;

          end;

          if ZEmpleados.ParamByName( 'dSueldoDiario' ).AsString = '' then
            ZEmpleados.ParamByName( 'dSueldoDiario' ).AsInteger := 0;
          if ZEmpleados.ParamByName( 'dSueldoIntegrado' ).AsString = '' then
            ZEmpleados.ParamByName( 'dSueldoIntegrado' ).AsInteger := 0;
          if ZEmpleados.ParamByName( 'dSueldo' ).AsString = '' then
            ZEmpleados.ParamByName( 'dSueldo' ).AsInteger := 0;

          ZEmpleados.ExecSQL;
          Fila.SigFila();
        end;

        {$endregion}

        {$region 'Nuc_Personal'}

        Columnas := GenerarListaColumnas( 1, 54 );

        ZNucPersonal.SQL.Text := SQL_INSERT_NUC_EMPLEADOS;

        Fila.First( 2 );

        while Length( Trim( Excel.Range[ COL_EMPRESA + Fila.StrFila ].Value ) ) > 0 do
        begin

          ZNucPersonal.Active := False;
          for ColItem := 1 to Columnas.Count - 1 do
          begin

            case ( ColItem ) of
              1:ZOrganizaciones.Locate( 'NombreOrganizacion', Excel.Range[ COL_EMPRESA + Fila.StrFila ].Value, [] ) ;
              13:ZNacionalidades.Locate( 'Nacionalidad', Excel.Range[ COL_PAIS + Fila.StrFila ].Value, [] ) ;
              16:ZDepartamentos.Locate( 'Departamento', Excel.Range[ COL_DEPARTAMENTO + Fila.StrFila ].Value, [] ) ;
              17:ZEstatus.Locate( 'Estatus', Excel.Range[ COL_ESTATUS + Fila.StrFila ].Value, [] ) ;
              18:ZRegistrosPatronales.Locate( 'RegistroPatronal', Excel.Range[ COL_REGISTRO_PATRONAL + Fila.StrFila ].Value, [] ) ;
              20:ZPuestos.Locate( 'Cargo', Excel.Range[ COL_PUESTO + Fila.StrFila ].Value, [] ) ;
              31:ZEscuelas.Locate( 'Escuela', Excel.Range[ COL_ESCUELA + Fila.StrFila ].Value, [] ) ;
              32:ZProfesiones.Locate( 'Profesion', Excel.Range[ COL_PROFESION + Fila.StrFila ].Value, [] );
              41:ZHorarios.Locate( 'Horario', Excel.Range[ COL_HORARIO_DE_LABORES + Fila.StrFila ].Value, [] );
              42:ZDiasDescanso.Locate( 'Descanso', Excel.Range[ COL_DIA_DE_DESCANSO + Fila.StrFila ].Value, [] );
              43:ZPeriodosPago.Locate( 'Periodo', Excel.Range[ COL_PERIODOS_DE_PAGO + Fila.StrFila ].Value, [] );
              49:CDTipoCredito.Locate( 'TipoCredito', Excel.Range[ COL_TIPO_CREDITO + Fila.StrFila ].Value, [] );
            end;

            case ( ColItem ) of
              2: ZNucPersonal.ParamByName( 'codigopersonal' ).AsString := Excel.Range [ COL_ID_EMPLEADO + Fila.StrFila ].Value;
              3: ZNucPersonal.ParamByName( 'Nombres' ).AsString := Excel.Range [ COL_NOMBRE + Fila.StrFila ].Value;
              4: ZNucPersonal.ParamByName( 'APaterno' ).AsString := Excel.Range [ COL_APELLIDO_PATERNO + Fila.StrFila ].Value;
              5: ZNucPersonal.ParamByName( 'AMaterno' ).AsString := Excel.Range [ COL_APELLIDO_MATERNO + Fila.StrFila ].Value;
              6: ZNucPersonal.ParamByName( 'Calle' ).AsString := Excel.Range [ COL_CALLE + Fila.StrFila ].Value;
              7: ZNucPersonal.ParamByName( 'Numero' ).AsString := Excel.Range [ COL_NUMERO + Fila.StrFila ].Value;
              8: ZNucPersonal.ParamByName( 'Cp' ).AsString := Excel.Range [ COL_CODIGO_POSTAL + Fila.StrFila ].Value;
              9: ZNucPersonal.ParamByName( 'Colonia' ).AsString := Excel.Range [ COL_COLONIA + Fila.StrFila ].Value;
              11: ZNucPersonal.ParamByName( 'Ciudad' ).AsString := Excel.Range [ COL_CIUDAD + Fila.StrFila ].Value;
              12: ZNucPersonal.ParamByName( 'Estado' ).AsString := Excel.Range [ COL_ESTADO + Fila.StrFila ].Value;
              13: ZNucPersonal.ParamByName( 'nacionalidad' ).AsInteger := ZNacionalidades.FieldByName( 'IdNacionalidad' ).AsInteger;
              14: ZNucPersonal.ParamByName( 'telefono' ).AsString := Excel.Range [ COL_TEL_CASA + Fila.StrFila ].Value;
              16: ZNucPersonal.ParamByName( 'iddepartamento' ).AsInteger := ZDepartamentos.FieldByName( 'IdDepartamento' ).AsInteger;
              20: ZNucPersonal.ParamByName( 'idcargo' ).AsInteger := ZPuestos.FieldByName( 'IdCargo' ).AsInteger;
              28: ZNucPersonal.ParamByName( 'sexo' ).AsString := Excel.Range [ COL_SEXO + Fila.StrFila ].Value;
              29: ZNucPersonal.ParamByName( 'EstadoCivil' ).AsString := Excel.Range [ COL_ESTADO_CIVIL + Fila.StrFila ].Value;
              30: ZNucPersonal.ParamByName( 'FechaNacimiento' ).AsString := FormatDateTime( 'YYYY-MM-DD', StrToDate( Excel.Range [ COL_FECHA_NACIMIENTO + Fila.StrFila ].Value ) );
              34: ZNucPersonal.ParamByName( 'Curp' ).AsString := Excel.Range [ COL_CURP + Fila.StrFila ].Value;
              38: ZNucPersonal.ParamByName( 'correo' ).AsString := Excel.Range [ COL_EMAIL + Fila.StrFila ].Value;
              39: ZNucPersonal.ParamByName( 'rfc' ).AsString := Excel.Range [ COL_RFC + Fila.StrFila ].Value;
              40: ZNucPersonal.ParamByName( 'numerosegurosocial' ).AsString := Excel.Range [ COL_INFONAVIT + Fila.StrFila ].Value;
              44: ZNucPersonal.ParamByName( 'contacto' ).AsString := Excel.Range [ COL_NOMBRE_EMERGENCIA + Fila.StrFila ].Value;
              46: ZNucPersonal.ParamByName( 'gruposanguineo' ).AsString := Excel.Range [ COL_TIPO_SANGRE + Fila.StrFila ].Value;
              47: ZNucPersonal.ParamByName( 'telefonocontacto' ).AsString := Excel.Range [ COL_TELEFONO + Fila.StrFila ].Value;
              48: ZNucPersonal.ParamByName( 'NumeroInfonavit' ).AsString := Excel.Range[ COL_NO_INFONAVIT + Fila.StrFila ].Value;
              49: ZNucPersonal.ParamByName( 'tAplicacionInfonavit' ).AsString := Excel.Range[ COL_TIPO_CREDITO + Fila.StrFila ].Value;
              50: ZNucPersonal.ParamByName( 'AplicacionInfonavit' ).AsString := Excel.Range[ COL_APLICACION + Fila.StrFila ];
              51: ZNucPersonal.ParamByName( 'TerminoInfonavit' ).AsString := FormatDateTime( 'YYYY-MM-DD', Excel.Range[ COL_TERMINO + Fila.StrFila ].Value );
              52: ZNucPersonal.ParamByName( 'FactorInfonavit' ).AsString := Excel.Range[ COL_IMPORTE_FACT + Fila.StrFila ].Value;
            end;

          end;

          if ZNucPersonal.ParamByName( 'AplicacionInfonavit' ).AsString <> EmptyStr then
            ZNucPersonal.ParamByName( 'AplicacionInfonavit' ).AsString := FormatDateTime( 'YYYY-MM-DD', ZNucPersonal.FieldByName( 'AplicacionInfonavit' ).AsDateTime )
          else
            ZNucPersonal.ParamByName( 'AplicacionInfonavit' ).AsString := FormatDateTime( 'YYYY-MM-DD', Now() );

          if ZNucPersonal.ParamByName( 'tAplicacionInfonavit' ).AsString = EmptyStr then
            ZNucPersonal.ParamByName( 'tAplicacionInfonavit' ).AsString := 'Fijo';

          if ZNucPersonal.ParamByName( 'FactorInfonavit' ).AsString = EmptyStr then
            ZNucPersonal.ParamByName( 'FactorInfonavit' ).AsFloat := 0;
          
          if Length( Trim( Excel.Range[ COL_NO_INFONAVIT + Fila.StrFila ].Value ) ) = 0 then
            ZNucPersonal.ParamByName( 'Infonavit' ).AsString := 'No'
          else
            ZNucPersonal.ParamByName( 'Infonavit' ).AsString := 'Si';

          ZNucPersonal.ParamByName( 'pais' ).AsString := ZNacionalidades.FieldByName( 'Pais' ).AsString;

          ZNucPersonal.ExecSQL;
          Fila.SigFila();
        end;

        {$endregion}

        connection.zConnection.Commit;

        {$endregion}

      except

        on e:Exception do
        begin
          TaskMessageDlg( 'Información', e.Message, mtInformation, [ mbOK ], 0 );

          if ExcelCreado then
            Excel.Visible := True;

          if connection.zConnection.InTransaction then
            connection.zConnection.Rollback;

        end;
      end;
    finally

      {Liberar memoria}
      {$region 'Liberar Objetos'}

      ZOrganizaciones.Free;
      ZNacionalidades.Free;
      ZDepartamentos.Free;
      ZEstatus.Free;
      ZRegistrosPatronales.Free;
      ZPuestos.Free;
      ZBancos.Free;
      ZEscuelas.Free;
      ZProfesiones.Free;
      ZHorarios.Free;
      ZDiasDescanso.Free;
      ZPeriodosPago.Free;

      ZNucPersonal.Free;
      ZEmpleados.Free;

      CDTiposPersonal.Free;
      CDGeneros.Free;
      CDEstadosCiviles.Free;
      CDTipoCredito.Free;

      Fila.Free;
      Columna.Free;

      TaskMessageDlg( 'Listo', 'Proceso terminado.', mtInformation, [ mbOK ], 0 ); 

      {$endregion}

    end;
  end;

end.
