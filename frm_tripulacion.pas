unit frm_tripulacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, DBCtrls, StdCtrls, Mask,
  frm_barra, global, db, Menus, frxClass, frxDBSet, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, UnitExcepciones,UdbGrid ,unitValidacion,
   unittbotonespermisos, UnitValidaTexto, unitactivapop, UFunctionsGHH,
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
  cxGrid, ExtCtrls;

type
  TfrmTripulacion = class(TForm)
    frmBarra1: TfrmBarra;
    DBTripulacion: TfrxDBDataset;
    frxTripulacion: TfrxReport;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    ds_categorias: TDataSource;
    categorias: TZReadOnlyQuery;
    ds_tripulacion: TDataSource;
    Tripulacion: TZQuery;
    InsertarVigenciaAnterior1: TMenuItem;
    N4: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    Eliminar1: TMenuItem;
    TripulacionsContrato: TStringField;
    TripulaciondFechaVigencia: TDateField;
    TripulacionsIdCategoria: TStringField;
    TripulacionsIdTripulacion: TStringField;
    TripulacionsDescripcion: TStringField;
    TripulacioniNacionales: TFloatField;
    TripulacioniExtranjeros: TFloatField;
    TripulacioniOrden: TIntegerField;
    TripulacionsIdTripulacionGrupo: TStringField;
    TripulacionsDescripcionGrupo: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_tripulacion: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    pnl1: TPanel;
    pnl2: TPanel;
    ts1: TLabel;
    tsFechas: TComboBox;
    ts2: TLabel;
    ts3: TLabel;
    ts4: TLabel;
    ts5: TLabel;
    ts6: TLabel;
    ts7: TLabel;
    ts8: TLabel;
    ts9: TLabel;
    ts10: TLabel;
    tsIdTripulacion: TDBEdit;
    tsIdCategoria: TDBLookupComboBox;
    tsDescripcion: TDBEdit;
    tiNacionales: TDBEdit;
    tiExtranjeros: TDBEdit;
    tiOrden: TDBEdit;
    tsDescripcionGrupo: TDBEdit;
    tsIdTripulacionGrupo: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsIdTripulacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdCategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tiNacionalesKeyPress(Sender: TObject; var Key: Char);
    procedure tiExtranjerosKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIdTripulacionEnter(Sender: TObject);
    procedure tsIdTripulacionExit(Sender: TObject);
    procedure tsIdCategoriaEnter(Sender: TObject);
    procedure tsIdCategoriaExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tiNacionalesEnter(Sender: TObject);
    procedure tiNacionalesExit(Sender: TObject);
    procedure tiExtranjerosEnter(Sender: TObject);
    procedure tiExtranjerosExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tsFechasExit(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure InsertarVigenciaAnterior1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    function estaEnTripDiaria(sIdCategoria, sIdTripulacion: string): boolean;
    procedure TripulacioniNacionalesSetText(Sender: TField; const Text: string);
    procedure TripulacioniExtranjerosSetText(Sender: TField;
      const Text: string);
    procedure tiNacionalesChange(Sender: TObject);
    procedure tiExtranjerosChange(Sender: TObject);
    procedure tiOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tiOrdenEnter(Sender: TObject);
    procedure tiOrdenExit(Sender: TObject);
    procedure tsIdTripulacionGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTripulacionGrupoEnter(Sender: TObject);
    procedure tsIdTripulacionGrupoExit(Sender: TObject);
    procedure tsDescripcionGrupoEnter(Sender: TObject);
    procedure tsDescripcionGrupoExit(Sender: TObject);
    procedure tsFechasEnter(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTripulacion: TfrmTripulacion;
  UtGrid:TicDbGrid;
  botonpermiso: tbotonespermisos;
  banderaAgregar:boolean;
implementation

{$R *.dfm}

procedure TfrmTripulacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tripulacion.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmTripulacion.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'tripulacion', PopupPrincipal);
 // UtGrid:=TicdbGrid.create(grid_tripulacion);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;

  connection.zCommand.Active := False ;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia DESC ');
  connection.zCommand.Open ;
  tsFechas.Items.Clear ;
  If connection.zCommand.RecordCount > 0 then
  begin
       While NOT connection.zCommand.Eof Do
       Begin
            tsfechas.Items.Add(datetostr(connection.zCommand.FieldByName('dFechavigencia').AsDateTime) ) ;
            connection.zCommand.Next
       End;
  end;
  tsFechas.ItemIndex := 0 ;

  if connection.zCommand.RecordCount > 0 then
  begin
  Tripulacion.Active := False ;
  Tripulacion.Params.ParamByName('fecha').DataType    := ftDate ;
  Tripulacion.Params.ParamByName('fecha').Value       := StrToDate(tsFechas.Text) ;
  Tripulacion.Params.ParamByName('Contrato').DataType := ftString ;
  Tripulacion.Params.ParamByName('Contrato').Value    := Global_Contrato ;
  Tripulacion.Open ;

  Categorias.Active := False ;
  Categorias.Params.ParamByName('fecha').Value    := StrToDate(tsFechas.Text) ;
  Categorias.Params.ParamByName('fecha').DataType := ftDate ;
  Categorias.Open ;
  end;

  BotonPermiso.permisosBotones(frmBarra1);
end;

function TfrmTripulacion.estaEnTripDiaria(sIdCategoria,
  sIdTripulacion: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sIdTripulacion FROM tripulaciondiaria ' +
    'WHERE sContrato = :Contrato AND sIdCategoria = :sIdCategoria ' +
    'AND sIdTripulacion = :sIdTripulacion ' +
    'LIMIT 1');
    ParamByName('Contrato').Value := Global_Contrato;
    ParamByName('sIdCategoria').Value := sIdCategoria;
    ParamByName('sIdTripulacion').Value := sIdTripulacion;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

procedure TfrmTripulacion.frmBarra1btnRefreshClick(Sender: TObject);
begin
  tripulacion.Active := False ;
  Tripulacion.Open ;
  Categorias.Active := False ;
  Categorias.Open ;
end;

procedure TfrmTripulacion.frmBarra1btnAddClick(Sender: TObject);
begin
  activapop(frmTripulacion, popupprincipal);
  banderaAgregar:=true;
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Salir1.Enabled := False ;
  Tripulacion.Append ;
  Tripulacion.FieldValues ['sContrato' ]     := Global_Contrato ;
  Tripulacion.FieldValues ['dFechaVigencia'] := StrToDate(tsFechas.Text);
  Tripulacion.FieldValues ['iNacionales']    := 0 ;
  Tripulacion.FieldValues ['iExtranjeros']   := 0 ;
  Tripulacion.FieldValues ['iOrden']         := 0 ;
  tsIdTripulacion.SetFocus ;
  BotonPermiso.permisosBotones(frmBarra1);
  grid_Tripulacion.Enabled:=false;
end;

procedure TfrmTripulacion.frmBarra1btnEditClick(Sender: TObject);
begin      
   activapop(frmTripulacion, popupprincipal);
   banderaAgregar:=false;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Salir1.Enabled := False ;
   try
      Tripulacion.Edit ;

      if tripulacion.FieldValues['sIdTripulacionGrupo']  = '' then
      begin
          Tripulacion.FieldValues['sIdTripulacionGrupo'] := Tripulacion.FieldValues['sIdTripulacion'];
          Tripulacion.FieldValues['sDescripcionGrupo']   := Tripulacion.FieldValues['sDescripcion'];
      end;

   except
      on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulación', 'Al editar registro', 0);
         frmBarra1.btnCancel.Click ;
      end;
   end ;
   tsIdTripulacion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_Tripulacion.Enabled:=false;
end;

procedure TfrmTripulacion.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Categoria');nombres.Add('Descripción');
  nombres.Add('Nacionales');nombres.Add('Extranjeros');
  cadenas.Add(tsIdcategoria.Text);cadenas.Add(tsDescripcion.Text);
  cadenas.Add(tinacionales.Text);cadenas.Add(tiextranjeros.Text);
  if not validaTexto(nombres, cadenas, 'Tripulación Id', tsIdTripulacion.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
   try
      Tripulacion.FieldValues [ 'sContrato' ]  := Global_Contrato ;
      Tripulacion.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Salir1.Enabled := True ;
      frmBarra1.btnPostClick(Sender);
   except
      on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulación', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
      end;
   end;
  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmTripulacion.frmBarra1btnCancelClick(Sender: TObject);
begin
   desactivapop(popupprincipal);
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Salir1.Enabled := True ;
   Tripulacion.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_Tripulacion.Enabled:=true;
end;

procedure TfrmTripulacion.frmBarra1btnDeleteClick(Sender: TObject);
var
   zTripulacion : tzReadOnlyQuery;
begin
   zTripulacion := tzReadOnlyQuery.Create(self);
   zTripulacion.Connection := connection.zConnection;

  If Tripulacion.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        //Antes de eliminar verificamos si existen datos,
        zTripulacion.Active := False;
        zTripulacion.SQL.Clear;
        zTripulacion.SQL.Add('select * from tripulaciondiaria where sContrato =:Contrato and sIdCategoria =:categoria and sIdTripulacion =:tripulacion ');
        zTripulacion.ParamByName('Contrato').AsString    := global_contrato_barco;
        zTripulacion.ParamByName('categoria').AsString   := tripulacion.FieldValues['sIdCategoria'];
        zTripulacion.ParamByName('tripulacion').AsString := tripulacion.FieldValues['sIdTripulacion'];
        zTripulacion.Open;

        if zTripulacion.RecordCount > 0 then
           messageDLG('La tripulacion '+tripulacion.FieldValues['sDescripcion']+' se encuentra Reportada!', mtInformation, [mbOk], 0)
        else
            Tripulacion.delete ;

      except
         on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulación', 'Al eliminar registro', 0);
         end;
      end
    end;
    zTripulacion.Destroy;
end;

procedure TfrmTripulacion.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Salir1.Enabled := True ;
   Close
end;

procedure TfrmTripulacion.tsIdTripulacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdCategoria.SetFocus
end;

procedure TfrmTripulacion.tsIdCategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmTripulacion.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tiNacionales.SetFocus 
end;

procedure TfrmTripulacion.tsFechasEnter(Sender: TObject);
begin
    tsFechas.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tsFechasExit(Sender: TObject);
begin
     if tsFechas.Text <> '' then
     begin
         Tripulacion.Active := False ;
         Tripulacion.Params.ParamByName('fecha').DataType    := ftDate ;
         Tripulacion.Params.ParamByName('fecha').Value       := StrToDate(tsFechas.Text) ;
         Tripulacion.Params.ParamByName('Contrato').DataType := ftString ;
         Tripulacion.Params.ParamByName('Contrato').Value    := Global_Contrato ;
         Tripulacion.Open ;

         Categorias.Active := False ;
         Categorias.Params.ParamByName('fecha').Value    := StrToDate(tsFechas.Text) ;
         Categorias.Params.ParamByName('fecha').DataType := ftDate ;
         Categorias.Open ;
         tsFechas.Color := global_color_salidaERP;
     end;
end;

procedure TfrmTripulacion.tiNacionalesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiNacionales,key) then
      key:=#0;
  if key = #13 then
    tiExtranjeros.SetFocus 
end;

procedure TfrmTripulacion.tiOrdenEnter(Sender: TObject);
begin
    tiOrden.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tiOrdenExit(Sender: TObject);
begin
    tiOrden.Color := global_color_salidaERP;
end;

procedure TfrmTripulacion.tiOrdenKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tsIdTripulacion.SetFocus
end;

procedure TfrmTripulacion.TripulacioniExtranjerosSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrTofloatDef(text,0));
end;

