unit frmProveedoresPendientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,cxGridExportLink,
  StdCtrls, NxEdit, NxStdCtrls, frm_barra, NxPageControl, Mask, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxLookup, Grids, DBGrids,
  NxDBColumns, NxColumns, strUtils, ComCtrls, FramedPanel, RXDBCtrl, Newpanel,
  Buttons, global, IdGlobal, RxMemDS, MaskEditb, Editb, EditCalc, DateUtils,
  ExtCtrls, UtileriasCadmvo, Menus, frxClass, frxDBSet, UDbGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, dxRibbon, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, UInteliDialog,
  ShellAPI;              //Assgusto cagapalo

type
  Tfrm_ProveedoresPendientes = class(TForm)
    dszQChequesPendientes: TDataSource;
    pgCuentas: TPageControl;
    zCommand: TZQuery;
    zQChequesPendientes: TZQuery;
    zQChequesPendientesdIdFecha: TDateField;
    zQChequesPendientesiIdFolio: TIntegerField;
    zQChequesPendientessIdNumeroCuenta: TStringField;
    zQChequesPendientessReferencia: TStringField;
    zQChequesPendientessIdProveedor: TStringField;
    zQChequesPendientessRazonSocial: TStringField;
    zQChequesPendientesdImporteTotal: TFloatField;
    zQChequesPendienteslComprobado: TStringField;
    zQChequesPendientesmDescripcion: TMemoField;
    zQChequesPendientessTipoMovimiento: TStringField;
    zQChequesPendientessNumeroOrden: TStringField;
    frxReport1: TfrxReport;
    tmDescripcion: TDBMemo;
    Panel1: TPanel;
    Label4: TLabel;
    btFiltrar: TSpeedButton;
    ts_Filtrar: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    chkCheques: TCheckBox;
    gridPendientes: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridPendientesdIdFecha1: TcxGridDBColumn;
    gridPendientesiIdFolio1: TcxGridDBColumn;
    gridPendientessReferencia1: TcxGridDBColumn;
    gridPendientessRazonSocial1: TcxGridDBColumn;
    gridPendientesdImporteTotal1: TcxGridDBColumn;
    gridPendientessTipoMovimiento1: TcxGridDBColumn;
    gridPendientessNumeroOrden1: TcxGridDBColumn;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    cxstylGreen: TcxStyle;
    cxstylMaroon: TcxStyle;
    cxstylBlackStrong: TcxStyle;
    grdColumComprobado: TcxGridDBColumn;
    cxstylPurple: TcxStyle;
    dxbrmngr1: TdxBarManager;
    EditarCaratuladeEgreso1: TdxBarButton;
    popup_principal: TdxRibbonPopupMenu;
    btnEgresosPorRangoFecha: TdxBarButton;
    dtpInicio: TDateTimePicker;
    lblInicio: TLabel;
    dtpFinal: TDateTimePicker;
    lblFinal: TLabel;
    dxbrbtn1: TdxBarButton;
    dlgSave1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pgCuentasChange(Sender: TObject);
    procedure GridPendientesDblClick(Sender: TObject);
    procedure Egresos1PeriodoClick(Sender: TObject);
    procedure Egresos2PeriodoClick(Sender: TObject);
    procedure Egresos3PeriodoClick(Sender: TObject);
    procedure pgCuentasChanging(Sender: TObject; var AllowChange: Boolean);
    procedure mnImprimirComprobacionClick(Sender: TObject);
    procedure CambiarModalidadChequeGastosVarios1Click(Sender: TObject);
    procedure chkChequesClick(Sender: TObject);
    procedure ModificarFechadelEgreso1Click(Sender: TObject);
    procedure mnGraficaClick(Sender: TObject);
    procedure GraficaporDepartamento1Click(Sender: TObject);
    procedure EditarCaratuladeEgreso1Click(Sender: TObject);
    procedure CostoOperativo1Click(Sender: TObject);
    procedure GridPendientesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure GridPendientesTitleClick(Column: TColumn);
    procedure GridPendientesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridPendientesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btFiltrarClick(Sender: TObject);
    procedure ts_FiltrarKeyPress(Sender: TObject; var Key: Char);
    procedure gridPendientesStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnEgresosPorRangoFechaClick(Sender: TObject);
    procedure dxbrbtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ProveedoresPendientes: Tfrm_ProveedoresPendientes;
  //utgrid:ticdbgrid;
