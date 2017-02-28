unit frm_EntradaEQSeguridad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, jpeg,
  ExtDlgs, Utilerias, AdvGlowButton;
type
  Evalidaciones = class(Exception)
end;
type
  TfrmEntradaEQSeguridad = class(TForm)
    frmBarra1: TfrmBarra;
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
    zq_Entradas: TZQuery;
    ds_entradaseqs: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    lbDescripcion: TLabel;
    OpenPicture: TOpenPictureDialog;
    zQEquipos: TZQuery;
    ds_Equipos: TDataSource;
    zQEquiposDescripcion: TStringField;
    zQEquipossNumeroserie: TStringField;
    zQEquipossTalla: TStringField;
    zQEquipossMedida: TStringField;
    zQEquipossModelo: TStringField;
    zQEquipossMarca: TStringField;
    lbmarca: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbModelo: TLabel;
    lbTalla: TLabel;
    zqtransaction: TZQuery;
    AdvGlowButton1: TAdvGlowButton;
    zq_EntradasiIdEntradaeqs: TIntegerField;
    zq_EntradasiIdEquipoSeguridad: TIntegerField;
    zq_EntradasdFecha: TDateField;
    zq_EntradasDescripcion: TStringField;
    zq_EntradassTipo: TStringField;
    zq_EntradassEcargado: TStringField;
    zq_EntradassDescripcion: TMemoField;
    ZEntrada: TZQuery;
    frxEntradaEquipoo: TfrxDBDataset;
    frxEntrada: TfrxReport;
    ZEntradaiIdEntradaeqs: TIntegerField;
    ZEntradaiIdEquipoSeguridad: TIntegerField;
    ZEntradadFecha: TDateField;
    ZEntradasDescripcion: TMemoField;
    ZEntradaDescripcion: TStringField;
    ZEntradasTipo: TStringField;
    ZEntradasEcargado: TStringField;
    ZEntradabDocumento: TBlobField;
    ZEntradasMarca: TStringField;
    ZEntradaiIdEquipoSeguridad_1: TIntegerField;
    ZEntradasDescripcion_1: TMemoField;
    ZEntradasNumeroserie: TStringField;
    ZEntradasTalla: TStringField;
    ZEntradasMedida: TStringField;
    ZEntradasIdMarca: TStringField;
    ZEntradaiIdSubfamilia: TIntegerField;
    ZEntradasIdProveedor: TStringField;
    ZEntradasIdFamilia: TStringField;
    ZEntradasModelo: TStringField;
    ZEntradasIdEquipo: TStringField;
    menu: TPopupMenu;
    ImprimirHistorial1: TMenuItem;
    ZentraG: TZQuery;
    frxEntradaGen: TfrxDBDataset;
    frxEGeneral: TfrxReport;
    ZentraGiIdEntradaeqs: TIntegerField;
    ZentraGiIdEquipoSeguridad: TIntegerField;
    ZentraGdFecha: TDateField;
    ZentraGsDescripcion: TMemoField;
    ZentraGDescripcion: TStringField;
    ZentraGsTipo: TStringField;
    ZentraGsEcargado: TStringField;
    ZentraGsMarca: TStringField;
    ZentraGiIdEquipoSeguridad_1: TIntegerField;
    ZentraGsDescripcion_1: TMemoField;
    ZentraGsNumeroserie: TStringField;
    ZentraGsTalla: TStringField;
    ZentraGsMedida: TStringField;
    ZentraGsIdMarca: TStringField;
    ZentraGiIdSubfamilia: TIntegerField;
    ZentraGsIdProveedor: TStringField;
    ZentraGsIdFamilia: TStringField;
    ZentraGsModelo: TStringField;
    ZentraGsIdEquipo: TStringField;
    ZEntradaiCantidad: TFloatField;
    ZentraGiCantidad: TFloatField;
    zq_EntradasiCantidad: TFloatField;
    grid_EntradaEQS: TDBGrid;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ts_Encargado: TDBEdit;
    ts_Cantidad: TJvDBCalcEdit;
    ts_Tipo: TDBEdit;
    tm_Descripcion: TDBMemo;
    td_Fecha: TJvDBDateEdit;
    Panel6: TPanel;
    LabelPhoto: TLabel;
    bImagen: TImage;
    tsTotal: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure grid_EntradaEQSCellClick(Column: TColumn);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure zq_EntradasAfterScroll(DataSet: TDataSet);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure td_FechaEnter(Sender: TObject);
    procedure td_FechaExit(Sender: TObject);
    procedure ts_CantidadExit(Sender: TObject);
    procedure ts_CantidadEnter(Sender: TObject);
    procedure ts_TipoEnter(Sender: TObject);
    procedure ts_TipoExit(Sender: TObject);
    procedure tm_DescripcionEnter(Sender: TObject);
    procedure tm_DescripcionExit(Sender: TObject);
    procedure ts_EncargadoExit(Sender: TObject);
    procedure ts_EncargadoEnter(Sender: TObject);
    procedure td_FechaKeyPress(Sender: TObject; var Key: Char);
    procedure ts_CantidadKeyPress(Sender: TObject; var Key: Char);
    procedure ts_TipoKeyPress(Sender: TObject; var Key: Char);
    procedure tm_DescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure ts_EncargadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure ImprimirHistorial1Click(Sender: TObject);
  private
    { Private declarations }
    procedure cancelatransaccion;
    procedure finalizatransaccion;
    procedure iniciatransaccion;
  public
  dac : integer
    { Public declarations }
  end;

