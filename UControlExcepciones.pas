unit UControlExcepciones;

interface

Uses
  SysUtils, Forms, Windows, Classes, DB, {ZAbstractConnection,} ZDataset,
  ZConnection, Variants;

Type
  TmyProcedure = procedure of object;

  ITCException = class(Exception)
  protected
    procedure CargarMensajes(LMensajes: TStringList);
  public
    Codigo: Integer;
    constructor CreateByCode(Code: Integer; Valores: Array of Variant);
  end;

  EInteliException = class(ITCException);
  EInteliWarning = class(ITCException);
  EInteliAbort = class(ITCException);

const
  ccCatalog = 'CATALOGO';
  ccSelect = 'SELECT';
  ccUpdate = 'UPDATE';

var
  CEConnection: TZConnection;
  CECancelarNativo: Boolean;
  CECancelarProceso: Boolean;

procedure AsignarConexion(var BaseDatos: TZConnection);
procedure LevantarExcepcion(Excepcion: Exception; const ProcedimientoAntes: TmyProcedure = nil; const ProcedimientoDespues: TmyProcedure = nil);
function AsignarSentencia(var DataSet: TZQuery; NombreSentencia: string; TipoSentencia: string): Boolean; overload;
function AsignarSentencia(var DataSet: TZReadOnlyQuery; NombreSentencia: string; TipoSentencia: string): Boolean; overload;
function GetSentence(NombreSentencia: string; TipoSentencia: string): string;
function CargarDatosFiltrados(var DataSet: TZQuery; Variables: string; Valores: array of Variant): Boolean; overload;
function CargarDatosFiltrados(var DataSet: TZReadOnlyQuery; Variables: string; Valores: array of Variant): Boolean; overload;

implementation

Uses
  Dialogs, Messages, ZAbstractRODataset, Controls;

type
  TObjetoError = class
    Codigo: Integer;
    Titulo: string;
    Mensaje: string;
    Tipo: TMsgDlgType;
  end;

  TTipoErr = class
    Titulo: string;
  end;

const
  TipoError: array[0..26, 0..1] of string = (('EAbort', 'Error catastrófico'),                                                      {: Finaliza la secuencia de eventos sin mostrar el mensaje de error.}
                                             ('EAccessViolation', 'Error de acceso a memoria iválido'),                             {: Comprueba errores de acceso a memoria inválidos.}
                                             ('EBitsError', 'No se puede acceder a elementos de arreglos boleanos'),                {: Previene intentos para acceder a arrays de elementos booleanos.}
                                             ('EComponentError', 'No se puede registrar o renombrar el componente'),                {: Nos informa de un intento inválido de registrar o renombrar un componente.}
                                             ('EConvertError', 'No es posible converte la cadena'),                                 {: Muestra un error al convertir objetos o cadenas de texto string.}
                                             ('EDatabaseError', 'Error de acceso a base de datos'),                                 {: Especifica un error de acceso a bases de datos.}
                                             ('EDBEditError', 'Error al introducir datos incompatibles con una máscara de texto'),  {: Error al introducir datos incompatibles con una máscara de texto.}
                                             ('EDivByZero', 'Error de división por cero'),                                          {: Errores de división por cero.}
                                             ('EExternalException', 'No se reconoce el tipo de excepción'),                         {: Significa que no reconoce el tipo de excepción (viene de fuera).}
                                             ('EIntOutError', 'Error de entrada/salida a archivo'),                                 {: Representa un error de entrada/salida a archivos.}
                                             ('EIntOverflow', 'El valor ha desbordado el el máximo para este tipo de dato'),        {: Especifica que se ha provocado un desbordamiento de un tipo de dato.}
                                             ('EInvalidCast', 'Error de conversión de tipos'),                                      {: Comprueba un error de conversión de tipos.}
                                             ('EInvalidGraphic', 'Tipo de gráfico no es reconocido'),                               {: Indica un intento de trabajar con gráficos que tienen un formato desconocido.}
                                             ('EInvalidOp', 'El componente no permite esa operación '),                             {: Ocurre cuando se ha intentado realizar una operación inválida sobre un componente.}
                                             ('EInvalidOperation', 'El componente no permite esa operación'),                       {: Ocurre cuando se ha intentado realizar una operación inválida sobre un componente.}
                                             ('EInvalidPointer', 'Los apuntadores de memoria no permiten esa operación'),           {: Se produce en operaciones con punteros inválidos.}
                                             ('EMenuError', 'Error en opción del menú'),                                            {: Controla todos los errores relacionados con componentes de menú.}
                                             ('EOleCtrlError', 'Error en control Activex'),                                         {: Detecta problemas con controles ActiveX.}
                                             ('EOleError', 'Error de automatización de objetos OLE'),                               {: Especifica errores de automatización de objetos OLE.}
                                             ('EPrinterError', 'Error de impresión'),                                               {: Errores al imprimir.}
                                             ('ERangeError', 'Número entero demasiado grande para la propieda del objeto'),         {: Indica si se intenta asignar un número entero demasiado grande a una propiedad.}
                                             ('ERegistryExcepcion', 'Error de registro de windows'),                                {: Controla los errores en el registro.}
                                             ('EZeroDivide', 'División entre cero'),                                                {: Controla los errores de división para valores reales.}
                                             ('EInteliException', 'Excepción de Inteli-Code'),                                      {: Excepcion generica propia de nuestros sistemas }
                                             ('EInteliWarning', 'Aviso de Inteli-Code'),                                            {: Mensajes de aviso propios de nuestros sistemas }
                                             ('EInteliAbort', 'Error catastrófico'),                                                {: Error catastrófico propio de nuestros sistemas }
                                             ('EZSQLException', 'Error en sentencia SQL'));                                         {: Error en sentencia SQL }

  ListaTiposMensaje = 'mtWarning, mtError, mtInformation, mtConfirmation, mtCustom';