implementation

uses frmReferenciarCheque, frmReferenciarChequeComprobado,
  frmGrafica, frmEditEgresos, frm_setup;

{$R *.dfm}

procedure Tfrm_ProveedoresPendientes.btFiltrarClick(Sender: TObject);
var
MiPagina  : tTabSheet ;
sParametro : string;
iItem      : Integer ;
begin

    sParametro := '%' + ts_Filtrar.Text + '%' ;

    zCommand.Active := False ;
    zCommand.Sql.Clear ;
    zCommand.SQL.Add('select sNombreCuenta from con_cuentasbancarias where sNombreCuenta Like :Parametro order by sNombreCuenta');
    zCommand.Params.ParamByName('Parametro').Value := sParametro ;
    zCommand.Open ;

    if zCommand.RecordCount = 0 then
    begin
      ShowMessage('No se encontro Resultados');
      Exit;
    end;

     //GridPendientes.Align := alClient;
  //GridPendientes.Parent := Panel1;

  //tmDescripcion.Parent :=  Panel1;
  //tmDescripcion.Align :=  alBottom;
    For iItem := 1 To pgCuentas.PageCount do
        pgCuentas.Pages [0].Destroy ;
    

    while NOT zCommand.Eof do
    begin
        MiPagina := tTabSheet.Create(pgCuentas) ;
        with MiPagina do
        begin
            PageControl := pgCuentas;
            Caption     := zCommand.FieldValues['sNombreCuenta'] ;
        end;
       zCommand.Next
    end;

    if pgCuentas.PageCount > 0 then
    begin
    pgCuentas.ActivePageIndex := 0 ;
    PgCuentas.Pages[pgCuentas.ActivePageIndex].Highlighted := True ;

    //GridPendientes.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;
    //tmDescripcion.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;

    zQChequesPendientes.Active := False ;
    zQChequesPendientes.Params.ParamByName('Cuenta').DataType := ftString ;
    zQChequesPendientes.Params.ParamByName('Cuenta').Value := PgCuentas.Pages[pgCuentas.ActivePageIndex].Caption ;
    zQChequesPendientes.Open ;
    end;

        //tmDescripcion.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;

//       pgControl.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;
//        pgControl.ActivePageIndex := 0 ;
//        PgControl.Pages[pgControl.ActivePageIndex].Highlighted := True ;


end;

procedure Tfrm_ProveedoresPendientes.btnEgresosPorRangoFechaClick(
  Sender: TObject);
begin
  FormatDateTime('yyyy-mm-dd', dtpFinal.DateTime);
  rptEgresos2 ( FormatDateTime('yyyy-mm-dd', dtpInicio.Date) , FormatDateTime('yyyy-mm-dd', dtpFinal.Date)  );
end;

procedure Tfrm_ProveedoresPendientes.CambiarModalidadChequeGastosVarios1Click(
  Sender: TObject);
var
    iPosition : Integer ;
