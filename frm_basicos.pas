unit frm_basicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  UdbGrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  UnitExcel, ComObj, UnitTablasImpactadas,unitactivapop, UnitValidacion,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, FormAutoScaler;

type
  TfrmBasicos = class(TForm)
    frmBarra1: TfrmBarra;
    ds_Basicos: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    basicos: TZQuery;
    basicossContrato: TStringField;
    basicossIdBasico: TStringField;
    basicossDescripcion: TStringField;
    basicossMedida: TStringField;
    basicosdCostoMN: TFloatField;
    basicosdCostoDLL: TFloatField;
    basicosdVentaMN: TFloatField;
    basicosdVentaDLL: TFloatField;
    basicossSimbolo: TStringField;
    ExportaaPlantillaExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_basicos: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    Panel1: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tsIdGrupo: TDBEdit;
    tsDescripcion: TDBEdit;
    tdVentaMN: TDBEdit;
    tdVentaDLL: TDBEdit;
    dbCostomn: TDBEdit;
    dbCostoDLL: TDBEdit;
    dbMedida: TDBEdit;
    DBEdit1: TDBEdit;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_GruposIsometricoCellClick(Column: TColumn);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_GruposIsometricoEnter(Sender: TObject);
    procedure grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tlFaseKeyPress(Sender: TObject; var Key: Char);
    procedure tdCostomnEnter(Sender: TObject);
    procedure tdCostomnExit(Sender: TObject);
    procedure tdCostomnKeyPress(Sender: TObject; var Key: Char);
    procedure tdCostoDLLEnter(Sender: TObject);
    procedure tdCostoDLLExit(Sender: TObject);
    procedure dbCostomnEnter(Sender: TObject);
    procedure dbCostomnExit(Sender: TObject);
    procedure dbCostoDLLEnter(Sender: TObject);
    procedure dbCostoDLLExit(Sender: TObject);
    procedure dbMedidaEnter(Sender: TObject);
    procedure dbMedidaExit(Sender: TObject);
    procedure dbCostomnKeyPress(Sender: TObject; var Key: Char);
    procedure dbCostoDLLKeyPress(Sender: TObject; var Key: Char);
    procedure dbMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tdVentaDLLEnter(Sender: TObject);
    procedure tdVentaDLLExit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure tdVentaDLLKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure grid_GruposIsometricoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_GruposIsometricoMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_GruposIsometricoTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure ExportaaPlantillaExcel1Click(Sender: TObject);
    procedure formatoEncabezado();
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure basicosdCostoMNSetText(Sender: TField; const Text: string);
    procedure basicosdCostoDLLSetText(Sender: TField; const Text: string);
    procedure basicosdVentaMNSetText(Sender: TField; const Text: string);
    procedure basicosdVentaDLLSetText(Sender: TField; const Text: string);
    procedure dbCostomnChange(Sender: TObject);
    procedure dbCostoDLLChange(Sender: TObject);
    procedure tdVentaMNChange(Sender: TObject);
    procedure tdVentaDLLChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBasicos : TfrmBasicos;
  UtGrid:TicDbGrid;
  botonpermiso:tbotonespermisos;
  sOpcion : string;
  sIdOrig : string;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

implementation

{$R *.dfm}

procedure TfrmBasicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  botonpermiso.Free;
  action := cafree ;

end;

procedure TfrmBasicos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'mnuBasico', PopupPrincipal);
  OpcButton := '' ;
  sIdOrig := '';
  frmbarra1.btnCancel.Click ;

  basicos.Active := False ;
  basicos.Params.ParamByName('Contrato').DataType := ftString ;
  basicos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  basicos.Open ;
  grid_basicos.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;
procedure TfrmBasicos.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmBasicos.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmBasicos.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  Basicos.Append ;
  Basicos.FieldValues['sIdBasico']    := '' ;
  Basicos.FieldValues['sDescripcion'] := '' ;
  Basicos.FieldValues['dVentaMN']     := '0' ;
  Basicos.FieldValues['dVentaDLL']    := '0' ;
  Basicos.FieldValues['dCostoMN']     := '0' ;
  Basicos.FieldValues['dCostoDLL']    := '0' ;
  Basicos.FieldValues['sSimbolo']     := '*' ;
  tsIdGrupo.SetFocus ;

  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  grid_basicos.Enabled := False;
