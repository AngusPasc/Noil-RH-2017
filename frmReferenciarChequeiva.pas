unit frmReferenciarChequeiva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons, RXDBCtrl, Newpanel, ZAbstractDataset, StrUtils, DBCtrls, Mask,
  rxToolEdit, ComCtrls, NxPageControl, Menus, Utilerias, frxClass, frxDBSet,
  rxCurrEdit, ExtCtrls, OverbyteIcsWndControl, OverbyteIcsWSocket ;

type
  Tfrm_ReferenciarChequeiva = class(TForm)
    dsQPEgresos: TDataSource;
    zQPEgresos: TZQuery;
    zQCatalogodeEgresos: TZReadOnlyQuery;
    GridConceptos: TDBGrid;
    zQPEgresosdIdFecha: TDateField;
    zQPEgresosiIdFolio: TIntegerField;
    zQPEgresossIdEgreso: TStringField;
    zQPEgresossIdProveedor: TStringField;
    zQPEgresossIdFactura: TStringField;
    zQPEgresosmDescripcion: TMemoField;
    zQPEgresosdImporte: TFloatField;
    zQPEgresossRazonSocial: TStringField;
    zQPagado: TZReadOnlyQuery;
    pgEgresos: TPageControl;
    grComentarios: TGroupBox;
    DBMemo1: TDBMemo;
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
    zQPEgresosdFechaComprobacion: TDateField;
    zQPEgresossCheque: TStringField;
    zQPEgresossPoliza: TStringField;
    zQPEgresosdsubtotal: TFloatField;
    zQPEgresosdIva: TFloatField;
    zQPEgresosdRetencion: TFloatField;
    zQPEgresosdIspt: TFloatField;
    zQPEgresosdIsr: TFloatField;
    zQPEgresoseReal: TStringField;
    tMonto: TCurrencyEdit;
    tPagado: TCurrencyEdit;
    tPendiente: TCurrencyEdit;
    intgrfldQPEgresosidorganizacion: TIntegerField;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label4: TLabel;
    edtBuscar: TEdit;
    Button1: TButton;
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
    procedure zQPEgresosdsubtotalChange(Sender: TField);
    procedure zQPEgresosdIvaChange(Sender: TField);
    procedure GridConceptosCellClick(Column: TColumn);
    procedure zQPEgresosdImporteChange(Sender: TField);
    procedure zQPEgresosdIsrChange(Sender: TField);
    procedure tPagadoEnter(Sender: TObject);
    procedure zQPEgresosdRetencionChange(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EnviarMensaje (Mensaje, Ip: String);
    procedure Tablero;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ReferenciarChequeiva: Tfrm_ReferenciarChequeiva;
  entrada, entradap :  integer ;
  poliza, cheque : string ;
  TabEgresos : tTabSheet ;


implementation

uses frm_Connection, frmCargoA, frmReferenciarCheque, frmCatalogoEgresos;

{$R *.dfm}



procedure Tfrm_ReferenciarChequeiva.btnPrinterClick(Sender: TObject);
begin
    rptEgresoxFolio (dParamFecha , iParamFolio )
end;



procedure Tfrm_ReferenciarChequeiva.btnReferenciaClick(Sender: TObject);
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
            sParamComprobado := 'Si';
            Tablero;
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
                close ;
            end;
        end
        else
            MessageDlg('No se puede comprobar el cheque, la suma de los documentos a comprobar es superior al monto del cheque o el documento ya ha sido comprobado.' , mtWarning, [mbOk], 0)

end;




procedure Tfrm_ReferenciarChequeiva.Button1Click(Sender: TObject);
Var
    iItem      : Integer ;
begin
  //TabEgresos.PageControl.Free;
  //TabEgresos.PageControl:=nil;
  //TabEgresos.Destroy;

  GridConceptos.Parent := frm_ReferenciarCheque ;

  If GridConceptos.Columns[0].PickList.count > 0 Then
        GridConceptos.Columns[0].PickList.Clear ;

    For iItem := 1 To pgEgresos.PageCount do
        pgEgresos.Pages [0].Destroy ;
        
  zQCatalogodeEgresos.Active := False ;
  zQCatalogodeEgresos.Sql.Clear ;
  zQCatalogodeEgresos.SQL.Add ('select sIdEgreso, mDescripcion from con_catalogodeegresos where sIdEgreso like :Egreso order by sIdEgreso') ;
  zQCatalogodeEgresos.ParamByName('Egreso').AsString:='%'+edtBuscar.Text+'%';
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
    zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha = :Fecha and iIdFolio = :folio And sIdEgreso = :Egreso order by sIdEgreso') ;
    zQPEgresos.Params.ParamByName('Egreso').DataType := ftString ;
    zQPEgresos.Params.ParamByName('Egreso').Value := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
    zQPEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQPEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
    zQPEgresos.Params.ParamByName('folio').DataType := ftInteger;
    zQPEgresos.Params.ParamByName('folio').Value := iParamFolio ;
    zQPEgresos.Open ;

    GridConceptos.Parent :=  PgEgresos.Pages[0] ;
    GridConceptos.Align := alClient ;

    zQPagado.Active := False ;
    zQPagado.Params.ParamByName('fecha').DataType := ftDate ;
    zQPagado.Params.ParamByName('fecha').Value := dParamFecha ;
    zQPagado.Params.ParamByName('folio').DataType := ftInteger;
    zQPagado.Params.ParamByName('folio').Value := iParamFolio ;
    zQPagado.Open ;

    tMonto.Value := dParamMonto ;
    if zQPagado.RecordCount > 0 then
        tPagado.Value := zQPagado.FieldValues['dPagado']
    Else
        tPagado.Value := 0 ;

    tPendiente.Value := tMonto.Value - tPagado.Value;
  end;
end;

procedure Tfrm_ReferenciarChequeiva.DBMemo1Exit(Sender: TObject);
begin
   if (sParamComprobado = 'No') then
      If (zQPEgresos.State = dsInsert) Or (zQPEgresos.State = dsEdit) Then
          zQPEgresos.Post ;
end;




procedure Tfrm_ReferenciarChequeiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  action := cafree ;
end;

procedure Tfrm_ReferenciarChequeiva.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) And not (ActiveControl is TDBMemo) then { si no es un TDBGrid }
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



