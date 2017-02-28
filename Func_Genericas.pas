unit Func_Genericas;

interface
uses
  Windows, DateUtils, StrUtils, Dialogs, SysUtils, Math, Controls, adoDB, RxMemDS, DB, ShellAPI,
  frm_connection, frxClass, frxDBSet, Classes, global, variants, Graphics, ZDataset,
  DBCtrls, Forms, StdCtrls, RXDBCtrl, IdAttachmentFile, IdSSLOpenSSL, ZDbcIntfs, ComCtrls,
  JPEG, cxtextEdit, cxDBEdit, cxMaskEdit, ExtCtrls, cxControls, cxDBLookupComboBox, Buttons,
  cxContainer, cxImage, cxDBNavigator, AcroPDFLib_TLB, dxBar, dxRibbon, dxRibbonForm,
  dxRibbonSkins, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxStyles,
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
  cxNavigator, cxDBData, dxSkinsdxBarPainter,
  ZAbstractRODataset, ZAbstractDataset, dxRibbonRadialMenu,
  cxCheckBox, cxSpinEdit, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxStatusBar, dxRibbonStatusBar, ComObj, cxPC;
  // Fin de uses

//Inicio de contantes
const
  C1=52845; //??????????
  C2=22719; //??????????
  {$REGION 'Para mostrar el nombre y la version del proyecto'}
    global_version  = 'Sistema de Administración de Recursos';
    Major_Version   = '2016';
    Minor_Version   = '1';
    Release_Version = '11';
    Build_Version   = '1';
  {$ENDREGION}
  //Fin de constantes

//Inicio de declaraciones de varibles
  var
    i: integer;
    Cantidad, Centavos: Currency;
    BloqueCero, NumeroBloques, Digito: Byte;
    PrimerDigito, SegundoDigito, TercerDigito: Byte;
    Resultado, Temp, Bloque: String;
    Unidades: Array[0..28] of String;
    Decenas: Array[0..8] of String;
    Centenas: Array[0..8] of String;

  {Variable que permite saber si se habla de miles en una cantidad}

//Fin de declaracion de variebles

//{$REGION 'NOMINAS'}
//  function RedimensionarJPG(sFilePath: string): string;
//{$ENDREGION}

//Iniceo de declaraciones de funciones
{$REGION 'Declaracion de Procedimiento/Funciones'}
procedure Crear_Form(panel:TPanel;Formlario:Tform; Titulo:String;arriba,Derecha,Ancho,Largo:Integer; Botones:TBorderIcons);overload;
procedure Crear_Form(panel:TPanel;Titulo:String;Ancho,Largo:Integer; Botones:TBorderIcons);overload;
//Funciones y procedimientos para mostrar mensajes
function MSG_YN(msg:string):boolean;
procedure MSG_ER(msg:string);
procedure MSG_OK(msg:string);overload;
procedure MSG_OK(msg, caption:string);overload;
procedure MSG_W(msg:string);
procedure F_ActiveCtrl(Accion:string; Form:TForm);

//funciones de cadena
function At(sFind, sSource:string):integer;
function substr(sstr:string; istart, icount:integer):string;
procedure SepararCuadros(var cad:string);
function Alltrim(s:string):string;
function StrTran(psInput:String; psSearch:String; psTranWith:String):String;        {????}
{* ????????[?????] Examples: StrTran('aruyfbn','ruy','=====');; ??'a=====fbn'}
function Stuff(psInput:String; piBeginPlace,piCount:Integer; psStuffWith:String):String;
{ *????????[?????] Examples: Stuff('ABCDEFGHI',3,4,'12345');??'AB12345GHI'}
function len(s:string):integer;
function InStr(const sShort: string; const sLong: string): Boolean;
function IsDigital(Value: string): boolean;
function RandomStr(aLength : Longint) : String;
function PadL(psInput:String; piWidth:Integer; pcPadWith:Char):String;
function PadR(psInput:String; piWidth:Integer; pcPadWith:Char):String;
function Replicate(pcChar:Char; piCount:integer):string;
function Replace(Str,s1,s2:string;CaseSensitive:Boolean):string;
function Hora():string;
function Upper(str:string):string;
function Lower(str:string):string;

//conversiones
function CadeToInt(s:string):integer;
function CadeToFloat(s:string):Double;
function StrToHex(AStr: string): string;
function HexToStr(AStr: string): string;
function Encrypt(const S: String; Key: Word): String;
function Decrypt(const S: String; Key: Word): String;
function TransChar(AChar: Char): Integer;
function xVal(sval:string):extended;
function xStr(iVal:Extended):string;

//funciones de fecha
function DatetoStrSql(Fecha:TDateTime):string;
function dtos(rdate:TDateTime):string;
function stod(s:string):TDatetime;
function GetYear(Date: TDate): Integer;   {????}
function GetMonth(Date: TDate): Integer;   {????}
function GetDay(Date: TDate): Integer;   {????}
function GetHour(Time: TTime): Integer;   {????}
function GetMinute(Time: TTime): Integer;   {????}
function GetSecond(Time: TTime): Integer;   {????}
function GetMSecond(Time: TTime): Integer;   {????}
function GetMonthLastDay(Cs_Year,Cs_Month:string):string;
function IsLeapYear( nYear: Integer ): Boolean;
function dateBeginOfMonth(D: TDateTime): TDateTime;
function DateEndOfMonth(D: TDateTime): TDateTime;
function DateEndOfYear(D: TDateTime): TDateTime;
function DaysBetween(Date1, Date2: TDateTime): integer;
function ActivarDesactivar_Botones(var manager:TdxBarManager; tabla:TZQuery):Boolean; overload;
function ActivarDesactivar_Botones(var manager:TdxBarManager; tabla:TZQuery; Var Grid: TcxGrid):Boolean; overload;
{Funciones para encriptar passwords en Usuarios de Base de Datos..}
function Encripta(Cadena: string): string;
function DesEncripta(Cadena: string): string;
function GetAppVersionStr: string;
Function NextId(sId: String; STabla: String):Integer;
Function CantidadEnLetra1(curCantidad: Currency; MonNal: integer): String;
Function CantidadALetra2(curCantidad: Currency; MonedaNacional: Boolean): String;
Function CantidadALetra3(curCantidad: Currency; MonedaNacional: String): String;
function MDI_a_Modal(f : TForm) : TModalResult;
function Guardar_Kardex(contrato, usuario, Descripcion, Origen:string):Boolean; overload;
function Mostrar_Excepciones(Error:String):string ;overload;
procedure Crear_Form(panel:TcxPageControl; Titulo:String;Ancho, Largo:Integer; Botones:TBorderIcons; Indice:Integer);overload;
function VerPageControl(var panel:TcxPageControl; Indice:Integer):Boolean;

//Fin de declaraciones de funciones
{$ENDREGION}

