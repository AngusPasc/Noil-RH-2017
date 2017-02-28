unit frmCatalogoIngresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, StrUtils, 
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frmPrincipal, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
  global, Menus, frxClass, frxDBSet, Utilerias, RXDBCtrl;

type
  Tfrm_CatalogoIngresos = class(TForm)
    dszQCatalogodeIngresos: TDataSource;
    zQCatalogodeIngresos: TZQuery;
    zQCatalogodeIngresosiAnno: TIntegerField;
    zQCatalogodeIngresosmDescripcion: TMemoField;
    zQCatalogodeIngresosdImporte: TFloatField;
    Label3: TLabel;
    tdbmDescripcion: TDBMemo;
    Label4: TLabel;
    tdbdImporte: TDBEdit;
    frmBarra1: TfrmBarra;
    zQCatalogodeIngresossPeriocidad: TStringField;
    Label5: TLabel;
    tdbsPeriocidad: TDBEdit;
    tiEjercicio: TComboBox;
    Label2: TLabel;
    Label6: TLabel;
    tdbsIdArticulo: TDBEdit;
    zQCatalogodeIngresossDescripcion: TStringField;
    zQCatalogodeIngresosiOrden: TIntegerField;
    zQCatalogodeIngresossIdArticulo: TStringField;
    Label1: TLabel;
    tdbiOrden: TDBEdit;
    PopupMenu1: TPopupMenu;
    CopiarCatalogoAnualAnterior1: TMenuItem;
    zQCatalogoAnterior: TZQuery;
    zQCatalogodeIngresossImprimeRecibo: TStringField;
    tsImprimeRecibo: TDBComboBox;
    Label7: TLabel;
    reporte: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Label8: TLabel;
    Grid_catIngresos: TRxDBGrid;
    tsIdArticulo: TDBLookupComboBox;
    dsQCatalogodecuentas: TDataSource;
    qryCuentas: TZReadOnlyQuery;
    zQCatalogodeIngresossNumeroCuenta: TStringField;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    zQCatalogodeIngresosdImporteref: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zQCatalogodeIngresosAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tiEjercicioExit(Sender: TObject);
    procedure zQCatalogodeIngresosCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CopiarCatalogoAnualAnterior1Click(Sender: TObject);
    procedure zQCatalogodeIngresosBeforeDelete(DataSet: TDataSet);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure Grid_catIngresosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CatalogoIngresos: Tfrm_CatalogoIngresos;

implementation

{$R *.dfm}

procedure Tfrm_CatalogoIngresos.CopiarCatalogoAnualAnterior1Click(
  Sender: TObject);
begin
    zQCatalogoAnterior.Active := False ;
    zQCatalogoAnterior.Sql.Clear ;
    zQCatalogoAnterior.Sql.Add('select * from catalogodeingresos Where iAnno = :Anno') ;
    zQCatalogoAnterior.Params.ParamByName('Anno').DataType := ftInteger ;
    zQCatalogoAnterior.Params.ParamByName('Anno').Value := StrToInt(tiEjercicio.Text) - 1 ;
    zQCatalogoAnterior.Open ;
    while NOt zQCatalogoAnterior.Eof  do
    begin
        zQCatalogodeIngresos.Insert ;
        zqCatalogodeIngresos.FieldValues['iAnno'] := tiEjercicio.Text ;
        zqCatalogodeIngresos.FieldValues['iOrden'] := zqCatalogoAnterior.FieldValues['iOrden'] ;
        zqCatalogodeIngresos.FieldValues['sIdArticulo'] := zqCatalogoAnterior.FieldValues['sIdArticulo'] ;
        zqCatalogodeIngresos.FieldValues['dImporte'] := zqCatalogoAnterior.FieldValues['dImporte'] ;
        zqCatalogodeIngresos.FieldValues['mDescripcion'] := zqCatalogoAnterior.FieldValues['mDescripcion'] ;
        zqCatalogodeIngresos.FieldValues['sPeriocidad'] := zqCatalogoAnterior.FieldValues['sPeriocidad'] ;
        zqCatalogodeIngresos.FieldValues['sImprimeRecibo'] := zqCatalogoAnterior.FieldValues['sImprimeRecibo'] ;
        Try
            zQCatalogodeIngresos.Post ;
        Except

        End;
        zQCatalogoAnterior.Next
    end;

end;

procedure Tfrm_CatalogoIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_CatalogoIngresos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_CatalogoIngresos.FormShow(Sender: TObject);
begin
    frm_Principal.configuracion.Refresh ;
    tiEjercicio.ItemIndex := tiEjercicio.Items.IndexOf(frm_Principal.configuracion.fieldvalues['iEjercicio']) ;
    zQCatalogodeIngresos.Active := False ;
    zQCatalogodeIngresos.Params.ParamByName('Anno').DataType := ftInteger ;
    zQCatalogodeIngresos.Params.ParamByName('Anno').Value := tiEjercicio.Text ;
    zQCatalogodeIngresos.Open ;

    qryCuentas.Open ;
    tiEjercicio.SetFocus ;
end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zQCatalogodeIngresos.Insert ;
  tdbsIdArticulo.SetFocus