procedure Tfrm_ReferenciarChequeiva.FormShow(Sender: TObject);
Var
    iItem      : Integer ;
begin
 entrada  := 0 ;
 entradap := 0 ;
 if global_Usuario <> '' then
  begin
//    Connection.configuracionCont.Refresh ;
    Caption := 'Referenciar Cheque con Id. Folio ' + IntToStr(iParamFolio) ;

    GridConceptos.Parent := frm_ReferenciarCheque ;

    If GridConceptos.Columns[0].PickList.count > 0 Then
        GridConceptos.Columns[0].PickList.Clear ;

    For iItem := 1 To pgEgresos.PageCount do
        pgEgresos.Pages [0].Destroy ;

    grComentarios.Caption := 'Descripcion del Evento' ;
    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.Sql.Clear ;
    zQCatalogodeEgresos.SQL.Add ('select sIdEgreso, mDescripcion from con_catalogodeegresos order by sIdEgreso') ;
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
        zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha = :Fecha and iIdFolio = :folio And sIdEgreso = :Egreso order by sIdEgreso') ;
        zQPEgresos.Params.ParamByName('Egreso').DataType := ftString ;
        zQPEgresos.Params.ParamByName('Egreso').Value := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
        zQPEgresos.Params.ParamByName('fecha').DataType := ftDate ;
        zQPEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
        zQPEgresos.Params.ParamByName('folio').DataType := ftInteger;
        zQPEgresos.Params.ParamByName('folio').Value := iParamFolio ;
        zQPEgresos.Open ;

        GridConceptos.Parent :=  PgEgresos.Pages[0] ;
        GridConceptos.Align := alClient ;

        zQPagado.Active := False ;
        zQPagado.Params.ParamByName('fecha').DataType := ftDate ;
        zQPagado.Params.ParamByName('fecha').Value := dParamFecha ;
        zQPagado.Params.ParamByName('folio').DataType := ftInteger;
        zQPagado.Params.ParamByName('folio').Value := iParamFolio ;
        zQPagado.Open ;

        tMonto.Value := dParamMonto ;
        if zQPagado.RecordCount > 0 then
            tPagado.Value := zQPagado.FieldValues['dPagado']
        Else
            tPagado.Value := 0 ;

        tPendiente.Value := tMonto.Value - tPagado.Value;
    end;
    if (sParamComprobado = 'Si') then
      GridConceptos.ReadOnly:=True;
  end;
