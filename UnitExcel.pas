unit UnitExcel;

interface

Uses
  Windows;

Type
  TExcel = Class
    Const
      Medium = -4138;
      Left = -4131;
      Portrait = 1;
      Solid = 1;
      General = 1;
      LandScape = 2;

  End;

Const
  gHorizontal = True;
  gVertical = False;

  msoTrue = -1;
  msoFalse = 0;
  msoScaleFromTopLeft = 0;
  msoLineSolid = 1;
  msoLineSingle = 1;
  msoScaleFromBottomRight = 2;
  msoShapeRoundedRectangle = 5;
  msoShapeFlowchartProcess = 61;

  xlTop = -4160;
  xlToLeft = -4159;
  xlRight = -4152;
  xlNormal = -4143;
  xlUnderlineStyleNone = -4142;
  xlMedium = -4138;
  xlLeft = -4131;
  xlJustify = -4130;
  xlDown = -4121;
  xlDouble = -4119;
  xlCenter = -4108;
  xlAutomatic = -4105;
  xlContinuous = 1;
  xlGeneral = 1;
  xlSolid = 1;
  xlCellValue = 1;
  xlHairline = 1;
  xlPaperLetter = 1;
  xlUnderlineStyleSingle = 2;
  xlThin = 2;
  xlLandscape = 2;
  xlThick = 4;
  xlEdgeLeft = 7;
  xlEdgeTop = 8;
  xlEdgeBottom = 9;
  xlEdgeRight = 10;
  xlInsideVertical = 11;
  xlInsideHorizontal = 12;
  xlValidateList = 3;
  xlValidAlertStop = 1;
  xlBetween = 1;
  xlDash = -4115;
  xlNone = -4142;

  Function ColumnaNombre(Numero: Integer): String;
  Function NombreArchivoTemporal: String;

implementation

Function ColumnaNombre(Numero: Integer): String;
Var
  Valor, NumLetras: Integer;
  Cad: String;
Begin
  NumLetras := 26;  // O1
  Cad := '';
  Valor := Numero Mod NumLetras;
  if Valor = 0 then Valor := 26;
  if Numero - Valor > 0 then Cad := Char(64 + Trunc((Numero - Valor) / NumLetras));
  Cad := Cad + Char(64 + Valor);

  Result := Cad;
End;

function NombreArchivoTemporal: string;
var
  Buffer: array[0..MAX_PATH] of Char;
  aFile: string;
begin
  GetTempPath(SizeOf(Buffer) - 1, Buffer);
  GetTempFileName(Buffer, '~', 0, Buffer);
  Result := Buffer;
end;

end.