procedure TfrmTripulacion.TripulacioniNacionalesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrTofloatDef(text,0));
end;

procedure TfrmTripulacion.tiExtranjerosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiExtranjeros,key) then
      key:=#0;
  if key = #13 then
    tiOrden.SetFocus
end;

procedure TfrmTripulacion.Imprimir1Click(Sender: TObject);
begin
     frmBarra1.btnPrinter.Click;
end;

procedure TfrmTripulacion.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmTripulacion.InsertarVigenciaAnterior1Click(Sender: TObject);
var
   Vigencia, DatosVigencia, ActualVigencia, zBuscaDatos : TZReadOnlyQuery;
   FechaAnerior : tDate;
   sCategoria, IdCategoria   : string;
begin
     if tsFechas.Text = '' then
        exit;

     Vigencia := TZReadOnlyQuery.Create(self);
     Vigencia.Connection := connection.zConnection;

     DatosVigencia := TZReadOnlyQuery.Create(self);
     DatosVigencia.Connection := connection.zConnection;

     ActualVigencia := TZReadOnlyQuery.Create(self);
     ActualVigencia.Connection := connection.zConnection;

     zBuscaDatos := TZReadOnlyQuery.Create(self);
     zBuscaDatos.Connection := connection.zConnection;

     Vigencia.Active := False;
     Vigencia.SQL.Clear;
     Vigencia.SQL.Add('select MAX(dFechaVigencia) as Fecha from tripulacion where sContrato =:Contrato and dFechaVigencia < :Fecha group by sContrato ');
     Vigencia.ParamByName('Contrato').AsString := global_contrato;
     Vigencia.ParamByName('Fecha').AsDate      := StrToDate(tsFechas.Text);
     Vigencia.Open;

     if Vigencia.RecordCount > 0 then
     begin
          sCategoria := '';
          DatosVigencia.Active := False;
          DatosVigencia.SQL.Clear;
          DatosVigencia.SQL.Add('select t.*, c.sDescripcion as sDescripcionCategoria from tripulacion t '+
                                'inner join categorias c on (c.sIdCategoria = t.sIdCategoria and c.dFechaVigencia = t.dFechaVigencia) '+
                                'where t.sContrato =:Contrato and t.dFechaVigencia =:Fecha');
          DatosVigencia.ParamByName('Contrato').AsString := global_contrato;
          DatosVigencia.ParamByName('Fecha').AsDate      := Vigencia.FieldValues['Fecha'];
          DatosVigencia.Open;

          if DatosVigencia.RecordCount > 0 then
          begin
              while not DatosVigencia.Eof do
              begin
                  if sCategoria <> DatosVigencia.FieldValues['sIdCategoria'] then
                  begin
                      //Buscamos las categoria actual para insertar los datos sobre la misma..
                      zBuscaDatos.Active := False;
                      zBuscaDatos.SQL.Clear;
                      zBuscaDatos.SQL.Add('select sIdCategoria from categorias where dFechaVigencia =:Fecha and sDescripcion =:Descripcion ');
                      zBuscaDatos.ParamByName('Fecha').AsDate         := StrToDate(tsFechas.Text);
                      zBuscaDatos.ParamByName('Descripcion').AsString := DatosVigencia.FieldValues['sDescripcionCategoria'];
                      zBuscaDatos.Open;

                      if zBuscaDatos.RecordCount > 0 then
                         IdCategoria := zBuscaDatos.FieldValues['sIdCategoria']
                      else
                         IdCategoria := '';

                     sCategoria := zBuscaDatos.FieldValues['sIdCategoria'];
                  end;

                  if IdCategoria <> '' then
                  begin
                      try
                          ActualVigencia.Active := False;
                          ActualVigencia.SQL.Clear;
                          ActualVigencia.SQL.Add('insert into tripulacion (sContrato, dFechaVigencia, sIdCategoria, sIdTripulacion, sDescripcion, iNacionales, iExtranjeros) '+
                                                 'values (:contrato, :Fecha, :Id, :IdTripulacion, :Descripcion, :Nacional, :Extranjero)');
                          ActualVigencia.ParamByName('Contrato').AsString       := global_contrato;
                          ActualVigencia.ParamByName('Fecha').AsDate            := StrToDate(tsFechas.Text);
                          ActualVigencia.ParamByName('Id').AsString             := IdCategoria ;
                          ActualVigencia.ParamByName('IdTripulacion').AsString  := DatosVigencia.FieldValues['sIdTripulacion'];
                          ActualVigencia.ParamByName('Descripcion').AsString    := DatosVigencia.FieldValues['sDescripcion'];
                          ActualVigencia.ParamByName('Nacional').AsInteger      := DatosVigencia.FieldValues['iNacionales'];
                          ActualVigencia.ParamByName('Extranjero').AsInteger    := DatosVigencia.FieldValues['iExtranjeros'];
                          ActualVigencia.ExecSQL;
                      except
                         on e : exception do begin
                             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulacion', 'Al salvar registro', 0);
                             frmbarra1.btnCancel.Click ;
                         end;
                      end;
                  end;
                  DatosVigencia.Next;
              end;
              MessageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
              Tripulacion.Refresh;
          end
          else
              MessageDLG('No se Encontraron Datos en la Vigencia Anterior', mtInformation, [mbOk], 0);
     end
     else
         MessageDLG('No se Encontro una Vigencia Anterior', mtInformation, [mbOk], 0);

    Vigencia.Destroy;
    DatosVigencia.Destroy;
    ActualVigencia.Destroy;
    zBuscaDatos.Destroy;
