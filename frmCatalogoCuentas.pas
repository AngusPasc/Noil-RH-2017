unit frmCatalogoCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, StrUtils, 
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
  global, Menus, frxClass, frxDBSet, Utilerias, RXDBCtrl, AdvGlowButton, frm_Consumibles,
  frm_equipos, frm_personal, frmEmpleados, NxColumnClasses, NxGrid, AdvMenus,
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
  dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, cxClasses, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  Tfrm_Catalogocuentasc = class(TForm)
    dszQCatalogodeCuentas: TDataSource;
    zQCatalogodeCuentas: TZQuery;
    reporte: TfrxReport;
    dbFrxIngresos: TfrxDBDataset;
    popmenuAgregar: TAdvPopupMenu;
    MismoNivel1: TMenuItem;
    Hijo1: TMenuItem;
    zQCatalogodeCuentasIid_NumeroDeCuenta: TIntegerField;
    zQCatalogodeCuentassNumeroCuenta: TStringField;
    zQCatalogodeCuentassTipodeCuenta: TStringField;
    zQCatalogodeCuentassSaldoCuenta: TStringField;
    zQCatalogodeCuentassNombre: TStringField;
    zQCatalogodeCuentasiPadre: TIntegerField;
    zQCatalogodeCuentasdDebe: TFloatField;
    zQCatalogodeCuentasdHaber: TFloatField;
    zQCatalogodeCuentasdSaldo: TFloatField;
    zQCatalogodeCuentassOrdenador: TStringField;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CuentaContable: TLabel;
    tdbmDescripcion: TDBMemo;
    tdbsIdArticulo: TDBEdit;
    tsImprimeRecibo: TDBComboBox;
    dbDeudor: TDBComboBox;
    txtDebe: TDBEdit;
    txtHaber: TDBEdit;
    txtSaldo: TDBEdit;
    Panel3: TPanel;
    frmBarra1: TfrmBarra;
    Panel1: TPanel;
    nxgCuentasCont: TNextGrid;
    NxTreeColumn1: TNxTreeColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    Splitter1: TSplitter;
    btnAceptar: TAdvGlowButton;
    dxbrmngr1: TdxBarManager;
    Editar1: TdxBarButton;
    Registrar1: TdxBarButton;
    Can1: TdxBarButton;
    Eliminar1: TdxBarButton;
    Salir1: TdxBarButton;
    Refresh1: TdxBarButton;
    Imprimir1: TdxBarButton;
    Insertar1: TdxBarButton;
    PopupPrincipal: TdxRibbonRadialMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zQCatalogodeCuentasAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tiEjercicioExit(Sender: TObject);

    procedure FormKeyPress(Sender: TObject; var Key: Char);


    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure Grid_catCuentasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnAceptarClick(Sender: TObject);
    procedure LlenarGrid(hijo,espacios: integer);
    procedure MismoNivel1Click(Sender: TObject);
    procedure tdbsIdArticuloEnter(Sender: TObject);
    procedure tdbmDescripcionEnter(Sender: TObject);
    procedure tsImprimeReciboEnter(Sender: TObject);
    procedure dbDeudorEnter(Sender: TObject);
    procedure txtDebeEnter(Sender: TObject);
    procedure txtHaberEnter(Sender: TObject);
    procedure txtSaldoEnter(Sender: TObject);
    procedure tdbsIdArticuloExit(Sender: TObject);
    procedure tdbmDescripcionExit(Sender: TObject);
    procedure tsImprimeReciboExit(Sender: TObject);
    procedure dbDeudorExit(Sender: TObject);
    procedure txtDebeExit(Sender: TObject);
    procedure txtHaberExit(Sender: TObject);
    procedure txtSaldoExit(Sender: TObject);
    procedure tdbsIdArticuloKeyPress(Sender: TObject; var Key: Char);
    procedure tdbmDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsImprimeReciboKeyPress(Sender: TObject; var Key: Char);
    procedure dbDeudorKeyPress(Sender: TObject; var Key: Char);
    procedure txtDebeKeyPress(Sender: TObject; var Key: Char);
    procedure txtHaberKeyPress(Sender: TObject; var Key: Char);
    procedure txtSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure nxgCuentasContSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure Hijo1Click(Sender: TObject);
    procedure nxgCuentasContCellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles; CellState: TCellState);
    procedure nxgCuentasContDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Catalogocuentasc: Tfrm_Catalogocuentasc;
  iId, Cta, sql, opcion : String;
  fila_padre, fila_seleccionada, ultima_fila_agregada : integer;
  a, z, max_registros : Integer;
  tablaCuentasContables : array[1..10000, 1..9] of string;

