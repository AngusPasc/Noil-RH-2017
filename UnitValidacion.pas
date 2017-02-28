unit UnitValidacion;

interface
 uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, sSkinProvider, dblookup, UnitExcepciones, UdbGrid,
  CustomizeDlg, unittbotonespermisos, UnitValidaTexto, UnitExcel, ComObj,
  UnitTablasImpactadas, unitactivapop, UFunctionsGHH,strutils;


  function IsDate(ADate: string): Boolean;
  procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
  function keyFiltroTdbedit (tdb:tdbedit;tecla:char):boolean;//cpl
  procedure tdbeditchangef(compo:tdbedit;etiqueta:string);
  procedure tdbeditchangei(compo:tdbedit;etiqueta:string);
  function quitarcomas(texto:string):string;

  function keyFiltroTedit (tdb:tedit;tecla:char):boolean;//cpl
  procedure tEditChangef(compo:tedit;etiqueta:string);
  procedure tEditChangei(compo:tedit;etiqueta:string);

  procedure tCurrenciEditChangef(compo:tCurrencyEdit;etiqueta:string);
  function keyFiltrotCurrencyEdit (tdb:tCurrencyEdit;tecla:char):boolean;//cpl  

  function keyFiltroTRxDBCalcEdit (tdb:TRxDBCalcEdit;tecla:char):boolean;//cpl
  procedure TRxDBCalcEditChangef(compo:TRxDBCalcEdit;etiqueta:string);

  function keyFiltroTRxCalcEdit (tdb:TRxCalcEdit;tecla:char):boolean;//cpl
  procedure TRxCalcEditChangef(compo:TRxCalcEdit;etiqueta:string);
implementation
//+++++++++++++++++++++++++++++Evento+++++++++++++++++++++++++++++++
//                        fecha string
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

function quitarcomas(texto:string):string;
var i:integer;
begin
  result:=''                    ;
  for i := 1 to length(texto) do
  begin
    if texto[i]<>',' then
    begin
      result:=result+texto[i];
    end;
  end;

end;
//+++++++++++++++++++++++++++++Evento before updte+++++++++++++++++++++++++++++++
//                              zeos-campo string
procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
  if Zeo.FieldValues[Camp]<0 then
  begin
    Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
  end;
end;





/////////////////////////////////////////////////////////////////////////////
//                         componente tdbEdit
//////////////////////////////////////////////////////////////////////////////

//+++++++++++++++++++++++++++++Evento Keypress+++++++++++++++++++++++++++++++
//                             tdbedit-tecla
function keyFiltroTdbedit (tdb:tdbedit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyfiltrotdbedit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyfiltrotdbedit:=false;
end;

//+++++++++++++++++++++++++++++Evento change+++++++++++++++++++++++++++++++
//  flotante                    tdbedit-cadena label
procedure tdbeditchangef(compo:tdbedit;etiqueta:string);
var pruevaFLOAT:extended;
CadenaComponente:String;
begin
  CadenaComponente:=compo.Text;
  if length(cadenaComponente)>0 then
  begin
    cadenaComponente:=quitarcomas(cadenaComponente);
    try
      {Antes de esto verificamos si pertence a un Dato tipo Currency}
      if pos('$',cadenaComponente) > 0 then
         cadenaComponente := ReplaceStr(cadenaComponente,'$','');

      pruevaFloat := StrToFloat(cadenaComponente);

      if (AnsiPos( '-',vartostr(cadenaComponente) ))>0  then
      begin
        messageDLg('Se cambio al valor absoluto en el campo '+etiqueta, mtInformation, [mbOk], 0);
        compo.Text:=FloattoStr((strToFloat(cadenaComponente))*-1);
      end;
    Except
      messageDLg('Valor incorrecto ingresado en el campo '+etiqueta, mtInformation, [mbOk], 0);
      compo.Text:='';
      exit;
    end;
  end;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)>0) then
    compo.text:=CadenaComponente;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)<0) then
    compo.text:=FloatToStr(strtoFloat(CadenaComponente)*-1);
end;

