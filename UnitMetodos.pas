unit UnitMetodos;

{***********************************************************************
*UNIDAD DE METODOS GLOBALES V1: 2015-04-24 - MARTIN SAMUEL ESTEBAN DIAZ.

*Si alguien realiza modificaciones añadir la version antes de esta linea.
***********************************************************************}

interface

  {$region 'Uses'}

  uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, DB, DateUtils, StrUtils, UnitExcel, ComObj, frm_connection, Math,
    ZDataset, ZAbstractRODataset, ZAbstractDataset, ZSqlProcessor,

    cxGroupBox ;

  {$endregion}

  {$region 'Tipos'}

  type
    TExcelColIndex = type Integer;
    TExcelRow = type Integer;
    TExcelColAlias = type string;
    TExcelRangeAlias = type string;
    TExcelFormula = type string;
    TExcelFilePath = type string;
    TDirectoryPath = type string;
    TSQLStatement = type string;
    TFieldName = type string;
    TExcelSheetName = type string;
    TExcelInstance = type Variant;
    

  //Clase personalizada para columnas en excel
  type
    TExcelColumna = class( TObject )
      OldColumn,
      Column : TExcelColIndex;
      StrColumn : TExcelColAlias;
      function Columna():TExcelColAlias;
      function _Columna_( Increment : TExcelColIndex ):TExcelColAlias;
      function SigColumna( Increment : TExcelColIndex = 1 ):TExcelColIndex;
      function Old():TExcelColIndex;

      constructor Create;
    end;

    //Clase personalizada para fila en excel
  type
    TExcelFila = class( TObject )
      public
        Row,
        OldRow : TExcelRow;

      constructor Create( FFila : TExcelRow = 1 );

      function SigFila( count : TExcelRow = 1 ):TExcelRow;
      function StrFila:string;overload;
      function StrFila( Increment : Integer ):string;overload;
      function First( Increment : Integer = 0 ):TExcelRow;
      function Old():TExcelRow;

      function ToStr( count : TExcelRow = 1 ):string;overload;
      function ToStr():string;overload;

    end;

  {$endregion}

  {$region 'Metodos'}

  procedure InicializarZDataSet( var DataSet : TZQuery );overload;
  procedure InicializarZDataSet( var DataSet : TZReadOnlyQuery );overload;
  procedure InicializarForm( var Form : TForm; Grupo : TcxGroupBox; FWith, FHeight : Integer );
  function InicializarExcel( var FExcel, FBook, FSheet : TExcelInstance; FVisible : Boolean; NumberOfSheets : Integer = 1 ):Boolean;
  function SheetExists( var FBook : TExcelInstance; SheetName : TExcelSheetName ):Boolean;
  function GenerarListaColumnas( Inicio, Fin : TExcelColIndex ) : TStringList;

  {$endregion}

