unit frm_platicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Mask, DBCtrls, frm_barra, Grids,
  DBGrids, ComCtrls, global, DB, Menus, frxClass, frxDBSet,
   RXDBCtrl, ZAbstractRODataset, ZAbstractDataset, ZDataset, rxToolEdit,
  unitexcepciones, udbgrid, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, DBDateTimePicker, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ExtCtrls;
function IsDate(ADate: string): Boolean;
type
  TfrmPlaticas = class(TForm)
    frmBarra1: TfrmBarra;
    ds_platicas: TDataSource;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    ds_ordenesdetrabajo: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Platicas: TZQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    ImportarPlaticasMesAnt1: TMenuItem;
    ImportarPlaticasotroContrato1: TMenuItem;
    grupImportar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmbOrden: TComboBox;
    cmbFrente: TComboBox;
    cmdAceptar: TButton;
    cmdCanelar: TButton;
    cmbFecha: TComboBox;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_firmantes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    tsTema: TDBEdit;
    tdIdFecha: TDBDateTimePicker;
    pnl2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_firmantesEnter(Sender: TObject);
    procedure grid_firmantesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_firmantesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grid_firmantesCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsTemaKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure frListaGetValue(const VarName: String; var Value: Variant);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsTemaEnter(Sender: TObject);
    procedure tsTemaExit(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure ImportarPlaticasMesAnt1Click(Sender: TObject);
    procedure ImportarPlaticasotroContrato1Click(Sender: TObject);
    procedure cmbOrdenChange(Sender: TObject);
    procedure cmdAceptarClick(Sender: TObject);
    procedure cmdCanelarClick(Sender: TObject);
    procedure cmbOrdenEnter(Sender: TObject);
    procedure cmbFrenteEnter(Sender: TObject);
    procedure cmbFechaEnter(Sender: TObject);
    procedure cmbOrdenExit(Sender: TObject);
    procedure cmbFrenteExit(Sender: TObject);
    procedure cmbFechaExit(Sender: TObject);
    procedure cmbOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure cmbFrenteKeyPress(Sender: TObject; var Key: Char);
    procedure cmbFechaKeyPress(Sender: TObject; var Key: Char);
    procedure grid_firmantesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_firmantesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_firmantesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tsNumeroOrdenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlaticas: TfrmPlaticas;
  Opcion : String ;
  Registro_Actual : String ;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
implementation

{$R *.dfm}

procedure TfrmPlaticas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Platicas.Cancel ;
  action := cafree ;
  //utgrid.destroy;
  botonpermiso.Free;
end;

function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmPlaticas.grid_firmantesEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
 if tsnumeroorden.Text<>'' then
  begin
 if tsnumeroorden.Text<>'' then
  begin
  If Platicas.RecordCount > 0 Then
      tdIdFecha.Date := Platicas.FieldValues['dIdFecha']
  end;
  end;
end;

procedure TfrmPlaticas.grid_firmantesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
 if tsnumeroorden.Text<>'' then
  begin
  If Platicas.RecordCount > 0 Then
      tdIdFecha.Date := Platicas.FieldValues['dIdFecha']
  end;
end;

procedure TfrmPlaticas.grid_firmantesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
  if tsnumeroorden.Text<>'' then
  begin
  If Platicas.RecordCount > 0 Then
      tdIdFecha.Date := Platicas.FieldValues['dIdFecha']
  end;
end;

procedure TfrmPlaticas.grid_firmantesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPlaticas.grid_firmantesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPlaticas.grid_firmantesTitleClick(Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmPlaticas.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cProgPlaticas', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_firmantes);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;
  tsNumeroOrden.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmPlaticas.grid_firmantesCellClick(Column: TColumn);
begin
  If frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
  if tsnumeroorden.Text<>'' then
  begin
  If Platicas.RecordCount > 0 Then
      tdIdFecha.Date := Platicas.FieldValues['dIdFecha']
  end;
end;

procedure TfrmPlaticas.frmBarra1btnAddClick(Sender: TObject);
Var
  tmpFecha : tDate ;
begin
  if tsNumeroOrden.Text = '' then
    exit;
  try
    //activapop(frmPlaticas,popupprincipal);
    frmBarra1.btnAddClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    tdIdFecha.Date := Date ;
    Platicas.Last ;
    If Platicas.RecordCount > 0 Then
        tmpFecha := Platicas.FieldValues['dIdFecha'] + 1
    Else
        tmpFecha := Date ;
    Platicas.Append ;
    Platicas.FieldValues [ 'sContrato' ]  := Global_Contrato ;
    Platicas.FieldValues [ 'sContrato' ]  := Global_Contrato ;
    Platicas.FieldValues [ 'dIdFecha' ]  := tmpFecha ;
    tdIdFecha.SetFocus ;
    BotonPermiso.permisosBotones(frmBarra1);
    frmBarra1.btnPrinter.Enabled := False;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa  de Platicas de Seguridad', 'Al agregar registro', 0);
      frmBarra1.btnCancel.Click ;
    end;
  end;
  grid_firmantes.Enabled:=false;

end;

procedure TfrmPlaticas.frmBarra1btnEditClick(Sender: TObject);
begin
  if (not Platicas.Active) or (Platicas.RecordCount < 1) then
      exit;
  frmBarra1.btnEditClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
    grid_firmantes.Enabled:=false;
  try
      //activapop(frmPlaticas,popupprincipal);
      Platicas.Edit ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa  de Platicas de Seguridad', 'Al editar registro', 0);
    frmBarra1.btnCancel.Click ;
    end;
  end ;
  tdIdFecha.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;

end;

procedure TfrmPlaticas.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Frente de Trabajo');nombres.Add('Fecha');nombres.Add('Tema');
   cadenas.Add(tsNumeroOrden.Text);cadenas.Add(vartostr(tdIdFecha.Date));cadenas.Add(tsTema.Text);
   if not validaTexto(nombres, cadenas, '', '') then
   begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
   end;


   {Continua insercion de datos}
   try
      //desactivapop(popupprincipal);
      Platicas.FieldValues [ 'sNumeroOrden' ]  := tsNumeroOrden.Text ;
      Platicas.FieldValues [ 'didFecha' ]  := tdidFecha.date ;
      Platicas.Post ;
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
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa  de Platicas de Seguridad', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
     end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnPrinter.Enabled := False;
     grid_firmantes.Enabled:=true;
end;

procedure TfrmPlaticas.frmBarra1btnCancelClick(Sender: TObject);
begin
try
  //desactivapop(popupprincipal);
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Platicas.Cancel ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa de pláticas de seguridad', 'Al cancelar', 0);
end;
end;
    grid_firmantes.Enabled:=true;
end;

procedure TfrmPlaticas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if tsNumeroOrden.Text = '' then
    exit;
  If Platicas.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        Platicas.Delete ;
      except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa  de Platicas de Seguridad', 'Al eliminar registro', 0);
       end;
      end
    end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmBarra1.btnPrinter.Enabled := False;
end;

procedure TfrmPlaticas.frmBarra1btnRefreshClick(Sender: TObject);
begin
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Open ;
  Platicas.Active := False ;
  Platicas.Open ;
end;

procedure TfrmPlaticas.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;

   close
end;

procedure TfrmPlaticas.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     tsTema.SetFocus 
end;

procedure TfrmPlaticas.tsTemaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdIdFecha.SetFocus
end;

procedure TfrmPlaticas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmPlaticas.Paste1Click(Sender: TObject);
begin
  if tsNumeroOrden.Text = '' then
    exit;
 //UtGrid.AddRowsFromClip;
end;

procedure TfrmPlaticas.cmbFechaEnter(Sender: TObject);
begin
     cmbFecha.Color := global_color_entradaERP;
end;

procedure TfrmPlaticas.cmbFechaExit(Sender: TObject);
begin
     cmbFecha.Color := global_color_salidaERP;
end;

procedure TfrmPlaticas.cmbFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cmborden.SetFocus
end;

procedure TfrmPlaticas.cmbFrenteEnter(Sender: TObject);
begin
    cmbFrente.Color := global_color_entradaERP;
end;

procedure TfrmPlaticas.cmbFrenteExit(Sender: TObject);
begin
     cmbFrente.Color := global_color_salidaERP;
end;

procedure TfrmPlaticas.cmbFrenteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cmbfecha.SetFocus
end;

procedure TfrmPlaticas.cmbOrdenChange(Sender: TObject);
begin
    //Lllenado del combo de los Contratos..
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato ');
    connection.QryBusca.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.ParamByName('Contrato').Value    := cmbOrden.Text;
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount >0 then
    begin
        while not connection.QryBusca.Eof do
        begin
             cmbFrente.Items.Add(connection.QryBusca.FieldValues['sNumeroOrden']);
             connection.QryBusca.Next;
        end;
        cmbFrente.ItemIndex := 0;
    end
    else
        messageDLG('No se encontro un Frente de Trabajo en la Orden',mtInformation,[mbOk],0);
end;

procedure TfrmPlaticas.cmbOrdenEnter(Sender: TObject);
begin
     cmbOrden.Color := global_color_entradaERP;
end;

procedure TfrmPlaticas.cmbOrdenExit(Sender: TObject);
begin
     cmbOrden.Color := global_color_salidaERP;;
end;

procedure TfrmPlaticas.cmbOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cmbfrente.SetFocus
end;

procedure TfrmPlaticas.cmdAceptarClick(Sender: TObject);
var num, i : integer;
begin
  try
     if cmbFrente.Text = 'Seleccione un Frente' then
        messageDLG('Debe seleccionar un Frente de Trabajo', mtInformation, [mbOk], 0)
     else
     begin
          connection.QryBusca.Active :=  False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select *, month(dIdFecha) as mes from platicasdeseguridad where sContrato =:Contrato and sNumeroOrden =:Orden '+
                                      'order by sContrato, sNumeroOrden, dIdFecha DESC');
          connection.QryBusca.ParamByName('Contrato').DataType := ftString;
          connection.QryBusca.ParamByName('Contrato').Value    := cmbOrden.Text;
          connection.QryBusca.ParamByName('Orden').DataType    := ftString;
          connection.QryBusca.ParamByName('Orden').Value       := cmbFrente.Text;
          connection.QryBusca.Open;

          if connection.QryBusca.RecordCount > 0 then
          begin
              i   := 0;
              num := cmbFecha.ItemIndex + 1 ;
              while not connection.QryBusca.Eof do
              begin
                    if (cmbOrden.Text = connection.QryBusca.FieldValues['sContrato'])  and (cmbFrente.Text = connection.QryBusca.FieldValues['sNumeroOrden']) then
                    begin
                        if num = connection.QryBusca.FieldValues['mes'] then
                        begin
                              platicas.Append;
                              platicas.FieldValues['sContrato']    := Global_Contrato;
                              platicas.FieldValues['sNumeroOrden'] := tsNumeroOrden.Text;
                              platicas.FieldValues['dIdFecha']     := connection.QryBusca.FieldValues['dIdFecha'];
                              platicas.FieldValues['sTema']        := connection.QryBusca.FieldValues['sTema'];
                              platicas.Post;
                            i := i +1;
                        end;
                        connection.QryBusca.Next;
                    end;
              end;
              if i= 0  then
                 messageDLG('No se encontaron platicas de Seguridad en el Frente : '+cmbFrente.Text+', Mes de: '+cmbFecha.Text, mtInformation, [mbOk],0)
              else
                grupImportar.Visible := False;
         end
         else
            messageDLG('No se encontraron Platicas de Seguridad la Orden: '+cmbOrden.Text+', Frente: '+cmbFrente.Text+ ' Mes de: '+cmbFecha.Text, mtInformation, [mbOk],0);
     end;
  except
   on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa pláticas de seguridad', 'Al importar pláticas de otro contrato', 0);
    platicas.Cancel;
   end;
  end;
end;

procedure TfrmPlaticas.cmdCanelarClick(Sender: TObject);
begin
     grupImportar.Visible := False;
end;

procedure TfrmPlaticas.Copy1Click(Sender: TObject);
begin
  if tsNumeroOrden.Text = '' then
    exit;
   //UtGrid.CopyRowsToClip;
end;

procedure TfrmPlaticas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmPlaticas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmPlaticas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmPlaticas.Eliminar1Click(Sender: TObject);
begin
  if tsNumeroOrden.Text = '' then
    exit;
    frmBarra1.btnDelete.Click
end;

procedure TfrmPlaticas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmPlaticas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmPlaticas.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdidfecha.SetFocus
end;

procedure TfrmPlaticas.frListaGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'TEMA') = 0 then
      Value := Platicas.FieldValues['sTema'] ;
  If CompareText(VarName, 'FECHA') = 0 then
      Value := Platicas.FieldValues['dIdFecha']