implementation
//function Crear_Form(panel:TPanel;Formlario:Tform; Titulo:String;arriba,Derecha,Ancho,Largo:Integer):TForm;
//uses SysUtils;

{$REGION 'Desarrollo de Procedimiento/Funciones'}

function MSG_YN(msg:string):boolean;
//Funcion para mortrar mensaje de si o no
begin
   Result := application.MessageBox(PChar(msg), 'Confirmación', mb_ICONQUESTION+mb_YESNO)=idYES;
end;

procedure MSG_ER(msg:string);
//Mensaje de error
begin
   application.MessageBox(PChar(msg), 'Error detectado', mb_ICONERROR+mb_OK);
end;
procedure MSG_OK(msg:string);overload;
//Notificacion
begin
   application.MessageBox(PChar(msg), 'Notificación', MB_ICONINFORMATION+mb_OK);
end;

procedure MSG_OK(msg, caption:string);overload;
//Notificacion
begin
   application.MessageBox(PChar(msg), PChar(caption), MB_ICONINFORMATION+mb_OK);
end;


function DatetoStrSql(fecha: TDateTime):String;
var
  dia,mes,año: String;
  wAnyo, wMes, wDia: Word;
begin
   Result := '';
  Try
    DecodeDate( Fecha, wAnyo, wMes, wDia );
    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);

    if Length(dia) < 2 then
      dia := '0' + dia;
    if Length(mes) < 2 then
      mes := '0' + mes;

    Result := año+'/'+mes+'/'+dia;
  Except
    on e:exception do
      MessageDlg('Error al formatear fecha.', mtError, [mbOk], 0);
  End;
end;

procedure MSG_W(msg:string);
//Advertencia
begin
   application.MessageBox(PChar(msg), 'Advertencia', mb_ICONWARNING+mb_OK);
end;

procedure F_ActiveCtrl(Accion:string; Form:TForm);
var i:integer;
begin
{Valores ded tag:
   1:solo en insercion
   2:solo en modificacion
   3:en insercion y modificacion
   <>[1,2,3]:no se mueve
}
  for i:=0 to Form.ComponentCount-1 do
  begin
    if not (Form.Components[i].Tag in [1,2,3]) then continue;//se ignoran
    if (Form.Components[i] is TcxTextEdit) then
    begin
      with (Form.Components[i] as TcxTextEdit) do
      begin
        if Accion='I' then
        begin
          if Tag in [1,3] then//habilitado en insertar o modificar
						Enabled:=true
          else if Tag in [2] then//habilitado en modificar
						Enabled:=false;
        end
        else
        if Accion='M' then
        begin
          if Tag in [2,3] then //habilitado en insertar o modificar
						enabled:=true
          else if Tag in [1] then//habilitado en insertar
						Enabled:=false;
        end
        else
        if Accion='C' then
        begin //si es cancelar se activan todos
					Enabled:=true;
        end;
      end;
    end
    else
    if (Form.Components[i] is TcxDBTextEdit) then
    begin
      with (Form.Components[i] as TcxDBTextEdit) do
      begin
        if Accion='I' then
        begin
          if Tag in [1,3] then//habilitado en insertar o modificar
						Enabled:=true
          else if Tag in [2] then//habilitado en modificar
						Enabled:=false;
        end
        else
        if Accion='M' then
        begin
          if Tag in [2,3] then //habilitado en insertar o modificar
						Enabled:=true
          else if Tag in [1] then//habilitado en insertar
						Enabled:=false;
        end
        else
        if Accion='C' then
        begin //si es cancelar se activan todos
					Enabled:=true;
        end;
      end;
    end
    else
    if (Form.Components[i] is TcxDBMaskEdit) then
    begin
      with (Form.Components[i] as TcxDBMaskEdit) do
      begin
        if Accion='I' then
        begin
          if Tag in [1,3] then//habilitado en insertar o modificar
						Enabled:=true
          else if Tag in [2] then//habilitado en modificar
						Enabled:=false;
        end
        else
        if Accion='M' then
        begin
          if Tag in [2,3] then //habilitado en insertar o modificar
						Enabled:=true
          else if Tag in [1] then//habilitado en insertar
						Enabled:=false;
        end
        else
        if Accion='C' then
        begin //si es cancelar se activan todos
					Enabled:=true;
        end;
      end;
    end
    else
    if (Form.Components[i] is TcxMaskEdit) then
    begin
      with (Form.Components[i] as TcxMaskEdit) do
      begin
        if Accion='I' then
        begin
          if Tag in [1,3] then//habilitado en insertar o modificar
						Enabled:=true
          else if Tag in [2] then//habilitado en modificar
						Enabled:=false;
        end
        else
        if Accion='M' then
        begin
          if Tag in [2,3] then //habilitado en insertar o modificar
						Enabled:=true
          else if Tag in [1] then//habilitado en insertar
						Enabled:=false;
        end
        else
        if Accion='C' then
        begin //si es cancelar se activan todos
					Enabled:=true;
        end;
      end;
    end;
  end;
end;

function At(sFind, sSource:string):integer;
begin
  Result := pos(sFind, sSource);
end;
function substr(sstr:string; istart, icount:integer):string;
begin
  Result := '';
  if iStart>Length(sstr) then
    exit;
  if icount<1 then
    icount := length(sstr);
	Result := Copy(sstr, istart, icount)
end;
procedure SepararCuadros(var cad:string);
var  cad2:string;
begin
  while At('', cad)>0 do
  begin
    cad2 :=cad;
    cad2:= substr(Cad, 1, At('', cad));
    cad := substr(Cad, At('', cad)+1, length(cad));
    cad := cad2+ ' '+cad;
  end;
end;

function Alltrim(s:string):string;
begin
  Result := SysUtils.Trim(s);
end;

function CadeToInt(s:string):integer;
begin
  Result := 0;
  try
    s:=alltrim(s);
    if s='' then Result := 0
    else Result := StrToint(s);
  except
    Result := 0;
  end;
end;

function CadeToFloat(s:string):Double;
begin
  Result := 0.0;
  try
    s:=alltrim(s);
    if s='' then Result := 0.0
    else Result := StrToFloat(s);
  except
    Result := 0.0;
  end;
end;

function len(s:string):integer;
begin
  Result := length(s);
end;

function InStr(const sShort: string; const sLong: string): Boolean;
var
  s1, s2: string;
begin
  s1 := LowerCase(sShort);
  s2 := LowerCase(sLong);
  Result := Pos(s1, s2) > 0;
end;

function GetYear(Date: TDate): Integer;
var
  y, m, d: WORD;
begin
  DecodeDate(Date, y, m, d);
  Result := y;
end;

function GetMonth(Date: TDate): Integer;
var
  y, m, d: WORD;
begin
  DecodeDate(Date, y, m, d);
  Result := m;
end;