var
  frmEntradaEQSeguridad : TfrmEntradaEQSeguridad;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;
  sIArchivo: String;
  Edita : boolean;
  bMostrar: Boolean;
  Entrada : integer;

  implementation
 uses
 frm_EquipoSeguridad;
{$R *.dfm}

procedure TfrmEntradaEQSeguridad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmEquipoSeguridad.zQEquipos.Refresh;
end;

procedure TfrmEntradaEQSeguridad.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
      try

         dac := frmEquipoSeguridad.zQEquipos.FieldValues['iIdEquipoSeguridad'];
         td_Fecha.date := date;
         AdvGlowButton1.Caption := 'Mostrar';
         zQEquipos.Active := false;
         zQEquipos.ParamByName('EquipoS').AsInteger:= EquipodeSeguridad;
         zQEquipos.Open;

         lbDescripcion.Caption :=  zQEquipos.FieldByName('Descripcion').AsString;
         lbmarca.Caption :=  zQEquipos.FieldByName('sMarca').AsString;
         lbModelo.Caption :=  zQEquipos.FieldByName('sModelo').AsString;
         lbTalla.Caption :=  zQEquipos.FieldByName('sTalla').AsString;


         zq_Entradas.Active := false;
         zq_Entradas.ParamByName('EquipoS').AsInteger:= EquipodeSeguridad;
         zq_Entradas.Open ;
         bImagen.Picture.Bitmap := nil;

         except
        on e:Evalidaciones do
        begin
            messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
        end;
        on E:Exception do begin
            ShowMessage('Ocurrio un error al Iniciar el Formulario, intentelo nuevamente mas tarde.' + E.Message);
        end;
      end;


end;
procedure TfrmEntradaEQSeguridad.grid_EntradaEQSCellClick(Column: TColumn);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
//   zq_Entradas.Open ;
   bImagen.Picture.Bitmap := nil;
   if AdvGlowButton1.Caption = 'Ocultar' then begin
    AdvGlowButton1.Caption := 'Mostrar';
   end;
//       if zq_Entradas.RecordCount > 0 then begin
//        bImagen.Picture.LoadFromFile('');
//        BlobField := zq_Entradas.FieldByName('bDocumento');
//        BS := zq_Entradas.CreateBlobStream(BlobField, bmRead);
//        if bs.Size > 15 then begin
//          Try
//            Pic := TJpegImage.Create;
//            Try
//              Pic.LoadFromStream(bS);
//              bImagen.Picture.Graphic := Pic;
//            Finally
//              Pic.Free;
//            End;
//          Finally
//            bS.Free
//          End;
//        end;
//    end;
end;