end;

procedure TfrmPlaticas.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entradaERP
end;

procedure TfrmPlaticas.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salidaERP;
end;

procedure TfrmPlaticas.tsNumeroOrdenClick(Sender: TObject);
begin
  Platicas.Active := False ;
  Platicas.Params.ParamByName('Contrato').DataType := ftString ;
  Platicas.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Platicas.Params.ParamByName('Orden').DataType := ftString ;
  Platicas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
  Platicas.Open ;
end;

procedure TfrmPlaticas.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entradaERP
end;

procedure TfrmPlaticas.tsNumeroOrdenExit(Sender: TObject);
begin

  tsNumeroOrden.Color := global_color_salidaPU
end;

procedure TfrmPlaticas.tsTemaEnter(Sender: TObject);
begin
    tsTema.Color := global_color_entradaERP
end;

procedure TfrmPlaticas.tsTemaExit(Sender: TObject);
begin
    tsTema.Color := global_color_salidaERP;
end;

//soad -> Funcion que trae las palticas de seguridad del mes anterior..
//****************************************************************************
procedure TfrmPlaticas.ImportarPlaticasMesAnt1Click(Sender: TObject);
var
    CadFecha, CadMes, CadAnio, cadena : String;
    mes, i, anios : integer;
begin
   try
      tdIdFecha.Date := Date ;
      CadFecha  := DateToStr(tdIdFecha.Date);
      CadMes    := copy(CadFecha, 4,2);
      CadAnio   := copy(CadFEcha, 7,4);
      mes       := strToint(CadMes);
      anios     := strToint(CadAnio);
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select *, year(dIdFecha) as anio, month(dIdFecha) as mes from platicasdeseguridad '+
                               'where sContrato =:Contrato and sNumeroOrden =:Orden and dIdFecha < :Fecha');
      connection.QryBusca.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.ParamByName('Contrato').Value    := Global_contrato;
      connection.QryBusca.ParamByName('Orden').DataType    := ftString;
      connection.QryBusca.ParamByName('Orden').Value       := tsNumeroOrden.Text;
      connection.QryBusca.ParamByName('Fecha').DataType    := ftDate;
      connection.QryBusca.ParamByName('Fecha').Value       := tdIdFecha.Date;
      connection.QryBusca.Open;

      i := 0;
      if connection.QryBusca.RecordCount > 0 then
      begin
         while not connection.QryBusca.Eof do
         begin
             if mes > 1 then
             begin
                //Verifica que sean del mismo año..
                if (connection.QryBusca.FieldValues['mes'] = mes -1) and (connection.QryBusca.FieldValues['anio'] = anios) then
                begin
                     cadena := DateTostr(connection.QryBusca.FieldValues['dIdFecha']);
                     CadMes := copy(cadena,1,2);
                     if mes - 1 < 10 then
                        CadMes := CadMes +'/'+ '0' + intTostr(mes)
                     else
                        CadMes := CadMes +'/'+ intTostr(mes);
                     CadMes := CadMes + copy(cadena,6,5);
                     platicas.Append;
                     platicas.FieldValues['sContrato']    :=  connection.QryBusca.FieldValues['sContrato'];
                     platicas.FieldValues['sNumeroOrden'] :=  connection.QryBusca.FieldValues['sNumeroOrden'];
                     platicas.FieldValues['dIdFecha']     :=  FormatDateTime('YYYY-mm-dd',StrToDate(CadMes));
                     platicas.FieldValues['sTema']        :=  connection.QryBusca.FieldValues['sTema'];
                     platicas.Post;
                     i := i + 1;
                end;
             end;
             if mes = 1 then
             begin
                 //Verifica que sean en el caso de enero platicas del año anterior..
                 if (connection.QryBusca.FieldValues['mes'] = 12) and (connection.QryBusca.FieldValues['anio'] = anios -1) then
                 begin
                     cadena := DateTostr(connection.QryBusca.FieldValues['dIdFecha']);
                     CadMes := copy(cadena,1,2);
                     CadMes := CadMes +'/0'+ intToStr(mes);
                     CadMes := CadMes +'/'+ IntToStr(anios);
                     platicas.Append;
                     platicas.FieldValues['sContrato']    :=  connection.QryBusca.FieldValues['sContrato'];
                     platicas.FieldValues['sNumeroOrden'] :=  connection.QryBusca.FieldValues['sNumeroOrden'];
                     platicas.FieldValues['dIdFecha']     :=  FormatDateTime('YYYY-mm-dd',StrToDate(CadMes));
                     platicas.FieldValues['sTema']        :=  connection.QryBusca.FieldValues['sTema'];
                     platicas.Post;
                     i := i + 1;
                end;
             end;
             connection.QryBusca.Next;
         end;
         if i = 0 then
            messageDLG('No se encontraron Platicas de Seguiridad del mes anterior ', mtInformation, [mbOk],0);
      end
      else
         messageDLG('No Existe Historial de platicas de Seguridad !', mtInformation, [mbOk], 0);
   except
   on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa pláticas de seguridad', 'Al importar pláticas del mes anterior', 0);
    platicas.Cancel;
   end;

   end;

