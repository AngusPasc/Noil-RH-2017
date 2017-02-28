unit frm_gruposxprograma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus, frxClass, frxDBSet,
   RXDBCtrl, ImgList, Buttons, ZAbstractRODataset, ZDataset, unitexcepciones, udbgrid,
  CheckLst, JvExCheckLst, JvCheckListBox, AdvGroupBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  JvExStdCtrls, JvCheckBox ;

type
  TfrmGruposxPrograma = class(TForm)
    ds_programas: TDataSource;
    ImageGrupos: TImageList;
    Panel_Grupos: TListView;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    ds_GruposxPrograma: TDataSource;
    grProgramas: TGroupBox;
    grGrupos: TGroupBox;
    Programas: TZReadOnlyQuery;
    GruposxPrograma: TZReadOnlyQuery;
    chInsertar: TCheckBox;
    chEditar: TCheckBox;
    chEliminar: TCheckBox;
    chImprimir: TCheckBox;
    AdvGroupBox1: TAdvGroupBox;
    ChkLbExportar: TJvCheckListBox;
    Grid_programasDBTableView1: TcxGridDBTableView;
    Grid_programasLevel1: TcxGridLevel;
    Grid_programas: TcxGrid;
    Grid_Coldescrip: TcxGridDBColumn;
    dbg_ProgramasGrupos: TcxGridDBTableView;
    grid_ProgramasGruposLevel1: TcxGridLevel;
    grid_ProgramasGrupos: TcxGrid;
    Grid__Coldesc: TcxGridDBColumn;
    Grid__ColDer: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure Panel_GruposClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure GruposxProgramaCalcFields(DataSet: TDataSet);
    procedure grid_programasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_programasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ProgramasGruposMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ProgramasGruposTitleClick(Column: TColumn);

    procedure Grid_ProgramasGruposMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure GruposxProgramaAfterScroll(DataSet: TDataSet);
    procedure InicializarCheck(ListChecked: TJvCheckListBox; Cadena:String);
    function NumItems(const cadena:string;const separador:char):integer;
    function TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGruposxPrograma: TfrmGruposxPrograma;
  Opcion : String ;
  Registro_Actual : String ;
  //utgrid:ticdbgrid;
  //utgrid2:ticdbgrid;

implementation

uses frm_inteligent;

{$R *.dfm}

procedure TfrmGruposxPrograma.InicializarCheck(ListChecked: TJvCheckListBox; Cadena:String);
var
  Recorrido:integer;
  Item:string;
begin

  ListChecked.Clear;
  for recorrido := 1 to NumItems(cadena,',') do
  begin
    item:=TraerItem(cadena,',',recorrido);
    try
      ListChecked.Items.Add(item);
    except
      on e:exception do
        showmessage(e.Message + '  ' + e.ClassName);
    end;
  end;
end;

function TfrmGruposxPrograma.NumItems(const cadena:string;const separador:char):integer;
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
     if res=0 then
      if length(trim(cadAux))>0 then
        Inc(res);


     result:=res;
end;

function TfrmGruposxPrograma.TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
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


procedure TfrmGruposxPrograma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Programas.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
  //utgrid2.destroy;
  frmInteligent.permisosUsuarios(100);

end;

procedure TfrmGruposxPrograma.FormShow(Sender: TObject);
Var
   ListItem: TListItem;
   Grupos  : tzReadOnlyQuery ;