var
  ArregloTipoExcepcion: TStringList;
  ListaMensajes: TStringList;
  UValores: Array of Variant;

procedure ITCException.CargarMensajes(LMensajes: TStringList);
var
  Query: TZReadOnlyQuery;
  ObjetoError: TObjetoError;
  Lista: TStringList;
begin
  // Verificar si existe la conexión a la base de datos
  if not Assigned(CEConnection) then
    // Si no se ha establecido la conexión, informar al usuario y terminar este proceso
    raise EInteliWarning.Create('No se pueden generar los mensajes de error de la base de datos debido a que esta no ha sido especificada.' + #10 + #10 + 'Informe de esto al administrador del sistema.');

  // Si la conexion se ha realizado, verificar que esté activa
  if Not CEConnection.Connected then
    // Si no se ha conectado, tratar de conectarla
    CEConnection.Connect;

  Try
    try
      Query := TZReadOnlyQuery.Create(Nil);
      Query.Connection := CEConnection;
      Query.SQL.Text := 'select * from nuc_errores';
      Query.Open;

      Try
        Lista := TStringList.Create;
        Lista.CommaText := ListaTiposMensaje;

        ListaMensajes := TStringList.Create;
        ListaMensajes.Clear;

        while Not Query.Eof do
        begin
          ObjetoError := TObjetoError.Create;
          ObjetoError.Codigo := Query.FieldByName('iCodigo').AsInteger;
          ObjetoError.Titulo := Query.FieldByName('sDescUsuario').AsString;
          ObjetoError.Mensaje := Query.FieldByName('sDescTecnico').AsString;

          case Lista.IndexOf(Query.FieldByName('MsgType').AsString) of
            0: ObjetoError.Tipo := mtWarning;
            1: ObjetoError.Tipo := mtError;
            2: ObjetoError.Tipo := mtInformation;
            3: ObjetoError.Tipo := mtConfirmation
          else
            ObjetoError.Tipo := mtCustom;
          end;

          ListaMensajes.AddObject(Query.FieldByName('iCodigo').AsString, ObjetoError);

          Query.Next;
        end;
      Finally
        Query.Close;
      End;
    except
      on e:Exception do
        LevantarExcepcion(e);
    end;
  Finally
    Query.Free;
    Query := nil;
  End;
end;

constructor ITCException.CreateByCode(Code: Integer; Valores: Array of Variant);
var
  i: Integer;
begin
  Codigo := Code;
  SetLength(UValores, High(Valores) +1);
  for i := 0 to High(Valores) do
    UValores[i] := Valores[i];

  Try
    // Verificar si ya existen los datos de los mensaje en memoria
    if Not Assigned(ListaMensajes) then
      CargarMensajes(ListaMensajes);
  except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure AsignarConexion(var BaseDatos: TZConnection);
begin
  // Asignar la conexión y verificar si está activa
  try
    CEConnection := BaseDatos;
    CEConnection.Connect;
  except
    on e:Exception do
      LevantarExcepcion(EInteliAbort.Create('La base de datos no está asignada.'));
  end;
end;

procedure CargaListaTiposExcepcion(var ListaT: TStringList);
var
  i: Integer;
  oTipoErr: TTipoErr;
begin
  ListaT := TStringList.Create;
  ListaT.Clear;

  for i := low(TipoError) to high(TipoError) do
  begin
    oTipoErr := TTipoErr.Create;
    oTipoErr.Titulo := TipoError[i,1];

    ListaT.AddObject(TipoError[i,0], oTipoErr);
  end;
end;

procedure LevantarExcepcion(Excepcion: Exception; const ProcedimientoAntes: TmyProcedure = nil; const ProcedimientoDespues: TmyProcedure = nil);
var
  i,
  iFin,
  iNumero,
  Indice,
  IdxError,
  NumValores: Integer;
  Titulo,
  SubTitulo,
  Cadena,
  NewCadena: string;
  TipoMensaje: TMsgDlgType;
begin
  //ShowMessage(Excepcion.ClassName);
  Titulo := '';
  IdxError := -1;
  SubTitulo := 'Se ha alcanzado el siguiente error:' + #10 + #10;
  if (Excepcion.Message = '') and (Assigned(ListaMensajes)) then
  begin
    SubTitulo := '';
    IdxError := ListaMensajes.IndexOf(IntToStr(ITCException(Excepcion).Codigo));
    if IdxError >= 0 then
    begin
      Titulo := TObjetoError(ListaMensajes.Objects[IdxError]).Titulo;
      TipoMensaje := TObjetoError(ListaMensajes.Objects[IdxError]).Tipo;
      Cadena := TObjetoError(ListaMensajes.Objects[IdxError]).Mensaje;
      NewCadena := '';

      // Recorrer el mensaje para intercambiar los parametros
      i := 1;
      while i <= Length(Cadena) do
      begin
        if Copy(Cadena, i, 2) = '<%' then
          if (Cadena[i +3] = '>') or (Cadena[i +4] = '>') then
          begin
            iNumero := -1;
            if Cadena[i +3] = '>' then
            begin
              iFin := i +4;
              Try
                iNumero := StrToInt(Copy(Cadena, i +2, 1));
              Except
                iNumero := -1;
              End;
            end
            else
            begin
              iFin := i + 5;
              Try
                iNumero := StrToInt(Copy(Cadena, i +2, 2));
              Except
                iNumero := -1;
              End;
            end;

            Dec(iNumero);
            if (iNumero >= 0) and (iNumero <= High(UValores)) then
            begin
              //IndiceMensaje := ;
              NewCadena := NewCadena + UValores[iNumero];
            end;

            i := iFin;
          end;
        NewCadena := NewCadena + Copy(Cadena, i, 1);
        Inc(i);
      end;
      Excepcion.Message := NewCadena;
    end
    else
    begin
      Titulo := 'Error de acceso a los mensajes del sistema';
      TipoMensaje := mtError;
      Excepcion.Message := 'No se ha podido encontrar el mensaje de error No. ' + IntToStr(ITCException(Excepcion).Codigo);
    end;
  end;

{    // Localizar el error que se está buscando
    Indice := ListaMensajes.IndexOf(IntToStr(Code));
    if Indice < 0 then
      raise Exception.Create('Eduardo Rangel Vallejo');
}
  // Establecer a false las variables de cancelación de proceso, si el programador
  // descide modificar este valor por true dentro del procedimiento antes del
  // comportamiento nativo la unidad cancelará la continuación
  CECancelarNativo := False;    // No cancelar el proceso nativo de la excepcion
  CECancelarProceso := False;   // No cancelar el proceso completo de la excepción

  Try
    // Verificar si existe un procedimiento anterior que deba ser ejecutado
    if Assigned(ProcedimientoAntes) then
      ProcedimientoAntes;

    if (Not CECancelarNativo) and (Not CECancelarProceso) then
    begin
      if Not Assigned(ArregloTipoExcepcion) then
        CargaListaTiposExcepcion(ArregloTipoExcepcion);

      Indice := ArregloTipoExcepcion.IndexOf(Excepcion.ClassName);

      if Indice in [0, 25] then
      begin
        if Titulo = '' then
        begin
          Titulo := TTipoErr(ArregloTipoExcepcion.Objects[Indice]).Titulo;
          SubTitulo := 'El sistema se cerrará debido a un error catastrófico, informe de lo siguiente al administrador del sistema:' + #10 + #10;
          TipoMensaje := mtError;
        end;

        TaskMessageDlg(Titulo, SubTitulo + Excepcion.Message, TipoMensaje, [mbOK], 0);

        // Localizar la ventana que se está ejecutando
        PostMessage(Application.ActiveFormHandle, WM_CLOSE, 0, 0);
      end
      else
      begin
        if Indice = -1 then
          Titulo := 'Error inesperado'
        else
          Titulo := TTipoErr(ArregloTipoExcepcion.Objects[Indice]).Titulo;

        if IdxError = -1 then
          case Indice of
            -1: TipoMensaje := mtError;
             1: TipoMensaje := mtError;
            13: TipoMensaje := mtWarning;
            24: TipoMensaje := mtInformation;
            26: TipoMensaje := mtError;
          end;

        TaskMessageDlg(Titulo, SubTitulo + Excepcion.Message, TipoMensaje, [mbOK], 0);
      end;
    end;

    if not CECancelarProceso then
    begin
      // Verificar si existe un procedimiento anterior que deba ser ejecutado
      if Assigned(ProcedimientoDespues) then
        ProcedimientoDespues;
    end;
  Finally
    CECancelarProceso := False;
    CECancelarNativo := False;
    ITCException(Excepcion).Codigo := -1;
  End;
end;

function AsignarSentencia(var DataSet: TZQuery; NombreSentencia: string; TipoSentencia: string): Boolean;
begin
  Result := AsignarSentencia(TZReadOnlyQuery(DataSet), NombreSentencia, TipoSentencia);
end;



function AsignarSentencia(var DataSet: TZReadOnlyQuery; NombreSentencia: string; TipoSentencia: string): Boolean;
var
  i: Integer;
  Cadena: string;
begin
  Result := True;
  try
    if Not Assigned(DataSet) then
      DataSet := TZReadOnlyQuery.Create(Nil);

    if DataSet.Connection = Nil then
      DataSet.Connection := CEConnection;

    if DataSet.Connection.Connected and Not DataSet.Connection.Ping then
      DataSet.Connection.Reconnect;

    if Copy(NombreSentencia, 1, 3) = 'SP_' then
      DataSet.SQL.Text := 'CALL ' + Copy(NombreSentencia, 4, Length(NombreSentencia))
    else
    begin
      DataSet.SQL.Text := GetSentence(NombreSentencia, TipoSentencia);

      // Poner todos los parámetros a -1 para acceder a todo el catálogo por default
      for i := 0 to DataSet.Params.Count -1 do
      begin
        Cadena := DataSet.Params.Items[i].Name;
        DataSet.ParamByName(Cadena).asString := '-1';
      end;

      {if TipoSentencia = stUpdate then
      begin

      end;}

    end;

    Result := True;
  finally
    //LocQuery.Free;
  end;
end;

function GetSentence(NombreSentencia: string; TipoSentencia: string): string;
var
  Query: TZReadOnlyQuery;
  CadPaso, Negritas, Resultado: string;
  LocCursor: TCursor;
begin
  Resultado := '';

  // Localizar la sentencia en base a los parámetros indicados
  try
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crSQLWait;

        Query := TZReadOnlyQuery.Create(Nil);
        Query.Connection := CEConnection;
        if Query.Connection.Connected and Not Query.Connection.Ping then
          Query.Connection.Reconnect;
        Query.SQL.Text := 'Select sSentencia from nuc_sentencias where sTablaPrimaria = :Tabla and sTipo = :Tipo';
        Query.ParamByName('Tabla').AsString := NombreSentencia;
        Query.ParamByName('Tipo').AsString := TipoSentencia;
        Query.Open;

        if Query.RecordCount = 0 then
          Resultado := 'SELECT * FROM ' + NombreSentencia
        else
          Resultado := Query.FieldByName('sSentencia').AsString;

        Query.Close;
      finally
        Screen.Cursor := LocCursor;
        Query.Free;
      end;
    Except
      Resultado := 'SELECT * FROM ' + NombreSentencia;
    end;
  finally
    Result := Resultado;
  end;
end;

function CargarDatosFiltrados(var DataSet: TZQuery; Variables: string; Valores: array of Variant): Boolean; overload;
begin
  CargarDatosFiltrados(TZReadOnlyQuery(DataSet), Variables, Valores);
end;

function CargarDatosFiltrados(var DataSet: TZReadOnlyQuery; Variables: string; Valores: array of Variant): Boolean; overload;
var
  Lista: TStringList;
  i: Integer;
  Cadena: string;
  pValor: string;
begin
  Try
    // Obtener un conjunto de elementos de los nombres de las variables
    Lista := TStringList.Create;
    Lista.CommaText := Variables;

    if Lista.Count <> High(Valores) +1 then
      raise Exception.Create('Hay un error');

    // Verificar si algunos de los valores pasados tienen separados ","
    for i := low(Valores) to high(Valores) do
    begin
      Cadena := Valores[i];
      if Pos(',', Cadena) <> 0 then
      begin
        Cadena := StringReplace(Cadena, ',', '|', [rfReplaceAll, rfIgnoreCase]);
        Valores[i] := Cadena;
      end;
    end;

    Cadena := '';
    for i := 0 to High(Valores) do
      DataSet.ParamByName(Lista[i]).Value := Valores[i];

  Finally
    Lista.Free;
  End;
end;

end.