//+++++++++++++++++++++++++++++Evento change+++++++++++++++++++++++++++++++
//  integer                    tdbedit-cadena label
procedure tdbeditchangei(compo:tdbedit;etiqueta:string);
var pruevaint:integer;
CadenaComponente:String;
begin
  CadenaComponente:=compo.Text;
  if length(compo.text)>0 then
  begin
    cadenaComponente:=quitarcomas(cadenaComponente);
    try
      pruevaint := StrToInt(cadenaComponente);
      if (AnsiPos( '-',vartostr(cadenaComponente) ))>0  then
      begin
        messageDLg('Se cambio al valor absoluto en el campo '+etiqueta, mtInformation, [mbOk], 0);
        compo.Text:=InttoStr((strToInt(cadenaComponente))*-1);
      end;
    Except
      messageDLg('Valor incorrecto ingresado en el campo '+etiqueta, mtInformation, [mbOk], 0);
       compo.Text:='';
      exit;
    end;
  end;
  if (compo.text<>CadenaComponente) and (strtoInt(CadenaComponente)>0) then
    compo.text:=CadenaComponente;
  if (compo.text<>CadenaComponente) and (strtoInt(CadenaComponente)<0) then
    compo.text:=intToStr(strtoInt(CadenaComponente)*-1);
end;




/////////////////////////////////////////////////////////////////////////////
//                         componente tEdit
//////////////////////////////////////////////////////////////////////////////

//+++++++++++++++++++++++++++++Evento Keypress+++++++++++++++++++++++++++++++
//                             tedit-tecla
function keyFiltroTedit (tdb:tedit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyfiltrotedit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyfiltrotedit:=false;
end;

//+++++++++++++++++++++++++++++Evento change+++++++++++++++++++++++++++++++
//  flotante                    tedit-cadena label
procedure tEditChangef(compo:tedit;etiqueta:string);
var pruevaFLOAT:extended;
CadenaComponente:String;
begin
  CadenaComponente:=compo.Text;
  if length(cadenaComponente)>0 then
  begin
    cadenaComponente:=quitarcomas(cadenaComponente);
    try
      pruevaFloat := StrToFloat(cadenaComponente);
      if (AnsiPos( '-',vartostr(cadenaComponente) ))>0  then
      begin
        messageDLg('Se cambio al valor absoluto en el campo '+etiqueta, mtInformation, [mbOk], 0);
        compo.Text:=FloattoStr((strToFloat(cadenaComponente))*-1);
      end;
    Except
      messageDLg('Valor incorrecto ingresado en el campo '+etiqueta, mtInformation, [mbOk], 0);
      compo.Text:='';
      exit;
    end;
  end;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)>0) then
    compo.text:=CadenaComponente;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)<0) then
    compo.text:=FloatToStr(strtoFloat(CadenaComponente)*-1);
end;

//+++++++++++++++++++++++++++++Evento change+++++++++++++++++++++++++++++++
//  integer                    tedit-cadena label
procedure tEditChangei(compo:tedit;etiqueta:string);
var pruevaint:integer;
CadenaComponente:String;
begin
  CadenaComponente:=compo.Text;
  if length(compo.text)>0 then
  begin
    cadenaComponente:=quitarcomas(cadenaComponente);
    try
      pruevaint := StrToInt(cadenaComponente);
      if (AnsiPos( '-',vartostr(cadenaComponente) ))>0  then
      begin
        messageDLg('Se cambio al valor absoluto en el campo '+etiqueta, mtInformation, [mbOk], 0);
        compo.Text:=InttoStr((strToInt(cadenaComponente))*-1);
      end;
    Except
      messageDLg('Valor incorrecto ingresado en el campo '+etiqueta, mtInformation, [mbOk], 0);
       compo.Text:='';
      exit;
    end;
  end;
  if (compo.text<>CadenaComponente) and (strtoInt(CadenaComponente)>0) then
    compo.text:=CadenaComponente;
  if (compo.text<>CadenaComponente) and (strtoInt(CadenaComponente)<0) then
    compo.text:=intToStr(strtoInt(CadenaComponente)*-1);
end;