procedure TfrmEntradaEQSeguridad.ImprimirHistorial1Click(Sender: TObject);
begin
          ZentraG.Active := False;
          ZentraG.SQL.Clear;
          ZentraG.SQL.Add('SELECT ese.iIdEntradaeqs, ese.iIdEquipoSeguridad, ese.iCantidad, ese.dFecha, ese.sDescripcion, SubStr(ese.sDescripcion, 1, 255) as Descripcion ,ese.sTipo, ese.sEcargado,am.sMarca, es.* ' +
                         'FROM equiposeguridad_entrada ese left join equiposeguridad es on (es.iIdEquipoSeguridad = ese.iIdEquipoSeguridad) left join ' +
                         'alm_marcas am on (am.sIdMarca = es.sIdMarca) where ese.iIdEquipoSeguridad = :seguridad ORDER BY iIdEntradaeqs DESC');
          ZentraG.Params.ParamByName('seguridad').DataType := ftInteger;
          ZentraG.Params.ParamByName('seguridad').Value := dac;
          ZentraG.Open;
          if ZentraG.RecordCount > 0 then
            begin
              frxEGeneral.LoadFromFile(global_files+ 'EntradaEquipogeneral.fr3');
              frxEGeneral.ShowReport();
            end
            else
            begin
              MessageDlg('No se Encontraron Datos para la Impresión.',mtInformation,[mbOk],0);
            end;
end;

procedure TfrmEntradaEQSeguridad.td_FechaEnter(Sender: TObject);
begin
td_Fecha.Color := global_color_entrada;
end;

procedure TfrmEntradaEQSeguridad.td_FechaExit(Sender: TObject);
begin
td_Fecha.Color := global_color_salida;
end;

procedure TfrmEntradaEQSeguridad.td_FechaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       ts_Cantidad.SetFocus;
end;

procedure TfrmEntradaEQSeguridad.tm_DescripcionEnter(Sender: TObject);
begin
tm_Descripcion.Color := global_color_entrada;
end;

procedure TfrmEntradaEQSeguridad.tm_DescripcionExit(Sender: TObject);
begin
tm_Descripcion.Color := global_color_salida;
end;

procedure TfrmEntradaEQSeguridad.tm_DescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
 key := UpperCase(Key)[1];
 if key = #13 then
       ts_Encargado.SetFocus;
end;

procedure TfrmEntradaEQSeguridad.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tsMarca.SetFocus ;
end;

procedure TfrmEntradaEQSeguridad.ts_CantidadEnter(Sender: TObject);
begin
ts_Cantidad.Color := global_color_entrada;
end;

procedure TfrmEntradaEQSeguridad.ts_CantidadExit(Sender: TObject);
begin
ts_Cantidad.Color := global_color_salida;
end;

procedure TfrmEntradaEQSeguridad.ts_CantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       ts_Tipo.SetFocus;
end;

procedure TfrmEntradaEQSeguridad.ts_EncargadoEnter(Sender: TObject);
begin
ts_Encargado.Color := global_color_entrada;
end;

procedure TfrmEntradaEQSeguridad.ts_EncargadoExit(Sender: TObject);
begin
ts_Encargado.Color := global_color_salida;
end;

procedure TfrmEntradaEQSeguridad.ts_EncargadoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       td_Fecha.SetFocus;
end;

procedure TfrmEntradaEQSeguridad.ts_TipoEnter(Sender: TObject);
begin
ts_Tipo.Color := global_color_entrada;
end;

procedure TfrmEntradaEQSeguridad.ts_TipoExit(Sender: TObject);
begin
ts_Tipo.Color := global_color_salida;
end;

procedure TfrmEntradaEQSeguridad.ts_TipoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
       tm_Descripcion.SetFocus;
end;

procedure TfrmEntradaEQSeguridad.zq_EntradasAfterScroll(DataSet: TDataSet);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  bImagen.Picture.Bitmap := nil;
    if AdvGlowButton1.Caption = 'Ocultar' then begin
      AdvGlowButton1.Caption := 'Mostrar';
    end;
    Entrada := zq_Entradas.FieldByName('iIdEntradaeqs').AsInteger;
     if zq_Entradas.RecordCount > 0 then
      tsTotal.Text := IntToStr(zq_entradas.RecordCount)
  else
      tsTotal.Text := '0';
