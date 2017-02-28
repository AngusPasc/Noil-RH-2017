unit frm_AvancesFinancieros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, DBCtrls, StdCtrls, Grids, DBGrids, DB, global,
  Buttons, Mask, ExtCtrls, frxClass, frxDBSet, RXCtrls, frxDMPExport,
  frxCross, ComCtrls, ImgList,  RXDBCtrl, jpeg,  Math, DateUtils,
  RxMemDS, TeEngine, Series, TeeProcs, Chart, DbChart, Newpanel, Menus,
  RXSpin, frxPreview, ZAbstractRODataset, ZDataset, masUtilerias,
  UnitTBotonesPermisos;

type
  TfrmAvancesFinancieros = class(TForm)
    rxGraficaProgramado: TRxMemoryData;
    StringField16: TStringField;
    rxGraficaProgramadodFecha: TDateField;
    FloatField4: TFloatField;
    rxGraficaFisico: TRxMemoryData;
    StringField14: TStringField;
    FloatField7: TFloatField;
    rxGraficaFisicodFecha: TDateField;
    rxGraficaFinanciero: TRxMemoryData;
    StringField2: TStringField;
    DateField2: TDateField;
    FloatField3: TFloatField;
    SaveSql: TSaveDialog;
    popGraphics: TPopupMenu;
    Exportar1: TMenuItem;
    pgAvances: TPageControl;
    TabSheet2: TTabSheet;
    grGeneral: tNewGroupBox;
    dbGraphics: TDBChart;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    chkSeries: TGroupBox;
    chkProgramado: TCheckBox;
    chkFisico: TCheckBox;
    chkFinanciero: TCheckBox;
    chkParametros: TGroupBox;
    chk3D: TCheckBox;
    chkLeyendas: TCheckBox;
    Series1: TFastLineSeries;
    Label1: TLabel;
    up3D: TUpDown;
    ti3D: TMaskEdit;
    chkEjes: TCheckBox;
    chkAdicionales: TCheckBox;
    TabSheet3: TTabSheet;
    grporConvenios: tNewGroupBox;
    dbGrapConvenios: TDBChart;
    FastLineSeries1: TFastLineSeries;
    FastLineSeries2: TFastLineSeries;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    chkConvenios3D: TCheckBox;
    chkConveniosLeyendas: TCheckBox;
    upConvenios3D: TUpDown;
    tiConvenios3D: TMaskEdit;
    chkConveniosEjes: TCheckBox;
    rxGraficaProgramado2: TRxMemoryData;
    StringField1: TStringField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    rxGraficaFisico2: TRxMemoryData;
    StringField3: TStringField;
    DateField3: TDateField;
    FloatField2: TFloatField;
    tsIdConvenio: TDBLookupComboBox;
    Label3: TLabel;
    popGraphics2: TPopupMenu;
    MenuItem1: TMenuItem;
    TreeObras: TTreeView;
    dsConvenios: TDataSource;
    Convenios: TZReadOnlyQuery;
    cnfGrafica: TZReadOnlyQuery;
    cnfGraficasContrato: TStringField;
    cnfGraficasNombre: TStringField;
    cnfGraficamDescripcion: TMemoField;
    cnfGraficadMontoMN: TFloatField;
    cnfGraficasIdConvenio: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure refresh ;
    procedure Exportar1Click(Sender: TObject);
    procedure chkProgramadoClick(Sender: TObject);
    procedure chkFisicoClick(Sender: TObject);
    procedure chkFinancieroClick(Sender: TObject);
    procedure chk3DClick(Sender: TObject);
    procedure chkLeyendasClick(Sender: TObject);
    procedure up3DChanging(Sender: TObject; var AllowChange: Boolean);
    procedure chkEjesClick(Sender: TObject);
    procedure chkAdicionalesClick(Sender: TObject);
    procedure chkConvenios3DClick(Sender: TObject);
    procedure chkConveniosLeyendasClick(Sender: TObject);
    procedure chkConveniosEjesClick(Sender: TObject);
    procedure upConvenios3DChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure ConveniosxContratoAfterScroll(DataSet: TDataSet);
    procedure MenuItem1Click(Sender: TObject);
    procedure TreeObrasClick(Sender: TObject);
    procedure ConveniosAfterScroll(DataSet: TDataSet);
    procedure TreeObrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeObrasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAvancesFinancieros: TfrmAvancesFinancieros;
  sResidente,
  sAdministrador, sSupervisor : String ;
  Mes       : Integer ;
  sFecha    : String ;
  sConvenio : String ;
  dMontoContrato : Currency ;
  MyTreeNode2: TTreeNode;
  BotonPermiso: TBotonesPermisos;
