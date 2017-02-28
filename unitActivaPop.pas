//unidad creada por cpl: activa las opciones shortcut del popup
//activapop(nombre del formulario,nombre popup del formulario)
//desactivapop(nombre del popup); aplicar antes de aplicar los permisos tbotones

unit unitActivaPop;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, toolwin,ExtCtrls,jpeg,StrUtils, JvBackgrounds, ExtDlgs, StdCtrls,inifiles,ComCtrls,
  Menus;

procedure activapop( formulario:tForm; pmenu: tpopupmenu);
procedure desactivapop( pmenu: tpopupmenu);
procedure activapop2( pagina :tTabSheet; pmenu: tpopupmenu);

implementation

procedure activapop( formulario :tForm; pmenu: tpopupmenu);
var contador:integer;
begin
      for contador := 0 to pmenu.Items.Count - 1 do
      begin
        if (pmenu.Items[contador].Tag = 9) then
        begin
          pmenu.Items[contador].Enabled:=true;
        end
        else
          pmenu.Items[contador].Enabled:=false;
      end;
       formulario.PopupMenu:=pmenu;
end;

procedure desactivapop( pmenu: tpopupmenu);
var contador:integer;
begin
  for contador := 0 to pmenu.Items.Count - 1 do
  begin
    if (pmenu.Items[contador].Tag = 9) then
    begin
      pmenu.Items[contador].Enabled:=false;
    end
    else
      pmenu.Items[contador].Enabled:=true;
  end;
end;

procedure activapop2( pagina :tTabSheet; pmenu: tpopupmenu);
var contador:integer;
begin
      for contador := 0 to pmenu.Items.Count - 1 do
      begin
        if (pmenu.Items[contador].Tag = 9) then
        begin
          pmenu.Items[contador].Enabled:=true;
        end
        else
          pmenu.Items[contador].Enabled:=false;
      end;
       pagina.PopupMenu:=pmenu;
end;
end.