end;

procedure TfrmBasicos.frmBarra1btnEditClick(Sender: TObject);
begin
    If Basicos.RecordCount > 0 Then
    Begin
       try
         sIdOrig := Basicos.FieldByName('sIdBasico').AsString;
         frmBarra1.btnEditClick(Sender);
         Insertar1.Enabled := False ;
         Editar1.Enabled := False ;
         Registrar1.Enabled := True ;
         Can1.Enabled := True ;
         Eliminar1.Enabled := False ;
         Refresh1.Enabled := False ;
         Salir1.Enabled := False ;
         sOpcion := 'Edit';
         Basicos.Edit ;
         grid_basicos.Enabled := False;
         tsIdGrupo.SetFocus
       except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Basicos', 'Al agregar registro', 0);
         end;
       end;
    End;
BotonPermiso.permisosBotones(frmBarra1);
frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmBasicos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lEdita: boolean;
begin
  {Validaciones de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Basico');  nombres.Add('Descripcion');  nombres.Add('Costo MN');
  cadenas.Add(tsIdGrupo.Text); cadenas.Add(tsDescripcion.Text); cadenas.Add(dbCostoMN.Text);

  nombres.Add('Costo DLL');     nombres.Add('Medida');
  cadenas.Add(dbCostoDLL.Text); cadenas.Add(dbMedida.Text);

  nombres.Add('Venta MN');     nombres.Add('Venta DLL');    nombres.Add('Simbolo');
  cadenas.Add(tdVentaMN.Text); cadenas.Add(tdVentaDLL.Text); cadenas.Add(dbEdit1.Text);

  if not validaTexto(nombres, cadenas, 'Herramienta',tsIdGrupo.Text) then
  begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
  end;

  lEdita := false;
  if basicos.State = dsEdit then
    lEdita := true;

  {Continua insercion de datos..}
  Try
     Basicos.FieldValues['sContrato'] := global_contrato ;
     Basicos.Post ;
     Insertar1.Enabled := True ;
     Editar1.Enabled := True ;
     Registrar1.Enabled := False ;
     Can1.Enabled := False ;
     Eliminar1.Enabled := True ;
     Refresh1.Enabled := True ;
     Salir1.Enabled := True ;
     frmBarra1.btnPostClick(Sender);
  except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Basicos', 'Al SALVAR registro', 0);
         frmBarra1.btnCancel.Click ;
         lEdita := false;//cancelar la actualizacion de tablas dependientes
     end;
  end;

  if (lEdita) and (Basicos.FieldByName('sIdBasico').AsString <> sIdOrig) then
  begin
    tablasDependientes(sIdOrig);
  end;

  grid_basicos.Enabled := True;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
  if sOpcion = 'Edit' then
  begin
      BotonPermiso.permisosBotones(frmBarra1);
      grid_basicos.Enabled := True;
      sOpcion := '';
  end;
end;

procedure TfrmBasicos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Basicos.Cancel ;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   grid_basicos.Enabled := True;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
   sOpcion := '';
   grid_basicos.Enabled := True;
end;

procedure TfrmBasicos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Basicos.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(Basicos.FieldByName('sIdBasico').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      try
          Basicos.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Basicos', 'Al eliminar registro', 0);
       end;
      end
    end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmBasicos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Basicos.refresh ;
end;

procedure TfrmBasicos.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmBasicos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmBasicos.Copy1Click(Sender: TObject);
begin
  UtGrid.AddRowsFromClip;
end;

procedure TfrmBasicos.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmBasicos.dbCostoDLLChange(Sender: TObject);
begin
  tdbeditChangef(dbCostoDLL, 'Costo DLL');
end;

procedure TfrmBasicos.dbCostoDLLEnter(Sender: TObject);
begin
  dbCostoDLL.color := global_color_entradaERP;
end;

procedure TfrmBasicos.dbCostoDLLExit(Sender: TObject);
begin
  dbCostoDLL.color := global_color_salidaERP;
end;

procedure TfrmBasicos.dbCostoDLLKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(dbCostoDLL,key) then
   key:=#0;
   
   If Key = #13 then
        tdventadll.SetFocus

end;

procedure TfrmBasicos.dbCostomnChange(Sender: TObject);
begin
  tdbeditchangef(dbCostomn, 'Costo MN');
end;

procedure TfrmBasicos.dbCostomnEnter(Sender: TObject);
begin
dbCostomn.Color := global_color_entradaERP;
end;

procedure TfrmBasicos.dbCostomnExit(Sender: TObject);
begin
  dbCostomn.color := global_color_salidaERP;
end;

procedure TfrmBasicos.dbCostomnKeyPress(Sender: TObject; var Key: Char);
begin
 if not keyFiltroTdbedit(dbCostomn,key) then
   key:=#0;
   If Key = #13 then
        tdventamn.SetFocus

end;

procedure TfrmBasicos.DBEdit1Enter(Sender: TObject);
begin
  dbedit1.color := global_color_entradaERP;
end;

procedure TfrmBasicos.DBEdit1Exit(Sender: TObject);
begin
  dbedit1.color:= global_color_salidaERP;
end;

procedure TfrmBasicos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 then
        tsIdGrupo.SetFocus

end;

procedure TfrmBasicos.dbMedidaEnter(Sender: TObject);
begin
  dbMedida.color := global_color_entradaERP;
end;

procedure TfrmBasicos.dbMedidaExit(Sender: TObject);
begin
  dbMedida.color := global_color_salidaERP;
end;

procedure TfrmBasicos.dbMedidaKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 then
        dbedit1.SetFocus

end;

procedure TfrmBasicos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmBasicos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmBasicos.basicosdCostoDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmBasicos.basicosdCostoMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmBasicos.basicosdVentaDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmBasicos.basicosdVentaMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmBasicos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmBasicos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmBasicos.ExportaaPlantillaExcel1Click(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;

Procedure DatosPlantilla;
Var
  CadFecha, tmpNombre, cadena : String;
  fs: tStream;
  Alto : Extended;
  Ren, nivel : integer;
Begin
    Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
    Excel.ActiveWindow.Zoom := 100;
//  if rAnexoC.Checked then
//  begin
      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 10;
      Excel.Columns['C:C'].ColumnWidth := 40;
      Excel.Columns['D:H'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Id_Basico';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Costo MN';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Costo DLL';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Venta DLL';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Venta MN';
      FormatoEncabezado;

      connection.QryBusca.Active := False ;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('select * from basicos where sContrato =:Contrato order by sIdBasico ');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
      connection.QryBusca.Open ;

      if connection.QryBusca.RecordCount > 0 then
      begin
           while not connection.QryBusca.Eof do
           begin
                Hoja.Cells[Ren,1].Select;
                Excel.Selection.Value := global_contrato;
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;
                Excel.Selection.Font.Size := 11;
                Excel.Selection.Font.Bold := False;
                Excel.Selection.Font.Name := 'Calibri';

                Hoja.Cells[Ren,2].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sIdBasico'];
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,3].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];
                Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
                Hoja.Cells[Ren,3].Value := '';

                if Alto > 15 then
                   Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
                Else
                   Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

                Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];

                Hoja.Cells[Ren,4].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,5].Select;
                Excel.Selection.NumberFormat := '@';
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoMN'];
                Excel.Selection.HorizontalAlignment := xlRight;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,6].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoDLL'];

                Hoja.Cells[Ren,7].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaMN'];

                Hoja.Cells[Ren,8].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaDLL'];

                connection.QryBusca.Next;
                Inc(Ren);
           end;
      end;
      Hoja.Cells[2,2].Select;


  Hoja.Range['A1:H1'].Select;
  // Formato general de encabezado de datos..
  Excel.Selection.HorizontalAlignment                   := xlCenter;
  Excel.Selection.VerticalAlignment                     := xlCenter;
  Excel.Selection.Interior.ColorIndex := 5;
  Excel.Selection.Font.color          := clWhite;
  Excel.Selection.Interior.Pattern    := xlSolid;

  Hoja.Range['A1:A1'].Select;