implementation

uses UnitExcepciones;

{$R *.dfm}

procedure TfrmAvancesFinancieros.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'ChartPro');
  if not BotonPermiso.imprimir then
   Begin
     Exportar1.Enabled:=False;
     MenuItem1.Enabled:=False;
   End;
  with TreeObras.Items do
  begin
    Clear;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sIdActivo, sDescripcion From activos Order By sIdActivo') ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
         MyTreeNode2 := Add(nil,Connection.qryBusca.FieldValues['sDescripcion'] );
         Connection.qryBusca2.Active := False ;
         Connection.qryBusca2.SQL.Clear ;
         Connection.qryBusca2.SQL.Add('select c.sContrato From contratos c INNER JOIN contratosxusuario u ON ' +
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

procedure TfrmAvancesFinancieros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  botonpermiso.free;
  action := cafree ;
end;


procedure TfrmAvancesFinancieros.refresh ;
begin
 try
   cnfGrafica.Active := False ;
   cnfGrafica.Params.ParamByName('Contrato').DataType := ftString ;
   cnfGrafica.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
   cnfGrafica.Open ;

   Convenios.Active := False ;
   Convenios.Params.ParamByName('Contrato').DataType := ftString ;
   Convenios.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
   Convenios.Open ;

   If cnfGrafica.RecordCount > 0 Then
   Begin
       Caption := cnfGrafica.FieldValues['sContrato']  + '-' + cnfGrafica.FieldValues['sNombre'] + '. Monto del Contrato [' + cnfGrafica.fieldByName('dMontoMN').AsString + ']' ;
       dMontoContrato := cnfGRafica.FieldValues['dMontoMN'] ;
       //  Creo la Grafica
       SaveSql.FileName := TreeObras.Selected.Text ;
       If rxGraficaProgramado.RecordCount > 0 then
           rxGraficaProgramado.EmptyTable   ;

       If rxGraficaFisico.RecordCount > 0 then
           rxGraficaFisico.EmptyTable  ;

       If rxGraficaFinanciero.RecordCount > 0 then
           rxGraficaFinanciero.EmptyTable  ;

       If rxGraficaProgramado2.RecordCount > 0 then
           rxGraficaProgramado2.EmptyTable   ;

       If rxGraficaFisico2.RecordCount > 0 then
           rxGraficaFisico2.EmptyTable  ;

       dbGraphics.RefreshData ;

       Connection.qryBusca.Active := False ;
       Connection.qryBusca.SQL.Clear ;
       Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes, Max(dAvancePonderadoGlobal) as dMensual ' +
                                   'From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
       Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
       Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Convenio').Value := cnfGrafica.FieldValues['sIdConvenio'] ;
       Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
       Connection.qryBusca.Open ;
       While NOT Connection.qryBusca.Eof Do
       Begin
           sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
           rxGraficaProgramado.Append ;
           rxGraficaProgramado2.Append ;
           rxGraficaProgramado.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
           rxGraficaProgramado2.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;

           rxGraficaProgramado.FieldValues['dFecha'] := sFecha ;
           rxGraficaProgramado.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
           rxGraficaProgramado.Post ;

           rxGraficaProgramado2.FieldValues['dFecha'] := sFecha ;
           rxGraficaProgramado2.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
           rxGraficaProgramado2.Post ;

           Connection.qryBusca.Next
        End ;

        // Real ...
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes From avancesglobalesxorden Where ' +
                                    'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := cnfGrafica.FieldValues['sIdConvenio'] ;
        Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
        Connection.qryBusca.Open ;
        While NOT Connection.qryBusca.Eof Do
        Begin
            sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;

            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Sum(dAvance) as dMensual From avancesglobalesxorden Where ' +
                                         'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Convenio').Value := cnfGrafica.FieldValues['sIdConvenio'] ;
            Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Orden').Value := '' ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := StrToDate(sFecha) ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
            Begin
                rxGraficaFisico.Append ;
                rxGraficaFisico.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                rxGraficaFisico.FieldValues['dFecha'] := sFecha ;
                rxGraficaFisico.FieldValues['dFisico'] := Connection.qryBusca2.FieldValues['dMensual'] ;
                rxGraficaFisico.Post ;
                rxGraficaFisico2.Append ;
                rxGraficaFisico2.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                rxGraficaFisico2.FieldValues['dFecha'] := sFecha ;
                rxGraficaFisico2.FieldValues['dFisico'] := Connection.qryBusca2.FieldValues['dMensual'] ;
                rxGraficaFisico2.Post ;
            End ;
            Connection.qryBusca.Next
        End ;

        // Financiero ....
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select year(dFechaFinal) as dAnno , month(dFechaFinal) as dMes From estimacionperiodo Where ' +
                                    'sContrato = :Contrato Group By Year(dFechaFinal), month(dFechaFinal)' ) ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        Connection.qryBusca.Open ;
        While NOT Connection.qryBusca.Eof Do
        Begin
            sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            If chkAdicionales.Checked Then
                  Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimacionperiodo ' +
                                               'Where sContrato = :Contrato And dFechaFinal <= :Fecha Group By sContrato' )
            Else
                  Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimacionperiodo ' +
                                               'Where sContrato = :Contrato And dFechaFinal <= :Fecha And sIdTipoEstimacion = "N" Group By sContrato' ) ;

            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := strToDate(sFecha) ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
            Begin
               rxGraficaFinanciero.Append ;
               rxGraficaFinanciero.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
               rxGraficaFinanciero.FieldValues['dFecha'] := sFecha ;
               try
                rxGraficaFinanciero.FieldValues['dFinanciero'] := (Connection.qryBusca2.FieldValues['dReal'] / dMontoContrato) * 100 ;
               except
                on e:exception do
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Avances Fisico/Financiero', 'Al Calcular el Avance', 0);

               end;
               rxGraficaFinanciero.Post ;
            End ;
            Connection.qryBusca.Next
        End ;

        dbGraphics.Title.Text.Clear ;
        dbGraphics.Title.Text.Add ('Avances Programado/Fisico/Financiero') ;
        dbGraphics.Title.Text.Add (Caption) ;
        dbGraphics.Title.Text.Add (cnfGrafica.FieldValues['mDescripcion']) ;

        dbGrapConvenios.Title.Text.Clear ;
        dbGrapConvenios.Title.Text.Add ('Avances Programado/Fisico') ;
        dbGrapConvenios.Title.Text.Add (Caption) ;
        dbGrapConvenios.Title.Text.Add (cnfGrafica.FieldValues['mDescripcion']) ;

        // Termino de Generar la Grafica ..
        // Termino de Actualizar los Datos principales del Contrato ...
    End
 except
    on e:exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Avances Fisico/Financiero', 'Al Refrescar', 0);
    end;
 end;
