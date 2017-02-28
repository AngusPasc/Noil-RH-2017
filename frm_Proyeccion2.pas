unit frm_Proyeccion2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, DB, ADODB, frm_Connection, Grids,
  DBGrids, RXDBCtrl, Global, Mask, Buttons,  frxClass,
  frxDBSet, RxMemDS, ImgList, ZAbstractRODataset, ZDataset, rxToolEdit,
  rxCurrEdit, udbgrid, UFunctionsGHH, UnitTBotonesPermisos, DBDateTimePicker,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls;

type
  TfrmProyeccion2 = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    PgProyeccion: TPageControl;
    PartidasAnexo: TTabSheet;
    pgPersonal: TTabSheet;
    pgEquipo: TTabSheet;
    ds_Anexo: TDataSource;
    tmDescripcion: TDBMemo;
    ds_recursospersonal: TDataSource;
    ds_recursosequipo: TDataSource;
    dbRecursosPersonal: TfrxDBDataset;
    dbRecursosEquipo: TfrxDBDataset;
    dbAnexo: TfrxDBDataset;
    dbGrupos: TfrxDBDataset;
    rxProyeccion: TRxMemoryData;
    rxProyeccionsContrato: TStringField;
    rxProyeccionsNumeroActividad: TStringField;
    rxProyeccionmDescripcion: TMemoField;
    rxProyeccionsMedida: TStringField;
    rxProyecciondCantidadAnexo: TFloatField;
    rxProyecciondVentaMN: TCurrencyField;
    rxProyecciondVentaDLL: TFloatField;
    rxProyecciondProyeccion: TFloatField;
    rxProyecciondGenerado: TFloatField;
    rxProyecciondAnexoDT: TFloatField;
    rxProyecciondMontoMN: TCurrencyField;
    rxProyecciondMontoDLL: TFloatField;
    rxProyecciondPonderado: TFloatField;
    rxProyecciondDT: TFloatField;
    frxProyeccion: TfrxReport;
    Anexo: TZReadOnlyQuery;
    Proyecciontotal: TZReadOnlyQuery;
    RecursosPersonal: TZReadOnlyQuery;
    RecursosEquipo: TZReadOnlyQuery;
    grupos: TZReadOnlyQuery;
    adMes: TZReadOnlyQuery;
    OrdenesdeTrabajo: TZReadOnlyQuery;
    rxProyeccionsWBs: TStringField;
    pgMaterial: TTabSheet;
    RecursosAnexo: TZReadOnlyQuery;
    ds_recursosanexo: TDataSource;
    dbRecursosAnexo: TfrxDBDataset;
    rxAnexo: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_personal: TcxGrid;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    grid_equipos: TcxGrid;
    cxgrdbtblvwGrid1DBTableView3: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView3Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column4: TcxGridDBColumn;
    cxgrdlvlGrid1Level3: TcxGridLevel;
    grid_material: TcxGrid;
    cxgrdbtblvwGrid1DBTableView4: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView4Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column3: TcxGridDBColumn;
    cxgrdlvlGrid1Level4: TcxGridLevel;
    pnl1: TPanel;
    grpProyecta: TGroupBox;
    ts1: TLabel;
    ts2: TLabel;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    btnProyecta: TBitBtn;
    btnSalir: TBitBtn;
    btnPrinter: TBitBtn;
    grp1: TGroupBox;
    ts3: TLabel;
    ts4: TLabel;
    dTotalMN: TCurrencyEdit;
    dTotalDLL: TCurrencyEdit;
    chkDetalle: TCheckBox;
    pnl2: TPanel;
    treeObras: TTreeView;
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProyectaClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure rxAnexoddEnter(Sender: TObject);
    procedure AnexoAfterScroll(DataSet: TDataSet);
    procedure btnPrinterClick(Sender: TObject);
    procedure frxProyeccionGetValue(const VarName: String;
      var Value: Variant);
    procedure frxProyeccion2GetValue(const VarName: String;
      var Value: Variant);
    procedure treeObrasClick(Sender: TObject);
    procedure treeObrasEnter(Sender: TObject);
    procedure treeObrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure treeObrasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure refresh ;
    procedure rxAnexoddMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridPersonalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rxAnexoddMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridPersonalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridEquiposMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridEquiposMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rxAnexoddTitleClick(Column: TColumn);
    procedure GridPersonalTitleClick(Column: TColumn);
    procedure GridEquiposTitleClick(Column: TColumn);
    procedure rxProyeccionAfterScroll(DataSet: TDataSet);
    procedure dTotalMNKeyPress(Sender: TObject; var Key: Char);
    procedure dTotalDLLKeyPress(Sender: TObject; var Key: Char);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProyeccion2: TfrmProyeccion2;
  sConvenios    : Array [1..10] Of String ;
  MyTreeNode2: TTreeNode;
  //utgrid:ticdbgrid;
  //utgrid2:ticdbgrid;
  //utgrid3:ticdbgrid;
  BotonPermiso: TBotonesPermisos;