function GetDay(Date: TDate): Integer;
var
  y, m, d: WORD;
begin
  DecodeDate(Date, y, m, d);
  Result := d;
end;

function GetHour(Time: TTime): Integer;
var
  h, m, s, ms: WORD;
begin
  DecodeTime(Time, h, m, s, ms);
  Result := h;
end;

function GetMinute(Time: TTime): Integer;
var
  h, m, s, ms: WORD;
begin
  DecodeTime(Time, h, m, s, ms);
  Result := m;
end;

function GetSecond(Time: TTime): Integer;
var
  h, m, s, ms: WORD;
begin
  DecodeTime(Time, h, m, s, ms);
  Result := s;
end;

function GetMSecond(Time: TTime): Integer;
var
  h, m, s, ms: WORD;
begin
  DecodeTime(Time, h, m, s, ms);
  Result := ms;
end;

// ?????,?????????
function GetMonthLastDay(Cs_Year,Cs_Month:string):string;
Var
   V_date:Tdate;
   V_year,V_month,V_day:word;
begin
  V_year:=strtoint(Cs_year);
  V_month:=strtoint(Cs_month);
  if V_month=12 then
  begin
     V_month:=1;
     inc(V_year);
  end
  else
  inc(V_month);
  V_date:=EncodeDate(V_year,V_month,1);
  V_date:=V_date-1;
  DecodeDate(V_date,V_year,V_month,V_day);
  Result:=DateToStr(EncodeDate(V_year,V_month,V_day));
end;

// ?????????
function IsLeapYear( nYear: Integer ): Boolean;
begin
  Result := (nYear mod 4 = 0) and ((nYear mod 100 <> 0) or (nYear mod 400 = 0));
end;