begin
    if MessageDlg('Desea cambiar la modalidad del tipo de egreso', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
    begin
        zCommand.Active := False ;
        zCommand.SQL.Clear;
        zCommand.SQL.Add('update con_tesoreriaegresos SET sTipoMovimiento = :TipodePago Where dIdFecha = :Fecha And iIdFolio = :Folio') ;
        zCommand.Params.ParamByName('fecha').DataType := ftDate ;
        zCommand.Params.ParamByName('fecha').Value := zqChequesPendientes.FieldValues['dIdFecha'] ;
        zCommand.Params.ParamByName('folio').DataType := ftInteger ;
        zCommand.Params.ParamByName('folio').Value := zqChequesPendientes.FieldValues['iIdFolio'] ;
        zCommand.Params.ParamByName('TipodePago').DataType := ftString ;
        zCommand.Params.ParamByName('TipodePago').Value :=  Iif( zqChequesPendientes.FieldValues['sTipoMovimiento'] = 'CHEQUE' , 'GASTOS' , 'CHEQUE');
        zCommand.ExecSQL ;
        iPosition := zqChequesPendientes.RecNo ;
        zqChequesPendientes.Refresh ;
        zqChequesPendientes.RecNo := iPosition ;
    end
end;

procedure Tfrm_ProveedoresPendientes.chkChequesClick(Sender: TObject);
begin
    if chkCheques.Checked  then
    begin
        zQChequesPendientes.Active := False ;
        zQChequesPendientes.SQL.Clear ;
        zqChequesPendientes.SQL.Add('select te.* from con_tesoreriaegresos te ' +
              'inner join con_cuentasbancarias c on (c.sIdNumeroCuenta = te.sIdNumeroCuenta And c.sNombreCuenta = :Cuenta) ' +
              'where te.sTipoMovimiento = "CHEQUE" and te.sStatus = "Aprobado" ' +
              'order by te.dIdFecha, te.iIdFolio') ;
        zQChequesPendientes.Params.ParamByName('Cuenta').DataType := ftString ;
        zQChequesPendientes.Params.ParamByName('Cuenta').Value := PgCuentas.Pages[pgCuentas.ActivePageIndex].Caption ;
        zQChequesPendientes.Open ;
    end
    else
    begin
        zQChequesPendientes.Active := False ;
        zQChequesPendientes.SQL.Clear ;
        zqChequesPendientes.SQL.Add('select te.* from con_tesoreriaegresos te ' +
              'inner join con_cuentasbancarias c on (c.sIdNumeroCuenta = te.sIdNumeroCuenta And c.sNombreCuenta = :Cuenta) ' +
              'where te.sTipoMovimiento <> "DEPOSITO" and te.sStatus = "Aprobado" ' +
              'order by te.dIdFecha, te.iIdFolio') ;
        zQChequesPendientes.Params.ParamByName('Cuenta').DataType := ftString ;
        zQChequesPendientes.Params.ParamByName('Cuenta').Value := PgCuentas.Pages[pgCuentas.ActivePageIndex].Caption ;
        zQChequesPendientes.Open ;
    end;
end;

procedure Tfrm_ProveedoresPendientes.CostoOperativo1Click(Sender: TObject);
begin
    procCostoOperativo (zQChequesPendientes.FieldValues['sNumeroOrden'])
end;

procedure Tfrm_ProveedoresPendientes.dxbrbtn1Click(Sender: TObject);
var
  rutaArchivo: string;
begin

  dlgSave1.FileName := ''; //DlgSave1 es un componente de tipo TsaveDialog



   if dlgSave1.Execute then
   begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGrid1);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
   end;

end;

procedure Tfrm_ProveedoresPendientes.EditarCaratuladeEgreso1Click(
  Sender: TObject);
Var
    iRecno : Integer ;
begin
    dParamFecha := zQChequesPendientes.FieldValues['dIdFecha'] ;
    iParamFolio := zQChequesPendientes.FieldValues['iIdFolio'] ;
    iRecno := zQChequesPendientes.RecNo ;

    Application.CreateForm(Tfrm_EditEgresos, frm_EditEgresos);
    frm_EditEgresos.ShowModal;

    zqChequesPendientes.Refresh ;
    zqChequesPendientes.RecNo := iRecno ;
end;

procedure Tfrm_ProveedoresPendientes.Egresos1PeriodoClick(Sender: TObject);
begin
    rptEgresos ( zQChequesPendientes.FieldValues['dIdFecha'] , zQChequesPendientes.FieldValues['dIdFecha']  )
end;