End;

Begin
  Resultado := True;
  Try
    Hoja := Libro.Sheets[1];
    Hoja.Select;
    try
       Hoja.Name := 'BASICOS '+ global_contrato;
    Except
       Hoja.Name := 'BASICOS '+ global_contrato;
    end;
    DatosPlantilla;
  Except
    on e:exception do
    Begin
      Resultado := False;
      CadError := 'Se ha producido el siguiente error al generar la Plantilla de Basicos' + #10 + #10 + e.Message;
    End;
  End;

  Result := Resultado;
End;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    FreeAndNil(Excel);
    showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  if GenerarPlantilla then
    // Grabar el archivo de excel con el nombre dado
    messageDlg('La Plantilla se Genero Correctamente!' , mtConfirmation, [mbOk], 0) ;

      Excel := '';

  if CadError <> '' then
    showmessage(CadError);

end;


procedure TfrmBasicos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmBasicos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmBasicos.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmBasicos.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmBasicos.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmBasicos.grid_GruposIsometricoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmBasicos.grid_GruposIsometricoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmBasicos.grid_GruposIsometricoTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmBasicos.tsIdGrupoEnter(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_entradaERP;
end;

procedure TfrmBasicos.tsIdGrupoExit(Sender: TObject);
begin
    tsIdGrupo.Color := global_color_salidaERP;
end;

procedure TfrmBasicos.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsdescripcion.SetFocus
end;

procedure TfrmBasicos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmBasicos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmBasicos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        dbCostomn.SetFocus
end;

function TfrmBasicos.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sIdBasico');ParamValuesSET.Add(Basicos.FieldByName('sIdBasico').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdBasico');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('basicos',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end;
end;

function TfrmBasicos.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdBasico');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('basicos',ParamNamesWHERE,ParamValuesWHERE);
end;

procedure TfrmBasicos.tdCostoDLLEnter(Sender: TObject);
begin
   tdVentaDLL.Color := global_color_entradaERP;
end;

procedure TfrmBasicos.tdCostoDLLExit(Sender: TObject);
begin
   tdVentaMn.Color := global_color_salidaERP;
end;

procedure TfrmBasicos.tdCostomnEnter(Sender: TObject);
begin
   tdVentaMn.Color := global_color_entradaERP;
end;

procedure TfrmBasicos.tdCostomnExit(Sender: TObject);
begin
  tdVentaMn.Color := global_color_salidaERP;
end;

procedure TfrmBasicos.tdCostomnKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(dbCostomn, key) then
   key:=#0;

  if key = #13 then
    dbcostoDLL.SetFocus ;

end;

procedure TfrmBasicos.tdVentaDLLChange(Sender: TObject);
begin
  tdbeditchangef(tdVentaDLL, 'Venta DLL');
end;

procedure TfrmBasicos.tdVentaDLLEnter(Sender: TObject);
begin
  tdVentadll.color := global_color_entradaERP;
end;

procedure TfrmBasicos.tdVentaDLLExit(Sender: TObject);
begin
  tdventadll.Color := global_color_salidaERP;
end;

procedure TfrmBasicos.tdVentaDLLKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(tdVentaDLL,key) then
   key:=#0;
    If Key = #13 then
        dbmedida.SetFocus

end;

procedure TfrmBasicos.tdVentaMNChange(Sender: TObject);
begin
tdbeditchangef(tdVentaMN, 'Venta MN');
end;

procedure TfrmBasicos.tdVentaMNEnter(Sender: TObject);
begin
  tdventamn.Color:= global_color_entradaPU;
end;

procedure TfrmBasicos.tdVentaMNExit(Sender: TObject);
begin
  tdventamn.Color:= global_color_salidaERP;
end;

procedure TfrmBasicos.tlFaseKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsIdGrupo.SetFocus
end;

procedure TfrmBasicos.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

end.
