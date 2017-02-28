unit UTChartMouse;

interface
type
    TChartMouse = Class
           x, y, Oldx, Oldy: Integer;
           Down, Respaldado: Boolean;
           Select: Integer;
           Wheel: Boolean;
           Constructor MouseConst;
    End;

implementation

Constructor TChartMouse.MouseConst;
begin
  inherited ;
  Select := -1;
  Respaldado := False;
  Wheel := False;
end;

end.