implementation

  
  {$region 'Metodos Columna Excel.'}

  constructor TExcelColumna.Create;
  begin
    inherited Create;
    Column := 1;
    StrColumn := ColumnaNombre( Column );
  end;

  function TExcelColumna.Columna():TExcelColAlias;
  begin
    StrColumn := ColumnaNombre( Column );
    Result := StrColumn;
  end;

  function TExcelColumna._Columna_( Increment : TExcelColIndex ):TExcelColAlias;
  begin
    Result := ColumnaNombre( Column + Increment );
  end;

  function TExcelColumna.SigColumna( Increment : TExcelColIndex = 1 ):TExcelColIndex;
  begin
    Column := Column + Increment;
    Result := Column;
  end;

  function TExcelColumna.Old():TExcelColIndex;
  begin
    OldColumn := Column;
    Result := Column;
  end;
  
  {$endregion}

  {$region 'Metodos Fila Excel.'}

  constructor TExcelFila.Create( FFila : TExcelRow = 1 );
  begin
    inherited Create;
    Row := FFila;
  end;

  function TExcelFila.SigFila( count : TExcelRow = 1 ):TExcelRow;
  begin
    Inc( Row, count );
    Result := Row;
  end;

  function TExcelFila.StrFila:string;
  begin
    Result := IntToStr( Row );
  end;

  function TExcelFila.StrFila( Increment : Integer ):string;
  begin
    Result := IntToStr( Row + Increment )
  end;

  function TExcelFila.First( Increment : Integer = 0 ):TExcelRow;
  begin
    Row := 1 + Increment;
    Result := Row;
  end;

  function TExcelFila.Old():TExcelRow;
  begin
    OldRow := Row;
    Result := Row;
  end;

  function TExcelFila.ToStr( count : TExcelRow = 1 ):string;
  begin
    Result := IntToStr( Row + count );
  end;

  function TExcelFila.ToStr():string;
  begin
    Result := IntToStr( Row );
  end;

  
  {$endregion}
  
  {$region 'Inicializa ZDatasets.'}

  procedure InicializarZDataSet( var DataSet : TZQuery );
  begin
    DataSet := TZQuery.Create( nil );
    DataSet.Connection := connection.zConnection;
    DataSet.Active := False;
  end;

  procedure InicializarZDataSet( var DataSet : TZReadOnlyQuery );
  begin
    DataSet := TZReadOnlyQuery.Create( nil );
    DataSet.Connection := connection.zConnection;
    DataSet.Active := False;
  end;

  {$endregion}

  {$region 'Inicializa Formulario'}

  procedure InicializarForm( var Form : TForm; Grupo : TcxGroupBox; FWith, FHeight : Integer );
  begin
    Form := TForm.Create( nil );
    Form.BorderStyle := bsDialog;
    Form.Caption := EmptyStr;
    Form.Width := FWith;
    Form.Height := FHeight;
    Form.Position := poScreenCenter;
    Grupo.Parent := Form;
    Grupo.Align := alClient;
    Grupo.Visible := True;
  end;


  {$endregion}

  {$region 'Inicializar Excel'}

  function InicializarExcel( var FExcel, FBook, FSheet : TExcelInstance; FVisible : Boolean; NumberOfSheets : Integer = 1 ):Boolean;
  begin
    try
      FExcel := CreateOleObject( 'Excel.Application' );
      FExcel.ScreenUpdating := True;
      FExcel.DisplayAlerts := False;
      FExcel.Visible := FVisible;

      FBook := FExcel.Workbooks.Add;

      if FBook.Sheets.Count > NumberOfSheets then
      begin

        while FBook.Sheets.Count > NumberOfSheets do
          FBook.Sheets[ 1 ].Delete;

      end;

      if FBook.Sheets.Count < NumberOfSheets then
      begin

        while FBook.Sheets.Count < NumberOfSheets do
          FBook.Sheets.Add;

      end;

      FSheet := FBook.Sheets[1];
      FSheet.Select;
      Result := True;
    except
      Result := False;
    end;

  end;

  {$endregion}

  {$region 'Verifica si existe hoja de excel'}

  function SheetExists( var FBook : TExcelInstance; SheetName : TExcelSheetName ):Boolean;
  var
    SheetItem : Integer;
    Exists : Boolean;
  begin

    Exists := False;

    for SheetItem := 1 to FBook.Sheets.Count do
    begin
      Exists := FBook.Sheets[ SheetItem ].Name = SheetName;
    end;

    Result := Exists;
    
  end;

  {$endregion}

  {$region 'Generar Lista de columnas Excel'}

  function GenerarListaColumnas( Inicio, Fin : TExcelColIndex ) : TStringList;
  var
    Columnas : TStringList;

    Columna : TExcelColIndex;
  begin
    try
      Columnas := TStringList.Create();
      Columnas.Clear;

      for Columna := Inicio to Fin do
      begin
        Columnas.Add( ColumnaNombre( Columna ) );
      end;

    finally
      Result := Columnas;
    end;
  end;

  {$endregion}

end.