End ;

procedure TfrmAvancesFinancieros.Exportar1Click(Sender: TObject);
begin
    SaveSql.Title := 'Guardar Grafica';
    If SaveSql.Execute Then
         dbGraphics.SaveToBitmapFile(SaveSql.FileName) ;
end;

procedure TfrmAvancesFinancieros.chkProgramadoClick(Sender: TObject);
begin
    dbGraphics.Series[0].Active := chkProgramado.Checked ;
//    dbGraphics.RefreshData ;
end;

procedure TfrmAvancesFinancieros.chkFisicoClick(Sender: TObject);
begin
    dbGraphics.Series[1].Active := chkFisico.Checked ;
//    dbGraphics.RefreshData ;
end;

procedure TfrmAvancesFinancieros.chkFinancieroClick(Sender: TObject);
begin
    dbGraphics.Series[2].Active := chkFinanciero.Checked ;
//    dbGraphics.RefreshData ;
end;

procedure TfrmAvancesFinancieros.chk3DClick(Sender: TObject);
begin
    dbGraphics.View3D := chk3d.Checked ;
end;

procedure TfrmAvancesFinancieros.chkLeyendasClick(Sender: TObject);
begin
    dbGraphics.Series[0].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.Series[1].Marks.Visible := chkLeyendas.Checked ;
    dbGraphics.Series[2].Marks.Visible := chkLeyendas.Checked ;
end;

procedure TfrmAvancesFinancieros.up3DChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    dbGraphics.Chart3DPercent := Up3D.Position ;
end;

procedure TfrmAvancesFinancieros.chkEjesClick(Sender: TObject);
begin
    dbGraphics.LeftAxis.Visible := chkEjes.Checked
end;

