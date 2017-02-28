unit UDbGrid;

interface

uses   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvBackgrounds, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Menus, JvMenus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection ,
   Clipbrd,USelCol,UnitExcepciones;


   type TicDbGrid=class

    private
      sfCadenaFiltro:String;
      OfdbGrid:TdbGrid;
      OfdbUGrid:TjvdbUltimGrid;
      ifGridColumn:Integer;
      pt: TGridcoord;
     // IcPopUp:TnotifyEvent;
      pop:TpopupMenu;
      OrigPop:TpopupMenu;
      procedure IcPopUp(Sender: TObject);
      // Procedimientos de copiado de registros para cualquier tipo de dbGrid
      Procedure dbGridCopy(grid: TDBGrid);Overload;
      Procedure dbGridCopy(grid: TJvDBUltimGrid);Overload;

      //Procedimientos de Inicializacion de PopUpMenu para cualquier tipo de DbGrid
      Procedure DBGridPopUp(grid: TDBGrid);overload;
      Procedure DBGridPopUp(grid: TJvDBUltimGrid);overload;

      //Procedimientos Para Filtrar los DbGrids
      Procedure DBGridFiltro(grid: TDBGrid;sender:Tobject);overload;
      Procedure DBGridFiltro(grid: TJvDBUltimGrid;sender:Tobject);overload;

      //Procedimientos para extraer informacion de dbgrid's
      Procedure DbGridValue(grid: TDBGrid;Lista:Tstringlist);Overload;
      Procedure DbGridValue(grid: TJvDBUltimGrid;Lista:Tstringlist);Overload;

      //procedure extraer datos del titulo en distintos grids
      Procedure DbGridTitle(grid: TDBGrid;Column: TColumn);Overload;
      Procedure DbGridTitle(grid: TJvDBUltimGrid;Column: TColumn);Overload;

      //Funciones para extraer Coordenadas de los grids
      Function DbGridCoord(grid: TDBGrid;x,y:Integer):Integer;Overload;
      Function DbGridCoord(grid: TJvDBUltimGrid;x,y:Integer):Integer;Overload;

      // Pegar Registros desde clipboard a grids
      procedure DbGridPasteFromClip(grid: TDBGrid);overload;
      procedure DbGridPasteFromClip(grid: TJvDBUltimGrid);overload;
    public

      procedure AddRowsFromClip;
      procedure CopyRowsToClip;
      procedure AddData(aDataset: TDataset; Lista:Tstrings);overload;
      procedure AddData(aDataset: TDataset; Lista:Tstrings;Orden:TstringList);overload;

      Function DbGridMouseMoveCoord(x,y:Integer):Integer;
      Procedure DbGridTitleClick(Column: TColumn);
      Procedure DbGridGetValue(Lista:Tstringlist);
      Procedure DbGridFiltrarClick(Sender:Tobject);
      Constructor create(Grid: TdbGrid);Overload;
      Constructor create(Grid: TjvdbUltimGrid);Overload;
      Procedure DbGridMouseUp(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      property GridColumn:Integer Read ifGridColumn;

   end;

   function NumItems(const cadena:string;const separador:char):integer;
   function TraerItem(const cadena:string;const separador:char;const posicion:integer):string;


   type
      TStringListSortCompare = function(List: TStringList; Index1, Index2: Integer): Integer;

implementation

Procedure TicDbGrid.dbGridCopy(grid: TDBGrid);
var
  col: Integer;
  sline: String;
  bm: TBookmark;
  List: TStrings;
begin
  if Assigned(Grid.Datasource) and Assigned(Grid.Datasource.Dataset) then
  begin
    Clipboard.Clear;
    with Grid, Grid.DataSource.DataSet do
    begin
      DisableControls;
      try
        bm := GetBookmark;
        try
          First;
          List := TStringList.Create;
          sline := '';
          if FieldList.Count=FieldDefList.Count then
          begin
            for col := 0 to FieldCount-1 do
              if col =FieldCount-1 then
                sline := sline + Fielddeflist.FieldDefs[col].Name
              else
                sline := sline + Fielddeflist.FieldDefs[col].Name  + #9;
          end
          else
          begin
            for col := 0 to FieldList.Count-1 do
              if col=FieldList.Count-1 then
                sline := sline + FieldList.Fields[col].FieldName
              else
                sline := sline + FieldList.Fields[col].FieldName  + #9;
          end;

          List.Add(sline);
          try
            while not EOF do
            begin
              if SelectedRows.CurrentRowSelected = true then
              begin
                sline := '';
                for col := 0 to FieldCount-1 do
                    if col=FieldCount-1 then
                      sline := sline + Fields[col].AsString
                    else
                      sline := sline + Fields[col].AsString + #9;
                List.Add(sline);
              end;
              Next;
            end;

            Clipboard.AsText := List.Text;
          finally
            FreeAndNil(List);
          end;

          if BookmarkValid(bm) then
            GotoBookmark(bm);
        finally
          FreeBookmark(bm);
        end;
      finally
        EnableControls;
      end;
    end;
  end;
end;


Procedure TicDbGrid.dbGridCopy(grid: TJvDBUltimGrid);
var
  xcol: Integer;
  sline: String;
  bm: TBookmark;
  List: TStrings;
begin
  if Assigned(Grid.Datasource) and Assigned(Grid.Datasource.Dataset) then
  begin
    Clipboard.Clear;
    with Grid, Grid.DataSource.DataSet do
    begin
      DisableControls;
      try
        bm := GetBookmark;
        try
          First;
          List := TStringList.Create;
          sline := '';
          if FieldList.Count=FieldDefList.Count then
          begin
            for xcol := 0 to FieldCount-1 do
              if xcol =FieldCount-1 then
                sline := sline + Fielddeflist.FieldDefs[xcol].Name
              else
                sline := sline + Fielddeflist.FieldDefs[xcol].Name  + #9;
          end
          else
          begin
            for xcol := 0 to FieldList.Count-1 do
              if xcol=FieldList.Count-1 then
                sline := sline + FieldList.Fields[xcol].FieldName
              else
                sline := sline + FieldList.Fields[xcol].FieldName  + #9;
          end;
          List.Add(sline);
          try
            while not EOF do
            begin
              if SelectedRows.CurrentRowSelected = true then
              begin
                sline := '';
                for xcol := 0 to FieldCount-1 do
                    if xcol=FieldCount-1 then
                      sline := sline + Fields[xcol].AsString
                    else
                      sline := sline + Fields[xcol].AsString + #9;
                List.Add(sline);
              end;
              Next;
            end;
            Clipboard.AsText := List.Text;
          finally
            FreeAndNil(List);
          end;

          if BookmarkValid(bm) then
            GotoBookmark(bm);
        finally
          FreeBookmark(bm);
        end;
      finally
        EnableControls;
      end;
    end;
  end;
end;

Procedure TicDbGrid.DBGridPopUp(grid: TDBGrid);
var
  Item: TMenuItem;
  Lista:TstringList;
  i:Integer;
begin
  with Grid,Grid.DataSource.DataSet do
  begin
    Lista:=tstringList.Create;
    try
                    //lobo
      if ifGridColumn > 0 then
      begin
        if not FieldList.FieldByName(columns[ifGridColumn-1].FieldName).Calculated then
        begin
          Item := TMenuItem.Create(Nil);
          Item.Caption := '< TODOS >';
          Item.Hint := '.';
          Item.OnClick :=DbGridFiltrarClick;
          Pop.Items.Add(Item);
          DbGridGetValue(Lista);
          Lista.BeginUpdate;
          for i := 0 to Lista.Count - 1 do
          begin
            Item := TMenuItem.Create(Nil);
            Item.Caption := Copy(lista[i],1,50);
            Item.Hint := lista[i];
            Item.OnClick :=DbGridFiltrarClick;
            Pop.Items.Insert(Pop.Items.Count,Item);
          end;
          lista.EndUpdate;
        end
        else
          SendMessage(Pop.WindowHandle, WM_CANCELMODE, 0, 0 );
      end
      else
        SendMessage(Pop.WindowHandle, WM_CANCELMODE, 0, 0 );
    finally
      freeandnil(Lista);
    end;
  end;
end;

Procedure TicDbGrid.DBGridPopUp(grid: TJvDBUltimGrid);
var
  Item: TMenuItem;
  Lista:TstringList;
  i:Integer;
begin
  with Grid do
  begin
    Lista:=tstringList.Create;
    try
      if ifGridColumn > 0 then
      begin
        Item := TMenuItem.Create(Nil);
        Item.Caption := '< TODOS >';
        Item.Hint := '.';
        Item.OnClick :=DbGridFiltrarClick;
        Pop.Items.Add(Item);
        DbGridGetValue(Lista);
        Lista.BeginUpdate;
        for i := 0 to Lista.Count - 1 do
        begin
          Item := TMenuItem.Create(Nil);
          Item.Caption := Copy(lista[i],1,50);
          Item.Hint := lista[i];
          Item.OnClick :=DbGridFiltrarClick;
          Pop.Items.Insert(Pop.Items.Count,Item);
        end;
        lista.EndUpdate;
      end
      else
        SendMessage(Pop.WindowHandle, WM_CANCELMODE, 0, 0 );
    finally
      freeandnil(Lista);
    end;
  end;
end;

procedure TicDbGrid.DbGridMouseUp(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  mPos: TPoint;
begin
  if  Button=mbRight then
  begin
    GetCursorPos(mPos);

    if (pt.Y=0) then
    begin
      pop.Popup(mpos.X,mpos.y);
    end
    else
      if OrigPop<>nil then
        OrigPop.Popup(mpos.X,mpos.y);
  end;
end;

procedure TicDbGrid.IcPopUp(Sender: TObject);
begin
  Pop.Items.Clear;
  if OfdbGrid<>nil then
    DBGridPopUp(OfdbGrid);


  if OfdbUGrid<>nil then
    DBGridPopUp(OfdbUGrid);
end;

Procedure TicDbGrid.DBGridFiltro(grid: TDBGrid;sender:Tobject);
{$J+}
 const PreviousFilter : integer = -1;
{$J-}
var
  aux:string;
begin
  if Assigned(Grid.Datasource) and Assigned(Grid.Datasource.Dataset) then
  begin
    with Grid, Grid.DataSource.DataSet do
    begin
      try
        Columns[PreviousFilter].Title.Font.Color := clBlack;
      except

      end;

      Columns[ifGridColumn - 1].Title.Font.Color := clBlue;
      PreviousFilter := ifGridColumn - 1;
      Filtered := False;

      if TMenuItem(Sender).Hint = '.' then
      begin
        Columns[ifGridColumn - 1].Title.Font.Color := clBlack;
        PreviousFilter := -1;
        sfCadenaFiltro:='';
      end
      else
      begin
        try
          aux:=formatdatetime('yyyy-mm-dd',strtodate(TMenuItem(Sender).Hint));
        except
          aux:=TMenuItem(Sender).Hint;
        end;
        if sfCadenaFiltro='' then
          sfCadenaFiltro:=Columns[ifGridColumn - 1].FieldName + ' = ' + QuotedStr(aux)
        else
          sfCadenaFiltro:=sfCadenaFiltro + ' and ' +Columns[ifGridColumn - 1].FieldName + ' = ' + QuotedStr(aux);
        Filter := sfCadenaFiltro;
        Filtered := True;
      end;
    end;
  end;
end;


Procedure TicDbGrid.DBGridFiltro(grid: TJvDBUltimGrid;sender:Tobject);
{$J+}
 const PreviousFilter : integer = -1;
{$J-}
var
  aux:string;
begin
  if Assigned(Grid.Datasource) and Assigned(Grid.Datasource.Dataset) then
  begin
    with Grid, Grid.DataSource.DataSet do
    begin
      try
        Columns[PreviousFilter].Title.Font.Color := clBlack;
      except

      end;

      Columns[ifGridColumn - 1].Title.Font.Color := clBlue;
      PreviousFilter := ifGridColumn - 1;
      Filtered := False;

      if TMenuItem(Sender).Hint = '.' then
      begin
        Columns[ifGridColumn - 1].Title.Font.Color := clBlack;
        PreviousFilter := -1;
        sfCadenaFiltro:='';
      end
      else
      begin
        try
          aux:=formatdatetime('yyyy-mm-dd',strtodate(TMenuItem(Sender).Caption));
        except
          aux:=TMenuItem(Sender).Caption;
        end;

        if sfCadenaFiltro='' then
          sfCadenaFiltro:=Columns[ifGridColumn - 1].FieldName + ' = ' + QuotedStr(aux)
        else
          sfCadenaFiltro:=sfCadenaFiltro + ' and ' +Columns[ifGridColumn - 1].FieldName + ' = ' + QuotedStr(aux);

        Filter := sfCadenaFiltro;
        Filtered := True;
      end;
    end;
  end;
end;


Procedure TicDbGrid.DbGridFiltrarClick(Sender:Tobject);

begin
  if Sender is TMenuItem then
  begin
    if OfdbGrid<>nil then
      DBGridFiltro(OfdbGrid,sender);
    if OfdbUGrid<>nil then
      DBGridFiltro(OfdbUGrid,sender);
  end;
end;

Constructor TicDbGrid.create(Grid: TdbGrid);
begin
  OfdbGrid:=Grid;
  sfCadenaFiltro:='';
  ifGridColumn:=-1;

end;

Constructor TicDbGrid.create(Grid: TjvdbUltimGrid);
begin
  OfdbUGrid:=Grid;
  sfCadenaFiltro:='';
  ifGridColumn:=-1;
  Pop:=TpopUpMenu.Create(nil);
  //pop.AutoHotkeys:=maManual;
  pop.OnPopup:=IcPopUp;
  if OfdbUGrid.PopupMenu<>nil then
    OrigPop:=OfdbUGrid.PopupMenu;
  OfdbUGrid.PopupMenu:=nil;
  OfdbUGrid.Options:=OfdbUGrid.Options+[dgmultiselect,dgindicator];
  OfdbUGrid.Options:=OfdbUGrid.Options-[dgrowselect];
end;

function CompareNumbers(List: TStringList; Index1, Index2: Integer): Integer;
var
  N1, N2: Integer;
  F1,F2:double;
begin
  if (TryStrToInt(List[Index1], N1) and TryStrToInt(List[Index2], N2)) then
    if N1 < N2 then
      Result := -1
    else
      if N1 = N2 then
        Result := 0
      else
        Result := 1
  else
    if (TryStrTofloat(List[Index1], F1) and TryStrTofloat(List[Index2], F2))then
      if F1 < F2 then
        Result := -1
      else
        if F1 = F2 then
          Result := 0
        else
          Result := 1
    else
      raise Exception.Create('La lista contiene valores incorrectos');
end;

Procedure TicDbGrid.DbGridValue(grid: TDBGrid;Lista:Tstringlist);
var
  bm:TbookMark;
  i:Integer;
  AuxLista:TstringList;
begin
  if Assigned(Grid.Datasource) and Assigned(Grid.Datasource.Dataset) then
  begin
    with Grid, Grid.DataSource.DataSet do
    begin
      columns.BeginUpdate;
      DisableControls;
      bm := GetBookmark;
      first;
      while not eof do
      begin
        lista.Add(columns[ifGridColumn-1].Field.AsString);
        next;
      end;

      if not FieldList.FieldByName(columns[ifGridColumn-1].FieldName).Calculated then

      if (FieldDefList.FieldByName(columns[ifGridColumn-1].FieldName).DataType=ftInteger)
      or(FieldDefList.FieldByName(columns[ifGridColumn-1].FieldName).DataType=ftfloat) then
      begin
        lista.Sorted:=false;
        AuxLista:=TstringList.Create;
        try
          AuxLista.AddStrings(Lista);
          AuxLista.CustomSort(CompareNumbers);
          lista.Clear;
          lista.AddStrings(AuxLista);
        finally
          AuxLista.Free
        end;
      end;




      try
        try
          if BookmarkValid(bm) then
            GotoBookmark(bm);
        finally
          FreeBookmark(bm);
        end;
      finally
        EnableControls;
        columns.EndUpdate;
      end;
    end;
  end;
end;



Procedure TicDbGrid.DbGridValue(grid: TJvDBUltimGrid;Lista:Tstringlist);
var
  bm:TbookMark;
  AuxLista:TstringList;
begin
  if Assigned(Grid.Datasource) and Assigned(Grid.Datasource.Dataset) then
  begin
    with Grid, Grid.DataSource.DataSet do
    begin
      beginUpdate;
      DisableControls;
      bm := GetBookmark;
      first;
      while not eof do
      begin
        lista.Add(columns[ifGridColumn-1].Field.AsString);
        next;
      end;

      if (FieldDefList.FieldByName(columns[ifGridColumn-1].FieldName).DataType=ftInteger)
        or(FieldDefList.FieldByName(columns[ifGridColumn-1].FieldName).DataType=ftfloat) then
      begin
        lista.Sorted:=false;
        AuxLista:=TstringList.Create;
        try
          AuxLista.AddStrings(Lista);
          AuxLista.CustomSort(CompareNumbers);
          lista.Clear;
          lista.AddStrings(AuxLista);
        finally
          AuxLista.Free
        end;
      end;

      try
        try
          if BookmarkValid(bm) then
            GotoBookmark(bm);
        finally
          FreeBookmark(bm);
        end;
      finally
        EnableControls;
        EndUpdate;
      end;
    end;
  end;
end;

Procedure TicDbGrid.DbGridGetValue(Lista:Tstringlist);
begin
  lista.clear;
  lista.Sorted:=true;

  if OfdbGrid<>nil then
    DbGridValue(OfdbGrid,Lista);

  if OfdbUGrid<>nil then
    DbGridValue(OfdbUGrid,Lista);
end;

Procedure TicDbGrid.DbGridTitle(grid: TDBGrid;Column: TColumn);
{$J+}
 const PreviousColumnIndex : integer = -1;
{$J-}
begin
  with Grid do
  begin
    if DataSource.DataSet is TZReadOnlyQuery then
      with TZReadOnlyQuery(DataSource.DataSet) do
      begin
        try
          Columns[PreviousColumnIndex].title.Font.Style :=Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
        except

        end;

        Column.title.Font.Style := Column.title.Font.Style + [fsBold];
        PreviousColumnIndex := Column.Index;

        if SortedFields = Columns.Items[Column.Index].Field.DisplayName then
          if SortType = stDescending then
            SortType := stAscending
          else
            SortType := stDescending
        else
        begin
          SortedFields := Columns.Items[Column.Index].Field.DisplayName;
          SortType := stAscending;
        end;
        First;
      end;

    if DataSource.DataSet is TZQuery then
      with TZQuery(DataSource.DataSet) do
      begin
        try
          Columns[PreviousColumnIndex].title.Font.Style :=Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
        except

        end;

        Column.title.Font.Style := Column.title.Font.Style + [fsBold];
        PreviousColumnIndex := Column.Index;

        if SortedFields = Columns.Items[Column.Index].Field.DisplayName then
          if SortType = stDescending then
            SortType := stAscending
          else
            SortType := stDescending
        else
        begin
          SortedFields := Columns.Items[Column.Index].Field.DisplayName;
          SortType := stAscending;
        end;
        First;
      end;
  end;
end;

Procedure TicDbGrid.DbGridTitle(grid: TJvDBUltimGrid;Column: TColumn);
{$J+}
 const PreviousColumnIndex : integer = -1;
{$J-}
begin
  with Grid do
  begin
    if DataSource.DataSet is TZReadOnlyQuery then
      with TZReadOnlyQuery(DataSource.DataSet) do
      begin
        try
          Columns[PreviousColumnIndex].title.Font.Style :=Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
        except

        end;

        Column.title.Font.Style := Column.title.Font.Style + [fsBold];
        PreviousColumnIndex := Column.Index;

        if SortedFields = Columns.Items[Column.Index].Field.DisplayName then
          if SortType = stDescending then
            SortType := stAscending
          else
            SortType := stDescending
        else
        begin
          SortedFields := Columns.Items[Column.Index].Field.DisplayName;
          SortType := stAscending;
        end;
        First;
      end;

    if DataSource.DataSet is TZQuery then
      with TZQuery(DataSource.DataSet) do
      begin
        try
          Columns[PreviousColumnIndex].title.Font.Style :=Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
        except

        end;

        Column.title.Font.Style := Column.title.Font.Style + [fsBold];
        PreviousColumnIndex := Column.Index;

        if SortedFields = Columns.Items[Column.Index].Field.DisplayName then
          if SortType = stDescending then
            SortType := stAscending
          else
            SortType := stDescending
        else
        begin
          SortedFields := Columns.Items[Column.Index].Field.DisplayName;
          SortType := stAscending;
        end;
        First;
      end;
  end;
end;

Procedure TicDbGrid.DbGridTitleClick(Column: TColumn);
begin
  if OfdbGrid<>nil then
    DbGridTitle(OfdbGrid,Column);
  if OfdbUGrid<>nil then
    DbGridTitle(OfdbUGrid,Column);

end;

Function TicDbGrid.DbGridCoord(grid: TDBGrid;x,y:Integer):Integer;
var
  Res:Integer;
  loquesea:TComponent;
begin
  res:=-1;
  with Grid do
  begin
    pt:= MouseCoord(x, y);
    if pt.y = 0 then
    begin
      Cursor := crHandPoint;
      Pop:=TpopUpMenu.Create(nil);
      pop.AutoHotkeys:=maManual;
      pop.Name:='popUp_GayPatricio';
      pop.OnPopup:=IcPopUp;
        if OfdbGrid.PopupMenu<>nil then begin
          OrigPop:=OfdbGrid.PopupMenu;
          OfdbGrid.PopupMenu.AutoPopUp := False;
        end;
      //OfdbGrid.PopupMenu:=nil;
      OfdbGrid.Options:= OfdbGrid.Options+[dgmultiselect,dgindicator];
      OfdbGrid.Options:= OfdbGrid.Options-[dgrowselect];
      res := pt.X;
    end
    else
    begin
      //OfdbGrid.PopupMenu:=PopupMenu.Name;
      {loquesea:=FindComponent('popUp_GayRangel');
      ShowMessage(TPopUpMenu(loquesea).Name);}

      Cursor := crDefault;
      res := -1;
    end;
  end;
  result:=res;
end;
Function TicDbGrid.DbGridCoord(grid: TJvDBUltimGrid;x,y:Integer):Integer;
var
  Res:Integer;
begin
  res:=-1;
  with Grid do
  begin
    pt:= MouseCoord(x, y);
    if pt.y = 0 then
    begin
      Cursor := crHandPoint;
      res := pt.X;
    end
    else
    begin
      Cursor := crDefault;
      res := -1;
    end;
  end;
  Result:=res;
end;
Function TicDbGrid.DbGridMouseMoveCoord(x,y:Integer):Integer;
var
  Res:Integer;
begin
  res:=-1;
  if OfdbGrid<>nil then
    res:=DbGridCoord(OfdbGrid,x,y);
  if OfdbUGrid<>nil then
    res:=DbGridCoord(OfdbUGrid,x,y);
  ifGridColumn:=res;
end;

function NumItems(const cadena:string;const separador:char):integer;
var
   res,Npos:integer;
   salir:boolean;
   cadAux:string;
begin
     res:=0;
     salir:=false;
     cadAux:=cadena;
     while not salir do
     begin
          Npos:=pos(separador,cadAux);
          cadaux:=copy(cadaux,Npos+1,length(cadaux));
          if Npos<>0 then
             Inc(res)
          else
          begin
               if res<>0 then
                  inc(res);
              salir:=true;
          end;
     end;
     result:=res;
end;

function TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
var
   Item,CadAux:string;
   Npos,auxPos:integer;
   salir:boolean;
begin
     Item:='';
     cadAux:=cadena;
     salir:=false;
     auxPos:=0;
     while not salir do
     begin
          Npos:=pos(separador,cadaux);
          if Npos<>0 then
          begin
             item:=copy(cadAux,1,Npos-1);
             cadaux:=copy(cadaux,Npos+1,length(cadaux));
             inc(auxPos);
             if auxpos=posicion then
                salir:=true;
          end
          else
          begin
            inc(auxPos);
            if auxpos=posicion then
               item:=cadAux
            else item:='';
            Salir:=true;
          end;
     end;
     result:=item;
end;
(*
  procedure AddData(aDataset: TDataset; FirstName, LastName: string);overload;
  begin
     aDataset.Append;
     try
        aDataset.FieldByName('ID').Asstring := '';
        aDataset.FieldByName('NAME').AsString := FirstName;
        aDataset.FieldByName('LASTNAME').AsString := LastName;
     finally
        aDataset.Post;
     end;
  end;

*)
procedure TicDbGrid.AddData(aDataset: TDataset; Lista:Tstrings);
var
  registro:integer;
  sParametro:String;
begin
  aDataset.Insert;

  if Adataset.FieldDefList.Count=aDataset.FieldList.Count then
  begin
    for registro := 0 to aDataset.fieldcount-1  do
    begin
      sparametro :=Adataset.FieldDefList.FieldDefs[registro].Name; //'param' + trim(inttostr(registro)) ;
      Adataset.FieldByName(sparametro).Value:=Lista[registro];
    end ;
  end
  else
  begin
    for registro := 0 to aDataset.FieldList.Count-1  do
    begin
      sparametro :=Adataset.FieldList.Fields[registro].FieldName; //'param' + trim(inttostr(registro)) ;
      Adataset.FieldByName(sparametro).Value:=Lista[registro];
    end ;
  end;

  try
    Adataset.Post;
  except
    on e:exception do
    begin
      //showmessage('Ocurrio un error al realizar esta operacion ' + e.ClassName + ', ' + e.Message);
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'UDbGrid', 'Al Almacenar el registro', 0);
      Adataset.Cancel;
    end;
  end;
end;



procedure TicDbGrid.AddData(aDataset: TDataset; Lista:Tstrings;Orden:TstringList);
var
  registro,i,pos,ex:integer;
  sParametro:String;
  error:boolean;
begin
  aDataset.Insert;
  if Adataset.FieldDefList.Count=aDataset.FieldList.Count then
  begin
    for registro := 0 to aDataset.fieldcount-1  do
    begin
      sparametro :=Adataset.FieldDefList.FieldDefs[registro].Name; //'param' + trim(inttostr(registro)) ;
      pos:=-1;
      for I := 0 to orden.Count - 1 do
        if sparametro=orden.Values[orden.Names[i]] then
          pos:=strtoint(traerItem(orden.Names[i],':',1));
      if pos<>-1 then
        Adataset.FieldByName(sparametro).Value:=Lista[pos]
    end ;
  end
  else
  begin
    for registro := 0 to aDataset.FieldList.Count-1  do
    begin
      if Adataset.FieldList.Fields[registro].FieldKind=fkData then
      begin
        sparametro :=Adataset.FieldList.Fields[registro].FieldName; //'param' + trim(inttostr(registro)) ;
        pos:=-1;
        for I := 0 to orden.Count - 1 do
          if sparametro=orden.Values[orden.Names[i]] then
            pos:=strtoint(traerItem(orden.Names[i],':',1));
        if pos<>-1 then
          Adataset.FieldByName(sparametro).Value:=Lista[pos]
        else
          Adataset.FieldByName(sparametro).Required:=false;
      end;
    end;
  end;

  try
    Adataset.Post;
  except
    on e:exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'UDbGrid', 'Al Almacenar el registro', 0);
      Adataset.Cancel;
    end;
  end;
