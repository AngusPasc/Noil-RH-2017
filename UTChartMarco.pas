unit UTChartMarco;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  ExtCtrls, StdCtrls;

type
 tChartMarco = Class
    x, y, Width, Height,level: Integer;
    BColor,FColor: TColor;
    Hijos, HijosNivel: Integer;
    swbs,swbsanterior,Cortes,Descripcion:string;
    Paquete: Boolean;
    Merx,Mery,Marx,Mary,wbsCenter,wbsHeight: Integer;

    constructor create;
  End;

implementation

Constructor TChartMarco.create;
begin
     x:=0;
     y:=0;
     Width:=0;
     Height:=0;
     Level:=0;
end;

end.