procedure TfrmAvancesFinancieros.chkAdicionalesClick(Sender: TObject);
begin
  try
    If rxGraficaFinanciero.RecordCount > 0 then
        rxGraficaFinanciero.EmptyTable  ;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select year(dFechaFinal) as dAnno , month(dFechaFinal) as dMes From estimacionperiodo Where ' +
                                'sContrato = :Contrato Group By Year(dFechaFinal), month(dFechaFinal)' ) ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
        sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        If chkAdicionales.Checked Then
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimacionperiodo ' +
                                         'Where sContrato = :Contrato And dFechaFinal <= :Fecha Group By sContrato' )
        Else
            Connection.qryBusca2.SQL.Add('Select Sum(dMontoMN) as dReal From estimacionperiodo ' +
                                         'Where sContrato = :Contrato And dFechaFinal <= :Fecha And sIdTipoEstimacion = "N" Group By sContrato' ) ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := strToDate(sFecha) ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
        Begin
           rxGraficaFinanciero.Append ;
           rxGraficaFinanciero.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
           rxGraficaFinanciero.FieldValues['dFecha'] := sFecha ;
           rxGraficaFinanciero.FieldValues['dFinanciero'] := (Connection.qryBusca2.FieldValues['dReal'] / dMontoContrato) * 100 ;
           rxGraficaFinanciero.Post ;
        End ;
        Connection.qryBusca.Next
    End
  except
    on e:exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Avances Fisico/Financiero', 'Al Incluir Adicionales', 0);
    end;
  end;
end;

procedure TfrmAvancesFinancieros.chkConvenios3DClick(Sender: TObject);
begin
    dbGrapConvenios.View3D := chkConvenios3d.Checked ;
end;

procedure TfrmAvancesFinancieros.chkConveniosLeyendasClick(Sender: TObject);
begin
    dbGrapConvenios.Series[0].Marks.Visible := chkConveniosLeyendas.Checked ;
    dbGrapConvenios.Series[1].Marks.Visible := chkConveniosLeyendas.Checked ;
end;

procedure TfrmAvancesFinancieros.chkConveniosEjesClick(Sender: TObject);
begin
    dbGrapConvenios.LeftAxis.Visible := chkConveniosEjes.Checked
end;

procedure TfrmAvancesFinancieros.upConvenios3DChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    dbGrapConvenios.Chart3DPercent := UpConvenios3D.Position ;
end;

procedure TfrmAvancesFinancieros.ConveniosxContratoAfterScroll(
  DataSet: TDataSet);
Var
    sFecha : String ;