end;


procedure TicDbGrid.CopyRowsToClip;
begin
  if OfdbGrid<>nil then
    dbGridCopy(OfdbGrid);

  if OfdbuGrid<>nil then
    dbGridCopy(OfdbuGrid);
end;

procedure TicDbGrid.DbGridPasteFromClip(grid: TDBGrid);
var
  I,x,init: Integer;
  bm: TBookmark;
  List, Detail: TStrings;
  Aceptar,Primer:boolean;
  Orden:TstringList;
begin
  if Assigned(grid.Datasource) and Assigned(grid.Datasource.Dataset) then
  begin
    with grid, grid.DataSource.DataSet do
    begin
      List := TStringList.Create;
      try
        List.Text := ClipBoard.AsText;
        if List.Count > 0 then
        begin
          application.CreateForm(TFrmColumnas,FrmColumnas);
          try
            with FrmColumnas do
            begin
              ListaDatos:=list;
              MyDataset:=grid.DataSource.DataSet;
              if ShowModal=mrcancel then
                aceptar:=false
              else
              begin
                  Aceptar:=true;
                  Orden:=TstringList.Create;
                  Orden:=OrdenInsert;
                  Primer:=OfCPrimer.Checked;
              end;
            end;
          finally
            freeandnil(FrmColumnas);
          end;


          if aceptar then
          begin
            Detail := TStringList.Create;
            try
            //Detail.Delimiter := #9;

              DisableControls;
              try
                bm := GetBookmark;
                try
                  if primer then
                    init:=1
                  else
                    init:=0;
                  for I := init to List.Count-1 do
                  begin
                  //Detail.DelimitedText := List[I];
                    detail.Clear;
                    for x := 1 to NumItems(list[i],#9) do
                    begin
                      detail.Add(traerItem(list[i],#9,x));
                    end;

                    AddData(grid.DataSource.DataSet,Detail,orden);
                  end;
                  if BookmarkValid(bm) then
                    GotoBookmark(bm);
                finally
                  FreeBookmark(bm);
                end;
              finally
                EnableControls;
              end;
            finally
              FreeAndNil(Detail);
            end;
          end;
        end;
      finally
        FreeAndNil(List);
      end;
    end;
  end;
end;

procedure TicDbGrid.DbGridPasteFromClip(grid: TJvDBUltimGrid);
var
  I,x,init: Integer;
  bm: TBookmark;
  List, Detail: TStrings;
  Aceptar,Primer:boolean;
  Orden:TstringList;
begin
  if Assigned(grid.Datasource) and Assigned(grid.Datasource.Dataset) then
  begin
    with grid, grid.DataSource.DataSet do
    begin
      List := TStringList.Create;
      try
        List.Text := ClipBoard.AsText;
        if List.Count > 0 then
        begin
          application.CreateForm(TFrmColumnas,FrmColumnas);
          try
            with FrmColumnas do
            begin
              ListaDatos:=list;
              MyDataset:=grid.DataSource.DataSet;
              if ShowModal=mrcancel then
                aceptar:=false
              else
              begin
                  Aceptar:=true;
                  Orden:=TstringList.Create;
                  Orden:=OrdenInsert;
                  Primer:=OfCPrimer.Checked;
              end;
            end;
          finally
            freeandnil(FrmColumnas);
          end;


          if aceptar then
          begin
            Detail := TStringList.Create;
            try
            //Detail.Delimiter := #9;

              DisableControls;
              try
                bm := GetBookmark;
                try
                  if primer then
                    init:=1
                  else
                    init:=0;
                  for I := init to List.Count-1 do
                  begin
                  //Detail.DelimitedText := List[I];
                    detail.Clear;
                    for x := 1 to NumItems(list[i],#9) do
                    begin
                      detail.Add(traerItem(list[i],#9,x));
                    end;

                    AddData(grid.DataSource.DataSet,Detail,orden);
                  end;
                  if BookmarkValid(bm) then
                    GotoBookmark(bm);
                finally
                  FreeBookmark(bm);
                end;
              finally
                EnableControls;
              end;
            finally
              FreeAndNil(Detail);
            end;
          end;
        end;
      finally
        FreeAndNil(List);
      end;
    end;
  end;
end;


procedure TicDbGrid.AddRowsFromClip;
begin

  if OfdbGrid<>nil then
    if not (OfdbGrid.DataSource.DataSet is TZReadOnlyQuery) then
      DbGridPasteFromClip(OfdbGrid)
    else
      messagedlg('No se puede Pegar el registro, el grid es solo Lectura',mtinformation,[mbok],0);

  if OfdbuGrid<>nil then
    if not (OfdbGrid.DataSource.DataSet is TZReadOnlyQuery) then
      DbGridPasteFromClip(OfdbuGrid)
    else
      messagedlg('No se puede Pegar el registro, el grid es solo Lectura',mtinformation,[mbok],0);

end;



end.