implementation

uses frm_connection, frm_inteligent;

{$R *.dfm}

procedure Tfrm_Catalogocuentasc.btnAceptarClick(Sender: TObject);
begin
  if frmInteligent.MostrarFormChild('frmEquipos') then
  begin
    frmEquipos.Equipos.FieldByName('iId_NumeroDeCuenta').AsInteger := zQCatalogodecuentas.FieldValues['iId_NumeroDeCuenta'];
    frmEquipos.txtCuentasContables.Text :=zQCatalogodecuentas.FieldValues['sNombre'];
  end;
  if frmInteligent.MostrarFormChild('frmConsumibles') then begin
    frmConsumibles.Insumos.FieldByName('sNumeroCuenta').AsString := iId;
    //frmConsumibles.txtCtaContable.Text := iId;
  end;
  if frmInteligent.MostrarFormChild('frmPersonal') then begin
    frmPersonal.Personal.FieldByName('sNumeroCuenta').AsString := iId;
    frmPersonal.txtCuentasContables.Text := iId;
  end;
  if bandera_formulario = 'frmEmpleados' then
  begin
    bandera_formulario := '';
    zQCatalogodecuentas.Locate('sNumeroCuenta', cta , [loCaseInsensitive]);
    frm_Empleados.zQEmpleados.FieldByName('iId_NumeroDeCuenta').AsInteger := zQCatalogodecuentas.FieldValues['iId_NumeroDeCuenta'];
    //frm_Empleados.txtCuentasContables.Text := zQCatalogodecuentas.FieldValues['sNombre'];
  end;

  if iId = '' then begin
    MessageDlg('Seleccione un Registro.', mtConfirmation, [mbOk], 0);
    exit;
  end;

  Close

end;

procedure Tfrm_Catalogocuentasc.dbDeudorEnter(Sender: TObject);
begin
  dbDeudor.Color := global_color_entrada;
end;

procedure Tfrm_Catalogocuentasc.dbDeudorExit(Sender: TObject);
begin
  dbDeudor.Color := global_color_salida;
end;

procedure Tfrm_Catalogocuentasc.dbDeudorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    txtDebe.SetFocus
end;

procedure Tfrm_Catalogocuentasc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Catalogocuentasc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
end;

procedure Tfrm_Catalogocuentasc.FormShow(Sender: TObject);
begin
    a := 1;
    connection.QryBusca.Active := False;
    connection.QryBusca.SQl.Clear;
    connection.QryBusca.SQL.Add('SELECT * FROM con_catalogodecuentas ORDER BY sOrdenador;');
    connection.QryBusca.Open;
    //SetLength(arrayCuentasContables, [connection.QryBusca.RecordCount,9]);
    if connection.QryBusca.RecordCount > 0 then
    begin
      while not connection.QryBusca.Eof do
      begin
        tablaCuentasContables[a,1] := connection.QryBusca.FieldByName('sNumeroCuenta').AsString;
        tablaCuentasContables[a,2] := connection.QryBusca.FieldByName('sTipodeCuenta').AsString;
        tablaCuentasContables[a,3] := connection.QryBusca.FieldByName('sSaldoCuenta').AsString;
        tablaCuentasContables[a,4] := connection.QryBusca.FieldByName('sNombre').AsString;
        tablaCuentasContables[a,5] := connection.QryBusca.FieldByName('iPadre').AsString;
        tablaCuentasContables[a,6] := connection.QryBusca.FieldByName('dDebe').AsString;
        tablaCuentasContables[a,7] := connection.QryBusca.FieldByName('dHaber').AsString;
        tablaCuentasContables[a,8] := connection.QryBusca.FieldByName('dSaldo').AsString;
        tablaCuentasContables[a,9] := connection.QryBusca.FieldByName('iId_NumeroDeCuenta').AsString;

        connection.QryBusca.Next;
        inc(a);
      end;
      zQCatalogodeCuentas.Open ;
      tdbsIdArticulo.SetFocus ;
      max_registros := connection.QryBusca.RecordCount;
      nxgCuentasCont.BeginUpdate;
      nxgCuentasCont.ClearRows;

      LlenarGrid(0,0);

      nxgCuentasCont.EndUpdate;
      nxgCuentasCont.SelectedRow := 0;
      iId := trim(nxgCuentasCont.GetDrawText(9,0));
      CuentaContable.Caption := 'Cuenta Contable: ' + zQCatalogodecuentas.FieldValues['sNumeroCuenta'];
    end;

    zQCatalogodeCuentas.Open ;