implementation

{$R *.dfm}

procedure TfrmProyeccion2.tdFechaInicioEnter(Sender: TObject);
begin
    btnPrinter.Enabled := False ;
    RecursosPersonal.Active := False ;
    RecursosEquipo.Active := False ;
    Anexo.Active := False ;
    tdFechaInicio.Color := global_color_entradaERP;
end;

procedure TfrmProyeccion2.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salidaERP;
end;

procedure TfrmProyeccion2.tdFechaInicioKeyPress(Sender: TObject;
var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus 
end;

procedure TfrmProyeccion2.tdFechaFinalEnter(Sender: TObject);
begin
    btnPrinter.Enabled := False ;
    RecursosPersonal.Active := False ;
    RecursosEquipo.Active := False ;
    Anexo.Active := False ;
    tdFechaFinal.Color := global_color_entradaERP;
end;

procedure TfrmProyeccion2.tdFechaFinalExit(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_salidaERP;
end;

procedure TfrmProyeccion2.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnProyecta.SetFocus
end;

procedure TfrmProyeccion2.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'ProyecciondeAct');
  BotonPermiso.permisosBotones2(nil,nil,nil,btnPrinter);

  //UtGrid:=TicdbGrid.create(rxanexo);
  //UtGrid2:=TicdbGrid.create(gridpersonal);
  //UtGrid3:=TicdbGrid.create(gridequipos);
  tdFechaInicio.Date := Date ;
  tdFechaFinal.Date := Date ;
  chkDetalle.Enabled := True ;
  with TreeObras.Items do
  begin
    Clear;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select * From activos Order By sIdActivo') ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
         MyTreeNode2 := Add(nil,Connection.qryBusca.FieldValues['sDescripcion'] );
         Connection.qryBusca2.Active := False ;
         Connection.qryBusca2.SQL.Clear ;
         Connection.qryBusca2.SQL.Add('select * From contratos c INNER JOIN contratosxusuario u ON ' +
                                           '(c.sContrato = u.sContrato And u.sIdUsuario = :Usuario) ' +
                                           'Where c.sIdActivo = :Activo And c.lStatus = "Activo" Order By c.sContrato') ;
         Connection.qryBusca2.Params.ParamByName('Activo').DataType := ftString ;
         Connection.qryBusca2.Params.ParamByName('Activo').Value := Connection.qryBusca.FieldValues['sIdActivo'] ;
         Connection.qryBusca2.Params.ParamByName('Usuario').DataType := ftString ;
         Connection.qryBusca2.Params.ParamByName('Usuario').Value := global_usuario ;
         Connection.qryBusca2.Open ;
         While NOT Connection.qryBusca2.Eof Do
         Begin
             AddChild(MyTreeNode2,Connection.qryBusca2.FieldValues['sContrato']);
             Connection.qryBusca2.Next
         End ;
         Connection.qryBusca.Next
     End
  End ;
  TreeObras.SetFocus
end;

procedure TfrmProyeccion2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  BotonPermiso.Free;
  action := cafree ;
  //utgrid.destroy;
  //utgrid2.destroy;
  //utgrid3.destroy;
end;

procedure TfrmProyeccion2.btnProyectaClick(Sender: TObject);
Var
    dProyectado : Real ;
    dGenerado   : Real ;
begin
     //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicio' );
   tdFechaFinal.SetFocus;
   exit;
   end;

    frmProyeccion2.Cursor := crHourGlass ;
    If TreeObras.Selected.Text <> '' Then
    Begin
        Grupos.Active := False ;
        Grupos.Params.ParamByName('contrato').DataType := ftString ;
        Grupos.Params.ParamByName('contrato').Value := TreeObras.Selected.Text ;
        Grupos.Open ;
        If Grupos.RecordCount > 0 Then
        Begin
            btnPrinter.Enabled := True ;
            BotonPermiso.permisosBotones2(nil,nil,nil,btnPrinter);
            If rxProyeccion.RecordCount > 0 Then
                rxProyeccion.EmptyTable ;

            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select Sum(e.dCantidad) as dGenerado From estimacionxpartida e ' +
                                             'INNER JOIN estimaciones e1 ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e1.dFechaFinal <= :Final ) ' +
                                             'Where e1.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad' ) ;

            Anexo.Active := False ;
            Anexo.Params.ParamByName('Contrato').DataType := ftString ;
            Anexo.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Anexo.Params.ParamByName('Convenio').DataType := ftString ;
            Anexo.Params.ParamByName('Convenio').Value := Grupos.FieldValues['sIdConvenio']  ;
            Anexo.Params.ParamByName('FechaI').DataType := ftDate ;
            Anexo.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
            Anexo.Params.ParamByName('FechaF').DataType := ftDate ;
            Anexo.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            Anexo.Open ;

            RecursosPersonal.Active := False ;
            RecursosPersonal.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            RecursosPersonal.Params.ParamByName('Convenio').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('Convenio').Value := Grupos.FieldValues['sIdConvenio']  ;
            RecursosPersonal.Params.ParamByName('FechaI').DataType := ftDate ;
            RecursosPersonal.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
            RecursosPersonal.Params.ParamByName('FechaF').DataType := ftDate ;
            RecursosPersonal.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            RecursosPersonal.Open ;

            RecursosEquipo.Active := False ;
            RecursosEquipo.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            RecursosEquipo.Params.ParamByName('Convenio').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('Convenio').Value := Grupos.FieldValues['sIdConvenio']  ;
            RecursosEquipo.Params.ParamByName('FechaI').DataType := ftDate ;
            RecursosEquipo.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
            RecursosEquipo.Params.ParamByName('FechaF').DataType := ftDate ;
            RecursosEquipo.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            RecursosEquipo.Open ;

            RecursosAnexo.Active := False ;
            RecursosAnexo.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosAnexo.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            RecursosAnexo.Params.ParamByName('Convenio').DataType := ftString ;
            RecursosAnexo.Params.ParamByName('Convenio').Value := Grupos.FieldValues['sIdConvenio']  ;
            RecursosAnexo.Params.ParamByName('FechaI').DataType := ftDate ;
            RecursosAnexo.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
            RecursosAnexo.Params.ParamByName('FechaF').DataType := ftDate ;
            RecursosAnexo.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            RecursosAnexo.Open ;

            While NOT Anexo.Eof Do
            Begin
                Connection.qryBusca.Active := False ;
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                Connection.qryBusca.Params.ParamByName('Final').DataType := ftDate ;
                Connection.qryBusca.Params.ParamByName('Final').Value := tdFechaFinal.Date ;
                Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
                Connection.qryBusca.Params.ParamByName('Actividad').Value := Anexo.FieldValues['sNumeroActividad']  ;
                Connection.qryBusca.Open ;
                dGenerado := 0 ;
                dProyectado := 0 ;
                If Connection.qryBusca.RecordCount > 0 then
                    If Anexo.FieldValues['dCantidadInstalar'] > Connection.qryBusca.FieldValues['dGenerado'] Then
                    Begin
                        dProyectado := Anexo.FieldValues['dCantidadInstalar'] - Connection.qryBusca.FieldValues['dGenerado'] ;
                        dGenerado := Connection.qryBusca.FieldValues['dGenerado'] ;
                    End
                    Else
                        dProyectado := 0
                Else
                    dProyectado := Anexo.FieldValues['dCantidadInstalar'] ;

                rxProyeccion.Append ;
                rxProyeccion.FieldValues['sWbs'] := Anexo.FieldValues['sWbs'] ;
                rxProyeccion.FieldValues['sNumeroActividad'] := Anexo.FieldValues['sNumeroActividad'] ;
                rxProyeccion.FieldValues['mDescripcion'] := Anexo.FieldValues['mDescripcion'] ;
                rxProyeccion.FieldValues['sMedida'] := Anexo.FieldValues['sMedida'] ;
                rxProyeccion.FieldValues['dCantidadAnexo'] := Anexo.FieldValues['dCantidadAnexo'] ;
                rxProyeccion.FieldValues['dDT'] := Anexo.FieldValues['dCantidadInstalar'] ;
                rxProyeccion.FieldValues['dPonderado'] := Anexo.FieldValues['dPonderado'] ;
                rxProyeccion.FieldValues['dVentaMN'] := Anexo.FieldValues['dVentaMN'] ;
                rxProyeccion.FieldValues['dVentaDLL'] := Anexo.FieldValues['dVentaDLL'] ;
                rxProyeccion.FieldValues['dGenerado'] := dGenerado ;
                rxProyeccion.FieldValues['dProyeccion'] := dProyectado ;
                rxProyeccion.FieldValues['dMontoMN'] := dProyectado * Anexo.FieldValues['dVentaMN'] ;
                rxProyeccion.FieldValues['dMontoDLL'] := dProyectado * Anexo.FieldValues['dVentaDLL'] ;
                rxProyeccion.Post ;
                Anexo.Next
            End ;

            ProyeccionTotal.Active := False ;
            ProyeccionTotal.Params.ParamByName('Contrato').DataType := ftString ;
            ProyeccionTotal.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            ProyeccionTotal.Params.ParamByName('Convenio').DataType := ftString ;
            ProyeccionTotal.Params.ParamByName('Convenio').Value := Grupos.FieldValues['sIdConvenio'] ;
            ProyeccionTotal.Params.ParamByName('FechaI').DataType := ftDate ;
            ProyeccionTotal.Params.ParamByName('FechaI').Value := tdFechaInicio.Date ;
            ProyeccionTotal.Params.ParamByName('FechaF').DataType := ftDate ;
            ProyeccionTotal.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            ProyeccionTotal.Open ;

            dTotalMN.Value := 0 ;
            dTotalDLL.Value := 0 ;
            If ProyeccionTotal.RecordCount > 0 then
            Begin
                dTotalMN.Value := ProyeccionTotal.FieldValues['dTotalMN'] ;
                dTotalDLL.Value := ProyeccionTotal.FieldValues['dTotalDLL'] ;
            End ;
            PgProyeccion.ActivePageIndex := 0 ;
            rxAnexo.SetFocus
        End ;
        frmProyeccion2.Cursor := crDefault ;
    End