procedure Tfrm_ProveedoresPendientes.Egresos2PeriodoClick(Sender: TObject);
begin
    rptEgresosxProveedor ( zQChequesPendientes.FieldValues['dIdFecha'] , zQChequesPendientes.FieldValues['dIdFecha'] )
end;

procedure Tfrm_ProveedoresPendientes.Egresos3PeriodoClick(Sender: TObject);
begin
    rptEgresosxTipoMovimiento ( zQChequesPendientes.FieldValues['dIdFecha']  , zQChequesPendientes.FieldValues['dIdFecha']  )
end;

procedure Tfrm_ProveedoresPendientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  utgrid.Destroy;
  sModulo := '' ;
  action := cafree ;
end;

procedure Tfrm_ProveedoresPendientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid)  and not (ActiveControl is TDBMemo) and not (ActiveControl is Tedit) then { si no es un TDBGrid }
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

procedure Tfrm_ProveedoresPendientes.FormShow(Sender: TObject);
Var
    MiPagina  : tTabSheet ;

begin
    //UtGrid:=TicdbGrid.create(GridPendientes);
    //frmsetup.configuracion.Active := False;
    //frmsetup.configuracion.Params.ParamByName('contrato').DataType := ftString;
    //frmsetup.configuracion.Params.ParamByName('contrato').Value := global_contrato;
    //frmsetup.configuracion.Open;

    zCommand.Active := False ;
    zCommand.Sql.Clear ;
    zCommand.SQL.Add('select sNombreCuenta from con_cuentasbancarias order by sNombreCuenta') ;
    zCommand.Open ;
    while NOT zCommand.Eof do
    begin
        MiPagina := tTabSheet.Create(pgCuentas) ;
        with MiPagina do
        begin
            PageControl := pgCuentas;
            Caption     := zCommand.FieldValues['sNombreCuenta'] ;
        end;
       zCommand.Next
    end;
    if pgCuentas.PageCount > 0 then
    begin
        pgCuentas.ActivePageIndex := 0 ;
        PgCuentas.Pages[pgCuentas.ActivePageIndex].Highlighted := True ;

        //GridPendientes.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;
        //tmDescripcion.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;

//       pgControl.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;
//        pgControl.ActivePageIndex := 0 ;
//        PgControl.Pages[pgControl.ActivePageIndex].Highlighted := True ;

        zQChequesPendientes.Active := False ;
        zQChequesPendientes.Params.ParamByName('Cuenta').DataType := ftString ;
        zQChequesPendientes.Params.ParamByName('Cuenta').Value := PgCuentas.Pages[pgCuentas.ActivePageIndex].Caption ;
        zQChequesPendientes.Open ;

    end;
end;

procedure Tfrm_ProveedoresPendientes.GraficaporDepartamento1Click(
  Sender: TObject);
begin
    if zQChequesPendientes.RecordCount > 0 then
    begin
        dParamFecha := zQChequesPendientes.FieldValues['dIdFecha'] ;
        iParamFolio := zQChequesPendientes.FieldValues['iIdFolio'] ;

        sParamQuery := 'select sIdProveedor as sIdEgreso, sRazonSocial as sDescripcion, sum(dImporte) as dImporte ' +
                      'from con_tesoreriapegresos ' +
                      'where dIdFecha = :Fecha and iIdFolio = :Folio Group By sIdProveedor' ;
        sParamTitle := '<<Grafica>> Detalle de Egresos del folio : ' + IntToStr(iParamFolio) + ' del dia ' + DateToStr(dParamFecha) ;
        sParamTipo := 'Simple' ;
        Application.CreateForm(Tfrm_Grafica, frm_Grafica);
        frm_Grafica.Show;
    end;
end;


procedure Tfrm_ProveedoresPendientes.GridPendientesDblClick(Sender: TObject);
Var
    iRecno : Integer ;