end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zqCatalogodeIngresos.Cancel
end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zQCatalogodeIngresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try

         frm_Principal.QryBusca.Active := False ;
         frm_Principal.qryBusca.SQL.Clear ;
         frm_principal.QryBusca.SQL.Add('Select sIdArticulo from tesoreriapingresos Where sIdArticulo =:Articulo');
         frm_principal.QryBusca.Params.ParamByName('Articulo').DataType := ftString ;
         frm_principal.QryBusca.Params.ParamByName('Articulo').Value    := zQCatalogodeIngresos.FieldValues['sIdArticulo'] ;
         frm_Principal.QryBusca.Open ;
         If frm_Principal.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE EN INGRESOS DIARIOS.', mtInformation, [mbOk], 0)
         Else
            zQCatalogodeIngresos.Delete ;

        except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zQCatalogodeIngresos.RecordCount > 0 Then
  begin
      zQCatalogodeIngresos.Edit ;
      tdbsIdArticulo.SetFocus
  end ;
end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnPostClick(Sender: TObject);
begin
   zqCatalogodeIngresos.Post ;
   zqCatalogodeIngresos.Refresh  ;
   frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnPrinterClick(Sender: TObject);
begin
       Reporte.LoadFromFile(global_files+ 'CatIngresos.fr3') ;
       Reporte.ShowReport() ;

end;

procedure Tfrm_CatalogoIngresos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zqCatalogodeIngresos.Refresh
end;

procedure Tfrm_CatalogoIngresos.Grid_catIngresosGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
 //If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
 //       If ZQCatalogodeIngresos.RecordCount > 0 Then
 //         begin
        //   AFont.Color := esColor (ZCuenta.FieldValues['iColor']);

 //            If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNivel').asInteger = 1 then
 //              begin
 //               Afont.Style   := [fsBold] ;
 //               AFont.Color   := esColor(12);
 //              end;

 //            If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNivel').asInteger = 2 then
 //              begin
 //               Afont.Style := [fsBold] ;
 //               AFont.Color   := esColor(13);
 //              end;

   //       end;
end;

procedure Tfrm_CatalogoIngresos.tiEjercicioExit(Sender: TObject);
begin
    zQCatalogodeIngresos.Active := False ;
    zQCatalogodeIngresos.Params.ParamByName('Anno').DataType := ftString ;
    zQCatalogodeIngresos.Params.ParamByName('Anno').Value := tiEjercicio.Text ;
    zQCatalogodeIngresos.Open ;
    frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_CatalogoIngresos.zQCatalogodeIngresosAfterInsert(
  DataSet: TDataSet);
begin
    zqCatalogodeIngresos.FieldValues['iAnno']          := tiEjercicio.Text ;
    zqCatalogodeIngresos.FieldValues['iOrden']         := 0 ;
    zqCatalogodeIngresos.FieldValues['sIdArticulo']    := '*' ;
    zqCatalogodeIngresos.FieldValues['dImporte']       := 0 ;
    zqCatalogodeIngresos.FieldValues['mDescripcion']   := '*' ;
    zqCatalogodeIngresos.FieldValues['sPeriocidad']    := '*' ;
    zqCatalogodeIngresos.FieldValues['sImprimeRecibo'] := 'Si' ;
    zqCatalogodeIngresos.FieldValues['sNumeroCuenta']  := '*' ;
end;

procedure Tfrm_CatalogoIngresos.zQCatalogodeIngresosBeforeDelete(
  DataSet: TDataSet);
begin
    zQCatalogoAnterior.Active := False ;
    zQCatalogoAnterior.Sql.Clear ;
    zQCatalogoAnterior.Sql.Add('select dIdFecha from tesoreriapingresos Where sIdArticulo = :Articulo') ;
    zQCatalogoAnterior.Params.ParamByName('Articulo').DataType := ftString ;
    zQCatalogoAnterior.Params.ParamByName('Articulo').Value := zqCatalogodeIngresos.FieldValues['sIdArticulo'] ;
    zQCatalogoAnterior.Open ;
    if zQCatalogoAnterior.RecordCount > 0 then
        abort
end;

procedure Tfrm_CatalogoIngresos.zQCatalogodeIngresosCalcFields(
  DataSet: TDataSet);
begin
    zQCatalogodeIngresossDescripcion.Text := MidStr ( zQCatalogodeIngresos.FieldValues['mDescripcion'], 1 , 254 ) ;

//   If (ZQCatalogodeIngresos.State <> dsEdit) and (ZQCatalogodeIngresos.State <> dsInsert) then
//     begin
 //     If ZQCatalogodeIngresos.FieldValues['iNIvel'] > 1 Then
  //      ZQCatalogodeIngresossDescripcion.Text := espaces (ZQCatalogodeIngresos.FieldValues['iNivel'])  ;
        //ZCuenta sWbsSpace.Text := espaces (ZCuenta.FieldValues['iNivel']) + copy(ZCuenta.FieldValues['sWbs'],3,length(ZCuenta.FieldValues['sWbs'])-2);
//    end


end;

end.