end;

procedure Tfrm_ReferenciarChequeiva.GridConceptosCellClick(Column: TColumn);
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

procedure Tfrm_ReferenciarChequeiva.GridConceptosKeyPress(Sender: TObject;
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

procedure Tfrm_ReferenciarChequeiva.ListaObjetoDblClick(Sender: TObject);
begin
    sTecla := 'Enter' ;
    GridConceptos.SetFocus
end;

procedure Tfrm_ReferenciarChequeiva.ListaObjetoKeyPress(Sender: TObject;
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


procedure Tfrm_ReferenciarChequeiva.pgEgresosChange(Sender: TObject);
begin
    zQPEgresos.Active := False ;
    zQPEgresos.SQL.Clear ;
    zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha = :Fecha and iIdFolio = :folio And sIdEgreso = :Egreso order by sIdEgreso') ;
    zQPEgresos.Params.ParamByName('Egreso').DataType := ftString ;
    zQPEgresos.Params.ParamByName('Egreso').Value := pgEgresos.Pages [pgEgresos.ActivePageIndex].Caption ;
    zQPEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQPEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
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
procedure Tfrm_ReferenciarChequeiva.pgEgresosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    if pgEgresos.ActivePageIndex >= 0 then
        PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := False ;
end;

procedure Tfrm_ReferenciarChequeiva.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CatalogoEgresos, frm_CatalogoEgresos);
  frm_CatalogoEgresos.Show;
end;

procedure Tfrm_ReferenciarChequeiva.mnReferenciarClick (Sender: TObject) ;
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

procedure Tfrm_ReferenciarChequeiva.tMontoChange(Sender: TObject);
begin
    tPendiente.Value := tMonto.Value - tPagado.Value
end;

procedure Tfrm_ReferenciarChequeiva.tPagadoChange(Sender: TObject);
begin
    tPendiente.Value := tMonto.Value - tPagado.Value
end;

procedure Tfrm_ReferenciarChequeiva.tPagadoEnter(Sender: TObject);
begin
  //zQPEgresos.FieldValues['dImporte'] := zQPEgresos.FieldValues['dsubtotal'] +  zQPEgresos.FieldValues['dIva'] +  zQPEgresos.FieldValues['dRetencion'] +  zQPEgresos.FieldValues['dIsr'] ;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosAfterDelete(DataSet: TDataSet);
begin
    zQPagado.Refresh ;
    if zQPagado.RecordCount > 0 then
        tPagado.Value := zQPagado.FieldValues['dPagado']
    Else
        tPagado.Value := 0 ;
end;



procedure Tfrm_ReferenciarChequeiva.zQPEgresosAfterInsert(DataSet: TDataSet);
begin
     zQPEgresos.FieldValues['dIva']           := 16 ;
     zQPEgresos.FieldValues['dRetencion']     := 0 ;
     zQPEgresos.FieldValues['dSubtotal']      := 0 ;
     zQPEgresos.FieldValues['sCheque']        := Global_Cheque ;
     zQPEgresos.FieldValues['sPoliza']        := Global_Poliza ;
     zQPEgresos.FieldValues['dIspt']          := 0 ;
     zQPEgresos.FieldValues['dIsr']           := 0 ;
     zQPEgresos.FieldValues['dIdFecha']       := dParamFecha ;
     zQPEgresos.FieldValues['iIdFolio']       := iParamFolio ;
     zQPEgresos.FieldValues['mDescripcion']   := '*' ;
     zQPEgresos.FieldValues['sIdProveedor']   := '' ;
     zQPEgresos.FieldValues['dImporte']       := 0 ;
     zQPEgresos.FieldValues['sIdEgreso']      := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;



end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosAfterPost(DataSet: TDataSet);
begin
    zQPagado.Refresh ;
    if zQPagado.RecordCount > 0 then
        tPagado.Value := zQPEgresos.FieldValues['dImporte']
    Else
        tPagado.Value := 0 ;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosBeforeEdit(DataSet: TDataSet);
begin
    frm_ReferenciarChequeiva.GridConceptos.Columns[1].ReadOnly := false ;
    frm_ReferenciarChequeiva.GridConceptos.Columns[2].ReadOnly := false  ;
    frm_ReferenciarChequeiva.GridConceptos.Columns[3].ReadOnly := false  ;
    frm_ReferenciarChequeiva.GridConceptos.Columns[4].ReadOnly := false  ;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosBeforeInsert(DataSet: TDataSet);
begin
    if pgEgresos.ActivePageIndex < 0 then
        Abort ;
    If (tPendiente.Value = 0) Then
        Abort
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosBeforePost(DataSet: TDataSet);
begin
    zQPEgresos.FieldValues['idorganizacion']:= connection.contrato.fieldbyname('idorganizacion').AsInteger;


    zCommand.Active := False ;
    zCommand.SQL.Clear ;
    zCommand.SQL.Add('select mDescripcion from con_catalogodeegresos where sIdEgreso = :Egreso' ) ;
    zCommand.Params.ParamByName('Egreso').DataType := ftString ;
    zCommand.Params.ParamByName('Egreso').Value := zQPEgresossIdEgreso.Value  ;
    zCommand.Open ;
    if zCommand.RecordCount = 0 then
        abort
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosdImporteChange(Sender: TField);
begin
  zQPagado.Active := False ;
  zQPagado.Params.ParamByName('fecha').DataType := ftDate ;
  zQPagado.Params.ParamByName('fecha').Value := dParamFecha ;
  zQPagado.Params.ParamByName('folio').DataType := ftInteger;
  zQPagado.Params.ParamByName('folio').Value := iParamFolio ;
  zQPagado.Open ;

  //tMonto.Value := dParamMonto ;
  if zQPagado.RecordCount > 0 then
      tPagado.Value := zQPagado.FieldValues['dPagado']
  Else
      tPagado.Value := 0 ;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosdIsrChange(Sender: TField);
begin
  try
   zQPEgresos.FieldValues['dImporte'] := zQPEgresos.FieldValues['dsubtotal'] +  zQPEgresos.FieldValues['dIva'] +  zQPEgresos.FieldValues['dRetencion'] +  zQPEgresos.FieldValues['dIsr'] ;
  except
  end;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosdIvaChange(Sender: TField);
begin
  try
   zQPEgresos.FieldValues['dImporte'] := zQPEgresos.FieldValues['dsubtotal'] +  zQPEgresos.FieldValues['dIva'] +  zQPEgresos.FieldValues['dRetencion'] +  zQPEgresos.FieldValues['dIsr'] ;
  except
  end;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosdRetencionChange(Sender: TField);
begin
  try
   zQPEgresos.FieldValues['dImporte'] := zQPEgresos.FieldValues['dsubtotal'] +  zQPEgresos.FieldValues['dIva'] +  zQPEgresos.FieldValues['dRetencion'] +  zQPEgresos.FieldValues['dIsr'] ;
  except
  end;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresosdsubtotalChange(Sender: TField);
begin
    zQPEgresos.FieldValues['dIva'] := zQPEgresos.FieldValues['dsubtotal'] * (Connection.configuracionCont.fieldvalues ['IVA']/100) ;
end;

procedure Tfrm_ReferenciarChequeiva.zQPEgresossIdEgresoChange(Sender: TField);
begin
    mnReferenciar.Click ;
end;

procedure Tfrm_ReferenciarChequeiva.EnviarMensaje(Mensaje, Ip: String);
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

procedure Tfrm_ReferenciarChequeiva.Tablero;
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