begin
   //UtGrid:=TicdbGrid.create(grid_programas);
   //UtGrid2:=TicdbGrid.create(grid_programasgrupos);
   Grupos := tzReadOnlyQuery.Create(Self) ;
   Grupos.Connection := connection.zConnection ;
   Grupos.Active := False ;
   Grupos.SQL.Clear ;
   Grupos.SQL.Add('select sIdGrupo from grupos Order By sIdGrupo') ;
   Grupos.Open ;

   Panel_Grupos.Items.Clear ;
   If Grupos.RecordCount > 0 Then
   Begin
       with Panel_Grupos do
       begin
          Grupos.First ;
          While NOT Grupos.Eof Do
          Begin
             ListItem := Items.Add;
             ListItem.Caption := Grupos.FieldValues['sIdGrupo'] ;
             ListItem.ImageIndex := 0;
             Grupos.Next
          End
      End
   End ;
   Grupos.Destroy ;

   Programas.Active := False ;
   Programas.Params.ParamByName('Idioma').DataType := ftString ;
   Programas.Params.ParamByName('Idioma').Value    := global_idioma ;
   Programas.Open ;
   if programas.RecordCount = 0 Then
      MessageDlg('No Existen Programas para el Idioma  ' + global_idioma, mtInformation, [mbOK],0 );


   GruposxPrograma.Active := False ;
   GruposxPrograma.Params.ParamByName('Grupo').DataType  := ftString ;
   GruposxPrograma.Params.ParamByName('Grupo').Value     := '' ;
   GruposxPrograma.Params.ParamByName('Idioma').DataType := ftString ;
   GruposxPrograma.Params.ParamByName('Idioma').Value    := global_idioma ;
   GruposxPrograma.Open ;
  // if GruposxPrograma.RecordCount = 0 Then
  //    MessageDlg('No Existen Programas para ese GRUPO  ' + global_idioma, mtInformation, [mbOK],0 );


   InicializarCheck(ChkLbExportar,connection.configuracion.FieldByName('sformatos').AsString);
   Grid_Programas.SetFocus
end;

procedure TfrmGruposxPrograma.Grid_ProgramasGruposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmGruposxPrograma.Grid_ProgramasGruposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmGruposxPrograma.Grid_ProgramasGruposTitleClick(Column: TColumn);
begin
 //UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmGruposxPrograma.grid_programasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmGruposxPrograma.grid_programasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;


procedure TfrmGruposxPrograma.btnAsignaClick(Sender: TObject);
Var
    SavePlace   : TBookmark;
    lInsertar, lEditar, lEliminar, lImprimir, sDerechos,sFormatoImp: string;
    i, iGrid:integer;