end;

procedure TfrmTripulacion.Pegar1Click(Sender: TObject);
begin
try
utGrid.AddRowsFromClip;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Tripulación', 'Al pegar registro', 0);
end;
end;
end;

procedure TfrmTripulacion.Copiar1Click(Sender: TObject);
begin
utGrid.CopyRowsToClip;
end;

procedure TfrmTripulacion.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    if frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmTripulacion.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmTripulacion.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmTripulacion.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmTripulacion.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmTripulacion.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmTripulacion.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmTripulacion.tsIdTripulacionEnter(Sender: TObject);
begin
    tsIdTripulacion.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tsIdTripulacionExit(Sender: TObject);
begin
    tsIdTripulacion.Color := global_color_salidaERP;
    if tsIdTripulacionGrupo.Text = '' then
       tripulacion.FieldValues['sIdTripulacionGrupo'] := tripulacion.FieldValues['sIdTripulacion'];
end;

procedure TfrmTripulacion.tsIdTripulacionGrupoEnter(Sender: TObject);
begin
    tsIdTripulacionGrupo.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tsIdTripulacionGrupoExit(Sender: TObject);
begin
    tsIdTripulacionGrupo.Color := global_color_salidaERP;
end;

procedure TfrmTripulacion.tsIdTripulacionGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsDescripcionGrupo.SetFocus;
end;