/////////////////////////////////////////////////////////////////////////////
//                         componente tCurrencyEdit
//////////////////////////////////////////////////////////////////////////////
//+++++++++++++++++++++++++++++Evento Keypress+++++++++++++++++++++++++++++++
//                             TRxDbCalcEdit-tecla

  function keyFiltrotCurrencyEdit (tdb:tCurrencyEdit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyFiltrotCurrencyEdit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyFiltrotCurrencyEdit:=false;
end;
//+++++++++++++++++++++++++++++Evento onchange+++++++++++++++++++++++++++++++
//Flotante                  tCurrencyEdit-cadena label
procedure tCurrenciEditChangef(compo:tCurrencyEdit;etiqueta:string);
var pruevaFLOAT:extended;
CadenaComponente:String;
begin
  CadenaComponente:=compo.Text;
  if length(cadenaComponente)>0 then
  begin
    cadenaComponente:=quitarcomas(cadenaComponente);
    try
      pruevaFloat := StrToFloat(cadenaComponente);
      if (AnsiPos( '-',vartostr(cadenaComponente) ))>0  then
      begin
        messageDLg('Se cambio al valor absoluto en el campo '+etiqueta, mtInformation, [mbOk], 0);
        compo.Text:=FloattoStr((strToFloat(cadenaComponente))*-1);
      end;
    Except
      messageDLg('Valor incorrecto ingresado en el campo '+etiqueta, mtInformation, [mbOk], 0);
      compo.Text:='';
      exit;
    end;
  end;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)>0) then
    compo.text:=CadenaComponente;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)<0) then
    compo.text:=FloatToStr(strtoFloat(CadenaComponente)*-1);
end;

/////////////////////////////////////////////////////////////////////////////
//                         componente TRxDBCalcEdit
//////////////////////////////////////////////////////////////////////////////

//+++++++++++++++++++++++++++++Evento Keypress+++++++++++++++++++++++++++++++
//                             TRxDbCalcEdit-tecla

  function keyFiltroTRxDBCalcEdit (tdb:TRxDBCalcEdit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyFiltroTRxDBCalcEdit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyFiltroTRxDBCalcEdit:=false;
end;

//+++++++++++++++++++++++++++++Evento onchange+++++++++++++++++++++++++++++++
//Flotante                  TRxDbCalcEdit-cadena label
procedure TRxDBCalcEditChangef(compo:TRxDBCalcEdit;etiqueta:string);
var pruevaFLOAT:extended;
CadenaComponente:String;
begin
  CadenaComponente:=compo.Text;
  if length(cadenaComponente)>0 then
  begin
    cadenaComponente:=quitarcomas(cadenaComponente);
    try
      pruevaFloat := StrToFloat(cadenaComponente);
      if (AnsiPos( '-',vartostr(cadenaComponente) ))>0  then
      begin
        messageDLg('Se cambio al valor absoluto en el campo '+etiqueta, mtInformation, [mbOk], 0);
        compo.Text:=FloattoStr((strToFloat(cadenaComponente))*-1);
      end;
    Except
      messageDLg('Valor incorrecto ingresado en el campo '+etiqueta, mtInformation, [mbOk], 0);
      compo.Text:='';
      exit;
    end;
  end;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)>0) then
    compo.text:=CadenaComponente;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)<0) then
    compo.text:=FloatToStr(strtoFloat(CadenaComponente)*-1);
end;
//+++++++++++++++++++++++++++++Evento Keypress+++++++++++++++++++++++++++++++
//                             TRxDbCalcEdit-tecla

  function keyFiltroTRxCalcEdit (tdb:TRxCalcEdit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyFiltroTRxCalcEdit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyFiltroTRxCalcEdit:=false;
end;
//+++++++++++++++++++++++++++++Evento onchange+++++++++++++++++++++++++++++++
//Flotante                  TRxCalcEdit-cadena label
procedure TRxCalcEditChangef(compo:TRxCalcEdit;etiqueta:string);
var pruevaFLOAT:extended;
CadenaComponente:String;
begin
  CadenaComponente:=compo.Text;
  if length(cadenaComponente)>0 then
  begin
    cadenaComponente:=quitarcomas(cadenaComponente);
    try
      pruevaFloat := StrToFloat(cadenaComponente);
      if (AnsiPos( '-',vartostr(cadenaComponente) ))>0  then
      begin
        messageDLg('Se cambio al valor absoluto en el campo '+etiqueta, mtInformation, [mbOk], 0);
        compo.Text:=FloattoStr((strToFloat(cadenaComponente))*-1);
      end;
    Except
      messageDLg('Valor incorrecto ingresado en el campo '+etiqueta, mtInformation, [mbOk], 0);
      compo.Text:='';
      exit;
    end;
  end;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)>0) then
    compo.text:=CadenaComponente;
  if (compo.text<>CadenaComponente) and (strtoFloat(CadenaComponente)<0) then
    compo.text:=FloatToStr(strtoFloat(CadenaComponente)*-1);
end;


end.