begin
    If ( Panel_Grupos.ItemIndex >= 0 ) Then
        If Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption <> '' Then
        begin
         If Programas.RecordCount > 0 Then
            begin

            SavePlace :=GruposxPrograma.GetBookmark  ;

             with TcxGridDbTableView(grid_Programas.ActiveView).DataController.DataSource.DataSet do
              for iGrid := 0 to TcxGridDbTableView(grid_Programas.ActiveView).DataController.GetSelectedCount - 1 do
                begin
                   //  GotoBookmark(pointer(TcxGridDbTableView(Grid_programas.ActiveView).DataController.GetSelectedRowIndex(igrid)));
                       GruposxPrograma.GotoBookmark(SavePlace) ;
                    Try
                        // soad -> Validacion si ya existe programa..
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ('select * from gruposxprograma where sIdPrograma = :Programa and sIdGrupo = :Grupo' ) ;
                        connection.zcommand.Params.ParamByName('Grupo').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('Grupo').Value := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
                        connection.zcommand.Params.ParamByName('Programa').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('Programa').Value := Programas.FieldValues ['sIdPrograma'] ;
                        connection.zcommand.open ;
                        if connection.zCommand.RecordCount > 0 then
                        begin
                             MessageDlg('Ya se asignó este programa al Grupo '+ Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption , mtInformation, [mbOk], 0);
                             exit;
                        end;
                        sDerechos := '';
                        if chInsertar.Checked then begin
                            lInsertar := 'Si';
                            sDerechos := sDerechos + 'Insercion ';
                        end
                        else begin
                            lInsertar := 'No';
                        end;
                        if chEditar.Checked then begin
                            lEditar := 'Si';
                            sDerechos := sDerechos + 'Edicion ';
                        end
                        else begin
                            lEditar := 'No';
                        end;
                        if chEliminar.Checked then begin
                            lEliminar := 'Si';
                            sDerechos := sDerechos + 'Eliminacion ';
                        end
                        else begin
                            lEliminar := 'No';
                        end;
                        if chImprimir.Checked then begin
                            lImprimir := 'Si';
                            sDerechos := sDerechos + 'Impresion ';
                        end
                        else begin
                            lImprimir := 'No';
                        end;

                        sFormatoImp:='';
                        for I := 0 to ChkLbExportar.Count - 1 do
                          if ChkLbExportar.Checked[I] then
                            if sFormatoImp='' then
                              sFormatoImp:=ChkLbExportar.Items.Strings[i]
                            else
                              sFormatoImp:=sFormatoImp + ',' + ChkLbExportar.Items.Strings[i];



                        //Insercion del programa al grupo..
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add ( 'Insert into gruposxprograma (sIdGrupo, sIdPrograma, eInsertar, eEditar, eEliminar, eImprimir, sDerechos,sFormatos ) ' +
                                                       ' values (:Grupo, :programa, :insertar, :editar, :eliminar, :imprimir, :derechos,:formatos)' ) ;
                        connection.zcommand.Params.ParamByName('Grupo').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('Grupo').Value := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
                        connection.zcommand.Params.ParamByName('Programa').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('Programa').Value := Programas.FieldValues ['sIdPrograma'] ;
                        connection.zcommand.Params.ParamByName('insertar').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('insertar').Value := lInsertar ;
                        connection.zcommand.Params.ParamByName('editar').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('editar').Value := lEditar ;
                        connection.zcommand.Params.ParamByName('eliminar').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('eliminar').Value := lEliminar ;
                        connection.zcommand.Params.ParamByName('imprimir').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('imprimir').Value := lImprimir ;
                        connection.zcommand.Params.ParamByName('derechos').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('derechos').Value := sDerechos ;
                        connection.zcommand.ParamByName('formatos').AsString:=sFormatoImp;
                        connection.zcommand.ExecSQL ;

                        Programas.Next ;
                    Except
     //                   MessageDlg('Ocurrio un error al actualizar el registro.', mtInformation, [mbOk], 0);
                          on e : exception do begin
                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Programas a Grupos', 'Al asignar permisos', 0);
                          GruposxPrograma.Cancel ;
                          end;
                    End;
                end;
            end;
            SavePlace :=GruposxPrograma.GetBookmark  ;
            GruposxPrograma.Active := False ;
            GruposxPrograma.Open ;
            Try
               GruposxPrograma.GotoBookmark(SavePlace) ;
            Except
            Else
               GruposxPrograma.GotoBookmark(SavePlace) ;
            End ;
        end
        else
             MessageDlg('No se puede asignar Programas a este Grupo', mtInformation, [mbOk], 0);
end;

procedure TfrmGruposxPrograma.Panel_GruposClick(Sender: TObject);
begin
    If ( Panel_Grupos.ItemIndex >= 0 ) Then
        If Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption <> NULL Then
        Begin
              grGrupos.Caption := 'Programas Asignados al Grupo : ' + Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
              GruposxPrograma.Active := False ;
              GruposxPrograma.Params.ParamByName('Grupo').DataType  := ftString ;
              GruposxPrograma.Params.ParamByName('Grupo').Value     := Panel_Grupos.Items.Item [Panel_Grupos.ItemIndex].Caption ;
              GruposxPrograma.Params.ParamByName('Idioma').DataType := ftString ;
              GruposxPrograma.Params.ParamByName('Idioma').Value    := global_idioma ;
              GruposxPrograma.Open ;
        End
end;

procedure TfrmGruposxPrograma.btnDenegarClick(Sender: TObject);
var
    SavePlace   : TBookmark;
    iGrid       : integer;
