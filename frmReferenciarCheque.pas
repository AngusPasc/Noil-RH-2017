unit frmReferenciarCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons, RXDBCtrl, Newpanel, ZAbstractDataset, StrUtils, DBCtrls, Mask,
  rxToolEdit, ComCtrls, NxPageControl, Menus, Utilerias, frxClass, frxDBSet,
  rxCurrEdit, ExtCtrls, FormAutoScaler, OverbyteIcsWndControl,
  OverbyteIcsWSocket ;

type
  Tfrm_ReferenciarCheque = class(TForm)
    dsQPEgresos: TDataSource;
    zQPEgresos: TZQuery;
    zQCatalogodeEgresos: TZReadOnlyQuery;
    GridConceptos: TDBGrid;
    zQPEgresosdIdFecha: TDateField;
    zQPEgresosiIdFolio: TIntegerField;
    zQPEgresossIdEgreso: TStringField;
    zQPEgresossIdFactura: TStringField;
    zQPEgresosmDescripcion: TMemoField;
    zQPEgresosdImporte: TFloatField;
    zQPEgresossRazonSocial: TStringField;
    zQPagado: TZReadOnlyQuery;
    pgEgresos: TPageControl;
    grComentarios: TGroupBox;
    PopReferencia: TPopupMenu;
    mnReferenciar: TMenuItem;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnReferencia: TSpeedButton;
    zQPEgresossTipoEgreso: TStringField;
    zCommand: TZReadOnlyQuery;
    btnPrinter: TSpeedButton;
    frxReport1: TfrxReport;
    zTmpQuery: TZReadOnlyQuery;
    tMonto: TCurrencyEdit;
    tPagado: TCurrencyEdit;
    tPendiente: TCurrencyEdit;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Label4: TLabel;
    ts_Filtrar: TEdit;
    btFiltrar: TSpeedButton;
    fsc_RefCheque: TFormAutoScaler;
    p: TStringField;
    zQPEgresosidorganizacion: TIntegerField;
    WSocketMensaje: TWSocket;
    procedure FormShow(Sender: TObject);
    procedure zQPEgresosAfterInsert(DataSet: TDataSet);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure zQPEgresossIdEgresoChange(Sender: TField);
    procedure GridConceptosKeyPress(Sender: TObject; var Key: Char);
    procedure tPagadoChange(Sender: TObject);
    procedure zQPEgresosAfterPost(DataSet: TDataSet);
    procedure zQPEgresosAfterDelete(DataSet: TDataSet);
    procedure tMontoChange(Sender: TObject);
    procedure btnReferenciaClick(Sender: TObject);
    procedure zQPEgresosBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgEgresosChange(Sender: TObject);
    procedure mnReferenciarClick(Sender: TObject);
    procedure pgEgresosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure zQPEgresosBeforeEdit(DataSet: TDataSet);
    procedure btnPrinterClick(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure zQPEgresosBeforePost(DataSet: TDataSet);
    procedure GridConceptosCellClick(Column: TColumn);
    procedure btFiltrarClick(Sender: TObject);
    procedure ts_FiltrarKeyPress(Sender: TObject; var Key: Char);
    procedure EnviarMensaje (Mensaje, Ip: String);
    procedure Tablero;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ReferenciarCheque: Tfrm_ReferenciarCheque;
  status : string;

implementation

uses frm_Connection, frmCargoA, frmGastos;

{$R *.dfm}

procedure Tfrm_ReferenciarCheque.btnPrinterClick(Sender: TObject);
begin
    rptEgresoxFolio (dParamFecha , iParamFolio )

end;

procedure Tfrm_ReferenciarCheque.btnReferenciaClick(Sender: TObject);
begin
    tMonto.Value := dParamMonto ;
    if zQPagado.RecordCount > 0 then
        tPagado.Value := zQPagado.FieldValues['dPagado']
    Else
        tPagado.Value := 0 ;

    if (tPendiente.Value = 0) And (sParamComprobado = 'No') then
    begin
        if MessageDlg('Desea Cerrar el cheque?. Al cerrar el egreso no podra hacer modificaciones futuras para su comprobacion.', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
        begin
            zCommand.Active := False ;
            zCommand.SQL.Clear;
            zCommand.SQL.Add('update con_tesoreriaegresos SET lComprobado = "Si" Where dIdFecha = :Fecha And iIdFolio = :Folio') ;
            zCommand.Params.ParamByName('fecha').DataType := ftDate ;
            zCommand.Params.ParamByName('fecha').Value := dParamFecha ;
            zCommand.Params.ParamByName('folio').DataType := ftInteger;
            zCommand.Params.ParamByName('folio').Value := iParamFolio ;
            zCommand.ExecSQL ;
            sParamComprobado := 'Si' ;
            Tablero;
          //  frm_Gastos.zQEgresos.Refresh;

//            zCommand.Active := False;
//            zCommand.SQL.Clear;
//            zCommand.SQL.Add('update con_tesoreriapegresos set eStatus = "CERRADO" where iIdFolio = :folio');
//            zCommand.ParamByName('folio').AsInteger := iParamFolio;
//            zCommand.ExecSQL;

            close ;
        end;
    end
    else
        if (tPendiente.Value > 0) And (sParamComprobado = 'No') then
        begin
            if MessageDlg('Desea Cerrar el cheque?. La cantidad a comprobar es inferior al monto del cheque, desea ajustar el monto del cheque al total de los documentos comprobados.', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
            begin
                zCommand.Active := False ;
                zCommand.SQL.Clear;
                zCommand.SQL.Add('update con_tesoreriaegresos SET lComprobado = "Si", dImporteTotal = :Importe Where dIdFecha = :Fecha And iIdFolio = :Folio') ;
                zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                zCommand.Params.ParamByName('fecha').Value := dParamFecha ;
                zCommand.Params.ParamByName('folio').DataType := ftInteger;
                zCommand.Params.ParamByName('folio').Value := iParamFolio ;
                zCommand.Params.ParamByName('Importe').DataType := ftFloat ;
                zCommand.Params.ParamByName('Importe').Value := tPagado.Value * -1 ;
                zCommand.ExecSQL ;
                sParamComprobado := 'Si' ;
                Tablero;
            //    frm_Gastos.zQEgresos.Refresh;
//                zCommand.Active := False;
//                zCommand.SQL.Clear;
//                zCommand.SQL.Add('update con_tesoreriapegresos set eStatus = "CERRADO" where iIdFolio = :folio');
//                zCommand.ParamByName('folio').AsInteger := iParamFolio;
//                zCommand.ExecSQL;

                close ;
            end;
        end
        else
            MessageDlg('No se puede comprobar el cheque, la suma de los documentos a comprobar es superior al monto del cheque o el documento ya ha sido comprobado.' , mtWarning, [mbOk], 0)

end;

procedure Tfrm_ReferenciarCheque.DBMemo1Exit(Sender: TObject);
begin
   if (sParamComprobado = 'No') then
      If (zQPEgresos.State = dsInsert) Or (zQPEgresos.State = dsEdit) Then
          zQPEgresos.Post ;
end;

procedure Tfrm_ReferenciarCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  action := cafree ;
end;

procedure Tfrm_ReferenciarCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) And not (ActiveControl is TEdit) And not (ActiveControl is TDBMemo) then { si no es un TDBGrid }
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

procedure Tfrm_ReferenciarCheque.FormShow(Sender: TObject);
Var
    TabEgresos : tTabSheet ;
    iItem      : Integer ;
begin
 if global_Usuario <> '' then
  begin
    if sParamStatusFolio = 'Si' then
      status := 'CERRADO'
    else
      status := 'ABIERTO';


    Connection.configuracionCont.Refresh ;
    Caption := 'Referenciar Cheque con Id. Folio ' + IntToStr(iParamFolio) ;

    GridConceptos.Parent := frm_ReferenciarCheque ;

    If GridConceptos.Columns[0].PickList.count > 0 Then
        GridConceptos.Columns[0].PickList.Clear ;

    For iItem := 1 To pgEgresos.PageCount do
        pgEgresos.Pages [0].Destroy ;

    grComentarios.Caption := 'Descripcion del Evento' ;
    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.Sql.Clear ;
    if sParamStatusFolio = 'Si' then
    begin
      zQCatalogodeEgresos.SQL.Add ('select cc.sIdEgreso, cc.mDescripcion '+
                                 'from con_tesoreriapegresos ct '+
                                 'inner join con_catalogodeegresos cc on (cc.sIdEgreso = ct.sIdEgreso) '+
                                 'where ct.iIdFolio = :folio '+
                                 'group by cc.sIdEgreso '+
                                 'order by ct.sIdEgreso');
      zQCatalogodeEgresos.ParamByName('folio').AsInteger := iParamFolio;
    end
    else
    begin
      zQCatalogodeEgresos.SQL.Add('select sIdEgreso, mDescripcion from con_catalogodeegresos order by sIdEgreso');
    end;
    zQCatalogodeEgresos.Open ;
    if zQCatalogodeEgresos.RecordCount > 0 then
    begin
        while NOT zQCatalogodeEgresos.Eof do
        begin
            GridConceptos.Columns[0].PickList.Add(zQCatalogodeEgresos.FieldValues['sIdEgreso']) ;
            TabEgresos:= tTabSheet.Create(pgEgresos) ;
            with TabEgresos do
            begin
                PageControl := pgEgresos ;
                Caption     := zQCatalogodeEgresos.FieldValues['sIdEgreso'] ;
            end;
            zQCatalogodeEgresos.Next
        end;

        grComentarios.Caption := zQCatalogodeEgresos.FieldValues['mDescripcion'] ;
        pgEgresos.ActivePageIndex := 0 ;
        PgEgresos.Pages[0].Highlighted := True ;
        zQPEgresos.Active := False ;
        zQPEgresos.SQL.Clear ;
        zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where iIdFolio = :folio And sIdEgreso = :Egreso order by sIdEgreso') ;
        zQPEgresos.Params.ParamByName('Egreso').DataType := ftString ;
        zQPEgresos.Params.ParamByName('Egreso').Value    := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
//        zQPEgresos.Params.ParamByName('fecha').DataType  := ftDate ;
//        zQPEgresos.Params.ParamByName('fecha').Value     := dParamFecha ;
        zQPEgresos.Params.ParamByName('folio').DataType  := ftInteger;
        zQPEgresos.Params.ParamByName('folio').Value     := iParamFolio ;
        zQPEgresos.Open ;

        GridConceptos.Parent :=  PgEgresos.Pages[0] ;
        GridConceptos.Align := alClient ;

        zQPagado.Active := False ;
//        zQPagado.Params.ParamByName('fecha').DataType := ftDate ;
//        zQPagado.Params.ParamByName('fecha').Value := dParamFecha ;
        zQPagado.Params.ParamByName('folio').DataType := ftInteger;
        zQPagado.Params.ParamByName('folio').Value := iParamFolio ;
        zQPagado.Open ;

        tMonto.Value := dParamMonto ;
        if zQPagado.RecordCount > 0 then
            tPagado.Value := zQPagado.FieldValues['dPagado']
        Else
            tPagado.Value := 0 ;
        tPendiente.Value := tMonto.Value - tPagado.Value;
    end
  end;
end;

procedure Tfrm_ReferenciarCheque.GridConceptosCellClick(Column: TColumn);
begin
if (sParamComprobado = 'No') then
begin
   If (zQPEgresos.State = dsInsert) Or (zQPEgresos.State = dsEdit) Then
          zQPEgresos.Post ;
end
else
begin
  showMessage('El gasto esta comprobado');

  tMonto.SetFocus;
  Exit;
end;
end;

procedure Tfrm_ReferenciarCheque.GridConceptosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) Then
    begin
       if (sParamComprobado = 'No') then
          If (zQPEgresos.State = dsInsert) Or (zQPEgresos.State = dsEdit) Then
          zQPEgresos.Post ;
    end;
    Key := UpperCase(Key)[1] ;
end;

procedure Tfrm_ReferenciarCheque.ListaObjetoDblClick(Sender: TObject);
begin
    sTecla := 'Enter' ;
    GridConceptos.SetFocus
end;

procedure Tfrm_ReferenciarCheque.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (Key = #13) Then
    begin
       sTecla := 'Enter' ;
       GridConceptos.SetFocus ;
    End ;
    If (Key = #27) then
    Begin
       sTecla := 'Escape' ;
       GridConceptos.SetFocus ;
    End;
end;


procedure Tfrm_ReferenciarCheque.pgEgresosChange(Sender: TObject);
begin
    zQPEgresos.Active := False ;
    zQPEgresos.SQL.Clear ;
    zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where iIdFolio = :folio And sIdEgreso = :Egreso order by sIdEgreso') ;
    zQPEgresos.Params.ParamByName('Egreso').DataType := ftString ;
    zQPEgresos.Params.ParamByName('Egreso').Value := pgEgresos.Pages [pgEgresos.ActivePageIndex].Caption ;
//    zQPEgresos.Params.ParamByName('fecha').DataType := ftDate ;
//    zQPEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
    zQPEgresos.Params.ParamByName('folio').DataType := ftInteger;
    zQPEgresos.Params.ParamByName('folio').Value := iParamFolio ;
    zQPEgresos.Open ;

    zCommand.Active := False ;
    zCommand.SQL.Clear ;
    zCommand.SQL.Add('select mDescripcion from con_catalogodeegresos where sIdEgreso = :Egreso' ) ;
    zCommand.Params.ParamByName('Egreso').DataType := ftString ;
    zCommand.Params.ParamByName('Egreso').Value := pgEgresos.Pages [pgEgresos.ActivePageIndex].Caption ;
    zCommand.Open ;
    if zCommand.RecordCount > 0 then
        grComentarios.Caption := zCommand.FieldValues['mDescripcion']
    else
        grComentarios.Caption := 'Descripcion del Evento' ;

    PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;
    GridConceptos.Parent :=  PgEgresos.Pages[pgEgresos.ActivePageIndex] ;
end;
procedure Tfrm_ReferenciarCheque.pgEgresosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    if pgEgresos.ActivePageIndex >= 0 then
        PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := False ;
end;

procedure Tfrm_ReferenciarCheque.btFiltrarClick(Sender: TObject);
  Var
    TabEgresos : tTabSheet ;
    iItem      : Integer ;
    sParametro : string;
begin

      if global_Usuario <> '' then
  begin
    Connection.configuracionCont.Refresh ;
    Caption := 'Referenciar Cheque con Id. Folio ' + IntToStr(iParamFolio) ;

    GridConceptos.Align := alNone;
      GridConceptos.Parent := Panel1;

    If GridConceptos.Columns[0].PickList.count > 0 Then
        GridConceptos.Columns[0].PickList.Clear ;

    For iItem := 1 To pgEgresos.PageCount do
        pgEgresos.Pages [0].Destroy ;


    grComentarios.Caption := 'Descripcion del Evento' ;
    sParametro := '%' + ts_Filtrar.Text + '%' ;
    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.Sql.Clear ;
    zQCatalogodeEgresos.SQL.Add ('select sIdEgreso, mDescripcion from con_catalogodeegresos where sIdEgreso Like :Parametro order by sIdEgreso') ;
    zQCatalogodeEgresos.Params.ParamByName('Parametro').Value := sParametro ;
    zQCatalogodeEgresos.Open ;
    if zQCatalogodeEgresos.RecordCount > 0 then
    begin
        while NOT zQCatalogodeEgresos.Eof do
        begin
            GridConceptos.Columns[0].PickList.Add(zQCatalogodeEgresos.FieldValues['sIdEgreso']) ;
            TabEgresos:= tTabSheet.Create(pgEgresos) ;
            with TabEgresos do
            begin
                PageControl := pgEgresos ;
                Caption     := zQCatalogodeEgresos.FieldValues['sIdEgreso'] ;
            end;
            zQCatalogodeEgresos.Next
        end;

        grComentarios.Caption := zQCatalogodeEgresos.FieldValues['mDescripcion'] ;
        pgEgresos.ActivePageIndex := 0 ;
        PgEgresos.Pages[0].Highlighted := True ;
        zQPEgresos.Active := False ;
        zQPEgresos.SQL.Clear ;
        zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where iIdFolio = :folio And sIdEgreso = :Egreso order by sIdEgreso') ;
        zQPEgresos.Params.ParamByName('Egreso').DataType := ftString ;
        zQPEgresos.Params.ParamByName('Egreso').Value    := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
//        zQPEgresos.Params.ParamByName('fecha').DataType  := ftDate ;
//        zQPEgresos.Params.ParamByName('fecha').Value     := dParamFecha ;
        zQPEgresos.Params.ParamByName('folio').DataType  := ftInteger;
        zQPEgresos.Params.ParamByName('folio').Value     := iParamFolio ;
        zQPEgresos.Open ;

        GridConceptos.Parent :=  PgEgresos.Pages[0] ;
        GridConceptos.Align := alClient ;

        zQPagado.Active := False ;
//        zQPagado.Params.ParamByName('fecha').DataType := ftDate ;
//        zQPagado.Params.ParamByName('fecha').Value := dParamFecha ;
        zQPagado.Params.ParamByName('folio').DataType := ftInteger;
        zQPagado.Params.ParamByName('folio').Value := iParamFolio ;
        zQPagado.Open ;

        tMonto.Value := dParamMonto ;
        if zQPagado.RecordCount > 0 then
            tPagado.Value := zQPagado.FieldValues['dPagado']
        Else
            tPagado.Value := 0 ;
        tPendiente.Value := tMonto.Value - tPagado.Value;
    end
  end;
 
end;

procedure Tfrm_ReferenciarCheque.mnReferenciarClick (Sender: TObject) ;
begin
   if (sParamComprobado = 'No') then
   begin
      If (zQPEgresos.State <> dsInsert) And (zQPEgresos.State <> dsEdit) Then
          if zQPEgresos.RecordCount > 0 then
              zQPEgresos.Edit ;
      Application.CreateForm(Tfrm_CargoA, frm_CargoA);
      frm_CargoA.ShowModal ;
     zQPEgresos.FieldValues['mDescripcion']  := grComentarios.Caption  + '  '+ zQPEgresos.FieldValues['sRazonSocial'];
      zQPEgresos.Post;

   end;

end;

procedure Tfrm_ReferenciarCheque.tMontoChange(Sender: TObject);
begin
    tPendiente.Value := tMonto.Value - tPagado.Value
end;

procedure Tfrm_ReferenciarCheque.tPagadoChange(Sender: TObject);
begin
    tPendiente.Value := tMonto.Value - tPagado.Value
end;

procedure Tfrm_ReferenciarCheque.ts_FiltrarKeyPress(Sender: TObject;
  var Key: Char);
begin
if ts_Filtrar.Text<> '' then
  begin
  if Key = #13 Then
    btFiltrar.Click
  end;
end;

procedure Tfrm_ReferenciarCheque.zQPEgresosAfterDelete(DataSet: TDataSet);
begin
    zQPagado.Refresh ;
    if zQPagado.RecordCount > 0 then
        tPagado.Value := zQPagado.FieldValues['dPagado']
    Else
        tPagado.Value := 0 ;
end;

procedure Tfrm_ReferenciarCheque.zQPEgresosAfterInsert(DataSet: TDataSet);
begin
    zQPEgresos.FieldValues['dIdFecha']      := dParamFecha ;
    zQPEgresos.FieldValues['iIdFolio']      := iParamFolio ;
    zQPEgresos.FieldValues['mDescripcion']  := grComentarios.Caption  + zQPEgresos.FieldValues['sRazonSocial'];
    zQPEgresos.FieldValues['sIdProveedor']  := '' ;
    zQPEgresos.FieldValues['dImporte']      := 0 ;
    zQPEgresos.FieldValues['sIdEgreso']     := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
    
end;

procedure Tfrm_ReferenciarCheque.zQPEgresosAfterPost(DataSet: TDataSet);
begin
//    zQPagado.Refresh ;
//    if zQPagado.RecordCount > 0 then
//        tPagado.Value := zQPagado.FieldValues['dPagado']
//    Else
//        tPagado.Value := 0 ;

  zCommand.Active := False ;
  zCommand.SQL.Clear ;
  zCommand.SQL.Add('select SUM(dImporte) AS ImporteTotal from con_tesoreriapegresos where iIdFolio = :IdFolio order by sIdEgreso' ) ;
  zCommand.Params.ParamByName('IdFolio').DataType := ftInteger ;
  zCommand.Params.ParamByName('IdFolio').Value := iParamFolio  ;
  zCommand.Open ;

  tMonto.Value := dParamMonto ;
  if zCommand.RecordCount > 0 then
      tPagado.Value := zCommand.FieldValues['ImporteTotal']
  Else
      tPagado.Value := 0 ;
  tPendiente.Value := tMonto.Value - tPagado.Value;
  

end;

procedure Tfrm_ReferenciarCheque.zQPEgresosBeforeEdit(DataSet: TDataSet);
begin
    frm_ReferenciarCheque.GridConceptos.Columns[1].ReadOnly := False ;
    frm_ReferenciarCheque.GridConceptos.Columns[2].ReadOnly := True  ;
    frm_ReferenciarCheque.GridConceptos.Columns[3].ReadOnly := True  ;
    frm_ReferenciarCheque.GridConceptos.Columns[4].ReadOnly := False ;

end;

procedure Tfrm_ReferenciarCheque.zQPEgresosBeforeInsert(DataSet: TDataSet);
begin
    if pgEgresos.ActivePageIndex < 0 then
        Abort ;
    If (tPendiente.Value <= 0) Then
        Abort
end;

procedure Tfrm_ReferenciarCheque.zQPEgresosBeforePost(DataSet: TDataSet);
begin
    zQPEgresos.FieldValues['idorganizacion']:= connection.contrato.fieldbyname('idorganizacion').AsInteger;
    zCommand.Active := False ;
    zCommand.SQL.Clear ;
    zCommand.SQL.Add('select mDescripcion from con_catalogodeegresos where sIdEgreso = :Egreso' ) ;
    zCommand.Params.ParamByName('Egreso').DataType := ftString ;
    zCommand.Params.ParamByName('Egreso').Value := zQPEgresossIdEgreso.Value  ;
    zCommand.Open ;
    if zCommand.RecordCount = 0 then
        abort;


end;

procedure Tfrm_ReferenciarCheque.zQPEgresossIdEgresoChange(Sender: TField);
begin
    mnReferenciar.Click ;
end;

procedure Tfrm_ReferenciarCheque.EnviarMensaje(Mensaje, Ip: String);
begin
  with WSocketMensaje do
  begin
    close;
    Addr := Ip;
    Port := '83';
    Proto := 'udp';
    Connect;
    SendStr(Mensaje);
  end;
  WSocketMensaje.close;
end;

procedure Tfrm_ReferenciarCheque.Tablero;
var
  Qry: TZReadOnlyQuery;
begin
  Qry := TZReadOnlyQuery.Create(Self);
  Qry.Connection := Connection.zConnection;
  Qry.Active := False ;
  Qry.SQL.Clear ;
  Qry.SQL.Add('select direccionip from nuc_conexiones');
  Qry.Open;

  while not Qry.Eof do
  begin
    EnviarMensaje(inttostr(iParamFolio),Qry.FieldByName('direccionip').AsString);
    Qry.Next;
  end;
end;

end.
