unit frmConsultadeGastos_Empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons, RXDBCtrl, Newpanel, ZAbstractDataset, StrUtils, DBCtrls, Mask, UDbGrid,
  ComCtrls, Menus, utileriascadmvo, frxClass, frxDBSet, rxToolEdit, rxCurrEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, JvMenus, dxRibbon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  Tfrm_ConsultadeGastos_Empresa = class(TForm)
    dsQPEgresos: TDataSource;
    pgEgresos: TPageControl;
    grComentarios: TGroupBox;
    DBMemo1: TDBMemo;
    btnReferencia: TSpeedButton;
    zQCatalogodeEgresos: TZReadOnlyQuery;
    zQPEgresos: TZReadOnlyQuery;
    zQPEgresosdIdFecha: TDateField;
    zQPEgresosiIdFolio: TIntegerField;
    zQPEgresossIdEgreso: TStringField;
    zQPEgresossIdProveedor: TStringField;
    zQPEgresossRazonSocial: TStringField;
    zQPEgresossIdFactura: TStringField;
    zQPEgresosmDescripcion: TMemoField;
    zQPEgresosdImporte: TFloatField;
    zQPagado: TZReadOnlyQuery;
    GroupBox3: TGroupBox;
    rbTipo: TRadioButton;
    rbFecha: TRadioButton;
    zCommand: TZReadOnlyQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    Label4: TLabel;
    cbxGrupoEgresos: TDBLookupComboBox;
    zQGrupodeEgresos: TZQuery;
    zQGrupodeEgresossIdGrupo: TStringField;
    zQGrupodeEgresossDescripcion: TStringField;
    dszQGrupodeEgresos: TDataSource;
    grTotales: TGroupBox;
    Label3: TLabel;
    tMonto: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    GridConceptos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    GridConceptosdIdFecha1: TcxGridDBColumn;
    GridConceptosiIdFolio1: TcxGridDBColumn;
    GridConceptossIdEgreso1: TcxGridDBColumn;
    GridConceptossIdProveedor1: TcxGridDBColumn;
    GridConceptossRazonSocial1: TcxGridDBColumn;
    GridConceptossIdFactura1: TcxGridDBColumn;
    GridConceptosdImporte1: TcxGridDBColumn;
    dxbrmngr1: TdxBarManager;
    DetalledeEgresos1: TdxBarButton;
    DetalledeEgresosxCargo1: TdxBarButton;
    DetalledeEgresosxFecha1: TdxBarButton;
    DetalledeEgresosx1: TdxBarButton;
    mnImprimirComprobacion: TdxBarButton;
    Egresos1Periodo: TdxBarButton;
    Egresos2Periodo: TdxBarButton;
    Egresos3Periodo: TdxBarButton;
    Reportes1: TdxBarSubItem;
    mnGrafica: TdxBarButton;
    GraficaporDepartamento1: TdxBarButton;
    GraficarPorFechaImporte1: TdxBarButton;
    GraficarConceptoSeleccionado1: TdxBarButton;
    Graficar1: TdxBarSubItem;
    EditarCaratuladeEgreso1: TdxBarButton;
    popup_Principal: TdxRibbonPopupMenu;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgEgresosChange(Sender: TObject);
    procedure btnReferenciaClick(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure GridConceptosDblClick(Sender: TObject);
    procedure pgEgresosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure Egresos1PeriodoClick(Sender: TObject);
    procedure Egresos2PeriodoClick(Sender: TObject);
    procedure Egresos3PeriodoClick(Sender: TObject);
    procedure mnImprimirComprobacionClick(Sender: TObject);
    procedure mnGraficaClick(Sender: TObject);
    procedure GraficaporDepartamento1Click(Sender: TObject);
    procedure GraficarConceptoSeleccionado1Click(Sender: TObject);
    procedure DetalledeEgresos1Click(Sender: TObject);
    procedure DetalledeEgresosxCargo1Click(Sender: TObject);
    procedure DetalledeEgresosx1Click(Sender: TObject);
    procedure EditarCaratuladeEgreso1Click(Sender: TObject);
    procedure DetalledeEgresosxFecha1Click(Sender: TObject);
    procedure GraficarPorFechaImporte1Click(Sender: TObject);
    procedure cbxGrupoEgresosClick(Sender: TObject);
    procedure rbFechaClick(Sender: TObject);
    procedure rbTipoClick(Sender: TObject);
    procedure GridConceptosTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultadeGastos_Empresa: Tfrm_ConsultadeGastos_Empresa;
  EgresoPrueba : string;
  //utgrid: ticdbgrid;
implementation

uses frmReferenciarChequeComprobado, frmGrafica, frmEditEgresos,
  frmGraficabarras, frm_setup, frm_connection;

{$R *.dfm}

procedure Tfrm_ConsultadeGastos_Empresa.btnReferenciaClick(Sender: TObject);
Var
    MiPagina  : tTabSheet ;
    iItem     : Integer ;
begin

    tMonto.Value         := 0 ;
    //GridConceptos.Align  := alNone ;
    //GridConceptos.Parent := Self ;

    if rbTipo.Checked then
    begin
        For iItem := 1 To pgEgresos.PageCount do
              pgEgresos.Pages [0].Destroy ;
        if zQGrupodeEgresos.FieldByName('sIdGrupo').AsString = '*' then
        begin
          grComentarios.Caption := 'Descripcion del Evento' ;
          zQCatalogodeEgresos.Active := False ;
          zQCatalogodeEgresos.SQL.Clear ;
          zQCatalogodeEgresos.SQL.Add('SELECT sIdEgreso, mDescripcion ') ;
          zQCatalogodeEgresos.SQL.Add('FROM con_catalogodeegresos ') ;
          zQCatalogodeEgresos.SQL.Add('ORDER BY sIdEgreso;') ;
          zQCatalogodeEgresos.Open ;
        end
        else
          begin
            grComentarios.Caption := 'Descripcion del Evento' ;
            zQCatalogodeEgresos.Active := False ;
            zQCatalogodeEgresos.SQL.Clear ;
            zQCatalogodeEgresos.SQL.Add('SELECT sIdEgreso, mDescripcion ') ;
            zQCatalogodeEgresos.SQL.Add('FROM con_catalogodeegresos ') ;
            zQCatalogodeEgresos.SQL.Add('WHERE sIdGrupo = :Grupo') ;
            zQCatalogodeEgresos.SQL.Add('ORDER BY sIdEgreso;') ;
            zQCatalogodeEgresos.Params.ParamByName('Grupo').AsString := zQGrupodeEgresos.FieldByName('sIdGrupo').AsString;
            zQCatalogodeEgresos.Open ;
          end;

        if zqCatalogodeEgresos.RecordCount > 0 then
        begin
            while NOT zQCatalogodeEgresos.Eof do
            begin
              zQPEgresos.Active := False ;
              zQPEgresos.SQL.Clear ;
              if True then
              
              zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha >= :FechaI And dIdFecha <= :FechaF ' +
                               'And sIdEgreso = :Egreso and idorganizacion =:organizacion order by sIdEgreso') ;
              zQPEgresos.Params.ParamByName('Egreso').Value       := zQCatalogodeEgresos.FieldValues['sIdEgreso'];
              zQPEgresos.Params.ParamByName('fechaI').DataType    := ftDate ;
              zQPEgresos.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
              zQPEgresos.Params.ParamByName('fechaF').DataType    := ftDate ;
              zQPEgresos.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
              zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
              zQPEgresos.Open ;
              if zQPEgresos.RecordCount>0 then
              begin
                MiPagina := tTabSheet.Create(pgEgresos) ;
                with MiPagina do
                begin
                    PageControl := pgEgresos;
                    Caption     := zQCatalogodeEgresos.FieldValues['sIdEgreso'] ;
                end;
              end;
               zQCatalogodeEgresos.Next
            end ;
            if pgEgresos.PageCount>0 then
            begin
            pgEgresos.ActivePageIndex := 0 ;
            PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;
            grComentarios.Caption              := zQCatalogodeEgresos.FieldValues['mDescripcion'] ;
            //GridConceptos.Parent               :=  PgEgresos.Pages[pgEgresos.ActivePageIndex] ;
            //grTotales.Parent                   :=  PgEgresos.Pages[pgEgresos.ActivePageIndex] ;
            //GridConceptos.Align                := alClient ;
            //grTotales.Align                    := alBottom ;

            zQPEgresos.Active := False ;
            zQPEgresos.SQL.Clear ;
            zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha >= :FechaI And dIdFecha <= :FechaF ' +
                               'And sIdEgreso = :Egreso and idorganizacion =:organizacion order by sIdEgreso') ;
            zQPEgresos.Params.ParamByName('Egreso').DataType    := ftString ;
            zQPEgresos.Params.ParamByName('Egreso').Value       := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            zQPEgresos.Params.ParamByName('fechaI').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
            zQPEgresos.Params.ParamByName('fechaF').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
            zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPEgresos.Open ;

            zQPagado.Active := False ;
            zQPagado.SQL.Clear ;
            zQPagado.SQL.Add('select sum(dImporte) as dTotal from con_tesoreriapegresos ' +
                             'where dIdFecha >= :FechaI And dIdFecha <= :FechaF And sIdEgreso = :Egreso and idorganizacion =:organizacion Group by sIdEgreso') ;
            zQPagado.Params.ParamByName('Egreso').DataType    := ftString ;
            zQPagado.Params.ParamByName('Egreso').Value       := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            zQPagado.Params.ParamByName('fechaI').DataType    := ftDate ;
            zQPagado.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
            zQPagado.Params.ParamByName('fechaF').DataType    := ftDate ;
            zQPagado.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
            zQPagado.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPagado.Open ;
            if zQPagado.RecordCount > 0 then
                tMonto.Value := zQPagado.FieldValues['dTotal'] ;

            EgresoPrueba := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            Label5.Caption:= EgresoPrueba;
        end
        else begin
          //GridConceptos.Parent := pgEgresos ;
          //grTotales.Parent     := pgEgresos ;
          zQPEgresos.Active    := False;
          zQPagado.Active      := False;
        end;
        end;
    end
    else
    begin
        For iItem := 1 To pgEgresos.PageCount do
              pgEgresos.Pages [0].Destroy ;

        if zQGrupodeEgresos.FieldByName('sIdGrupo').AsString = '*' then
        begin
        grComentarios.Caption := 'Descripcion del Evento' ;
        zQCatalogodeEgresos.Active := False ;
        zQCatalogodeEgresos.SQL.Clear ;
        zQCatalogodeEgresos.SQL.Add('select Distinct t.dIdFecha from con_tesoreriapegresos t ' +
                                    'INNER JOIN con_catalogodeegresos c On (t.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" ) ' +
                                    'Where t.dIdFecha >= :FechaI And t.dIdFecha <= :FechaF and t.idorganizacion =:organizacion group by t.dIdFecha') ;
        zQCatalogodeEgresos.Params.ParamByName('fechaI').DataType    := ftDate ;
        zQCatalogodeEgresos.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
        zQCatalogodeEgresos.Params.ParamByName('fechaF').DataType    := ftDate ;
        zQCatalogodeEgresos.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
        zQCatalogodeEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
        zQCatalogodeEgresos.Open ;
        end
        else
          begin
            grComentarios.Caption := 'Descripcion del Evento' ;
            zQCatalogodeEgresos.Active := False ;
            zQCatalogodeEgresos.SQL.Clear ;
            zQCatalogodeEgresos.SQL.Add('select Distinct t.dIdFecha from con_tesoreriapegresos t ' +
                                        'INNER JOIN con_catalogodeegresos c On (t.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" ) ' +
                                        'Where t.dIdFecha >= :FechaI And t.dIdFecha <= :FechaF AND c.sIdGrupo = :Grupo and t.idorganizacion =:organizacion group by t.dIdFecha') ;
            zQCatalogodeEgresos.Params.ParamByName('fechaI').DataType    := ftDate ;
            zQCatalogodeEgresos.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
            zQCatalogodeEgresos.Params.ParamByName('fechaF').DataType    := ftDate ;
            zQCatalogodeEgresos.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
            zQCatalogodeEgresos.Params.ParamByName('Grupo').AsString     := zQGrupodeEgresos.FieldByName('sIdGrupo').AsString;
            zQCatalogodeEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQCatalogodeEgresos.Open ;
          end;

        if zqCatalogodeEgresos.RecordCount > 0 then
        begin
            while NOT zQCatalogodeEgresos.Eof do
            begin
              zQPEgresos.Active := False ;
              zQPEgresos.SQL.Clear ;

              zQPEgresos.SQL.Add('select t.* from con_tesoreriapegresos t ' +
                             'INNER JOIN con_catalogodeegresos c On (t.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" ) ' +
                             'Where t.dIdFecha = :fecha and t.idorganizacion =:organizacion Order by t.sIdEgreso') ;
              zQPEgresos.Params.ParamByName('fecha').Value        := zQCatalogodeEgresos.FieldValues['dIdFecha'] ;
              zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
              zQPEgresos.Open ;
              if zQPEgresos.RecordCount>0 then
              begin
                MiPagina := tTabSheet.Create(pgEgresos) ;
                with MiPagina do
                begin
                    PageControl := pgEgresos;
                    Caption     := DateToStr(zQCatalogodeEgresos.FieldValues['dIdFecha']) ;
                end;
              end;
               zQCatalogodeEgresos.Next;
            end ;
            if pgEgresos.PageCount>0 then
            begin
            pgEgresos.ActivePageIndex := 0 ;
            PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;

            zQPEgresos.Active := False ;
            zQPEgresos.SQL.Clear ;

            zQPEgresos.SQL.Add('select t.* from con_tesoreriapegresos t ' +
                             'INNER JOIN con_catalogodeegresos c On (t.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" and c.sIdGrupo like :Egreso ) ' +
                             'Where t.dIdFecha = :Fecha and t.idorganizacion =:organizacion Order by t.sIdEgreso') ;
            zQPEgresos.Params.ParamByName('Egreso').DataType    := ftString ;
            if cbxGrupoEgresos.Text = 'TODOS' then
               zQPEgresos.Params.ParamByName('Egreso').Value    := '%'
            else
               zQPEgresos.Params.ParamByName('Egreso').Value    := zQGrupodeegresos.FieldValues['sIdGrupo'];
            zQPEgresos.Params.ParamByName('fecha').DataType     := ftDate ;
            zQPEgresos.Params.ParamByName('fecha').Value        := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
            zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPEgresos.Open ;

            zQPagado.Active := False ;
            zQPagado.SQL.Clear ;
            zQPagado.SQL.Add('select sum(t.dImporte) as dTotal from con_tesoreriapegresos t ' +
                             'INNER JOIN con_catalogodeegresos c On (t.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" and c.sIdGrupo like :Egreso ) ' +
                             'Where t.dIdFecha = :Fecha and t.idorganizacion =:organizacion group by t.dIdFecha') ;
            zQPagado.Params.ParamByName('Egreso').DataType    := ftString ;
            if cbxGrupoEgresos.Text = 'TODOS' then
               zQPagado.Params.ParamByName('Egreso').Value    := '%'
            else
               zQPagado.Params.ParamByName('Egreso').Value    := zQGrupodeegresos.FieldValues['sIdGrupo'];
            zQPagado.Params.ParamByName('fecha').DataType     := ftDate ;
            zQPagado.Params.ParamByName('fecha').Value        := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
            zQPagado.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPagado.Open ;
            if zQPagado.RecordCount > 0 then
                tMonto.Value := zQPagado.FieldValues['dTotal'] ;
        end
        else begin
          //GridConceptos.Parent := pgEgresos ;
          zQPEgresos.Active    := False;
          zQPagado.Active      := False ;
        end;
        end;
    end;