//    if zq_Entradas.RecordCount > 0 then begin
//        bImagen.Picture.LoadFromFile('');
//        BlobField := zq_Entradas.FieldByName('bDocumento');
//        BS := zq_Entradas.CreateBlobStream(BlobField, bmRead);
//        if bs.Size > 15 then begin
//          Try
//            Pic := TJpegImage.Create;
//            Try
//              Pic.LoadFromStream(bS);
//              bImagen.Picture.Graphic := Pic;
//            Finally
//              Pic.Free;
//            End;
//          Finally
//            bS.Free
//          End;
//        end;
//    end;
end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnAddClick(Sender: TObject);
begin

    iniciatransaccion;

    td_Fecha.SetFocus;

    bImagen.Picture.Bitmap := nil;
    if AdvGlowButton1.Caption = 'Ocultar' then begin
      AdvGlowButton1.Caption := 'Mostrar';
    end;
    zq_Entradas.Append;
    frmBarra1.btnAddClick(Sender);
    AdvGlowButton1.Enabled:=false;
    td_Fecha.date := date;
    ts_Cantidad.Text:='1';
    ts_Encargado.Text := global_nombre;

end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnEditClick(Sender: TObject);
begin
    If zq_Entradas.RecordCount > 0 Then
    Begin
       td_Fecha.SetFocus;
       frmBarra1.btnEditClick(Sender);
//       bImagen.Picture.Bitmap := nil;
       if AdvGlowButton1.Caption = 'Ocultar' then begin
        AdvGlowButton1.Caption := 'Mostrar';
       end;
       AdvGlowButton1.Enabled:=false;
       iniciatransaccion;
       zq_Entradas.Edit ;
    End;

end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  Clave  : string;
  Query, zCommand, QryBusca: TZQuery;