end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnAddClick(Sender: TObject);
begin
  opcion := 'Nuevo';
  popmenuAgregar.PopupAtCursor;
end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zQCatalogodeCuentas.Cancel;
  //nxgCuentasCont.DeleteChildRow();
  if opcion = 'Nuevo' then
    nxgCuentasCont.DeleteRow(ultima_fila_agregada);
end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zQCatalogodeCuentas.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
         //iId := nxgCuentasCont.GetDrawText(9,fila_seleccionada);
         Connection.QryBusca.Active := False ;
         Connection.qryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('SELECT * FROM con_catalogodecuentas WHERE iPadre = :padre ORDER BY sNumeroCuenta;');
         Connection.QryBusca.Params.ParamByName('padre').AsString := zQCatalogodeCuentas.FieldByName('iId_NumeroDeCuenta').AsString;
         Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then begin
             MessageDlg('NO SE PUEDE BORRAR, EXISTEN DATOS DEPENDIENTES PARA ESTA CUENTA.', mtInformation, [mbOk], 0)
         end
         Else begin
            zQCatalogodeCuentas.Delete ;
            nxgCuentasCont.DeleteRow(fila_seleccionada);
         end;
        except
        MessageDlg('Imposible Borrar, el Registro Actual es Requerido en otro Proceso', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  opcion := 'Editar';
  If zQCatalogodeCuentas.RecordCount > 0 Then
  begin
      zQCatalogodeCuentas.Edit ;
      tdbsIdArticulo.SetFocus;
      iId := zQCatalogodeCuentas.FieldByName('iPadre').AsString;////iPadre para el nuevo registro
  end;
end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnPostClick(Sender: TObject);
var
  ordenador, ordenador2 : String;
begin
  if opcion = 'Nuevo' then
    a := nxgCuentasCont.LastAddedRow
  else
    a := fila_seleccionada;

  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT sOrdenador FROM con_catalogodecuentas WHERE iPadre = '+iId+' ORDER BY iId_NumeroDeCuenta');
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then begin
    connection.QryBusca.Last;
    ordenador := connection.QryBusca.FieldByName('sOrdenador').AsString;
    ordenador2 := AnsiMidStr(ordenador,LastDelimiter('.',ordenador)+1,Length(ordenador));
    ordenador2 := AnsiMidStr(ordenador,0,LastDelimiter('.',ordenador)) + IntToStr(StrToInt(ordenador2)+1);
  end
  else begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT sOrdenador FROM con_catalogodecuentas WHERE iId_NumeroDeCuenta = '+iId+' ORDER BY iId_NumeroDeCuenta');
    connection.QryBusca.Open;
    ordenador2 := connection.QryBusca.FieldByName('sOrdenador').AsString + '.1';
  end;

  zQCatalogodeCuentas.FieldByName('iPadre').AsString := iId;////iPadre para el nuevo registro
  zQCatalogodeCuentas.FieldByName('sOrdenador').AsString := ordenador2;
  zQCatalogodeCuentas.Post ;

  nxgCuentasCont.Cells[1, a] := zQCatalogodeCuentas.FieldByName('sNumeroCuenta').AsString;
  nxgCuentasCont.Cells[2, a] := zQCatalogodeCuentas.FieldByName('sNombre').AsString;
  nxgCuentasCont.Cells[3, a] := zQCatalogodeCuentas.FieldByName('sTipodeCuenta').AsString;
  nxgCuentasCont.Cells[4, a] := zQCatalogodeCuentas.FieldByName('sSaldoCuenta').AsString;
  nxgCuentasCont.Cells[5, a] := zQCatalogodeCuentas.FieldByName('dDebe').AsString;
  nxgCuentasCont.Cells[6, a] := zQCatalogodeCuentas.FieldByName('dHaber').AsString;
  nxgCuentasCont.Cells[7, a] := zQCatalogodeCuentas.FieldByName('dSaldo').AsString;
  nxgCuentasCont.Cells[8, a] := iId;////iPadre para el nuevo registro
  nxgCuentasCont.Cells[9, a] := zQCatalogodeCuentas.FieldByName('iId_NumeroDeCuenta').AsString;

  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnPrinterClick(Sender: TObject);
begin
       Reporte.LoadFromFile(global_files+  'CADCatIngresos.fr3') ;
       Reporte.ShowReport() ;
         if not FileExists(global_files + global_miReporte + 'CADCatIngresos.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'CADCatIngresos.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;
 end;

procedure Tfrm_Catalogocuentasc.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zQCatalogodeCuentas.Refresh;
end;


procedure Tfrm_Catalogocuentasc.Grid_catCuentasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
 If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
        If ZQCatalogodeCuentas.RecordCount > 0 Then
          begin

             If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipodeCuenta').AsString = 'Mayor' then
                begin
                  Afont.Style   := [fsBold] ;
                  AFont.Color   := esColor(12);
               end;

             If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipodeCuenta').AsString = 'Enlace' then
                begin
                  Afont.Style := [fsBold] ;
                  AFont.Color   := esColor(13);
               end;
        end;
end;

procedure Tfrm_Catalogocuentasc.Hijo1Click(Sender: TObject);
begin

  frmBarra1.btnAddClick(Sender);
  zQCatalogodeCuentas.Append;
  tdbsIdArticulo.SetFocus;

  nxgCuentasCont.AddChildRow(fila_seleccionada);
  for z := 0 to 9 do
    nxgCuentasCont.Cell[z, nxgCuentasCont.LastAddedRow].Color := $00E6FEFF;
  iId := nxgCuentasCont.GetDrawText(9,fila_seleccionada);////iPadre para el nuevo registro

  ultima_fila_agregada := nxgCuentasCont.LastAddedRow;
  CuentaContable.Caption := 'Cuenta Contable: ';
end;

procedure Tfrm_Catalogocuentasc.tdbmDescripcionEnter(Sender: TObject);
begin
  tdbmDescripcion.Color := global_color_entrada;
end;

procedure Tfrm_Catalogocuentasc.tdbmDescripcionExit(Sender: TObject);
begin
  tdbmDescripcion.Color := global_color_salida;
end;

procedure Tfrm_Catalogocuentasc.tdbmDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
    if key = #13 then
      tsImprimeRecibo.SetFocus
end;

procedure Tfrm_Catalogocuentasc.tdbsIdArticuloEnter(Sender: TObject);
begin
  tdbsIdArticulo.Color := global_color_entrada;
end;

procedure Tfrm_Catalogocuentasc.tdbsIdArticuloExit(Sender: TObject);
begin
  tdbsIdArticulo.Color := global_color_salida;
end;

procedure Tfrm_Catalogocuentasc.tdbsIdArticuloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdbmDescripcion.SetFocus
end;

procedure Tfrm_Catalogocuentasc.tiEjercicioExit(Sender: TObject);
begin
    frmBarra1.btnCancel.Click ;

end;

procedure Tfrm_Catalogocuentasc.tsImprimeReciboEnter(Sender: TObject);
begin
  tsImprimeRecibo.Color := global_color_entrada;
end;

procedure Tfrm_Catalogocuentasc.tsImprimeReciboExit(Sender: TObject);
begin
  tsImprimeRecibo.Color := global_color_salida;
end;

procedure Tfrm_Catalogocuentasc.tsImprimeReciboKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    dbDeudor.SetFocus
end;

procedure Tfrm_Catalogocuentasc.txtDebeEnter(Sender: TObject);
begin
  txtDebe.Color := global_color_entrada;
end;

procedure Tfrm_Catalogocuentasc.txtDebeExit(Sender: TObject);
begin
  txtDebe.Color := global_color_salida;
end;

procedure Tfrm_Catalogocuentasc.txtDebeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    txtHaber.SetFocus
end;

procedure Tfrm_Catalogocuentasc.txtHaberEnter(Sender: TObject);
begin
  txtHaber.Color := global_color_entrada;
end;

procedure Tfrm_Catalogocuentasc.txtHaberExit(Sender: TObject);
begin
  txtHaber.Color := global_color_salida;
end;

procedure Tfrm_Catalogocuentasc.txtHaberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    txtSaldo.SetFocus
end;

procedure Tfrm_Catalogocuentasc.txtSaldoEnter(Sender: TObject);
begin
  txtSaldo.Color := global_color_entrada;
end;

procedure Tfrm_Catalogocuentasc.txtSaldoExit(Sender: TObject);
begin
  txtSaldo.Color := global_color_salida;
end;

procedure Tfrm_Catalogocuentasc.txtSaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdbsIdArticulo.SetFocus
end;

procedure Tfrm_Catalogocuentasc.zQCatalogodeCuentasAfterInsert(
  DataSet: TDataSet);
begin

    zqCatalogodeCuentas.FieldValues['dDebe']        :=  0  ;
    zqCatalogodeCuentas.FieldValues['dHaber']       :=  0 ;
    zqCatalogodeCuentas.FieldValues['dSaldo']       :=  0 ;
    zqCatalogodeCuentas.FieldValues['sSaldoCuenta'] :=  'Acreedor' ;

end;

procedure Tfrm_Catalogocuentasc.LlenarGrid(hijo,espacios: integer);
Var
  identacion  : string;
  query : TZQuery;
  i, j: Integer;
begin
  query := TZQuery.Create(self);
  query.Connection := Connection.zConnection;

   for i := 1 to max_registros do begin
      if (StrToInt(tablaCuentasContables[i,5]) = hijo) then begin
        if hijo = 0 then begin
          nxgCuentasCont.AddRow;
        end
        else begin
          for j := 0 to nxgCuentasCont.RowCount - 1 do begin
            if nxgCuentasCont.Cells[9,j] = tablaCuentasContables[i,5] then begin
              nxgCuentasCont.AddChildRow(j);
            end;
          end;
        end;

        for z := 0 to 9 do
          nxgCuentasCont.Cell[z, nxgCuentasCont.LastAddedRow].Color := $00E6FEFF;

        identacion := '';
        for z := 1 to espacios do
          identacion := '   '+identacion;

        nxgCuentasCont.Cells[1, nxgCuentasCont.LastAddedRow] := identacion+tablaCuentasContables[i,1];
        nxgCuentasCont.Cells[2, nxgCuentasCont.LastAddedRow] := identacion+tablaCuentasContables[i,4];
        nxgCuentasCont.Cells[3, nxgCuentasCont.LastAddedRow] := tablaCuentasContables[i,2];
        nxgCuentasCont.Cells[4, nxgCuentasCont.LastAddedRow] := tablaCuentasContables[i,3];
        nxgCuentasCont.Cells[5, nxgCuentasCont.LastAddedRow] := tablaCuentasContables[i,6];
        nxgCuentasCont.Cells[6, nxgCuentasCont.LastAddedRow] := tablaCuentasContables[i,7];
        nxgCuentasCont.Cells[7, nxgCuentasCont.LastAddedRow] := tablaCuentasContables[i,8];
        nxgCuentasCont.Cells[8, nxgCuentasCont.LastAddedRow] := tablaCuentasContables[i,5];
        nxgCuentasCont.Cells[9, nxgCuentasCont.LastAddedRow] := tablaCuentasContables[i,9];

        LlenarGrid(StrToInt(tablaCuentasContables[i,9]),espacios+1);
      end;
   end;
end;

procedure Tfrm_Catalogocuentasc.MismoNivel1Click(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   zQCatalogodeCuentas.Append;
   tdbsIdArticulo.SetFocus;

   if fila_seleccionada <> 0 then
      fila_padre := nxgCuentasCont.GetParent(fila_seleccionada)
   else
      fila_padre := -1;

   if fila_padre = -1 then
   begin
       nxgCuentasCont.AddRow;
       iId := '0';////iPadre para el nuevo registro
   end
   else
   begin
      nxgCuentasCont.AddChildRow(fila_padre);
      iId := nxgCuentasCont.GetDrawText(8,fila_seleccionada);////iPadre para el nuevo registro
   end;
   for z := 0 to 9 do
      nxgCuentasCont.Cell[z, nxgCuentasCont.LastAddedRow].Color := $00E6FEFF;
   ultima_fila_agregada := nxgCuentasCont.LastAddedRow;
   CuentaContable.Caption := 'Cuenta Contable: ';

end;

procedure Tfrm_Catalogocuentasc.nxgCuentasContCellFormating(Sender: TObject;
  ACol, ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin

    if nxgCuentasCont.Cells[8,ARow] = IntToStr(0) then begin
      TextColor := $8A4B08;
      FontStyle := [fsBold];
    end;

end;

procedure Tfrm_Catalogocuentasc.nxgCuentasContDblClick(Sender: TObject);
begin
    btnAceptarClick(sender);

end;

procedure Tfrm_Catalogocuentasc.nxgCuentasContSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
  iId := trim(nxgCuentasCont.GetDrawText(9,ARow));
  cta := nxgCuentasCont.GetDrawText(1,ARow);
  zQCatalogodeCuentas.Active := False;
  zQCatalogodeCuentas.Open;
  fila_seleccionada := nxgCuentasCont.SelectedRow;
  CuentaContable.Caption := 'Cuenta Contable: ' + zQCatalogodecuentas.FieldValues['sNumeroCuenta'];
  iId := zQCatalogodeCuentas.FieldByName('sNumeroCuenta').AsString;
end;

end.