end;

procedure Tfrm_ConsultadeGastos_Empresa.cbxGrupoEgresosClick(Sender: TObject);
begin
    if zQCatalogodeEgresos.RecordCount > 0 then
      btnReferencia.Click
end;

procedure Tfrm_ConsultadeGastos_Empresa.DetalledeEgresos1Click(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    sParamQuery := 'select te.sIdEgreso, te.sTipoEgreso, substr(e.mDescripcion, 1, 100) as sDescripcion, te.mDescripcion, te.dImporte ' +
                  'from con_tesoreriapegresos te inner join con_catalogodeegresos e on (te.sIdEgreso = e.sIdEgreso) ' +
                  'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF and idorganizacion =:organizacion Order By te.sIdEgreso' ;
    sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    sParamTipo := 'Simple' ;
    procReporteGasto ;
end;

procedure Tfrm_ConsultadeGastos_Empresa.DetalledeEgresosx1Click(Sender: TObject);
begin
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    if rbTipo.Checked then
    begin
        dParamFechaI := tdFechaInicio.Date ;
        dParamFechaF := tdFechaFinal.Date ;
        sParamEgreso := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
        sParamQuery := 'select dIdFecha, sIdProveedor as sIdEgreso, sTipoEgreso, sRazonSocial as sDescripcion, mDescripcion, dImporte as dImporte from con_tesoreriapegresos ' +
                      'where dIdFecha >= :FechaI and dIdFecha <= :FechaF And sIdEgreso = :Egreso and idorganizacion =:organizacion Order By sTipoEgreso, sIdProveedor' ;
        sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) + ' << ' + sParamEgreso + ' >>' ;
        sParamTipo := 'Periodo2' ;
    end
    else
    begin
        sParamEgreso := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
        dParamFechaI := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
        dParamFechaF := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
        sParamQuery := 'select dIdFecha, sIdProveedor as sIdEgreso, sTipoEgreso, sRazonSocial as sDescripcion, mDescripcion, dImporte as dImporte from con_tesoreriapegresos ' +
                      'where dIdFecha >= :FechaI and dIdFecha <= :FechaF and idorganizacion =:organizacion Order By sTipoEgreso, sIdProveedor' ;
        sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) ;
        sParamTipo := 'Periodo22' ;
    end;
    procReporteGasto ;