Entrada, Existencia, Entradas, Salidas: double;
begin
 try
  if zq_Entradas.state=dsEdit then
    begin
      Edita:= true;
    end;

  if ts_Cantidad.text= '' then
    begin
      raise Evalidaciones.Create('Falta Indicar la Cantidad de Equipo');
    end;
  if ts_Tipo.text= '' then
    begin
      raise Evalidaciones.Create('Falta Indicar Tipo de Entrada');
    end;
  if tm_Descripcion.text= '' then
    begin
      raise Evalidaciones.Create('Falta Indicar la una Descripcion para la Entrada de Equipo');
    end;
  if ts_Encargado.text= '' then
    begin
      raise Evalidaciones.Create('Falta Indicar el Encargado ');
    end;

       zq_Entradas.FieldByName('iIdEquipoSeguridad').AsInteger:=EquipodeSeguridad;
       zq_Entradas.Post ;
      {Actualiza Existencias en tabla:equiposeguridad_existencia}

    try
        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Text := 'select sum(iCantidad) as entradas from equiposeguridad_entrada where iIdEquipoSeguridad = :Equipo ';
        QryBusca.Params.ParamByName('Equipo').AsInteger := EquipodeSeguridad;
        QryBusca.Open;
        Entradas:= QryBusca.FieldByName('entradas').AsFloat;

        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Text := 'select sum(iCantidad) as salidas from equiposeguridadxfolio where iIdEquipoSeguridad = :Equipo ';
        QryBusca.Params.ParamByName('Equipo').AsInteger := EquipodeSeguridad;
        QryBusca.Open;
        Salidas:= QryBusca.FieldByName('salidas').AsFloat;

            Existencia := Entradas - Salidas;
        if QryBusca.RecordCount>0 then
        begin
          Query := TZQuery.Create(Self);
          Query.Connection := connection.ZConnection;
          Query.Active := False;
          Query.SQL.Clear;
          Query.SQL.Add('UPDATE equiposeguridad_existencia SET iCantidad = :Existencia WHERE iIdEquipoSeguridad = :Equipo ');
          Query.Params.ParamByName('Existencia').AsFloat := Existencia;
          Query.Params.ParamByName('Equipo').AsInteger := EquipodeSeguridad;
          Query.ExecSQL();
        end;
     Except
          on E:Exception do begin
              ShowMessage('Error al Actualizar las Existencia del Equipo' + E.Message);
          end;
        end;
     {Guarda Imagen de Documento}
     if sIArchivo <> '' then begin

        try
        zCommand := TZQuery.Create(Self);
        zCommand.Connection := connection.ZConnection;
        zCommand.Active := False;
        zCommand.SQL.Clear;
        zcommand.SQL.Add('UPDATE equiposeguridad_entrada SET bDocumento = :Imagen WHERE iIdEntradaeqs = :Entrada ');
        zcommand.Params.ParamByName('Entrada').AsInteger := zq_Entradas.FieldByName('iIdEntradaeqs').AsInteger;//Query.FieldByName('consecutivo').AsInteger + 1;
        zcommand.Params.ParamByName('Imagen').LoadFromFile(sIArchivo, ftGraphic);
        zCommand.ExecSQL();
        Except
          on E:Exception do begin
              ShowMessage('No se pudo guardar la imagen ' + E.Message);
          end;
        end;
     end;

       finalizatransaccion;
       if Edita=true then
       begin

       end;
       bImagen.Picture.Graphic := Nil;
       AdvGlowButton1.Enabled:=true;
       frmBarra1.btnPostClick(Sender);
 except
    on E:Evalidaciones do begin
    MessageDlg('Importante'+#13+e.Message, mtinformation, [mbOk], 0);

    end;
    on E:Exception do begin
    ShowMessage('No se pudo guardar la imagen ' + E.Message);
    cancelatransaccion;
    frmBarra1.btnCancelClick(Sender);
    end;
 end;
       zq_Entradas.Refresh;
end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnPrinterClick(Sender: TObject);
var
cantidad   : Double;
begin
    ZEntrada.Active := False;
    ZEntrada.SQL.Clear;
    ZEntrada.SQL.Add('SELECT ese.iIdEntradaeqs, ese.iIdEquipoSeguridad, ese.iCantidad, ese.dFecha, ese.sDescripcion, SubStr(ese.sDescripcion, 1, 255) as Descripcion ' +
                   ',ese.sTipo, ese.sEcargado, ese.bDocumento,am.sMarca, es.* FROM equiposeguridad_entrada ese inner join equiposeguridad es on (es.iIdEquipoSeguridad = ese.iIdEquipoSeguridad)  ' +
                   'left join alm_marcas am on (am.sIdMarca = es.sIdMarca) where ese.iIdEquipoSeguridad = :EquipoS and ese.iIdEntradaeqs = :Id ORDER BY iIdEntradaeqs DESC');

    ZEntrada.Params.ParamByName('EquipoS').DataType := ftInteger;
    ZEntrada.Params.ParamByName('EquipoS').Value := dac;
    ZEntrada.Params.ParamByName('Id').DataType := ftInteger;
    ZEntrada.Params.ParamByName('Id').Value := zq_Entradas.FieldValues['iIdEntradaeqs'];
    ZEntrada.Open;
    if ZEntrada.RecordCount > 0 then
      begin
        frxEntrada.LoadFromFile(global_files+ 'EntradaEquipo.fr3');
        frxEntrada.ShowReport();
      end
      else
      begin
        MessageDlg('No se Encontraron Datos para la Impresión.',mtInformation,[mbOk],0);
      end;
end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   AdvGlowButton1.Enabled:=true;
   zq_Entradas.Cancel ;
   zq_Entradas.Refresh;
end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnDeleteClick(Sender: TObject);
var
  Query, QryBusca: TZQuery;
  Entrada, Existencia, Entradas, Salidas: double;
begin
  If   zq_Entradas.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try   iniciatransaccion;
            zq_Entradas.Delete ;
      {Actualiza Existencias en tabla:equiposeguridad_existencia}

      try
        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Text := 'select sum(iCantidad) as entradas from equiposeguridad_entrada where iIdEquipoSeguridad = :Equipo ';
        QryBusca.Params.ParamByName('Equipo').AsInteger := EquipodeSeguridad;
        QryBusca.Open;
        Entradas:= QryBusca.FieldByName('entradas').AsFloat;

        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Text := 'select sum(iCantidad) as salidas from equiposeguridadxfolio where iIdEquipoSeguridad = :Equipo ';
        QryBusca.Params.ParamByName('Equipo').AsInteger := EquipodeSeguridad;
        QryBusca.Open;
        Salidas:= QryBusca.FieldByName('salidas').AsFloat;

            Existencia := Entradas - Salidas;
        if QryBusca.RecordCount>0 then
        begin
          Query := TZQuery.Create(Self);
          Query.Connection := connection.ZConnection;
          Query.Active := False;
          Query.SQL.Clear;
          Query.SQL.Add('UPDATE equiposeguridad_existencia SET iCantidad = :Existencia WHERE iIdEquipoSeguridad = :Equipo ');
          Query.Params.ParamByName('Existencia').AsFloat := Existencia;
          Query.Params.ParamByName('Equipo').AsInteger := EquipodeSeguridad;
          Query.ExecSQL();
        end;
      Except
          on E:Exception do begin
              ShowMessage('Error al Actualizar las Existencia del Equipo' + E.Message);
          end;
        end;
            finalizatransaccion;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Entrada de Equipo de Seguridad', 'Al eliminar registro', 0);
           cancelatransaccion;
         end;
      end;
    end;
end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zq_Entradas.refresh ;
end;

procedure TfrmEntradaEQSeguridad.frmBarra1btnExitClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmEntradaEQSeguridad.AdvGlowButton1Click(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  QryBusca : tzquery;
begin
  if AdvGlowButton1.Caption = 'Mostrar' then begin
    bMostrar := True;
  end else begin
    bMostrar := False;
  end;
  if bMostrar then begin
  AdvGlowButton1.Caption := 'Ocultar';

  QryBusca := TZQuery.Create(Self);
  QryBusca.Connection := connection.zConnection;
  QryBusca.Active := False;
  QryBusca.SQL.Text := 'SELECT bDocumento FROM equiposeguridad_entrada WHERE iIdEntradaeqs = :Entrada ';
  QryBusca.Params.ParamByName('Entrada').AsInteger := Entrada;
  QryBusca.Open;

      bImagen.Picture.Bitmap := nil;
       if QryBusca.RecordCount > 0 then begin
        bImagen.Picture.LoadFromFile('');
        BlobField := QryBusca.FieldByName('bDocumento');
        BS := QryBusca.CreateBlobStream(BlobField, bmRead);
        if bs.Size > 15 then begin
          Try
            Pic := TJpegImage.Create;
            Try
              Pic.LoadFromStream(bS);
              bImagen.Picture.Graphic := Pic;
            Finally
              Pic.Free;
            End;
          Finally
            bS.Free
          End;
        end;
       end;
  end else begin
    AdvGlowButton1.Caption := 'Mostrar';
    bImagen.Picture.Graphic := Nil;
  end;
end;

procedure TfrmEntradaEQSeguridad.bImagenClick(Sender: TObject);
var
  Size: Real;
begin
  if zq_Entradas.State in [dsInsert, dsEdit] then begin
    bImagen.Picture.Bitmap := nil;
    OpenPicture.Title := 'Inserta Imagen';
    sIArchivo := '';
    if OpenPicture.Execute then begin
      Try
        sIArchivo := RedimensionarJPG(OpenPicture.FileName);
        Size := Tamanyo(sIArchivo);
        if Size <= 350 then
          bImagen.Picture.LoadFromFile(OpenPicture.FileName)
        else
          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
      Except
        bImagen.Picture.LoadFromFile('');
      End
    end;
  end;
end;

procedure TfrmEntradaEQSeguridad.iniciatransaccion;
begin
     zqtransaction.SQL.Text := 'start transaction';
     zqtransaction.ExecSQL;

end;

procedure TfrmEntradaEQSeguridad.cancelatransaccion;
begin
    zqtransaction.SQL.Text := 'rollback';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;

procedure TfrmEntradaEQSeguridad.finalizatransaccion;
begin
    zqtransaction.SQL.Text := 'commit';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;

end.
