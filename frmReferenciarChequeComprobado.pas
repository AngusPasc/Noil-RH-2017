unit frmReferenciarChequeComprobado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons, RXDBCtrl, Newpanel, ZAbstractDataset, StrUtils, DBCtrls, Mask,
  rxToolEdit, ComCtrls, NxPageControl, Menus, utilerias, rxCurrEdit ;

type
  Tfrm_ReferenciarChequeComprobado = class(TForm)
    dsQPEgresos: TDataSource;
    zQPEgresos: TZQuery;
    zQCatalogodeEgresos: TZReadOnlyQuery;
    zCommand: TZQuery;
    ds_buscaobjeto: TDataSource;
    BuscaProveedor: TZReadOnlyQuery;
    zQPEgresosdIdFecha: TDateField;
    zQPEgresosiIdFolio: TIntegerField;
    zQPEgresossIdEgreso: TStringField;
    zQPEgresossIdProveedor: TStringField;
    zQPEgresossIdFactura: TStringField;
    zQPEgresosmDescripcion: TMemoField;
    zQPEgresosdImporte: TFloatField;
    BuscaObjeto: TZReadOnlyQuery;
    zQPEgresossRazonSocial: TStringField;
    zQPagado: TZReadOnlyQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pgEgresos: TPageControl;
    GroupBox1: TGroupBox;
    tmDescripcion: TDBMemo;
    GridConceptos: TDBGrid;
    btnQuitarComprobacion: TSpeedButton;
    btnPrinter: TSpeedButton;
    tMonto: TCurrencyEdit;
    tPagado: TCurrencyEdit;
    tPendiente: TCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridConceptosKeyPress(Sender: TObject; var Key: Char);
    procedure tPagadoChange(Sender: TObject);
    procedure zQPEgresosAfterPost(DataSet: TDataSet);
    procedure tMontoChange(Sender: TObject);
    procedure zQPEgresosBeforeDelete(DataSet: TDataSet);
    procedure zQPEgresosBeforeInsert(DataSet: TDataSet);
    procedure pgEgresosChange(Sender: TObject);
    procedure BuscaProveedorAfterScroll(DataSet: TDataSet);
    procedure BuscaObjetoAfterScroll(DataSet: TDataSet);
    procedure pgEgresosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure btnQuitarComprobacionClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ReferenciarChequeComprobado: Tfrm_ReferenciarChequeComprobado;

implementation

uses frm_connection;


{$R *.dfm}

procedure Tfrm_ReferenciarChequeComprobado.btnPrinterClick(Sender: TObject);
begin
    rptEgresoxFolio (dParamFecha , iParamFolio )
end;

procedure Tfrm_ReferenciarChequeComprobado.btnQuitarComprobacionClick(
  Sender: TObject);