end;

procedure Tfrm_ConsultadeGastos_Empresa.DetalledeEgresosxCargo1Click(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    sParamQuery := 'select dIdFecha, sIdProveedor as sIdEgreso, sTipoEgreso, sRazonSocial as sDescripcion, mDescripcion, dImporte from con_tesoreriapegresos ' +
                  'where dIdFecha >= :FechaI and dIdFecha <= :FechaF and idorganizacion =:organizacion Order By sTipoEgreso, sIdProveedor, dIdFecha ' ;
    sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    sParamTipo := 'Periodo1' ;
    procReporteGasto ;
end;

procedure Tfrm_ConsultadeGastos_Empresa.DetalledeEgresosxFecha1Click(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    sParamQuery := 'select dIdFecha, sIdProveedor as sIdEgreso, sTipoEgreso, sRazonSocial as sDescripcion, mDescripcion, dImporte ' +
                   'from con_tesoreriapegresos ' +
                  'where dIdFecha >= :FechaI and dIdFecha <= :FechaF and idorganizacion =:organizacion Order By dIdFecha, sTipoEgreso, sIdProveedor ' ;
    sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    sParamTipo := 'Periodo4' ;
    procReporteGasto ;
end;

procedure Tfrm_ConsultadeGastos_Empresa.EditarCaratuladeEgreso1Click(Sender: TObject);
begin
    dParamFecha := zQPEgresos.FieldValues['dIdFecha'] ;
    iParamFolio := zQPEgresos.FieldValues['iIdFolio'] ;
    Application.CreateForm(Tfrm_EditEgresos, frm_EditEgresos);
    frm_EditEgresos.ShowModal;
end;

procedure Tfrm_ConsultadeGastos_Empresa.Egresos1PeriodoClick(Sender: TObject);
begin
  iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
  rptEgresos ( zQPEgresos.FieldValues['dIdFecha'] , zQPEgresos.FieldValues['dIdFecha']  )
end;

procedure Tfrm_ConsultadeGastos_Empresa.Egresos2PeriodoClick(Sender: TObject);
begin
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    rptEgresosxProveedor ( zQPEgresos.FieldValues['dIdFecha'] , zQPEgresos.FieldValues['dIdFecha'] )
end;

procedure Tfrm_ConsultadeGastos_Empresa.Egresos3PeriodoClick(Sender: TObject);
begin
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    rptEgresosxTipoMovimiento ( zQPEgresos.FieldValues['dIdFecha']  , zQPEgresos.FieldValues['dIdFecha']  )
end;

procedure Tfrm_ConsultadeGastos_Empresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_ConsultadeGastos_Empresa.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_ConsultadeGastos_Empresa.FormShow(Sender: TObject);
Var
    MiPagina  : tTabSheet ;
    mes, dia, año :Word;
    primerdia : tdatetime;
    frmSetupTmp: TfrmSetup;
begin
    frmSetupTmp := TfrmSetup.Create(self);
    frmSetupTmp.configuracion.Active := False;
    frmSetupTmp.configuracion.Params.ParamByName('contrato').DataType := ftString;
    frmSetupTmp.configuracion.Params.ParamByName('contrato').Value := global_contrato;
    frmSetupTmp.configuracion.Open;
    frmSetupTmp.Close;
    tdFechaInicio.Date := Date ;
    decodedate(tdFechaInicio.Date, año, mes, dia);
    primerdia := encodeDate(año, mes, 1);
    tdFechaInicio.Date:= primerdia;

    tdFechaFinal.Date := Date ;
    rbTipo.Checked := True ;


    zQGrupodeEgresos.Active := False;
    zQGrupodeEgresos.Open;
    zQGrupodeEgresos.RecNo:=2;
    cbxGrupoEgresos.KeyValue :=zQGrupodeEgresos.FieldByName('sIdGrupo').AsString;


    grComentarios.Caption := 'Descripcion del Evento' ;
    zQCatalogodeEgresos.Active := False ;
    zQCatalogodeEgresos.SQL.Clear ;
    zQCatalogodeEgresos.SQL.Add('SELECT sIdEgreso, mDescripcion ') ;
    zQCatalogodeEgresos.SQL.Add('FROM con_catalogodeegresos ') ;
    zQCatalogodeEgresos.SQL.Add('WHERE sIdGrupo = :Grupo') ;
    zQCatalogodeEgresos.SQL.Add('ORDER BY sIdEgreso;') ;
    zQCatalogodeEgresos.Params.ParamByName('Grupo').AsString := zQGrupodeEgresos.FieldByName('sIdGrupo').AsString;
    zQCatalogodeEgresos.Open ;

    if zqCatalogodeEgresos.RecordCount > 0 then
    begin
        while NOT zQCatalogodeEgresos.Eof do
        begin
            zQPEgresos.Active := False ;
            zQPEgresos.SQL.Clear ;
            zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha >= :FechaI And dIdFecha <= :FechaF ' +
                             'And sIdEgreso = :Egreso and idorganizacion =:organizacion order by sIdEgreso') ;
            zQPEgresos.Params.ParamByName('Egreso').Value       := zQCatalogodeEgresos.FieldValues['sIdEgreso'];
            zQPEgresos.Params.ParamByName('fechaI').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
            zQPEgresos.Params.ParamByName('fechaF').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
            zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPEgresos.Open ;
            if zQPEgresos.RecordCount>0 then
            begin
              MiPagina := tTabSheet.Create(pgEgresos) ;
              with MiPagina do
              begin
                  PageControl := pgEgresos;
                  Caption     := zQCatalogodeEgresos.FieldValues['sIdEgreso'] ;
              end;
            end;
            zQCatalogodeEgresos.Next
        end;

        if pgEgresos.PageCount>0 then
        begin
            pgEgresos.ActivePageIndex := 0 ;
            PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;
            grComentarios.Caption := zQCatalogodeEgresos.FieldValues['mDescripcion'] ;

            zQPEgresos.Active := False ;
            zQPEgresos.SQL.Clear ;
            zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha >= :FechaI And dIdFecha <= :FechaF And sIdEgreso = :Egreso and idorganizacion =:organizacion order by sIdEgreso') ;
            zQPEgresos.Params.ParamByName('Egreso').DataType    := ftString ;
            zQPEgresos.Params.ParamByName('Egreso').Value       := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            zQPEgresos.Params.ParamByName('fechaI').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
            zQPEgresos.Params.ParamByName('fechaF').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
            zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            EgresoPrueba := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            Label5.Caption:= EgresoPrueba;
            zQPEgresos.Open ;
        end;
    end ;
    self.Caption := 'Consulta de Gastos ['+ global_contrato +']';
    tdFechaInicio.SetFocus
end;

procedure Tfrm_ConsultadeGastos_Empresa.GraficaporDepartamento1Click(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    sParamQuery := 'select sIdProveedor as sIdEgreso, sRazonSocial as sDescripcion, sum(dImporte) as dImporte from con_tesoreriapegresos ' +
                  'where dIdFecha >= :FechaI and dIdFecha <= :FechaF and idorganizacion =:organizacion Group By sIdProveedor' ;
    sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    sParamTipo := 'Periodo' ;
    Application.CreateForm(Tfrm_Grafica, frm_Grafica);
    frm_Grafica.Show;
end;

procedure Tfrm_ConsultadeGastos_Empresa.GraficarConceptoSeleccionado1Click(
  Sender: TObject);
begin
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    if rbTipo.Checked then
    begin
        dParamFechaI := tdFechaInicio.Date ;
        dParamFechaF := tdFechaFinal.Date ;
        sParamEgreso := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
        sParamQuery := 'select sIdProveedor as sIdEgreso, sRazonSocial as sDescripcion, sum(dImporte) as dImporte from con_tesoreriapegresos ' +
                      'where dIdFecha >= :FechaI and dIdFecha <= :FechaF And sIdEgreso = :Egreso and idorganizacion =:organizacion Group By sIdProveedor' ;
        sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) + ' << ' + sParamEgreso + ' >>' ;
        sParamTipo := 'Periodo1' ;
    end
    else
    begin
        dParamFechaI := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
        dParamFechaF := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
        sParamQuery := 'select sIdProveedor as sIdEgreso, sRazonSocial as sDescripcion, sum(dImporte) as dImporte from con_tesoreriapegresos ' +
                      'where dIdFecha >= :FechaI and dIdFecha <= :FechaF and idorganizacion =:organizacion Group By sIdProveedor' ;
        sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) ;
        sParamTipo := 'Periodo' ;

    end;
    Application.CreateForm(Tfrm_Grafica, frm_Grafica);
    frm_Grafica.Show;