function dateBeginOfMonth(D: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(D, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);
end;

function dateEndOfMonth(D: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(D, Year, Month, Day);
  if Month = 12 then
  begin
    Inc(Year);
    Month := 1;
  end else
    Inc(Month);
  Result := EncodeDate(Year, Month, 1) - 1;
end;

function dateEndOfYear(D: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(D, Year, Month, Day);
  Result := EncodeDate(Year, 12, 31);
end;

function DaysBetween(Date1, Date2: TDateTime): integer;
begin
  Result := Trunc(Date2) - Trunc(Date1) + 1;
  if Result < 0 then Result := 0;
end;

{* ???????? Examples: StrTran('aruyfbn','ruy','====='); ??'a=====fbn'}
function StrTran(psInput:String; psSearch:String; psTranWith:String):String;
var liPosition,liLenOfSrch,liLenOfIn:integer;
begin
  liPosition:=Pos(psSearch,psInput);
  liLenOfSrch:=Length(psSearch);
  liLenOfIn:=Length(psInput);
  while liPosition>0 do
  begin
    psInput:=Copy(psInput,1,liPosition-1)
    +psTranWith
    +Copy(psInput,liPosition+liLenOfSrch,liLenOfIn);
     liPosition:=Pos(psSearch,psInput)
  end;
  Result:=psInput
end;

{ *????????[?????] Examples: Stuff('ABCDEFGHI',3,4,'12345');??'AB12345GHI'}
function Stuff(psInput:String; piBeginPlace,piCount:Integer; psStuffWith:String):String;
begin
  Result:=Copy(psInput,1,piBeginPlace-1)+psStuffWith+
          Copy(psInput,piBeginPlace+piCount,Length(psInput))
end;

function StrToHex(AStr: string): string;
var
   I : Integer;
//   Tmp: string;
begin
  Result := '';
  For I := 1 to Length(AStr) do
  begin
    Result := Result + Format('%2x', [Byte(AStr[I])]);
  end;
  I := Pos(' ', Result);
  While I <> 0 do
  begin
    Result[I] := '0';
    I := Pos(' ', Result);
  end;
end;

// ?????????
function HexToStr(AStr: string): string;
var
  I : Integer;
  CharValue: Word;
begin
  Result := '';
  for I := 1 to Trunc(Length(Astr)/2) do
  begin
    Result := Result + ' ';
    CharValue := TransChar(AStr[2*I-1])*16 + TransChar(AStr[2*I]);
    Result[I] := Char(CharValue);
  end;
end;

function Encrypt(const S: String; Key: Word): String;
var
  I : Integer;
begin
  Result := S;
  for I := 1 to Length(S) do
  begin
    Result[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(Result[I]) + Key) * C1 + C2;
    if Result[I] = Chr(0) then
      Result[I] := S[I];
  end;
  Result := StrToHex(Result);
end;

//???????
function Decrypt(const S: String; Key: Word): String;
var
  I: Integer;
  S1: string;
begin
  S1 := HexToStr(S);
  Result := S1;
  for I := 1 to Length(S1) do
  begin
    if char(byte(S1[I]) xor (Key shr 8)) = Chr(0) then
      begin
        Result[I] := S1[I];
        Key := (byte(Chr(0)) + Key) * C1 + C2; //??Key????
      end
    else
    begin
      Result[I] := char(byte(S1[I]) xor (Key shr 8));
      Key := (byte(S1[I]) + Key) * C1 + C2;
    end;
  end;
end;

function IsDigital(Value: string): boolean;
var
  i, j: integer;
  str: char;
begin
  result := true;
  Value := trim(Value);
  j := Length(Value);
  if j = 0 then
  begin
    result := false;
    exit;
  end;
  for i := 1 to j do
  begin
    str := Value[i];
    if not (str in ['0'..'9']) then
    begin
      result := false;
      exit;
    end;
  end;
end;

{???????}
function RandomStr(aLength : Longint) : String;
var
  X : Longint;
begin
  if aLength <= 0 then exit;
  SetLength(Result, aLength);
  for X:=1 to aLength do
    Result[X] := Chr(Random(26) + 65);
end;
function TransChar(AChar: Char): Integer;
begin
  if AChar in ['0'..'9'] then
    Result := Ord(AChar) - Ord('0')
  else
    Result := 10 + Ord(AChar) - Ord('A');
end;

function PadL(psInput:String; piWidth:Integer; pcPadWith:Char):String;
begin
  if length(psInput)<piWidth then
    Result:=substr(psInput, 1, piWidth)
  else begin
    Result:=Replicate(pcPadWith,piWidth-Length(psInput))+psInput;
  end;
end;

{* ???psInput????????pcPadWith???????PiWidth????}
function PadR(psInput:String; piWidth:Integer; pcPadWith:Char):String;
begin
  if length(psInput)<piWidth then
    Result:=substr(psInput, 1, piWidth)
  else
      Result:=psInput+Replicate(pcPadWith,piWidth-Length(psInput));
end;

function Replicate(pcChar:Char; piCount:integer):string;
begin
  Result:='';
  SetLength(Result,piCount);
  fillChar(Pointer(Result)^,piCount,pcChar)
end;

function Replace(Str,s1,s2:string;CaseSensitive:Boolean):string;
var i:integer;
   s,t:string;
begin
  s:='';
  t:=str;
  repeat
     if casesensitive then
        i:=pos(s1,t)
     else
        i:=pos(lowercase(s1),lowercase(t));
        if i>0 then
           begin
              s:=s+Copy(t,1,i-1)+s2;
              t:=Copy(t,i+Length(s1),MaxInt);
           end
        else
           s:=s+t;
  until i<=0;
  result:=s;
end;

function dtos(rdate:TDateTime):string;
begin
   if rDate>0 then
      Result := FormatDateTime('yyyymmdd', rDate)
   else
      Result := Replicate('0', 8);
end;

function stod(s:string):TDatetime;
begin
   if CadeToInt(s)>0 then
      Result := EncodeDate(strtoint(substr(s,1,4)), strtoint(substr(s,5,2)), strtoint(substr(s,7,2)))
   else
      Result := 0.0;
end;

function xVal(sval:string):extended;
var icode:integer;
begin
   icode:=0;
   Val(alltrim(sval), Result, iCode);
end;

function xStr(iVal:Extended):string;
begin
   SetLength(Result, 10);
   Result := '';
   Str(iVal:10:0, Result);
end;

function Hora():string;
begin
   Result := FormatDateTime('hhnnsszz', now);
end;

function Upper(str:string):string;
begin
   Result := UpperCase(str);
end;

function Lower(str:string):string;
begin
   Result := LowerCase(str);
end;

procedure Crear_Form(panel:TPanel;Formlario:Tform; Titulo:String;arriba,Derecha,Ancho,Largo:Integer; Botones:TBorderIcons);overload;
{Creada: 23/12/2013, Creo: Rafael Ramirez Tadeo
Descripcion: Procedimiento para crear un formulario en tiempo de ejecucion
panel : Nombre del panel
Formlario: Nombre del Formulario
Titulo: Titulo de la ventana
Posicion Top
Posicion Left
Witch:Ancho,
Height :Largo
Botones: Botones que aparecen en el formulario}
begin
  panel.Visible         := True;
  panel.Top             := arriba;
  panel.left            := Derecha;
  panel.Width           := Largo;
  panel.Height          := Ancho;
  Formlario             := TForm.Create(nil);
  Formlario.Caption     := Titulo;
  panel.Parent          := Formlario;
  Formlario.Top         := panel.top;
  Formlario.Left        := panel.Left;
  Formlario.Width       := Largo+10;
  Formlario.Height      := Ancho+30;
  Formlario.BorderStyle := bsSingle;
  Formlario.Position    := poMainFormCenter;
  Formlario.ShowHint    := True;
  panel.Align           := alClient;
  Formlario.AutoSize    := True;
  Formlario.BorderIcons := botones;
  Formlario.ShowModal;
end;
procedure Crear_Form(panel:TPanel; Titulo:String;Ancho, Largo:Integer; Botones:TBorderIcons);overload;
{Creada: 23/12/2013, Creo: Rafael Ramirez Tadeo
Descripcion: Procedimiento para crear un formulario en tiempo de ejecucion
panel : Nombre del panel
Titulo: Titulo de la ventana
Witch:Largo,
Height: Ancho :
Botones: Botones que aparecen en el formulario}
Var
  Formlario: Tform;
begin
  panel.Visible         := True;
  panel.Height          := Ancho;
  panel.Width           := Largo;
  Formlario             := TForm.Create(nil);
  Formlario.Width       := Largo+20;
  Formlario.Height      := Ancho+40;
  Formlario.Caption     := Titulo;
  panel.Parent          := Formlario;
  panel.Align           := alClient;
  Formlario.BorderStyle := bsSingle;
  Formlario.Position    := poScreenCenter;
  Formlario.ShowHint    := True;
  Formlario.AutoSize    := True;
  Formlario.BorderIcons := botones;
  Formlario.ShowModal;
end;
procedure Crear_Form(panel:TcxPageControl; Titulo:String;Ancho, Largo:Integer; Botones:TBorderIcons; Indice:Integer);overload;
{Creada: 23/12/2013, Creo: Rafael Ramirez Tadeo
Descripcion: Procedimiento para crear un formulario en tiempo de ejecucion
panel : Nombre del panel
Titulo: Titulo de la ventana
Witch:Largo,
Height: Ancho :
Botones: Botones que aparecen en el formulario}
Var
  Formlario: Tform;
begin
  VerPageControl(panel, Indice);
  panel.Visible         := True;
  panel.Height          := Ancho;
  panel.Width           := Largo;
  Formlario             := TForm.Create(nil);
  Formlario.Width       := Largo+20;
  Formlario.Height      := Ancho+40;
  Formlario.Caption     := Titulo;
  panel.Parent          := Formlario;
  panel.Align           := alClient;
  Formlario.BorderStyle := bsSingle;
  Formlario.Position    := poScreenCenter;
  Formlario.ShowHint    := True;
  Formlario.AutoSize    := True;
  Formlario.BorderIcons := botones;
  Formlario.ShowModal;
end;
function VerPageControl(var panel:TcxPageControl; Indice:Integer):Boolean;
var
  I:Integer;
begin
  for I := 0 to Panel.PageCount - 1 do
  begin
    if I = Indice then Panel.Pages[I].Visible := True
    else Panel.Pages[I].Visible := False;
  end;
  panel.Properties.HideTabs := True;
  panel.visible := true;
end;
function Encripta(Cadena: string): string;
var
  Cuenta, CarByte, Calculo, ValCaracter, nBytes: Integer;
  Resul, ResCom: string;
begin
  ResCom := '';
  for Cuenta := 1 to Length(Cadena) do
  begin
    CarByte := Ord(Cadena[Cuenta]);

    // Encriptar el dato
    Calculo := (CarByte * Trunc((Cuenta + 2) / 2));
    nBytes := 0;
    Resul := '';
    while Calculo > 255 do
    begin
      ValCaracter := Random(3) + 252;
      Calculo := Calculo - ValCaracter;

      Resul := Resul + Chr(ValCaracter);
      Inc(nBytes);
    end;
    if Calculo > 0 then
    begin
      Resul := Resul + Chr(Calculo);
      Inc(nBytes);
    end;

    ResCom := ResCom + Chr(nBytes) + Resul;
  end;

  Encripta := ResCom;
end;

function DesEncripta(Cadena: string): string;
var
  Sec, Cuenta, nBytes, Calculo, H, CarByte: Integer;
  Resul: string;
begin
  Cuenta := 0;
  Sec := 0;
  Resul := '';
  while Cuenta < Length(Cadena) do
  begin
    Inc(Cuenta);
    Inc(Sec);

    // Determinar el número de bytes que ocupa el caracter
    nBytes := Ord(Cadena[Cuenta]);

    // Totalizar los bytes
    Calculo := 0;
    for h := 1 to nBytes do
    begin
      Calculo := Calculo + Ord(Cadena[Cuenta + H]);
    end;

    CarByte := Trunc((Calculo) / Trunc((Sec + 2) / 2));
    Cuenta := Cuenta + (nBytes);
    Resul := Resul + Chr(CarByte);
    //showmessage(Chr(CarByte));
  end;
  DesEncripta := Resul;
end;

function ActivarDesactivar_Botones(var manager:TdxBarManager; tabla:TZQuery):Boolean; overload;
{Creo; Rafael
Descripcion: Para activar o desactiva los botones de la barra de navegacion
Este son los tag que debe tener cada boton
dxInsertar.tag  := 1;
dxEditar.tag    := 1;
dxGuardar.tag   := 9;
dxCancelar.tag  := 9;
dxEliminar.tag  := 1;
dxImprimir.tag  := 1;
dxRefrescar.tag := 1;
dxSalir.tag     := 1;}
var contador:integer;
begin
  if tabla.State in [dsInsert,dsEdit] then          //Si esta en modo insercion o edicion
  begin
    for contador := 0 to manager.ItemCount - 1 do   //Recorre todos item del barmanager
    begin
    if (manager.Items[contador].Tag = 9) then       //Si es el boton de guardar o cancelar
      manager.Items[contador].Enabled:=true         //Lo habilita
    else if (manager.Items[contador].Tag = 1) then  //Si son los demas botones
      manager.Items[contador].Enabled:=false;       //Los inhabilita
    end;
  end else if tabla.State in [dsBrowse] then        //Si esta en modo de navegacion
  begin
    for contador := 0 to manager.ItemCount - 1 do   //Recorre el barmanager
    begin
    if (manager.Items[contador].Tag = 9) then       //Si el boton es guardar o cancelar
      manager.Items[contador].Enabled:=False        //Lo inhabilita
    else if (manager.Items[contador].Tag = 1) then  //Si son los demas botones
      manager.Items[contador].Enabled:=True;        //Los habilita
    end;
  end;
end;

function ActivarDesactivar_Botones(var manager:TdxBarManager; tabla:TZQuery; var Grid:TcxGrid):Boolean; overload;
{Creo; Rafael
Descripcion: Para activar o desactiva los botones de la barra de navegacion
Este son los tag que debe tener cada boton
dxInsertar.tag  := 1;
dxEditar.tag    := 1;
dxGuardar.tag   := 9;
dxCancelar.tag  := 9;
dxEliminar.tag  := 1;
dxImprimir.tag  := 1;
dxRefrescar.tag := 1;
dxSalir.tag     := 1;}
var contador:integer;
begin
  if tabla.State in [dsInsert,dsEdit] then          //Si esta en modo insercion o edicion
  begin
    for contador := 0 to manager.ItemCount - 1 do   //Recorre todos item del barmanager
    begin
    if (manager.Items[contador].Tag = 9) then       //Si es el boton de guardar o cancelar
      manager.Items[contador].Enabled:=true         //Lo habilita
    else if (manager.Items[contador].Tag = 1) then  //Si son los demas botones
      manager.Items[contador].Enabled:=false;       //Los inhabilita
    end;
    Grid.enabled := False;
  end else if tabla.State in [dsBrowse] then        //Si esta en modo de navegacion
  begin
    for contador := 0 to manager.ItemCount - 1 do   //Recorre el barmanager
    begin
    if (manager.Items[contador].Tag = 9) then       //Si el boton es guardar o cancelar
      manager.Items[contador].Enabled:=False        //Lo inhabilita
    else if (manager.Items[contador].Tag = 1) then  //Si son los demas botones
      manager.Items[contador].Enabled:=True;        //Los habilita
    end;
    Grid.enabled := True;
  end;
end;

function GetAppVersionStr: string;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  Exe := ParamStr(0);
  Size := GetFileVersionInfoSize(PChar(Exe), Handle);
  if Size = 0 then RaiseLastOSError;
  SetLength(Buffer, Size);
  if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then RaiseLastOSError;
  if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then  RaiseLastOSError;
  Result := Format('%d.%d.%d.%d',
    [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
     LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
     LongRec(FixedPtr.dwFileVersionLS).Hi,  //release
     LongRec(FixedPtr.dwFileVersionLS).Lo]) //build
end;

Function NextId(sId: String; STabla: String):Integer;
{Creo: Gamael Hernandez Huerta
Descripcion: Funcion para AutoIncrementar el ID por codigo
}
var
  QrNext:TzReadOnlyQuery;
  iNext:Integer;
begin
  iNext:=1;
  QrNext:=TzReadOnlyQuery.Create(nil);
  QrNext.Connection:=Connection.zConnection;
  with QrNext do
  begin
    try
      SQL.Text:='select ifnull(max('+sId+'),0)+1 as sgte from ' + sTabla;
      Open;
      if RecordCount>0 then
        iNext:=FieldByName('sgte').AsInteger;
    finally
      Destroy;
    end;
  end;
  result:=iNext;
end;
{function GetAppVersionStr: string;
var
  Rec: LongRec;
begin
  Rec := LongRec(GetFileVersion(ParamStr(0)));
  Result := Format('%d.%d', [Rec.Hi, Rec.Lo])
end; }
(*
    function GetFileVersion(filename: string = ''; const Fmt: string = '%d.%d.%d.%d'): string;
    var
    iBufferSize: DWORD;
    iDummy: DWORD;
    pBuffer: Pointer;
    pFileInfo: Pointer;
    iVer: array[1..4] of word;
    begin
    // set default value
    if filename = '' then
    FileName := Application.ExeName;
    Result := '';
    // get size of version info (0 if no version info exists)
    iBufferSize := GetFileVersionInfoSize(PChar(filename), iDummy);
    if (iBufferSize > 0) then
    begin
    Getmem(pBuffer, iBufferSize);
    try
    // get fixed file info
    GetFileVersionInfo(PChar(filename), 0, iBufferSize, pBuffer);
    VerQueryValue(pBuffer, '\', pFileInfo, iDummy);
    // read version blocks
    iVer[1] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[2] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[3] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    iVer[4] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    finally
    Freemem(pBuffer);
    end;
    // format result string
    Result := Format(Fmt, [iVer[1], iVer[2], iVer[3], iVer[4]]);
    end;
    end;
*)
Function CantidadEnLetra1(curCantidad: Currency; MonNal: integer): String;
var i: integer;
  Cantidad, Centavos: Currency;
  BloqueCero, NumeroBloques, Digito: Byte;
  PrimerDigito, SegundoDigito, TercerDigito: Byte;
  Resultado, Temp, strCentavos, Bloque: String;
  Unidades: Array[0..28] of String;
  Decenas: Array[0..8] of String;
  Centenas: Array[0..8] of String;
begin
  Unidades[0] := 'UN'; Unidades[1] := 'DOS'; Unidades[2] := 'TRES'; Unidades[3] := 'CUATRO';
  Unidades[4] := 'CINCO'; Unidades[5] := 'SEIS'; Unidades[6] := 'SIETE'; Unidades[7] := 'OCHO';
  Unidades[8] := 'NUEVE'; Unidades[9] := 'DIEZ'; Unidades[10] := 'ONCE'; Unidades[11] := 'DOCE';
  Unidades[12] := 'TRECE'; Unidades[13] := 'CATORCE'; Unidades[14] := 'QUINCE'; Unidades[15] := 'DIESISEIS';
  Unidades[16] := 'DIESISIETE'; Unidades[17] := 'DIESIOCHO'; Unidades[18] := 'DIESINUEVE';
  Unidades[19] := 'VEINTE'; Unidades[20] := 'VEINTIUNO'; Unidades[21] := 'VEINTIDOS';
  Unidades[22] := 'VEINTITRES'; Unidades[23] := 'VEINTICUATRO'; Unidades[24] := 'VEINTICINCO';
  Unidades[25] := 'VEINTISEIS'; Unidades[26] := 'VEINTISIETE'; Unidades[27] := 'VEINTIOCHO'; Unidades[28] := 'VEINTINUEVE';

  Decenas[0] := 'DIEZ'; Decenas[1] := 'VEINTE'; Decenas[2] := 'TREINTA'; Decenas[3] := 'CUARENTA';
  Decenas[4] := 'CINCUENTA'; Decenas[5] := 'SESENTA'; Decenas[6] := 'SETENTA'; Decenas[7] := 'OCHENTA'; Decenas[8] := 'NOVENTA';

  Centenas[0] := 'CIENTO'; Centenas[1] := 'DOSCIENTOS'; Centenas[2] := 'TRESCIENTOS'; Centenas[3] := 'CUATROCIENTOS';
  Centenas[4] := 'QUINIENTOS'; Centenas[5] := 'SEISCIENTOS'; Centenas[6] := 'SETECIENTOS'; Centenas[7] := 'OCHOCIENTOS'; Centenas[8] := 'NOVECIENTOS';

  Cantidad := Trunc(curCantidad);
  Centavos := (curCantidad - Cantidad) * 100;
  NumeroBloques := 1;
  Repeat
    PrimerDigito := 0;
    SegundoDigito := 0;
    TercerDigito := 0;
    Bloque := '';
    BloqueCero := 0;
    For i := 1 To 3 do
    begin
      Digito := Round(Cantidad) Mod 10;
      If Digito <> 0 Then
      begin
        Case i of
          1:
          begin
            Bloque := ' ' + Unidades[Digito - 1];
            PrimerDigito := Digito;
          end; //case 1
          2:
          begin
            If Digito <= 2 Then
            begin
              Bloque := ' ' + Unidades[(Digito * 10 + PrimerDigito - 1)];
            end Else
            begin
              If PrimerDigito <> 0 then
                Temp := ' Y'
              else Temp := '';
              Bloque := ' ' + Decenas[Digito - 1] + Temp + Bloque;
            End; //if
            SegundoDigito := Digito;
          end; //case 2
          3:
          begin
            If (Digito = 1) and (PrimerDigito = 0) and (SegundoDigito = 0) then
              Temp := 'CIEN'
            else Temp := Centenas[Digito-1];
            Bloque := ' ' + Temp + Bloque;
            TercerDigito := Digito;
          end; //case 3
        End; //case
      end Else
      begin
        BloqueCero := BloqueCero + 1;
      End; // If Digito <>0
      Cantidad := Int(Cantidad / 10);
      If Cantidad = 0 Then
      begin
        Break;
      End; // If Cantidad=0
    end; //for
    Case NumeroBloques of
      1:
        Resultado := Bloque;
      2:
      begin
        if BloqueCero = 3 then
          Temp := ''
        else Temp := ' MIL';
        Resultado := Bloque + Temp + Resultado;
      end; //case 2
      3:
      begin
        If (PrimerDigito = 1) and (SegundoDigito = 0) and (TercerDigito = 0) then
          Temp := ' MILLON'
        else Temp := ' MILLONES';
        Resultado := Bloque + Temp + Resultado;
      end; //case 3
    End; //case
    NumeroBloques := NumeroBloques + 1;
  Until Cantidad = 0; //repeat
  case MonNal of
    0:
    begin
      If curCantidad > 1 then
        Temp := ' CENTAVOS ***'
      else Temp := ' CENTAVO ***';
    CantidadEnLetra1 := Resultado + Temp;

    end;
    1:
    begin
      If curCantidad > 1 then
        Temp := ' PESOS '
      else Temp := ' PESO ';
      if Centavos=0 then strCentavos := ''
      else strCentavos := 'CON '+CantidadEnLetra1(Centavos, 0);
      CantidadEnLetra1 := 'SON: *** ' + Resultado + Temp + strCentavos;
    end;
    2:
    begin
      If curCantidad > 1 then
        Temp := ' DLLS '
      else Temp := ' DOLAR ';
      if Centavos=0 then strCentavos := ''
      else strCentavos := 'CON '+CantidadEnLetra1(Centavos, 0);
      CantidadEnLetra1 := 'SON: *** ' + Resultado + Temp + strCentavos;
    end;
  end;
End;

Function CantidadALetra2(curCantidad: Currency; MonedaNacional: Boolean): String;
begin
  Unidades[0] := 'UN'; Unidades[1] := 'DOS'; Unidades[2] := 'TRES'; Unidades[3] := 'CUATRO';
  Unidades[4] := 'CINCO'; Unidades[5] := 'SEIS'; Unidades[6] := 'SIETE'; Unidades[7] := 'OCHO';
  Unidades[8] := 'NUEVE'; Unidades[9] := 'DIEZ'; Unidades[10] := 'ONCE'; Unidades[11] := 'DOCE';
  Unidades[12] := 'TRECE'; Unidades[13] := 'CATORCE'; Unidades[14] := 'QUINCE'; Unidades[15] := 'DIESISEIS';
  Unidades[16] := 'DIESISIETE'; Unidades[17] := 'DIESIOCHO'; Unidades[18] := 'DIESINUEVE';
  Unidades[19] := 'VEINTE'; Unidades[20] := 'VEINTIUNO'; Unidades[21] := 'VEINTIDOS';
  Unidades[22] := 'VEINTITRES'; Unidades[23] := 'VEINTICUATRO'; Unidades[24] := 'VEINTICINCO';
  Unidades[25] := 'VEINTISEIS'; Unidades[26] := 'VEINTISIETE'; Unidades[27] := 'VEINTIOCHO'; Unidades[28] := 'VEINTINUEVE';

  Decenas[0] := 'DIEZ'; Decenas[1] := 'VEINTE'; Decenas[2] := 'TREINTA'; Decenas[3] := 'CUARENTA';
  Decenas[4] := 'CINCUENTA'; Decenas[5] := 'SESENTA'; Decenas[6] := 'SETENTA'; Decenas[7] := 'OCHENTA'; Decenas[8] := 'NOVENTA';

  Centenas[0] := 'CIENTO'; Centenas[1] := 'DOSCIENTOS'; Centenas[2] := 'TRESCIENTOS'; Centenas[3] := 'CUATROCIENTOS';
  Centenas[4] := 'QUINIENTOS'; Centenas[5] := 'SEISCIENTOS'; Centenas[6] := 'SETECIENTOS'; Centenas[7] := 'OCHOCIENTOS'; Centenas[8] := 'NOVECIENTOS';

  curCantidad := (curCantidad);
  Cantidad := Int(curCantidad);
  Centavos := (curCantidad - Cantidad) * 100;
  NumeroBloques := 1;
  Repeat
    PrimerDigito := 0;
    SegundoDigito := 0;
    TercerDigito := 0;
    Bloque := '';
    BloqueCero := 0;
    For i := 1 To 3 do
    begin
      Digito := Round(Cantidad) Mod 10;
      If Digito <> 0 Then
      begin
        Case i of
          1:
          begin
            Bloque := ' ' + Unidades[Digito - 1];
            PrimerDigito := Digito;
          end; //case 1
          2:
          begin
            If Digito <= 2 Then
            begin
              Bloque := ' ' + Unidades[(Digito * 10 + PrimerDigito - 1)];
            end Else
            begin
              If PrimerDigito <> 0 then
                Temp := ' Y'
              else Temp := '';
              Bloque := ' ' + Decenas[Digito - 1] + Temp + Bloque;
            End; //if
            SegundoDigito := Digito;
          end; //case 2
          3:
          begin
            If (Digito = 1) and (PrimerDigito = 0) and (SegundoDigito = 0) then
              Temp := 'CIEN'
            else Temp := Centenas[Digito-1];
            Bloque := ' ' + Temp + Bloque;
            TercerDigito := Digito;
          end; //case 3
        End; //case
      end Else
      begin
        BloqueCero := BloqueCero + 1;
      End; // If Digito <>0
      Cantidad := Int(Cantidad / 10);
      If Cantidad = 0 Then
      begin
        Break;
      End; // If Cantidad=0
    end; //for
    Case NumeroBloques of
      1:
        Resultado := Bloque;
      2:
      begin
        if BloqueCero = 3 then
          Temp := ''
        else Temp := ' MIL';
        Resultado := Bloque + Temp + Resultado;
      end; //case 2
      3:
      begin
        If (PrimerDigito = 1) and (SegundoDigito = 0) and (TercerDigito = 0) then
          Temp := ' MILLON'
        else Temp := ' MILLONES';
        Resultado := Bloque + Temp + Resultado;
      end; //case 3
    End; //case
    NumeroBloques := NumeroBloques + 1;
  Until Cantidad = 0; //repeat
  If MonedaNacional Then
  begin
    If curCantidad > 1      then Temp := ' PESOS '
    else If curCantidad = 1 then Temp := ' PESO '
    ELSE If (curCantidad > 0.00) and (curCantidad < 1) then Temp := ' CERO PESO ';
    CantidadALetra2 := '' + Resultado + Temp + FormatFloat('00',Centavos) + '/100 M.N. ';
  end Else
  begin
    If curCantidad > 1 then Temp := ' DLLS '
    else If curCantidad = 1 then Temp := ' DOLAR '
    ELSE If (curCantidad > 0.00) and (curCantidad < 1) then Temp := ' CERO DOLAR ';
    CantidadALetra2 := '' + Resultado + Temp + FormatFloat('00',Centavos) + '/100 DLL';
  End; // If MonedaNacional
End;

Function CantidadALetra3(curCantidad: Currency; MonedaNacional: String): String;
begin
  Unidades[0] := 'UN'; Unidades[1] := 'DOS'; Unidades[2] := 'TRES'; Unidades[3] := 'CUATRO';
  Unidades[4] := 'CINCO'; Unidades[5] := 'SEIS'; Unidades[6] := 'SIETE'; Unidades[7] := 'OCHO';
  Unidades[8] := 'NUEVE'; Unidades[9] := 'DIEZ'; Unidades[10] := 'ONCE'; Unidades[11] := 'DOCE';
  Unidades[12] := 'TRECE'; Unidades[13] := 'CATORCE'; Unidades[14] := 'QUINCE'; Unidades[15] := 'DIESISEIS';
  Unidades[16] := 'DIESISIETE'; Unidades[17] := 'DIESIOCHO'; Unidades[18] := 'DIESINUEVE';
  Unidades[19] := 'VEINTE'; Unidades[20] := 'VEINTIUNO'; Unidades[21] := 'VEINTIDOS';
  Unidades[22] := 'VEINTITRES'; Unidades[23] := 'VEINTICUATRO'; Unidades[24] := 'VEINTICINCO';
  Unidades[25] := 'VEINTISEIS'; Unidades[26] := 'VEINTISIETE'; Unidades[27] := 'VEINTIOCHO'; Unidades[28] := 'VEINTINUEVE';

  Decenas[0] := 'DIEZ'; Decenas[1] := 'VEINTE'; Decenas[2] := 'TREINTA'; Decenas[3] := 'CUARENTA';
  Decenas[4] := 'CINCUENTA'; Decenas[5] := 'SESENTA'; Decenas[6] := 'SETENTA'; Decenas[7] := 'OCHENTA'; Decenas[8] := 'NOVENTA';

  Centenas[0] := 'CIENTO'; Centenas[1] := 'DOSCIENTOS'; Centenas[2] := 'TRESCIENTOS'; Centenas[3] := 'CUATROCIENTOS';
  Centenas[4] := 'QUINIENTOS'; Centenas[5] := 'SEISCIENTOS'; Centenas[6] := 'SETECIENTOS'; Centenas[7] := 'OCHOCIENTOS'; Centenas[8] := 'NOVECIENTOS';

  curCantidad := (curCantidad);
  Cantidad := Int(curCantidad);
  Centavos := (curCantidad - Cantidad) * 100;
  NumeroBloques := 1;
  Repeat
    PrimerDigito := 0;
    SegundoDigito := 0;
    TercerDigito := 0;
    Bloque := '';
    BloqueCero := 0;
    For i := 1 To 3 do
    begin
      Digito := Round(Cantidad) Mod 10;
      If Digito <> 0 Then
      begin
        Case i of
          1:
          begin
            Bloque := ' ' + Unidades[Digito - 1];
            PrimerDigito := Digito;
          end; //case 1
          2:
          begin
            If Digito <= 2 Then
            begin
              Bloque := ' ' + Unidades[(Digito * 10 + PrimerDigito - 1)];
            end Else
            begin
              If PrimerDigito <> 0 then
                Temp := ' Y'
              else Temp := '';
              Bloque := ' ' + Decenas[Digito - 1] + Temp + Bloque;
            End; //if
            SegundoDigito := Digito;
          end; //case 2
          3:
          begin
            If (Digito = 1) and (PrimerDigito = 0) and (SegundoDigito = 0) then
              Temp := 'CIEN'
            else Temp := Centenas[Digito-1];
            Bloque := ' ' + Temp + Bloque;
            TercerDigito := Digito;
          end; //case 3
        End; //case
      end Else
      begin
        BloqueCero := BloqueCero + 1;
      End; // If Digito <>0
      Cantidad := Int(Cantidad / 10);
      If Cantidad = 0 Then
      begin
        Break;
      End; // If Cantidad=0
    end; //for
    Case NumeroBloques of
      1:
        Resultado := Bloque;
      2:
      begin
        if BloqueCero = 3 then
          Temp := ''
        else Temp := ' MIL';
        Resultado := Bloque + Temp + Resultado;
      end; //case 2
      3:
      begin
        If (PrimerDigito = 1) and (SegundoDigito = 0) and (TercerDigito = 0) then
          Temp := ' MILLON'
        else Temp := ' MILLONES';
        Resultado := Bloque + Temp + Resultado;
      end; //case 3
    End; //case
    NumeroBloques := NumeroBloques + 1;
  Until Cantidad = 0; //repeat
  Temp := UpperCase(MonedaNacional);
  If curCantidad > 1 then
    Temp := Temp+'S';
  CantidadALetra3 := ' ' + Resultado + Temp + FormatFloat('00',Centavos) + '/100 M.N. ';
End;

function MDI_a_Modal(f : TForm) : TModalResult;
var
  mr : TModalResult;
begin 
  try 
    f.FormStyle := fsNormal;
    f.Position := poscreencenter;
    f.Hide; 
    mr := f.SHowmodal; 
    f.Hide; 
    f.FormStyle := fsMDIChild;
  except
    mr := mrCancel;
  end;
    MDI_a_Modal := mr;
end;

function Guardar_Kardex(contrato, usuario, Descripcion, Origen:string):Boolean; overload;
var
  Kardex: tzquery;
begin
  Kardex := TZQuery.Create(nil);
  Kardex.Connection := connection.zConnection;
  Kardex.Active := False ;
  Kardex.SQL.Clear ;
  Kardex.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                              'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
  Kardex.ParamByName('Contrato').AsString   := Global_Contrato ;
  Kardex.ParamByName('Usuario').AsString    := Global_Usuario ;
  Kardex.ParamByName('Fecha').AsDateTime    := Date ;
  Kardex.ParamByName('Hora').AsString       := FormatDateTime('hh:mm:ss.zzz', Now);
  Kardex.ParamByName('Descripcion').AsString:= Descripcion+' desde la IP:['+global_ip+']';
  Kardex.ParamByName('Origen').asString     := Origen;
  Kardex.ExecSQL;
  sleep(10);
  Kardex.destroy;
end;
function Mostrar_Excepciones(Error:String):string ;overload;
begin
  if Error = 'Exception'            then Result := '"Clase base"' ;
  if Error = 'EAbort'               then Result := 'Abortar sin cuadro de diálogo' ;
  if Error = 'EAbstractError'       then Result := 'Error método abstracto' ;
  if Error = 'AssertionFailed'      then Result := 'Afirme llamada fallida' ;
  if Error = 'EBitsError'           then Result := 'Error array booleano' ;
  if Error = 'ECommonCalendarError' then Result := 'Error Calendario calc' ;
  if Error = 'EDateTimeError'       then Result := 'Error al calcula la fecha' ;
  if Error = 'EMonthCalError'       then Result := 'Error al calcular el mes' ;
  if Error = 'EConversionError'     then Result := '"Error al convertir"' ;
  if Error = 'EConvertError'        then Result := '"Error al convertir, tipo de dato invalido"' ;
  if Error = 'EDatabaseError'       then Result := 'Error de Base de Datos' ;
  if Error = 'EExternal'            then Result := 'Error de hardware / Windows' ;
  if Error = 'EAccessViolation '    then Result := 'Error de memoria' ;
  if Error = 'EControlC'            then Result := 'Ocurrio una Cancelación del usuario' ;
  if Error = 'EExternalException'   then Result := 'Error interno' ;
  if Error = 'EIntError'            then Result := 'Error al calcular un Entero' ;
  if Error = 'EDivByZero'           then Result := 'Error no se puede Dividir por cero' ;
  if Error = 'EIntOverflow'         then Result := 'Desbordamiento de enteros' ;
  if Error = 'ERangeError'          then Result := 'Fuera de rango de valores' ;
  if Error = 'EMathError'           then Result := 'Error de punto flotante' ;
  if Error = 'EInvalidArgument'     then Result := 'Tipo de datos incorrecto' ;
  if Error = 'EInvalidOp'           then Result := 'Operacion Inapropiada' ;
  if Error = 'EOverflow'            then Result := 'Valor demasiado grande' ;
  if Error = 'EUnderflow'           then Result := 'Valor demasiado pequeño' ;
  if Error = 'EZeroDivide'          then Result := 'Dividir por Zero' ;
  if Error = 'EStackOverflow'       then Result := 'Problema grave de Delphi' ;
  if Error = 'EHeapException'       then Result := 'Problema de memoria' ;
  if Error = 'EInvalidPointer'      then Result := 'Puntero no encontrado en memoria' ;
  if Error = 'EOutOfMemory'         then Result := 'No se puede asignar memoria' ;
  if Error = 'EInOutError'          then Result := 'Error IO' ;
  if Error = 'EInvalidCast'         then Result := 'Error de fundición de objetos' ;
  if Error = 'EInvalidOperation'    then Result := 'Error de op componentes' ;
  if Error = 'EMenuError'           then Result := 'Error Elemento de menú' ;
  if Error = 'EOSError'             then Result := 'Error del sistema operativo' ;
  if Error = 'EParserError'         then Result := 'Error de análisis' ;
  if Error = 'EPrinter'             then Result := 'Error de impresora' ;
  if Error = 'EPropertyError'       then Result := 'Error propiedad Class' ;
  if Error = 'EPropReadOnly'        then Result := 'Error al Acceder a la propiedad de solo lectura' ;
  if Error = 'EPropWriteOnly'       then Result := 'Error al Acceder a la propiedad de escritura' ;
  if Error = 'EThread'              then Result := 'Error Tema' ;
  if Error = 'EVariantError'        then Result := 'Problema Variant' ;
end;
{$ENDREGION}
end.