end;

//soad -> Importacion de platicas de seguirdad de otros Contratos..
//****************************************************************************
procedure TfrmPlaticas.ImportarPlaticasotroContrato1Click(Sender: TObject);
begin
  try
    //Lllenado del combo de los Contratos..
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sContrato from contratos ');
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount >0 then
    begin
        while not connection.QryBusca.Eof do
        begin
             cmbOrden.Items.Add(connection.QryBusca.FieldValues['sContrato']);
             connection.QryBusca.Next;
        end;
    end;
    //Llenaod del los demas comob box..
    cmbFrente.Items.Add('Seleccione un Frente');
    cmbFecha.Items.Add('Enero');
    cmbFecha.Items.Add('Febrero');
    cmbFecha.Items.Add('Marzo');
    cmbFecha.Items.Add('Abril');
    cmbFecha.Items.Add('Mayo');
    cmbFecha.Items.Add('Junio');
    cmbFecha.Items.Add('Julio');
    cmbFecha.Items.Add('Agosto');
    cmbFecha.Items.Add('Sepriembre');
    cmbFecha.Items.Add('Octubre');
    cmbFecha.Items.Add('Noviembre');
    cmbFecha.Items.Add('Diciembre');

    cmbOrden.ItemIndex := 0;
    cmbFecha.ItemIndex := 0;

    grupImportar.Visible := True;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programa pláticas de seguridad', 'Al importar pláticas otro contrato', 0);
    frmbarra1.btnCancel.Click;
   end;
  end;
end;

procedure TfrmPlaticas.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

End.