end;

procedure Tfrm_ConsultadeGastos_Empresa.GraficarPorFechaImporte1Click(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    sParamQuery := 'select te.dIdFecha, substr(e.mDescripcion, 1, 100) as sDescripcion, sum(te.dImporte) as dImporte ' +
                  'from con_tesoreriapegresos te inner join con_catalogodeegresos e on (te.sIdEgreso = e.sIdEgreso) ' +
                  'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF and e.legresoReal ="Si" and te.idorganizacion =:organizacion Group By te.dIdFecha' ;
    sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    sParamTipo := 'Periodo' ;
    Application.CreateForm(Tfrm_Graficabarras, frm_Graficabarras);
    frm_Graficabarras.Show;
end;

procedure Tfrm_ConsultadeGastos_Empresa.GridConceptosDblClick(Sender: TObject);
begin
    if zQPEgresos.RecordCount > 0 then
    begin
        dParamFecha       := zQPEgresos.FieldValues['dIdFecha'] ;
        iParamFolio       := zQPEgresos.FieldValues['iIdFolio'] ;
        sParamProveedor   := zQPEgresos.FieldValues['sIdProveedor'] ;
        dParamMonto       := 0 ;
        sParamComprobado  := 'Si' ;
        sModulo           := Name ;
        Application.CreateForm(Tfrm_ReferenciarChequeComprobado, frm_ReferenciarChequeComprobado);
        frm_ReferenciarChequeComprobado.Position := poDesktopCenter;
        frm_ReferenciarChequeComprobado.GridConceptos.ReadOnly := True ;
        frm_ReferenciarChequeComprobado.Show;
    end
end;

procedure Tfrm_ConsultadeGastos_Empresa.GridConceptosTitleClick(Column: TColumn);
begin
    //UtGrid:=TicdbGrid.create(GridConceptos);
    //UtGrid.DbGridTitleClick(Column);
    //utGrid.Destroy;
end;

procedure Tfrm_ConsultadeGastos_Empresa.mnGraficaClick(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    sParamQuery := 'select te.sIdEgreso, substr(e.mDescripcion, 1, 100) as sDescripcion, sum(te.dImporte) as dImporte ' +
                  'from con_tesoreriapegresos te inner join con_catalogodeegresos e on (te.sIdEgreso = e.sIdEgreso) ' +
                  'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF and te.idorganizacion =:organizacion Group By te.sIdEgreso' ;
    sParamTitle := '<<Grafica>> Detalle de Egresos del dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    sParamTipo := 'Periodo' ;
    Application.CreateForm(Tfrm_Grafica, frm_Grafica);
    frm_Grafica.Show;
end;

procedure Tfrm_ConsultadeGastos_Empresa.mnImprimirComprobacionClick(Sender: TObject);
begin
    iParamOrganizacion := connection.contrato.FieldByName('idorganizacion').AsInteger;
    rptEgresoxFolio ( zQPEgresos.FieldValues['dIdFecha']  , zQPEgresos.FieldValues['iIdFolio']  )
end;

procedure Tfrm_ConsultadeGastos_Empresa.pgEgresosChange(Sender: TObject);
begin
    tMonto.Value := 0 ;
    if rbTipo.Checked then
    begin
        if zqCatalogodeEgresos.RecordCount > 0 then
        begin
            zQPEgresos.Active := False ;
            zQPEgresos.SQL.Clear ;
            zQPEgresos.SQL.Add('select * from con_tesoreriapegresos where dIdFecha >= :FechaI And dIdFecha <= :FechaF And sIdEgreso = :Egreso and idorganizacion =:organizacion order by sIdEgreso') ;
            zQPEgresos.Params.ParamByName('Egreso').DataType    := ftString ;
            zQPEgresos.Params.ParamByName('Egreso').Value       := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            zQPEgresos.Params.ParamByName('fechaI').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
            zQPEgresos.Params.ParamByName('fechaF').DataType    := ftDate ;
            zQPEgresos.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
            zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPEgresos.Open ;
            EgresoPrueba:= PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            zQPagado.Active := False ;
            zQPagado.SQL.Clear ;
            zQPagado.SQL.Add('select sum(dImporte) as dTotal from con_tesoreriapegresos ' +
                             'where dIdFecha >= :FechaI And dIdFecha <= :FechaF And sIdEgreso = :Egreso and idorganizacion =:organizacion Group by sIdEgreso') ;
            zQPagado.Params.ParamByName('Egreso').DataType    := ftString ;
            zQPagado.Params.ParamByName('Egreso').Value       := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
            zQPagado.Params.ParamByName('fechaI').DataType    := ftDate ;
            zQPagado.Params.ParamByName('fechaI').Value       := tdFechaInicio.Date ;
            zQPagado.Params.ParamByName('fechaF').DataType    := ftDate ;
            zQPagado.Params.ParamByName('fechaF').Value       := tdFechaFinal.Date ;
            zQPagado.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPagado.Open ;
            if zQPagado.RecordCount > 0 then
                tMonto.Value := zQPagado.FieldValues['dTotal'] ;
        end ;
    end
    else
    begin
        if zqCatalogodeEgresos.RecordCount > 0 then
        begin
            zQPEgresos.Active := False ;
            zQPEgresos.SQL.Clear ;
            zQPEgresos.SQL.Add('select t.* from con_tesoreriapegresos t ' +
                             'INNER JOIN con_catalogodeegresos c On (t.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" and c.sIdGrupo like :Egreso ) ' +
                             'Where t.dIdFecha = :Fecha and t.idorganizacion =:organizacion Order by t.sIdEgreso') ;
            zQPEgresos.Params.ParamByName('Egreso').DataType    := ftString ;
            if cbxGrupoEgresos.Text = 'TODOS' then
               zQPEgresos.Params.ParamByName('Egreso').Value    := '%'
            else
               zQPEgresos.Params.ParamByName('Egreso').Value    := zQGrupodeegresos.FieldValues['sIdGrupo'];
            zQPEgresos.Params.ParamByName('fecha').DataType     := ftDate ;
            zQPEgresos.Params.ParamByName('fecha').Value        := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
            zQPEgresos.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPEgresos.Open ;

            zQPagado.Active := False ;
            zQPagado.SQL.Clear ;
                zQPagado.SQL.Add('select sum(t.dImporte) as dTotal from con_tesoreriapegresos t ' +
                             'INNER JOIN con_catalogodeegresos c On (t.sIdEgreso=c.sIdEgreso and c.lEgresoReal="Si" and c.sIdGrupo like :Egreso ) ' +
                             'Where t.dIdFecha = :Fecha and t.idorganizacion =:organizacion group by t.dIdFecha') ;
            if cbxGrupoEgresos.Text = 'TODOS' then
               zQPagado.Params.ParamByName('Egreso').Value    := '%'
            else
               zQPagado.Params.ParamByName('Egreso').Value    := zQGrupodeegresos.FieldValues['sIdGrupo'];
            zQPagado.Params.ParamByName('fecha').DataType     := ftDate ;
            zQPagado.Params.ParamByName('fecha').Value        := StrToDate(PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption) ;
            zQPagado.Params.ParamByName('organizacion').Value := connection.contrato.FieldByName('idorganizacion').AsInteger;
            zQPagado.Open ;
            if zQPagado.RecordCount > 0 then
                tMonto.Value := zQPagado.FieldValues['dTotal'] ;
        end ;
    end;

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
    Label5.Caption:= EgresoPrueba;
    PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;
    //GridConceptos.Parent :=  PgEgresos.Pages[pgEgresos.ActivePageIndex] ;
    //grTotales.Parent :=  PgEgresos.Pages[pgEgresos.ActivePageIndex] ;
end;

procedure Tfrm_ConsultadeGastos_Empresa.pgEgresosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    if pgEgresos.ActivePageIndex >= 0 then
        PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := False ;
end;

procedure Tfrm_ConsultadeGastos_Empresa.rbFechaClick(Sender: TObject);
begin
if zQCatalogodeEgresos.RecordCount > 0 then
      btnReferencia.Click
end;

procedure Tfrm_ConsultadeGastos_Empresa.rbTipoClick(Sender: TObject);
begin
if zQCatalogodeEgresos.RecordCount > 0 then
      btnReferencia.Click
end;

procedure Tfrm_ConsultadeGastos_Empresa.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        rbTipo.SetFocus
end;

procedure Tfrm_ConsultadeGastos_Empresa.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        tdFechaFinal.SetFocus
end;

end.