begin
    if zQChequesPendientes.RecordCount > 0 then
    begin
        dParamFecha := zQChequesPendientes.FieldValues['dIdFecha'] ;
        iParamFolio := zQChequesPendientes.FieldValues['iIdFolio'] ;
        sParamProveedor := zQChequesPendientes.FieldValues['sIdProveedor'] ;
        dParamMonto := zQChequesPendientes.FieldValues['dImporteTotal'] * -1;
        sParamComprobado := zQChequesPendientes.FieldValues['lComprobado'] ;

        Application.CreateForm(Tfrm_ReferenciarCheque,frm_ReferenciarCheque);
        if sParamComprobado = 'No' then
          frm_ReferenciarCheque.ShowModal
        Else
        begin
           Application.CreateForm(Tfrm_ReferenciarChequeComprobado,frm_ReferenciarChequeComprobado);
            frm_ReferenciarChequeComprobado.ShowModal ;
        end;


        iRecno := zqChequesPendientes.Recno ;
        zqChequesPendientes.Refresh ;
        zqChequesPendientes.Recno := iRecno ;
    end
end;

procedure Tfrm_ProveedoresPendientes.GridPendientesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
        If zQChequesPendientes.RecordCount > 0 Then
            If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'GASTOS' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clBlue
            end ;

             If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'CHEQUE' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clGreen
            end ;

            If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'GASTOS')  and ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lComprobado').AsString = 'No') then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clRed
            end ;

              If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'DEPOSITO' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clPurple
            end ;

end;

procedure Tfrm_ProveedoresPendientes.GridPendientesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_ProveedoresPendientes.GridPendientesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_ProveedoresPendientes.gridPendientesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin

  AColumn := Sender.PatternGridView.FindItemByName('gridPendientessTipoMovimiento1');
  BColumn := Sender.patternGridview.FindItemByName('grdColumComprobado');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'GASTOS' then
    AStyle := cxstylBlue;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'CHEQUE' then
    AStyle := cxstylGreen;
  if (VarToStr(ARecord.Values[AColumn.Index]) = 'GASTOS') and (ARecord.Values[BColumn.Index] = 'No') then
    AStyle := cxstylRed;
  if (VarToStr(ARecord.Values[AColumn.Index]) = 'DEPOSITO') then
    AStyle := cxstylPurple;


  
end;