procedure TfrmTripulacion.tsIdCategoriaEnter(Sender: TObject);
begin
    tsIdCategoria.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tsIdCategoriaExit(Sender: TObject);
begin
    tsIdCategoria.Color := global_color_salidaERP;
end;

procedure TfrmTripulacion.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaPU;
    if tsDescripcionGrupo.Text = '' then
       tripulacion.FieldValues['sDescripcionGrupo'] := tripulacion.FieldValues['sDescripcion'];
end;

procedure TfrmTripulacion.tsDescripcionGrupoEnter(Sender: TObject);
begin
    tsDescripcionGrupo.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tsDescripcionGrupoExit(Sender: TObject);
begin
    tsDescripcionGrupo.Color := global_color_salidaERP;
end;

procedure TfrmTripulacion.tiNacionalesChange(Sender: TObject);
begin
  tdbeditchangei(tiNacionales,'Nacionales');
end;

procedure TfrmTripulacion.tiNacionalesEnter(Sender: TObject);
begin
    tiNacionales.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tiNacionalesExit(Sender: TObject);
begin
    tiNacionales.Color := global_color_salidaERP;
end;

procedure TfrmTripulacion.tiExtranjerosChange(Sender: TObject);
begin
 tdbeditchangei(tiExtranjeros,'Extranjeros');