begin
    If GruposxPrograma.RecordCount > 0 Then
    Begin
     //     SavePlace := Grid_programasGrupos.DataSource.DataSet.GetBookmark;
            SavePlace := TcxGridDbTableView(grid_ProgramasGrupos.ActiveView).DataController.DataSource.DataSet.GetBookmark;

     //     with Grid_programasGrupos.DataSource.DataSet do
            with TcxGridDbTableView(grid_ProgramasGrupos.ActiveView).DataController.DataSource.DataSet do

     //     for iGrid := 0 to Grid_programasGrupos.SelectedRows.Count - 1 do
            for iGrid := 0 to TcxGridDbTableView(grid_ProgramasGrupos.ActiveView).DataController.GetSelectedCount - 1 do
              begin
     //       GotoBookmark(pointer(Grid_programasGrupos.SelectedRows.Items[iGrid]));
              GotoBookmark(pointer(TcxGridDbTableView(grid_ProgramasGrupos .ActiveView).DataController.GetSelectedRowIndex(igrid)));
            try
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Delete from gruposxprograma where sIdGrupo = :Grupo And ' +
                                            'sIdPrograma = :Programa') ;
              connection.zcommand.Params.ParamByName('Grupo').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Grupo').Value := GruposxPrograma.FieldValues['sIdGrupo']  ;
              connection.zcommand.Params.ParamByName('Programa').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Programa').Value := GruposxPrograma.FieldValues['sIdPrograma']  ;
              connection.zcommand.ExecSQL ;

              //Grid_ProgramasGrupos.SetFocus
            except
              on e : exception do begin
               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Asignación de Programas a Grupos', 'Al denegar permisos', 0);
              end;
            end;
        end;

       // SavePlace := Grid_ProgramasGrupos.DataSource.DataSet.GetBookmark ;
         SavePlace := TcxGridDbTableView(grid_ProgramasGrupos.ActiveView).DataController.DataSource.DataSet.GetBookmark;
        GruposxPrograma.Active := False ;
        GruposxPrograma.Open ;
        Try
          // Grid_ProgramasGrupos.DataSource.DataSet.GotoBookmark(SavePlace);
             TcxGridDbTableView(grid_ProgramasGrupos.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        Except
        Else
          //  Grid_ProgramasGrupos.DataSource.DataSet.FreeBookmark(SavePlace);
             TcxGridDbTableView(grid_ProgramasGrupos.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
        End ;
    End
end;

procedure TfrmGruposxPrograma.GruposxProgramaAfterScroll(DataSet: TDataSet);
var
  i,Recorrido:integer;
  item:string;
begin
  if GruposxPrograma.FieldByName('eInsertar').AsString = 'Si' then
    chInsertar.Checked := true
  else
    chInsertar.Checked := false;
  if GruposxPrograma.FieldByName('eEditar').AsString = 'Si' then
    chEditar.Checked := true
  else
    chEditar.Checked := false;
  if GruposxPrograma.FieldByName('eEliminar').AsString = 'Si' then
    chEliminar.Checked := true
  else
    chEliminar.Checked := false;
  if GruposxPrograma.FieldByName('eImprimir').AsString = 'Si' then
    chImprimir.Checked := true
  else
    chImprimir.Checked := false;

  ChkLbExportar.UnCheckAll;
  for I := 0 to ChkLbExportar.Count - 1 do
  begin
    for recorrido := 1 to NumItems(gruposxprograma.FieldByName('sFormatos').AsString,',') do
    begin
      item:=TraerItem(gruposxprograma.FieldByName('sFormatos').AsString,',',recorrido);
      if ChkLbExportar.Items.Strings[i]=item then
      begin
        ChkLbExportar.Checked[I]:=true;
        break;
      end;
    end;
  end;
end;

procedure TfrmGruposxPrograma.GruposxProgramaCalcFields(DataSet: TDataSet);
begin
(*
      connection.QryBusca.Active := False ;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('select sDescripcion from programas Where sIdPrograma = :Programa') ;
      connection.QryBusca.Params.ParamByName('programa').DataType := ftString ;
      connection.QryBusca.Params.ParamByName('programa').Value := gruposxPrograma.FieldValues['sIdPrograma'] ;
      connection.QryBusca.Open ;
      If Connection.QryBusca.RecordCount > 0 Then
          GruposxProgramasDescripcion.Value := connection.QryBusca.FieldValues['sDescripcion'] ;
  

*)
end;

End.