begin
    if GridConceptos.ReadOnly = False then
    if MessageDlg('Desea cambiar el status de comprobado a no comprobado el folio seleccionado?.', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
    begin
        zCommand.Active := False ;
        zCommand.SQL.Clear;
        zCommand.SQL.Add('update con_tesoreriaegresos SET lComprobado = "No" Where dIdFecha = :Fecha And iIdFolio = :Folio') ;
        zCommand.Params.ParamByName('fecha').DataType := ftDate ;
        zCommand.Params.ParamByName('fecha').Value := dParamFecha ;
        zCommand.Params.ParamByName('folio').DataType := ftInteger;
        zCommand.Params.ParamByName('folio').Value := iParamFolio ;
        zCommand.ExecSQL ;
        sParamComprobado := 'No' ;
        close ;
    end;
end;

procedure Tfrm_ReferenciarChequeComprobado.BuscaObjetoAfterScroll(
  DataSet: TDataSet);
begin
    if BuscaObjeto.RecordCount > 0 then
    begin
        if zQPEgresossIdEgreso.Text = connection.configuracion.fieldvalues['sPagoProveedor'] then
        begin
            zQPEgresos.FieldValues['sIdProveedor'] := BuscaProveedor.FieldValues[ 'sIdProveedor' ] ;
            zQPEgresos.FieldValues['sRazonSocial'] := BuscaProveedor.FieldValues[ 'sRazonSocial' ] ;
            zQPEgresos.FieldValues['sIdFactura'] := BuscaProveedor.FieldValues['sIdFactura'] ;
            if sParamProveedor = connection.configuracion.fieldvalues['sTesoreria'] then
                 zQPEgresos.FieldValues['mDescripcion'] := BuscaProveedor.FieldValues['sDescripcion']
            else
                 zQPEgresos.FieldValues['mDescripcion'] := BuscaProveedor.FieldValues['mDescripcion'] ;
            end
            else
                 if zQPEgresossIdEgreso.Text = connection.configuracion.fieldvalues['sViaticos'] then
                 begin
                      zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldValues[ 'sIdEmpleado' ] ;
                      zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sNombreCompleto' ] ;
                      zQPEgresos.FieldValues['sIdFactura'] := 'Com. ' + BuscaObjeto.FieldByName('iConsecutivo').AsString ;
                      zQPEgresos.FieldValues['mDescripcion'] := BuscaObjeto.FieldValues[ 'mObjeto' ] ;
                  end
                 Else
                 begin
                      zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldValues[ 'sIdArea' ] ;
                      zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sDescripcion' ] ;
                 end
    end;
end;

procedure Tfrm_ReferenciarChequeComprobado.BuscaProveedorAfterScroll(
  DataSet: TDataSet);
begin
    if BuscaProveedor.RecordCount > 0 then
    begin
        zQPEgresos.FieldValues['sIdProveedor'] := BuscaProveedor.FieldValues[ 'sIdProveedor' ] ;
        zQPEgresos.FieldValues['sRazonSocial'] := BuscaProveedor.FieldValues[ 'sRazonSocial' ] ;
        zQPEgresos.FieldValues['sIdFactura'] := BuscaProveedor.FieldValues['sIdFactura'] ;
        if sParamProveedor = connection.configuracion.fieldvalues['sTesoreria'] then
            zQPEgresos.FieldValues['mDescripcion'] := BuscaProveedor.FieldValues['sDescripcion']
        else
            zQPEgresos.FieldValues['mDescripcion'] := BuscaProveedor.FieldValues['mDescripcion'] ;
    end;
end;

procedure Tfrm_ReferenciarChequeComprobado.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_ReferenciarChequeComprobado.FormShow(Sender: TObject);
Var
    MiPagina  : tTabSheet ;
    iItem     : Integer ;
begin
 if global_Usuario <> '' then
  begin
    connection.configuracion.Refresh ;
    Caption := 'Referenciar Cheque con Id. Folio ' + IntToStr(iParamFolio) ;

    //  Menu de egresos de tesoreria ..
    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.SQL.Clear ;
    zQCatalogodeEgresos.SQL.Add('select sIdEgreso from con_catalogodeegresos order by sIdEgreso') ;
    zQCatalogodeEgresos.Open ;
    If GridConceptos.Columns[0].PickList.count > 0 Then
        GridConceptos.Columns[0].PickList.Clear ;

    while NOT zQCatalogodeEgresos.Eof do
    begin
        GridConceptos.Columns[0].PickList.Add(zQCatalogodeEgresos.FieldValues['sIdEgreso']) ;
        zQCatalogodeEgresos.Next
    end ;

    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.SQL.Clear ;
    zQCatalogodeEgresos.SQL.Add('select distinct ce.mDescripcion from con_tesoreriapegresos tpe ' +
                                'inner join con_catalogodeegresos ce on (tpe.sIdEgreso = ce.sIdEgreso) ' +
                                'where tpe.dIdFecha = :Fecha and tpe.iIdFolio = :Folio ' +
                                'order by ce.mDescripcion') ;
    zQCatalogodeEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQCatalogodeEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
    zQCatalogodeEgresos.Params.ParamByName('folio').DataType := ftInteger;
    zQCatalogodeEgresos.Params.ParamByName('folio').Value := iParamFolio ;
    zQCatalogodeEgresos.Open ;

    GridConceptos.Parent := Nil ;
    For iItem := 1 To pgEgresos.PageCount do
        pgEgresos.Pages [0].Destroy ;

    while NOT zQCatalogodeEgresos.Eof do
    begin
        MiPagina := tTabSheet.Create(pgEgresos) ;
        with MiPagina do
        begin
            PageControl := pgEgresos;
            Caption     := zQCatalogodeEgresos.FieldValues['mDescripcion'] ;
        end;
       zQCatalogodeEgresos.Next
    end;

    if zqCatalogodeEgresos.RecordCount > 0 then
    begin
        pgEgresos.ActivePageIndex := 0 ;
        PgEgresos.Pages[0].Highlighted := True ;
        GridConceptos.Parent :=  PgEgresos.Pages[0] ;
        GridConceptos.Align := alClient ;
        zQPEgresos.Active := False ;
        zQPEgresos.SQL.Clear ;
        zQPEgresos.SQL.Add('select tpe.* from con_tesoreriapegresos tpe ' +
                           'inner join con_catalogodeegresos ce on (ce.sIdEgreso = tpe.sIdEgreso and ce.mDescripcion = :Egreso)  ' +
                           'where tpe.dIdFecha = :Fecha and tpe.iIdFolio = :folio order by tpe.sIdEgreso') ;
        zQPEgresos.Params.ParamByName('Egreso').DataType := ftMemo ;
        zQPEgresos.Params.ParamByName('Egreso').Value := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
        zQPEgresos.Params.ParamByName('fecha').DataType := ftDate ;
        zQPEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
        zQPEgresos.Params.ParamByName('folio').DataType := ftInteger;
        zQPEgresos.Params.ParamByName('folio').Value := iParamFolio ;
        zQPEgresos.Open ;
    end ;

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
  end;

    GridConceptos.SetFocus
end;

procedure Tfrm_ReferenciarChequeComprobado.GridConceptosKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key := UpperCase(Key)[1] ;
end;

procedure Tfrm_ReferenciarChequeComprobado.ListaObjetoDblClick(Sender: TObject);
begin
    sTecla := 'Enter' ;
    GridConceptos.SetFocus
end;

procedure Tfrm_ReferenciarChequeComprobado.ListaObjetoKeyPress(Sender: TObject;
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

procedure Tfrm_ReferenciarChequeComprobado.pgEgresosChange(Sender: TObject);
begin
    if pgEgresos.ActivePageIndex >= 0 then
        PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;
    BuscaObjeto.Active := False ;
    zQPEgresos.Active := False ;
    zQPEgresos.SQL.Clear ;
    zQPEgresos.SQL.Add('select tpe.* from con_tesoreriapegresos tpe ' +
                       'inner join con_catalogodeegresos ce on (ce.sIdEgreso = tpe.sIdEgreso and ce.mDescripcion = :Egreso)  ' +
                       'where tpe.dIdFecha = :Fecha and tpe.iIdFolio = :folio order by tpe.sIdEgreso') ;
    zQPEgresos.Params.ParamByName('Egreso').DataType := ftMemo ;
    zQPEgresos.Params.ParamByName('Egreso').Value := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
    zQPEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQPEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
    zQPEgresos.Params.ParamByName('folio').DataType := ftInteger;
    zQPEgresos.Params.ParamByName('folio').Value := iParamFolio ;
    zQPEgresos.Open ;
    GridConceptos.Parent :=  PgEgresos.Pages[pgEgresos.ActivePageIndex] ;
    zQPagado.Refresh ;
    if zQPagado.RecordCount > 0 then
        tPagado.Value := zQPagado.FieldValues['dPagado']
    Else
        tPagado.Value := 0 ;
end;

procedure Tfrm_ReferenciarChequeComprobado.pgEgresosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    if pgEgresos.ActivePageIndex >= 0 then
        PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := False ;
end;

procedure Tfrm_ReferenciarChequeComprobado.tMontoChange(Sender: TObject);
begin
    tPendiente.Value := tMonto.Value - tPagado.Value
end;

procedure Tfrm_ReferenciarChequeComprobado.tPagadoChange(Sender: TObject);
begin
    tPendiente.Value := tMonto.Value - tPagado.Value
end;


procedure Tfrm_ReferenciarChequeComprobado.zQPEgresosAfterPost(DataSet: TDataSet);
Var
    dPagadoTotal : Double ;
    MiPagina     : tTabSheet ;
    iItem,
    iPage        : Integer ;
begin
    if pgEgresos.PageCount > 0 then
        iPage := pgEgresos.ActivePageIndex ;
    
    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.SQL.Clear ;
    zQCatalogodeEgresos.SQL.Add('select distinct ce.mDescripcion from con_tesoreriapegresos tpe ' +
                                'inner join catalogodeegresos ce on (tpe.sIdEgreso = ce.sIdEgreso) ' +
                                'where tpe.dIdFecha = :Fecha and tpe.iIdFolio = :Folio ' +
                                'order by ce.mDescripcion') ;
    zQCatalogodeEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQCatalogodeEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
    zQCatalogodeEgresos.Params.ParamByName('folio').DataType := ftInteger;
    zQCatalogodeEgresos.Params.ParamByName('folio').Value := iParamFolio ;
    zQCatalogodeEgresos.Open ;

    GridConceptos.Parent := Nil ;
    For iItem := 1 To pgEgresos.PageCount do
        pgEgresos.Pages [0].Destroy ;

    while NOT zQCatalogodeEgresos.Eof do
    begin
        MiPagina := tTabSheet.Create(pgEgresos) ;
        with MiPagina do
        begin
            PageControl := pgEgresos;
            Caption     := zQCatalogodeEgresos.FieldValues['mDescripcion'] ;
        end;
       zQCatalogodeEgresos.Next
    end;

    if zqCatalogodeEgresos.RecordCount > 0 then
    begin
        if iPage <= pgEgresos.PageCount then
        begin
            pgEgresos.ActivePageIndex := iPage ;
            GridConceptos.Parent :=  PgEgresos.Pages[iPage] ;
            PgEgresos.Pages[iPage].Highlighted := True ;
        end
        else
        begin
            pgEgresos.ActivePageIndex := 0 ;
            GridConceptos.Parent :=  PgEgresos.Pages[0] ;
            PgEgresos.Pages[0].Highlighted := True ;
        end ;
//        zQPEgresos.Active := False ;
//        zQPEgresos.SQL.Clear ;
//        zQPEgresos.SQL.Add('select tpe.* from tesoreriapegresos tpe ' +
//                           'inner join catalogodeegresos ce on (ce.sIdEgreso = tpe.sIdEgreso and ce.mDescripcion = :Egreso)  ' +
//                           'where tpe.dIdFecha = :Fecha and tpe.iIdFolio = :folio order by tpe.sIdEgreso') ;
//        zQPEgresos.Params.ParamByName('Egreso').DataType := ftMemo ;
//        zQPEgresos.Params.ParamByName('Egreso').Value := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
//        zQPEgresos.Params.ParamByName('fecha').DataType := ftDate ;
//        zQPEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
//        zQPEgresos.Params.ParamByName('folio').DataType := ftInteger;
//        zQPEgresos.Params.ParamByName('folio').Value := iParamFolio ;
//        zQPEgresos.Open ;
    end ;

    zQPagado.Refresh ;
    if zQPagado.RecordCount > 0 then
        tPagado.Value := zQPagado.FieldValues['dPagado']
    Else
        tPagado.Value := 0 ;
    GridConceptos.Refresh ;
    GridConceptos.SetFocus 
end;

procedure Tfrm_ReferenciarChequeComprobado.zQPEgresosBeforeDelete(DataSet: TDataSet);
begin
    Abort
end;

procedure Tfrm_ReferenciarChequeComprobado.zQPEgresosBeforeInsert(DataSet: TDataSet);
begin
    Abort ;
end;

end.