end;

procedure TfrmTripulacion.tiExtranjerosEnter(Sender: TObject);
begin
    tiExtranjeros.Color := global_color_entradaERP;
end;

procedure TfrmTripulacion.tiExtranjerosExit(Sender: TObject);
begin
    tiExtranjeros.Color := global_color_salidaERP;
end;

procedure TfrmTripulacion.frmBarra1btnPrinterClick(Sender: TObject);
var
    QryTripulacionOficio : TZReadOnlyQuery;
begin
 if TcxGridDBTableView(grid_tripulacion.ActiveView).DataController.DataSource.DataSet.IsEmpty=false then
 begin
    //Revisado por <ivan> 18 Septiembre de 2010..
    QryTripulacionOficio := TZReadOnlyQuery.Create(self);
    QryTripulacionOficio.Connection := connection.zConnection;

    dbTripulacion.DataSet := QryTripulacionOficio;
    dbTripulacion.FieldAliases.Clear;

    QryTripulacionOficio.Active := False;
    QryTripulacionOficio.SQL.Clear;
    QryTripulacionOficio.SQL.Add('select t.*, c.sDescripcion as DescripcionCategoria from tripulacion  t '+
                                 'inner join categorias c on(c.sIdCategoria = t.sIdCategoria and c.dFechaVigencia = t.dFechaVigencia) '+
                                 'where t.sContrato = :Contrato and t.dFechaVigencia =:Fecha '+
                                 'order by t.sIdCategoria, t.sIdTripulacion');
    QryTripulacionOficio.Params.ParamByName('fecha').DataType    := ftDate ;
    QryTripulacionOficio.Params.ParamByName('fecha').Value       := StrToDate(tsFechas.Text) ;
    QryTripulacionOficio.Params.ParamByName('Contrato').DataType := ftString ;
    QryTripulacionOficio.Params.ParamByName('Contrato').Value    := Global_Contrato ;
    QryTripulacionOficio.Open;

    If QryTripulacionOficio.RecordCount > 0 Then
     if True then
      frxTripulacion.LoadFromFile (global_files + global_miReporte + '_tripulacion.fr3') ;
      frxTripulacion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte + '_tripulacion.fr3') then
     showmessage('El archivo de reporte tripulacion.fr3 no existe, notifique al administrador del sistema');
     end
     else
      ShowMessage('No existen registros para imprimir');
end;

End.