end;

procedure TfrmProyeccion2.btnSalirClick(Sender: TObject);
begin
    Close
end;

procedure TfrmProyeccion2.dTotalDLLKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
      dTotalMN.SetFocus
end;

procedure TfrmProyeccion2.dTotalMNKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      dTotalDLL.SetFocus
end;

procedure TfrmProyeccion2.rxAnexoddEnter(Sender: TObject);
begin  {
    If Anexo.Active = True Then
        If Anexo.RecordCount > 0 Then
        Begin
            RecursosPersonal.Active := False ;
            RecursosPersonal.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('Contrato').Value := Grupos.FieldValues['sContrato'] ;
            RecursosPersonal.Params.ParamByName('wbs').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('wbs').Value := rxProyeccion.FieldValues['sWbs'] ;
            RecursosPersonal.Open ;
            RecursosEquipo.Active := False ;
            RecursosEquipo.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('Contrato').Value := Grupos.FieldValues['sContrato'] ;
            RecursosEquipo.Params.ParamByName('wbs').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('wbs').Value := rxProyeccion.FieldValues['sWbs'] ;
            RecursosEquipo.Open ;
        End }
end;

procedure TfrmProyeccion2.rxAnexoddMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if (TcxGridDBTableView(rxanexo.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(rxanexo.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProyeccion2.rxAnexoddMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if (TcxGridDBTableView(rxanexo.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(rxanexo.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProyeccion2.rxAnexoddTitleClick(Column: TColumn);
begin
if (TcxGridDBTableView(rxanexo.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(rxanexo.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
    //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmProyeccion2.rxProyeccionAfterScroll(DataSet: TDataSet);
begin  {
        If Anexo.RecordCount > 0 Then
        Begin
            RecursosPersonal.Active := False ;
            RecursosPersonal.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('Contrato').Value := Grupos.FieldValues['sContrato'] ;
            RecursosPersonal.Params.ParamByName('wbs').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('wbs').Value := rxProyeccion.FieldValues['sWbs'] ;
            RecursosPersonal.Open ;
            RecursosEquipo.Active := False ;
            RecursosEquipo.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('Contrato').Value := Grupos.FieldValues['sContrato'] ;
            RecursosEquipo.Params.ParamByName('wbs').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('wbs').Value := rxProyeccion.FieldValues['sWbs'] ;
            RecursosEquipo.Open ;
        End   }
end;

procedure TfrmProyeccion2.AnexoAfterScroll(DataSet: TDataSet);
begin  {
        If Anexo.RecordCount > 0 Then
        Begin
            RecursosPersonal.Active := False ;
            RecursosPersonal.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('Contrato').Value := Grupos.FieldValues['sContrato'] ;
            RecursosPersonal.Params.ParamByName('wbs').DataType := ftString ;
            RecursosPersonal.Params.ParamByName('wbs').Value := Anexo.FieldValues['sWbs'] ;
            RecursosPersonal.Open ;
            RecursosEquipo.Active := False ;
            RecursosEquipo.Params.ParamByName('Contrato').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('Contrato').Value := Grupos.FieldValues['sContrato'] ;
            RecursosEquipo.Params.ParamByName('wbs').DataType := ftString ;
            RecursosEquipo.Params.ParamByName('wbs').Value := Anexo.FieldValues['sWbs'] ;
            RecursosEquipo.Open ;
        End  }
end;

procedure TfrmProyeccion2.btnPrinterClick(Sender: TObject);
begin
  If TreeObras.Selected.Text <> '' Then
  Begin
    case PgProyeccion.ActivePageIndex of
      0:
      begin
        if (rxProyeccion.Active) and (rxProyeccion.RecordCount > 0) then
        begin
          If chkDetalle.State = cbChecked Then
          Begin
            frxProyeccion.LoadFromFile (global_files + global_miReporte + '_proyectado.fr3') ;
            frxProyeccion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
          end
          Else
          Begin
            frxProyeccion.LoadFromFile (global_files + global_miReporte + '_dtGeneradoxMes.fr3') ;
            frxProyeccion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
          end ;
        end
        else
        begin
          ShowMessage('No hay datos para imprimir');
        end;
      end;
      1:
      begin
        if (RecursosPersonal.Active) and (RecursosPersonal.RecordCount > 0) then
        begin
          frxProyeccion.LoadFromFile (global_files + global_miReporte + '_ProyeccionPersonal.fr3') ;
          frxProyeccion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        end
        else
        begin
          ShowMessage('No hay datos para imprimir');
        end;
      end;
      2:
      begin
        if (RecursosEquipo.Active) and (RecursosEquipo.RecordCount > 0) then
        begin
          frxProyeccion.LoadFromFile (global_files + global_miReporte + '_ProyeccionEquipo.fr3') ;
          frxProyeccion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        end
        else
        begin
          ShowMessage('No hay datos para imprimir');
        end;
      end;
      3:
      begin
        if (RecursosAnexo.Active) and (RecursosAnexo.RecordCount > 0) then
        begin
          frxProyeccion.LoadFromFile (global_files + global_miReporte + '_ProyeccionMaterial.fr3') ;
          frxProyeccion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        end
        else
        begin
          ShowMessage('No hay datos para imprimir');
        end;
      end;
    end ;
  end;
end;

procedure TfrmProyeccion2.frxProyeccionGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := 'Del ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaInicio.Date) + ' al ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaFinal.Date);
  If CompareText(VarName, 'INICIO') = 0 then
      Value := datetostr(tdFechaInicio.Date) ;
  If CompareText(VarName, 'TERMINO') = 0 then
      Value := datetostr(tdFechaFinal.Date) ;
  If CompareText(VarName, 'TOTAL_MN') = 0 then
      Value := dTotalMN.Value ;
  If CompareText(VarName, 'TOTAL_DLL') = 0 then
      Value := dTotalDLL.Value ;
end;

procedure TfrmProyeccion2.GridEquiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if (TcxGridDBTableView(grid_equipos.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(grid_equipos.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
    //UtGrid3.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProyeccion2.GridEquiposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if (TcxGridDBTableView(grid_equipos.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(grid_equipos.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
  //UtGrid3.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProyeccion2.GridEquiposTitleClick(Column: TColumn);
begin
if (TcxGridDBTableView(grid_equipos.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(grid_equipos.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
   //UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmProyeccion2.GridPersonalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if (TcxGridDBTableView(grid_personal.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(grid_personal.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
  //UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmProyeccion2.GridPersonalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if (TcxGridDBTableView(grid_personal.ActiveView).DataController.DataSource.DataSet.IsEmpty) or (TcxGridDBTableView(grid_personal.ActiveView).DataController.DataSource.DataSet.RecordCount<=0) then
exit;
  //UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmProyeccion2.GridPersonalTitleClick(Column: TColumn);
begin
if (TcxGridDBTableView(grid_personal.ActiveView).DataController.DataSource.DataSet.IsEmpty=false)  then
   //UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmProyeccion2.frxProyeccion2GetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := 'Del ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaInicio.Date) + ' al ' + FormatDateTime('d "de" mmmm "del" yyyy' , tdFechaFinal.Date);
  If CompareText(VarName, 'TOTAL_MN') = 0 then
      Value := dTotalMN.Value ;
  If CompareText(VarName, 'TOTAL_DLL') = 0 then
      Value := dTotalDLL.Value ;
end;

procedure TfrmProyeccion2.treeObrasClick(Sender: TObject);
begin
    refresh ;
end;

procedure TfrmProyeccion2.refresh ;
begin
    If TreeObras.Selected.Text <> '' then
        If TreeObras.Selected.getFirstChild = Nil Then
             Caption := 'Proyección de Ejecución de Obra del Contrato : ' + TreeObras.Selected.Text
end ;

procedure TfrmProyeccion2.treeObrasEnter(Sender: TObject);
begin
    btnPrinter.Enabled := False ;
    RecursosPersonal.Active := False ;
    RecursosEquipo.Active := False ;
    Anexo.Active := False ;
end;

procedure TfrmProyeccion2.treeObrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    refresh
end;

procedure TfrmProyeccion2.treeObrasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    refresh
end;

end.