procedure Tfrm_ProveedoresPendientes.GridPendientesTitleClick(Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_ProveedoresPendientes.mnGraficaClick(Sender: TObject);
begin
    If zQChequesPendientes.RecordCount > 0 then
    begin
        dParamFecha := zQChequesPendientes.FieldValues['dIdFecha'] ;
        iParamFolio := zQChequesPendientes.FieldValues['iIdFolio'] ;
    end ;

    sParamQuery := 'select te.sIdEgreso, substr(e.mDescripcion, 1, 100) as sDescripcion, sum(te.dImporte) as dImporte ' +
                  'from con_tesoreriapegresos te inner join con_catalogodeegresos e on (te.sIdEgreso = e.sIdEgreso) ' +
                  'where te.dIdFecha = :Fecha and te.iIdFolio = :Folio Group By te.sIdEgreso' ;
    sParamTitle := '<<Grafica>> Detalle de Egresos del folio : ' + IntToStr(iParamFolio) + ' del dia ' + DateToStr(dParamFecha) ;
    sParamTipo := 'Simple' ;
    Application.CreateForm(Tfrm_Grafica, frm_Grafica);
    frm_Grafica.Show;
end;

procedure Tfrm_ProveedoresPendientes.mnImprimirComprobacionClick(
  Sender: TObject);
begin
        rptEgresoxFolio ( zQChequesPendientes.FieldValues['dIdFecha']  , zQChequesPendientes.FieldValues['iIdFolio']  )
end;

procedure Tfrm_ProveedoresPendientes.ModificarFechadelEgreso1Click(
  Sender: TObject);
var
   myForm    : TForm;
   tFecha    : tDateTimePicker ;
   lContinua,
   lCambia   : Boolean ;
   iRegistro : Integer ;
begin

   If zQChequesPendientes.RecordCount > 0 Then
   begin
       myForm := TForm.Create(Self) ;
       try
           myForm.Position := poDesktopCenter ;
           myForm.Caption := 'Nueva Fecha' ;
           MyForm.BorderIcons := [biSystemMenu] ;
           MyForm.Width := 150 ;
           MyForm.Height := 70 ;
           MyForm.BorderStyle := bsSingle ;

           tFecha := tDateTimePicker.Create(MyForm) ;
           tFecha.Parent := myForm ;
           tFecha.Visible := True ;
           tFecha.Left := 40 ;
           tFecha.Top := 10 ;
           tFecha.Width := 80 ;

           tFecha.Date := zQChequesPendientes.FieldValues['dIdFecha'] ;

           myForm.ShowModal;
       finally
           If tFecha.Date <> zQChequesPendientes.FieldValues['dIdFecha'] Then
           begin
              iRegistro := zQChequesPendientes.FieldValues['iIdFolio'] ;
              lCambia := True
           end
           Else
              lCambia := False ;


           if lCambia then
           begin
              zCommand.Active := False ;
              zCommand.SQL.Clear;
              zCommand.SQL.Add('update con_tesoreriaegresos SET dIdFecha = :FechaNew Where dIdFecha = :Fecha And iIdFolio = :Folio') ;
              zCommand.Params.ParamByName('fecha').DataType := ftDate ;
              zCommand.Params.ParamByName('fecha').Value := zQChequesPendientes.FieldValues['dIdFecha'] ;
              zCommand.Params.ParamByName('folio').DataType := ftInteger ;
              zCommand.Params.ParamByName('folio').Value := zQChequesPendientes.FieldValues['iIdFolio'] ;
              zCommand.Params.ParamByName('fechaNew').DataType := ftDate ;
              zCommand.Params.ParamByName('fechaNew').Value := tFecha.Date ;
              Try
                  zCommand.ExecSQL ;
              Finally
                  zCommand.Active := False ;
                  zCommand.SQL.Clear;
                  zCommand.SQL.Add('update con_tesoreriapegresos SET dIdFecha = :FechaNew Where dIdFecha = :Fecha And iIdFolio = :Folio') ;
                  zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                  zCommand.Params.ParamByName('fecha').Value := zQChequesPendientes.FieldValues['dIdFecha'] ;
                  zCommand.Params.ParamByName('folio').DataType := ftInteger ;
                  zCommand.Params.ParamByName('folio').Value := zQChequesPendientes.FieldValues['iIdFolio'] ;
                  zCommand.Params.ParamByName('fechaNew').DataType := ftDate ;
                  zCommand.Params.ParamByName('fechaNew').Value := tFecha.Date ;
                  zCommand.ExecSQL ;
              End;

              zQChequesPendientes.Refresh
           end;

           myForm.Free;
       end;
   end
end;


procedure Tfrm_ProveedoresPendientes.pgCuentasChange(Sender: TObject);
begin
//    pgControl.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;
//    PgControl.Pages[pgControl.ActivePageIndex].Highlighted := True ;
   // GridPendientes.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;
    //tmDescripcion.Parent := pgCuentas.Pages[pgCuentas.ActivePageIndex] ;
    PgCuentas.Pages[pgCuentas.ActivePageIndex].Highlighted := True ;
    zQChequesPendientes.Active := False ;
    zQChequesPendientes.Params.ParamByName('Cuenta').DataType := ftString ;
    zQChequesPendientes.Params.ParamByName('Cuenta').Value := PgCuentas.Pages[pgCuentas.ActivePageIndex].Caption ;
    zQChequesPendientes.Open ;
end;

procedure Tfrm_ProveedoresPendientes.pgCuentasChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    PgCuentas.Pages[pgCuentas.ActivePageIndex].Highlighted := False ;
end;

procedure Tfrm_ProveedoresPendientes.ts_FiltrarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  btFiltrar.Click;
 
end;

end.