begin
  try
    If rxGraficaProgramado2.RecordCount > 0 then
        rxGraficaProgramado2.EmptyTable   ;

    If rxGraficaFisico2.RecordCount > 0 then
        rxGraficaFisico2.EmptyTable  ;

    dbGrapConvenios.Title.Text.Clear ;
    dbGrapConvenios.Title.Text.Add ('Avances Programado/Fisico') ;
    dbGrapConvenios.Title.Text.Add (Caption) ;
    dbGrapConvenios.Title.Text.Add (cnfGrafica.FieldValues['sDescripcion']) ;

    dbGraphics.RefreshData ;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes, Max(dAvancePonderadoGlobal) as dMensual ' +
                                'From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ' +
                                'Group By Year(dIdFecha), month(dIdFecha)' ) ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := tsIdConvenio.KeyValue ;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
        sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
        rxGraficaProgramado2.Append ;
        rxGraficaProgramado2.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
        rxGraficaProgramado2.FieldValues['dFecha'] := sFecha ;
        rxGraficaProgramado2.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
        rxGraficaProgramado2.Post ;

        Connection.qryBusca.Next
    End ;

    // Real ...
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes From avancesglobalesxorden Where ' +
                                'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := tsIdConvenio.KeyValue ;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
    Connection.qryBusca.Open ;
    While NOT Connection.qryBusca.Eof Do
    Begin
         sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
         Connection.qryBusca2.Active := False ;
         Connection.qryBusca2.SQL.Clear ;
         Connection.qryBusca2.SQL.Add('Select Sum(dAvance) as dMensual From avancesglobalesxorden Where ' +
                                      'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
         Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
         Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
         Connection.qryBusca2.Params.ParamByName('Convenio').Value := tsIdConvenio.KeyValue ;
         Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
         Connection.qryBusca2.Params.ParamByName('Orden').Value := '' ;
         Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
         Connection.qryBusca2.Params.ParamByName('Fecha').Value := StrToDate(sFecha) ;
         Connection.qryBusca2.Open ;
         If Connection.qryBusca.RecordCount > 0 Then
         Begin
             rxGraficaFisico2.Append ;
             rxGraficaFisico2.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
             rxGraficaFisico2.FieldValues['dFecha'] := sFecha ;
             rxGraficaFisico2.FieldValues['dFisico'] := Connection.qryBusca2.FieldValues['dMensual'] ;
             rxGraficaFisico2.Post ;
         End ;
         Connection.qryBusca.Next
     End
  except
    on e:exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Avances Fisico/Financiero', 'Al cambiar de registro de convenios por contrato', 0);
    end;
  end;
end;

procedure TfrmAvancesFinancieros.MenuItem1Click(Sender: TObject);
begin
    SaveSql.Title := 'Guardar Grafica';
    If SaveSql.Execute Then
         dbGrapConvenios.SaveToBitmapFile(SaveSql.FileName) ;
end;

procedure TfrmAvancesFinancieros.TreeObrasClick(Sender: TObject);
begin
    If TreeObras.Selected.Text <> '' then
        If TreeObras.Selected.getFirstChild = Nil Then
            refresh
end;

procedure TfrmAvancesFinancieros.ConveniosAfterScroll(DataSet: TDataSet);
begin
 try
   If cnfGrafica.RecordCount > 0 Then
   Begin
       If rxGraficaProgramado2.RecordCount > 0 then
           rxGraficaProgramado2.EmptyTable   ;

       If rxGraficaFisico2.RecordCount > 0 then
           rxGraficaFisico2.EmptyTable  ;

       Connection.qryBusca.Active := False ;
       Connection.qryBusca.SQL.Clear ;
       Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes, Max(dAvancePonderadoGlobal) as dMensual From avancesglobales Where ' +
                                   'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
       Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
       Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
       Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
       Connection.qryBusca.Open ;
       While NOT Connection.qryBusca.Eof Do
       Begin
           sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
           rxGraficaProgramado2.Append ;
           rxGraficaProgramado2.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
           rxGraficaProgramado2.FieldValues['dFecha'] := sFecha ;
           rxGraficaProgramado2.FieldValues['dProgramado'] := Connection.qryBusca.FieldValues['dMensual'] ;
           rxGraficaProgramado2.Post ;
           Connection.qryBusca.Next
       End ;

       // Real ...
       connection.qryBusca.Active := False ;
       Connection.qryBusca.SQL.Clear ;
       Connection.qryBusca.SQL.Add('Select year(dIdFecha) as dAnno , month(dIdFecha) as dMes From avancesglobalesxorden Where ' +
                                   'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden Group By Year(dIdFecha), month(dIdFecha)' ) ;
       Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
       Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
       Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Orden').Value := '' ;
       Connection.qryBusca.Open ;
       While NOT Connection.qryBusca.Eof Do
       Begin
            sFecha := sfnFechaFinal (Connection.qryBusca.FieldValues['dMes'], Connection.qryBusca.FieldValues['dAnno']) ;
            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Sum(dAvance) as dMensual From avancesglobalesxorden Where ' +
                                         'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha <= :Fecha Group By sContrato' ) ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
            Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Orden').Value := '' ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := StrToDate(sFecha) ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca.RecordCount > 0 Then
            Begin
                rxGraficaFisico2.Append ;
                rxGraficaFisico2.FieldValues['sDescripcion'] := TreeObras.Selected.Text ;
                rxGraficaFisico2.FieldValues['dFecha'] := sFecha ;
                rxGraficaFisico2.FieldValues['dFisico'] := Connection.qryBusca2.FieldValues['dMensual'] ;
                rxGraficaFisico2.Post ;
            End ;
            Connection.qryBusca.Next
       End ;

       dbGrapConvenios.Title.Text.Clear ;
       dbGrapConvenios.Title.Text.Add ('Avances Programado/Fisico') ;
       dbGrapConvenios.Title.Text.Add (Caption) ;
       dbGrapConvenios.Title.Text.Add (cnfGrafica.FieldValues['mDescripcion']) ;

       // Termino de Generar la Grafica ..
       // Termino de Actualizar los Datos principales del Contrato ...
    End

 except
   on e:exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Avances Fisico/Financiero', 'Al cambiar de registro de convenio', 0);
   end;
 end;
end;

procedure TfrmAvancesFinancieros.TreeObrasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    If TreeObras.Selected.Text <> '' then
        If TreeObras.Selected.getFirstChild = Nil Then
            refresh
end;

procedure TfrmAvancesFinancieros.TreeObrasKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    If TreeObras.Selected.Text <> '' then
        If TreeObras.Selected.getFirstChild = Nil Then
            refresh
end;

end.
