unit UTFrmContratarWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficePager, AdvSmoothLabel, AdvSmoothButton, AdvSmoothPanel,
  StdCtrls, AdvCombo, DBClient, DB, {ClientModuleUnit1,} AdvEdit, DBCtrls,
  JvExControls, JvLabel, Mask, DBAdvEd, ExtCtrls, AdvDBComboBox, frxClass,
  frxDBSet, ComCtrls, AdvDateTimePicker, AdvDBDateTimePicker, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, utilerias,
  JvDBDatePickerEdit, {UTFrmPeriodoGuardia, UTFrmContratoPersonal,} DateUtils, Math,
  AeroButtons, ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_connection, global,
  FormAutoScaler;

type
  TOrganizacion = class
  Identificador: Integer;
  Isr: String;
end;

  TFrmContratarWizard = class(TForm)
  GrupoPaginas: TAdvOfficePager;
  Paso1: TAdvOfficePage;
  Paso2: TAdvOfficePage;
  Paso3: TAdvOfficePage;
  Paso4: TAdvOfficePage;
  AdvSmoothLabel1: TAdvSmoothLabel;
  lblNombre: TAdvSmoothLabel;
  dsOrganizacion: TDataSource;
  dsDepartamento: TDataSource;
  dsImss: TDataSource;
  lblNombre2: TAdvSmoothLabel;
  AdvSmoothLabel3: TAdvSmoothLabel;
  AdvSmoothLabel4: TAdvSmoothLabel;
  lblEmpresa2: TAdvSmoothLabel;
  lblArea2: TAdvSmoothLabel;
  lblNombre3: TAdvSmoothLabel;
  AdvSmoothLabel5: TAdvSmoothLabel;
  lblEmpresa3: TAdvSmoothLabel;
  lblArea3: TAdvSmoothLabel;
  AdvSmoothLabel8: TAdvSmoothLabel;
  AdvSmoothPanel1: TAdvSmoothPanel;
  AdvSmoothPanel2: TAdvSmoothPanel;
  Btn_Contratar: TButton;
  Btn_Siguiente: TButton;
  Btn_Anterior: TButton;
  Btn_Cancelar: TButton;
  dsTipoNomina: TDataSource;
  dsRangoSalario: TDataSource;
  LCbbTipoNomina: TDBLookupComboBox;
  Label7: TLabel;
  AdvSmoothLabel2: TAdvSmoothLabel;
  DBEdit1: TDBEdit;
  DBEdit2: TDBEdit;
  JvLabel1: TJvLabel;
  JvLabel2: TJvLabel;
  AdvSmoothLabel6: TAdvSmoothLabel;
  lblTipoNomina3: TAdvSmoothLabel;
  AdvSmoothLabel7: TAdvSmoothLabel;
  dsGuardias: TDataSource;
  cbGuardias: TDBLookupComboBox;
  JvLabel3: TJvLabel;
  Paso5: TAdvOfficePage;
  Paso6: TAdvOfficePage;
  lblNombre4: TAdvSmoothLabel;
  AdvSmoothLabel10: TAdvSmoothLabel;
  lblEmpresa4: TAdvSmoothLabel;
  lblArea4: TAdvSmoothLabel;
  AdvSmoothLabel13: TAdvSmoothLabel;
  AdvSmoothLabel14: TAdvSmoothLabel;
  lblTipoNomina4: TAdvSmoothLabel;
  AdvSmoothLabel16: TAdvSmoothLabel;
  AdvSmoothLabel17: TAdvSmoothLabel;
  lblGuardia4: TAdvSmoothLabel;
  LCbbDepartamento: TDBLookupComboBox;
  LCbbCargo: TDBLookupComboBox;
  Label1: TLabel;
  dsCargo: TDataSource;
  JvLabel4: TJvLabel;
  lblNombre5: TAdvSmoothLabel;
  AdvSmoothLabel11: TAdvSmoothLabel;
  lblEmpresa5: TAdvSmoothLabel;
  lblArea5: TAdvSmoothLabel;
  AdvSmoothLabel18: TAdvSmoothLabel;
  AdvSmoothLabel19: TAdvSmoothLabel;
  lblTipoNomina5: TAdvSmoothLabel;
  lblGuardia5: TAdvSmoothLabel;
  AdvSmoothLabel22: TAdvSmoothLabel;
  AdvSmoothLabel23: TAdvSmoothLabel;
  AdvSmoothLabel24: TAdvSmoothLabel;
  lblDepartamento5: TAdvSmoothLabel;
  AdvSmoothLabel26: TAdvSmoothLabel;
  lblPuesto5: TAdvSmoothLabel;
  lblRangoSalario: TJvLabel;
  RangoSalario: TDBText;
  cbbSalario: TDBLookupComboBox;
  lblSalario: TJvLabel;
  EdtSalarioDiario: TDBAdvEdit;
  dsSalarios: TDataSource;
  lblNombre6: TAdvSmoothLabel;
  AdvSmoothLabel12: TAdvSmoothLabel;
  lblEmpresa6: TAdvSmoothLabel;
  lblArea6: TAdvSmoothLabel;
  AdvSmoothLabel21: TAdvSmoothLabel;
  AdvSmoothLabel25: TAdvSmoothLabel;
  lblTipoNomina6: TAdvSmoothLabel;
  lblGuardia6: TAdvSmoothLabel;
  AdvSmoothLabel29: TAdvSmoothLabel;
  AdvSmoothLabel30: TAdvSmoothLabel;
  lblDepartamento6: TAdvSmoothLabel;
  AdvSmoothLabel32: TAdvSmoothLabel;
  lblPuesto6: TAdvSmoothLabel;
  AdvSmoothLabel34: TAdvSmoothLabel;
  lblSalarioDiario: TAdvSmoothLabel;
  AdvSmoothLabel36: TAdvSmoothLabel;
  cbJornada: TAdvDBComboBox;
  CbCobraFestivos: TCheckBox;
  MObservacion: TDBMemo;
  Label10: TLabel;
  frContratar: TfrxReport;
  dsDatos: TDataSource;
  frxDatos: TfrxDBDataset;
  frxCargo: TfrxDBDataset;
  jvlbl1: TJvLabel;
  dtpcontratacion: TJvDatePickerEdit;
  btnGuardias: TButton;
  advLblidSalario: TAdvSmoothLabel;
  pnlInfoAdicional: TPanel;
  AdvSmoothLabel9: TAdvSmoothLabel;
  advLblGuardia: TAdvSmoothLabel;
  advLblFechai: TAdvSmoothLabel;
  advLblFechaf: TAdvSmoothLabel;
  advLbl1: TAdvSmoothLabel;
  advLblnoDomingos: TAdvSmoothLabel;
  advLblDomingo: TAdvSmoothLabel;
  advLblFestivos: TAdvSmoothLabel;
  advLblNoFestivos: TAdvSmoothLabel;
  advLblDDiasFestivos: TAdvSmoothLabel;
  frxguardias: TfrxDBDataset;
  frxSalarios: TfrxDBDataset;
  frxRangoSalario: TfrxDBDataset;
  frxTipoNomina: TfrxDBDataset;
  frxDepartamento: TfrxDBDataset;
  frxImss: TfrxDBDataset;
  frxOrganizacion: TfrxDBDataset;
  Button1: TButton;
  cdtmp: TClientDataSet;
  intgrfldId: TIntegerField;
  frxtmp: TfrxDBDataset;
  CdOrganizacion: TZQuery;
  CdDepartamento: TZQuery;
  CdCargo: TZQuery;
  CdImss: TZQuery;
  cdGuardias: TZQuery;
  cdTipoNomina: TZQuery;
  cdSalario: TZQuery;
  CdRangoSalario: TZQuery;
  cdbusqueda: TZQuery;
  cdFactor: TZQuery;
  cdSalarioMinDF: TZQuery;
  cdtPeriodosG: TZQuery;
  cdtGrupoSalario: TZQuery;
  cdtSalario: TZQuery;
  cdBajaImss: TZQuery;
  cdtPersonal: TZQuery;
  zqConfiguracion: TZQuery;
  zqConfiguracionsNombre: TStringField;
  zqConfiguracionsNombreCorto: TStringField;
  zqConfiguracionsRfc: TStringField;
  zqConfiguracionsDireccion1: TStringField;
  zqConfiguracionsDireccion2: TStringField;
  zqConfiguracionsDireccion3: TStringField;
  zqConfiguracionsSlogan: TStringField;
  zqConfiguracionsPiePagina: TStringField;
  zqConfiguracionbImagen: TBlobField;
  zqConfiguracionsTelefono: TStringField;
  zqConfiguracionsFax: TStringField;
  zqConfiguracionsEmail: TStringField;
  zqConfiguracionsWeb: TStringField;
  zqConfiguracionsRepresentante: TStringField;
  zqConfiguracionsFirmante2: TStringField;
  zqConfiguracionsFirmante3: TStringField;
  zqConfiguracionsCiudad: TStringField;
  zqConfiguracionbLogoFondo: TBlobField;
  zqConfiguracionbImagenCliente: TBlobField;
  zqConfiguracioneNomina: TStringField;
  frxDBConfiguracion: TfrxDBDataset;
  fsc_ContWzd: TFormAutoScaler;
    cmbOrganizacion: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cmbOrganizacion2: TDBLookupComboBox;
    ds_organizacion: TDataSource;
    QryOrganizacion: TZReadOnlyQuery;
    ds_areas: TDataSource;
    QryAreas: TZReadOnlyQuery;
    lblTexto: TLabel;
  procedure FormShow(Sender: TObject);
  procedure LlenarComboOrg(Llave,Codigo, Titulo, isr: string;
    Cliente: TClientDataset; Combo: TAdvComboBox);
  procedure cmbOrganizacionMouseEnter(Sender: TObject);
  procedure cmbOrganizacionSelect(Sender: TObject);
  procedure cmbOrganizacion2MouseEnter(Sender: TObject);
  procedure Btn_SiguienteClick(Sender: TObject);
  procedure Paso2Show(Sender: TObject);
  procedure LlenarCombo(Llaves, Titulos: String; Cliente: TClientDataset;
    Combo: TAdvComboBox);
  procedure Paso3Show(Sender: TObject);
  procedure Paso4Show(Sender: TObject);
  procedure Btn_AnteriorClick(Sender: TObject);
  procedure Paso5Show(Sender: TObject);
  procedure Paso6Show(Sender: TObject);
  procedure Paso1Show(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure btnGuardiasClick(Sender: TObject);
  procedure dtpcontratacionPopupValueAccepted(Sender: TObject);
  procedure LCbbCargoDropDown(Sender: TObject);
  procedure Button1Click(Sender: TObject);
  procedure frContratarDblClickObject(Sender: TfrxView; Button: TMouseButton;
    Shift: TShiftState; var Modified: Boolean);
  procedure Btn_CancelarClick(Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure Btn_ContratarClick(Sender: TObject);
  procedure frContratarGetValue(const VarName: string; var Value: Variant);
    procedure cmbOrganizacionExit(Sender: TObject);
    procedure LCbbDepartamentoExit(Sender: TObject);
    procedure dsDepartamentoDataChange(Sender: TObject; Field: TField);
private
  FlagSalario: Integer; //saul
  SalarioCalculado: Extended;//saul
  cdtDiasFestivos: TZQuery; //saul
  iContratar: Integer;
  LlenandoOrg, LlenandoOrg2: Boolean;
  sPeriodoGuardia: Integer;//saul
  procedure contratar;
  procedure EstadoBotones;
  procedure ContarFestivos; //saul
  function calcularRango: Extended; //saul
  procedure ActualizaSalarioDiarioEmpleados;


public
  isNotificado: Boolean;
  { Public declarations }
end;

var
  FrmContratarWizard: TFrmContratarWizard;

implementation

uses frmEmpleados, frm_EmpleadosGuardias, Frm_CatalogoDePostulante;//UInteliDialog;}

{$R *.dfm}

procedure TFrmContratarWizard.Paso1Show(Sender: TObject);
begin
  cmbOrganizacion.SetFocus;
  Btn_Anterior.Visible := false;
end;

procedure TFrmContratarWizard.Paso2Show(Sender: TObject);
begin
  lblNombre2.Caption.Text := lblNombre.Caption.Text;
  lblEmpresa2.Caption.Text := cmbOrganizacion.Text;
  lblArea2.Caption.Text := cmbOrganizacion2.Text;

  LCbbTipoNomina.SetFocus;
  Btn_Anterior.Visible := True;
end;

procedure TFrmContratarWizard.Paso3Show(Sender: TObject);
begin
  lblNombre3.Caption.Text := lblNombre2.Caption.Text;
  lblEmpresa3.Caption.Text := lblEmpresa2.Caption.Text;
  lblArea3.Caption.Text := lblArea2.Caption.Text;
  lblTipoNomina3.Caption.Text := LCbbTipoNomina.Text;

  if isNotificado = True then
  begin
    //dsImss.DataSet.FieldByName('idperiodosGuardia').AsInteger := cdtPeriodosG.FieldByName('IdPeriodosGuardia').AsInteger;
    cbGuardias.KeyValue:=cdGuardias.FieldValues['IdGuardia'];
  end;

  cbGuardias.SetFocus;
end;

procedure TFrmContratarWizard.Paso4Show(Sender: TObject);
begin
  lblNombre4.Caption.Text := lblNombre3.Caption.Text;
  lblEmpresa4.Caption.Text := lblEmpresa3.Caption.Text;
  lblArea4.Caption.Text := lblArea3.Caption.Text;
  lblTipoNomina4.Caption.Text := lblTipoNomina3.Caption.Text;
  if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0 then
    lblGuardia4.Caption.Text := 'NO APLICA SISTEMA DE GUARDIAS PARA ESTE TIPO DE NÓMINA'
  else
    lblGuardia4.Caption.Text := cbGuardias.Text;

  // Filtrar los datasets
  if CdCargo.FieldByName('IdTipoNomina').AsInteger <> dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger then
  begin
    CdCargo.Active:=False;
    CdCargo.ParamByName('idcargo').AsInteger:=-1;
    CdCargo.Open;

    dsCargo.DataSet.Filtered := False;
    dsCargo.DataSet.Filter := 'IdOrganizacion = ' + IntToStr(cmbOrganizacion.KeyValue) +
                              ' and IdTipoNomina = ' + dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsString;
    dsCargo.DataSet.Filtered := True;



  end;
  
  // Abrir los dataset si es necesario
  if Not dsCargo.DataSet.Active then
    dsCargo.DataSet.Open;

  LCbbDepartamento.SetFocus;
end;

procedure TFrmContratarWizard.Paso5Show(Sender: TObject);
begin
  lblNombre5.Caption.Text := lblNombre4.Caption.Text;
  lblEmpresa5.Caption.Text := lblEmpresa4.Caption.Text;
  lblArea5.Caption.Text := lblArea4.Caption.Text;
  lblTipoNomina5.Caption.Text := lblTipoNomina4.Caption.Text;
  lblGuardia5.Caption.Text := lblGuardia4.Caption.Text;
  lblDepartamento5.Caption.Text := LCbbDepartamento.Text;
  lblPuesto5.Caption.Text := LCbbCargo.Text;

  //dtpContratacion.date := now;
  if dsCargo.DataSet.Active then
  begin
    //1. - Si tiene idSalario y no idRangoSalario
    if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull = false) then
    begin
      try
        {if not CargarDatosFiltrados(cdtSalario, 'idSalario',[dsCargo.DataSet.FieldByName('idSalario').AsString]) then
          raise InteligentException.CreateByCode(5, ['Salario']);}
        cdtSalario.Active := False;
        cdtSalario.ParamByName('idSalario').AsString := dsCargo.DataSet.FieldByName('idSalario').AsString;
        if cdtSalario.Active then
          cdtSalario.Refresh
        else
          cdtSalario.Open;
      except
        on e:Exception do
          MessageDlg('Ha ocurrido un error inespeado Informe de lo siguiente al administador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      end;

      // Si no se trata de un rango de salarios se deberá verificar si tiene un salario directo asignado
      lblRangoSalario.Visible := False;
      RangoSalario.Visible := False;
      lblSalario.Visible := False;
      cbbSalario.Visible := False;
      EdtSalarioDiario.Visible := True;
      EdtSalarioDiario.Text := cdtSalario.FieldByName('Salario').AsString;
      EdtSalarioDiario.Enabled := False;
      btnGuardias.Visible := False;
      pnlInfoAdicional.Visible := False;
      FlagSalario := 1;
      //EdtSalarioDiario.SetFocus;
    end
    //2. - Si Tiene IdRangoSalario
    else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull = False) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
    begin
      // Si tiene un rango de salarios asignado se deberá mostrar el combo para que seleccione uno de ellos
      dsRangoSalario.DataSet.Filtered := False;
      dsRangoSalario.DataSet.Filter := 'IdRangoSalarios = ' + dsCargo.DataSet.FieldByName('IdRangoSalarios').AsString;
      dsRangoSalario.DataSet.Filtered := True;

      // Abrir los rangos de salarios si es necesario
      if Not dsRangoSalario.DataSet.Active then
        dsRangoSalario.DataSet.Open;

      // Temporalmente cargar todos los salarios desde el servidor
      if (Not dsSalarios.DataSet.Active) or ((dsSalarios.DataSet.Active) and (dsSalarios.DataSet.FieldByName('IdRangoSalarios').AsInteger <> dsCargo.DataSet.FieldByName('IdRangoSalarios').AsInteger)) then
      begin
        {if Not CargarDatosFiltrados(TClientDataSet(dsSalarios.DataSet), 'IdRangoSalarios', [dsCargo.DataSet.FieldByName('IdRangoSalarios').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Salarios', dsCargo.DataSet.FieldByName('IdRangoSalarios').AsInteger, 'Id. Rango Salarios']);}
        dsSalarios.DataSet.Active := False;
        cdSalario.ParamByName('IdRangoSalarios').AsInteger := dsCargo.DataSet.FieldByName('IdRangoSalarios').AsInteger;

        if cdSalario.Active then cdSalario.Refresh
        else cdSalario.open;
      end;
      // Mostrar los campos para el rango de salarios
      lblRangoSalario.Visible := True;
      RangoSalario.Visible := True;
      lblSalario.Visible := True;
      cbbSalario.Visible := True;
      EdtSalarioDiario.Visible := False;
      cbbSalario.SetFocus;
      advLblidSalario.Caption.Text := dsRangoSalario.DataSet.FieldByName('idRangosalarios').AsString;
      btnGuardias.Visible := true;
      pnlInfoAdicional.Visible := true;
      FlagSalario := 2;
    end
    //3. SI no tiene idRangoSalario ni idSalario
    else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
    begin
      lblRangoSalario.Visible := False;
      RangoSalario.Visible := False;
      lblSalario.Visible := False;
      cbbSalario.Visible := False;
      EdtSalarioDiario.Visible := True;
      EdtSalarioDiario.Text := '0.00';
      if frmEmpleados.frm_Empleados.zQEmpleados.FieldByName('dSueldoDiario').AsFloat > 0 then
         EdtSalarioDiario.Text := FloatToStr(frmEmpleados.frm_Empleados.zQEmpleados.FieldByName('dSueldoDiario').AsFloat);
      EdtSalarioDiario.Enabled := true;
      btnGuardias.Visible := False;
      pnlInfoAdicional.Visible := False;
      FlagSalario := 3;
    end;
    dtpcontratacionPopupValueAccepted(nil);//soltar y acomodar guardias
    Btn_Siguiente.Visible := true;
    Btn_Contratar.Visible := false;
  end;
end;

procedure TFrmContratarWizard.Paso6Show(Sender: TObject);
begin
  lblNombre6.Caption.Text := lblNombre5.Caption.Text;
  lblEmpresa6.Caption.Text := lblEmpresa5.Caption.Text;
  lblArea6.Caption.Text := lblArea5.Caption.Text;
  lblTipoNomina6.Caption.Text := lblTipoNomina5.Caption.Text;
  lblGuardia6.Caption.Text := lblGuardia5.Caption.Text;
  lblDepartamento6.Caption.Text := lblDepartamento5.Caption.Text;
  lblPuesto6.Caption.Text := lblPuesto5.Caption.Text;
  cbJornada.SelectItem('12 Hrs');
  CbCobraFestivos.Checked := False;
  MObservacion.Text := '';
  // Verificar que tipo de salario se registro en la ventana anterior
  if dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull then
    lblSalarioDiario.Caption.Text := FloatToStrF(StrToFloat(EdtSalarioDiario.Text), ffCurrency, 18, 2)
  else
    lblSalarioDiario.Caption.Text := FloatToStrF(StrToFloat(cbbSalario.Text), ffCurrency, 18, 2);

  cbJornada.SetFocus;
  Btn_Siguiente.Visible := False;
  Btn_Contratar.Visible := True;
end;

{function TFrmContratarWizard.acomodarGuardia: Boolean;
var
  CdtmpPGuardia: TZQuery;
  cdtmpBuscaGuardia : TClientDataSet;
  //parametros: TParamFilter;
  fechaiProxima, fechatProxima, fechaSeleccionada: TDate; //fecha de inicio próxima y fecha de término próxima
begin
  CdtmpPGuardia := TClientDataSet.Create(nil);
  {parametros := TParamFilter.Create;
  parametros.Add('idguardia',inttostr(cbGuardias.KeyValue));
  parametros.Add('fecha',ClientModule1.DatetoStrSql(StrToDate(dtpcontratacion.Text)));
  try
    //cargar periodos, para mostrar de acuerdo a la fecha de contratación
    {if not CrearConjunto(CdtmpPGuardia, 'nom_periodosguardia_disponibles', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Periodos Guardia']);


    if not CargarDatosFiltrados(CdtmpPGuardia, parametros) then
      raise InteligentException.CreateByCode(11, [' Al filtrar por fecha guardia.']);

    CdtmpPGuardia.Active:=False;
    CdtmpPGuardia.SQL.Clear;
    CdtmpPGuardia.SQL.Add('SELECT pg.IdPeriodosGuardia, pg.IdGuardia, pg.FechaInicio, pg.FechaTermino, pg.Reprogramacion, g.CodigoGuardia, g.TituloGuardia, g.IdTipoNomina, g.Trabajados, g.Descanso ');
    CdtmpPGuardia.SQL.Add('FROM nom_periodosguardia pg INNER JOIN nom_guardia g ON pg.IdGuardia = g.IdGuardia ');
    CdtmpPGuardia.SQL.Add('WHERE (:IdGuardia = -1 OR (:IdGuardia <> -1 AND pg.IdGuardia = :IdGuardia)) AND (:IdTipoNomina = -1 OR (:IdTipoNomina <> -1 AND g.IdTipoNomina = :IdTipoNomina)) AND ');
    CdtmpPGuardia.SQL.Add('(:Trabajados = -1 OR (:Trabajados <> -1 AND g.Trabajados = :Trabajados)) AND (:Descanso = -1 OR (:Descanso <> -1 AND g.Descanso = :Descanso)) AND (:fecha >= pg.fechainicio AND :fecha <= pg.fechatermino)');
    CdtmpPGuardia.ParamByName('idguardia').AsString := inttostr(cbGuardias.KeyValue);
    CdtmpPGuardia.ParamByName('fecha').AsDate := dtpcontratacion.Date;

    if CdtmpPGuardia.Active then
      CdtmpPGuardia.Refresh
    else
      CdtmpPGuardia.Open;

    //si no se encuentra en ningun periodo

    //determinar la guardia siguiente y la guardia anterior
    if CdtmpPGuardia.RecordCount = 0 then
    begin
      cdtmpBuscaGuardia := TClientDataSet.Create(nil);
      //para buscar las fechas proximas
      if not CrearConjunto(cdtmpBuscaGuardia, 'nom_periodosguardia_fsupinf', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Periodos Guardia Fecha Superior e inferior']);

      if not CargarDatosFiltrados(cdtmpBuscaGuardia, 'idGuardia,fechaInicio', [inttostr(cbGuardias.KeyValue),ClientModule1.DatetoStrSql(StrToDate(dtpcontratacion.Text))]) then
        raise InteligentException.CreateByCode(11, [' al filtrar por guardia y fecha']);

      if cdtmpBuscaGuardia.active then
        cdtmpBuscaGuardia.Refresh
      else
        cdtmpBuscaGuardia.Open;

      if (cdtmpBuscaGuardia.FieldByName('fechainicio').IsNull) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino').IsNull) then
      begin
        dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio2').AsDateTime;
      end
      else if (cdtmpBuscaGuardia.FieldByName('fechainicio2').IsNull) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino3').IsNull) then
      begin
        dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio').AsDateTime;
      end
      else if (cdtmpBuscaGuardia.FieldByName('fechainicio2').IsNull = False) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino3').IsNull = False)
       and (cdtmpBuscaGuardia.FieldByName('fechainicio').IsNull = False) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino').IsNull = False) then
      begin
        fechatProxima := cdtmpBuscaGuardia.FieldByName('fechainicio2').AsDateTime;
        fechaiProxima := cdtmpBuscaGuardia.FieldByName('fechatermino').AsDateTime;
        fechaSeleccionada := dtpcontratacion.Date;
        if (daysbetween(fechatProxima, fechaSeleccionada) < daysbetween(fechaSeleccionada, fechaiProxima)) then
          dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio2').AsDateTime
        else if (daysbetween(fechatProxima, fechaSeleccionada) > daysbetween(fechaSeleccionada, fechaiProxima)) then
          dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio').AsDateTime;
        //ShowMessage(IntToStr(daysbetween(fechatProxima,fechaiProxima)));
      end;
      //sPeriodoGuardia := cdtPeriodosG.FieldByName('IdPeriodosGuardia').AsInteger;
    end;
  finally
    EliminarConjunto(CdtmpPGuardia);
    CdtmpPGuardia.Destroy;
    parametros.Destroy;
  end;
end;}

procedure TFrmContratarWizard.btnGuardiasClick(Sender: TObject);
begin
  {Application.CreateForm(TFrmPeriodoGuardia, FrmPeriodoGuardia);
  FrmPeriodoGuardia.dsGuardia.DataSet := dsGuardias.DataSet;
  FrmPeriodoGuardia.ShowModal;}
end;

procedure TFrmContratarWizard.Btn_AnteriorClick(Sender: TObject);
begin
  if (grupopaginas.ActivePageIndex = 3) or (grupopaginas.ActivePageIndex = 4) then
    FlagSalario := -1 ;

  if GrupoPaginas.ActivePageIndex > 0 then
  begin
    GrupoPaginas.ActivePageIndex := GrupoPaginas.ActivePageIndex -1;

    if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (GrupoPaginas.ActivePageIndex = 2) then
      GrupoPaginas.ActivePageIndex := 1;
  end;
  EstadoBotones;
end;

procedure TFrmContratarWizard.Btn_CancelarClick(Sender: TObject);
begin
  if lblTexto.Caption ='frmEmpleadosGuardias' then frmEmpleadosGuardias.z.Text:='';
  if lblTexto.Caption ='frm_empleados' then frm_Empleados.z.Text:='';
  if lblTexto.Caption ='FrmCatalogoDePostulante' then FrmCatalogoDePostulante.z.Text:='';
  //if form.Text='frmEmpleadosGuardiasV2' then frmEmpleadosGuardiasV2.z.Text:='';
  CdImss.Cancel;
end;

procedure TFrmContratarWizard.Btn_ContratarClick(Sender: TObject);
begin
  Button1Click(nil);
  bandera:= 'contratado';
end;

procedure TFrmContratarWizard.Btn_SiguienteClick(Sender: TObject);
var
  msjResult: Integer;
begin
  Try
    if GrupoPaginas.ActivePageIndex < GrupoPaginas.AdvPageCount -1 then
    begin
      if (GrupoPaginas.ActivePageIndex = 2) and (cdGuardias.FieldByName('IdGuardia').IsNull) then
        raise Exception.Create(' Error de captura de datos, El campo Guardia debe ser llenado correctamente antes de proceder a grabar el registro.');

      if (GrupoPaginas.ActivePageIndex = 3) then
      begin
          LCbbDepartamento.OnExit(sender);

          dsImss.DataSet.FieldByName('idcargo').AsInteger        := dsCargo.DataSet.FieldByName('idCargo').AsInteger;
          dsImss.DataSet.FieldByName('idDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('idDepartamento').AsInteger;
      end;

      if GrupoPaginas.ActivePageIndex = 3 then
      begin
         if dsImss.DataSet.FieldByName('IdDepartamento').IsNull then
           raise Exception.Create(' Error de captura de datos, El campo Departamento debe ser llenado correctamente antes de proceder a grabar el registro.');

         if dsImss.DataSet.FieldByName('IdCargo').IsNull then
           raise Exception.Create(' Error de captura de datos, El campo Puesto debe ser llenado correctamente antes de proceder a grabar el registro.');
      end;

      //if GrupoPaginas.ActivePageIndex = 1 then
        //LCbbTipoNomina.ItemIndex = 0;

      if GrupoPaginas.ActivePageIndex = 3 then
      begin
          cbbSalario.ListFieldIndex := 0;
      end;

      if GrupoPaginas.ActivePageIndex = 4 then
      begin
        if dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull then
        begin
          if StrToFloat(EdtSalarioDiario.Text) <= 0 then
          begin
            EdtSalarioDiario.SetFocus;
            raise Exception.Create(' Error de captura de datos, El campo Salario Diario debe ser llenado correctamente antes de proceder a grabar el registro.');
          end;
        end
        else if (length(trim(cbbSalario.text)) > 0) and (StrToFloat(cbbSalario.Text) <= 0) then
          raise Exception.Create(' Error de captura de datos, El campo Salario Diario debe ser llenado correctamente antes de proceder a grabar el registro.');

        if (FlagSalario = 2) and ((length(trim(cbbSalario.text)) > 0) and  (StrTofloat(cbbSalario.Text) =  SalarioCalculado)) then
          GrupoPaginas.ActivePageIndex := 5
        else if (FlagSalario = 2) and ( (length(trim(cbbSalario.text)) > 0)  and (StrTofloat(cbbSalario.Text) <>  SalarioCalculado)) then
        begin
          msjResult := MessageDlg('Confirmación, El Salario sugerido por el sistema de acuerdo a los parametros obtenidos, han sido cambiados por el usuario,'+
                                              'Desea asignar el salario seleccionado al empleado?',mtConfirmation, [mbYes,mbNo], 0);
          if msjResult = mrYes then
            GrupoPaginas.ActivePageIndex := 5;

          msjResult := mrNo;
        end
      end;
      if (FlagSalario <> 2) then
        GrupoPaginas.ActivePageIndex := GrupoPaginas.ActivePageIndex + 1 ;

      if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (GrupoPaginas.ActivePageIndex = 2) then
      begin
        // Si no es un tipo de nómina que tenga dias de descanso se deberá establecer el IdGuardia a Nulo
        dsImss.DataSet.FieldByName('IdPeriodosGuardia').Clear;
        CbCobraFestivos.Visible := True;
        // Así mismo, se deberá avanzar a la siguiente página
        GrupoPaginas.ActivePageIndex := 3;
      end
      else if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0) and (GrupoPaginas.ActivePageIndex = 2) then
      begin
        CbCobraFestivos.Visible := False;
      end;

      EstadoBotones;

    end
    else
    begin
      // Mostrar el registro que se va a generar
      //frContratar.ShowReport(False);
    end;
  Except
    on e:Exception do
      MessageDlg('Ha ocurrido un error inespeado, Informe de lo siguiente al administador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmContratarWizard.Button1Click(Sender: TObject);
begin
  contratar;
  if cdtmp.RecordCount = 0 then
  begin
    cdtmp.Append;
    cdtmp.FieldByName('id').AsInteger := 1;
    cdtmp.Post;
  end;
  frContratar.ShowReport(true);

end;

function TFrmContratarWizard.calcularRango: Extended;
{var
  parametros: TParamfilter;}
begin
  try
    //parametros := TParamFilter.Create;
    try
      {parametros.add('idRSalarios', advLblidSalario.Caption.Text);
      parametros.Add('dFestivos', advLblNoFestivos.Caption.Text);
      parametros.Add('dDomingos', advLblnoDomingos.Caption.Text);}

      {if not CargarDatosFiltrados(cdtGrupoSalario, parametros) then
          raise InteligentException.CreateByCode(11, [' Al filtrar por rango de salarios']);}
      cdtGrupoSalario.ParamByName('idRSalarios').AsString:=advLblidSalario.Caption.Text;
      cdtGrupoSalario.ParamByName('dFestivos').AsString:=advLblNoFestivos.Caption.Text;
      //cdtGrupoSalario.ParamByName('dDomingos').AsString:=advLblnoDomingos.Caption.Text;

      if cdtGrupoSalario.Active then
        cdtGrupoSalario.Refresh
      else
        cdtGrupoSalario.Open;

      if cdtGrupoSalario.RecordCount > 0 then
      begin
        cbbSalario.KeyValue := cdtGrupoSalario.FieldByName('idsalario').AsInteger;
        Result := StrToFloat(cbbSalario.Text);
      end
      else
      begin
        cbbSalario.ListFieldIndex := 0;
        MessageDlg('Aviso, No se encontraron sugerencias de salarios para esas condiciones establecidas.', mtInformation, [mbOk], 0);
        Result:=0;
      end;
    except
    on e:Exception do
      ShowMessage(e.Message + ' ' + e.ClassName );
    end;
  finally
    //parametros.Destroy;
  end;
end;

procedure TFrmContratarWizard.cmbOrganizacion2MouseEnter(Sender: TObject);
begin
  CmbOrganizacion.Hint := CmbOrganizacion.Text;
end;

procedure TFrmContratarWizard.cmbOrganizacionExit(Sender: TObject);
begin
     QryAreas.Active := False;
     QryAreas.ParamByName('padre').AsInteger := QryOrganizacion.FieldByName('idorganizacion').AsInteger;
     QryAreas.Open;

     if QryAreas.RecordCount > 0 then
     begin
        if lblTexto.Caption = 'frm_empleados' then
           cmbOrganizacion2.KeyValue := '*';

        if lblTexto.Caption = 'frmEmpleadosGuardias' then
           cmbOrganizacion2.KeyValue := frm_EmpleadosGuardias.frmEmpleadosGuardias.zqryEmpleados.FieldByName('sNumeroOrden').AsString;
     end;
     cmbOrganizacion2.SetFocus;
end;

procedure TFrmContratarWizard.cmbOrganizacionMouseEnter(Sender: TObject);
begin
  CmbOrganizacion.Hint := CmbOrganizacion.Text;
end;

procedure TFrmContratarWizard.cmbOrganizacionSelect(Sender: TObject);
begin
  try
    if LlenandoOrg then
      raise Exception.Create('*');
    //Filtrando el departamento por organizacion
    try
      DsDepartamento.DataSet.Filtered := False;
      DsDepartamento.DataSet.Filter   := 'idorganizacion = '+inttostr(QryOrganizacion.FieldByName('idorganizacion').AsInteger);
      DsDepartamento.DataSet.Filtered := True;
      dsImss.DataSet.FieldByName('IdDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('IdDepartamento').AsInteger;
    except
      DsDepartamento.DataSet.Filtered := False;
    end;
  except
    on e:Exception do
      if e.Message <> '*' then
        MessageDlg('Información '+e.Message, mtInformation, [mbOk], 0);
    on e:exception do
      MessageDlg('Ha ocurrido un error inesperado, Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratarWizard.ContarFestivos;
const
  NomMes: Array [1 .. 12] of String = ('ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC');
var
  Cta: Integer;
  Cadena: String;
  LocFecha: TDate;
begin
  // Verificar cuales son los festivos que se está considerando
  if (cdtDiasFestivos <> nil) and (cdtDiasFestivos.Active) and (cdtDiasFestivos.RecordCount > 0) then
  begin

    // Contar los domingos
    Cta := 0;
    LocFecha := dtpcontratacion.Date;
    while LocFecha <= StrToDate(advLblFechaf.Caption.Text) do
    begin
      if DayOfWeek(LocFecha) = 1 then
        Inc(Cta);
      LocFecha := IncDay(LocFecha);
    end;
    advLblnoDomingos.Caption.Text := IntToStr(Cta);

    // Contar los días festivos
    Cta := 0;
    Cadena := '';
    cdtDiasFestivos.First;
    while not cdtDiasFestivos.Eof do
    begin
      if (cdtDiasFestivos.FieldByName('Fecha').AsDateTime >= dtpcontratacion.Date) and (cdtDiasFestivos.FieldByName('Fecha').AsDateTime <= StrToDate(advLblFechaf.Caption.Text)) then
      begin
        if Cadena <> '' then
          Cadena := Cadena + ', ';

        Cadena := Cadena + IntToStr(DayOf(cdtDiasFestivos.FieldByName('Fecha').AsDateTime)) + '-' + NomMes[MonthOf(cdtDiasFestivos.FieldByName('Fecha').AsDateTime)];
        Inc(Cta);
      end;

      cdtDiasFestivos.Next;
    end;
    advLblnoFestivos.Caption.Text := IntToStr(Cta);
    advLblDDiasFestivos.Caption.Text := Cadena;
  end;
end;

procedure TFrmContratarWizard.contratar;
var
  cursor: TCursor;
  //cdFactor: TClientDataSet;
  //cdSalarioMinDF: TClientDataSet;
  //cdtPersonal: TClientDataSet;
  salarioIntegrado: Extended;
begin
  try
    cursor := screen.Cursor;
    Screen.Cursor := crAppStart;

    try
      cdFactor.ParamByName('IdOrganizacion').AsInteger:=cmbOrganizacion.KeyValue;
      cdFactor.ParamByName('IdTipoNomina').AsInteger:=dsTipoNomina.DataSet.fieldByName('idTipoNomina').asinteger;
      cdFactor.ParamByName('Anios').AsInteger:=1;
      cdFactor.ParamByName('Aplicacion').AsInteger:=-1;
      if cdFactor.Active then
        cdFactor.Refresh
      else
        cdFactor.Open;

      //SALARIO MINIMO DEL DF
      cdSalarioMinDF.ParamByName('TipoSalario').AsString:='SMVDF';
      if cdSalarioMinDF.Active then
        cdSalarioMinDF.Refresh
      else
        cdSalarioMinDF.Open;

      //DATOS PERSONAL
      dsImss.DataSet.FieldByName('idPersonal').AsInteger := dsDatos.DataSet.FieldByName('idpersonal').AsInteger;
      cdBajaImss.FieldByName('idPersonal').AsInteger := dsImss.DataSet.FieldByName('idPersonal').AsInteger;

      //FECHA DE MOVTO - CONTRATO
      dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime := StrToDate(dtpcontratacion.Text);
      //FECHA REAL
      dsImss.DataSet.FieldByName('FechaReal').AsDateTime := StrToDate(dtpcontratacion.Text);
      dsImss.DataSet.FieldByName('FechaRegistro').AsDateTime := Now;
      if Length(Trim(advLblFechaf.Caption.Text)) > 0  then
        cdBajaImss.FieldByName('FechaMovimiento').AsDateTime := StrToDate(advLblFechaf.Caption.Text);

      cdBajaImss.FieldByName('FechaRegistro').AsDateTime := Now;

      //ORGANIZACION
      dsimss.DataSet.FieldByName('idorganizacion').AsInteger := cmbOrganizacion.KeyValue;
      cdBajaImss.FieldByName('idorganizacion').AsInteger     := cmbOrganizacion.KeyValue;

      //GUARDIAS
      //IDENTIFICAR EL TIPO DE NOMINA PARA SABER QUE SE VA A GUARDAR Y QUE NO
      dsImss.DataSet.FieldByName('IdTipoNomina').AsInteger := dsTipoNomina.DataSet.fieldByName('idTipoNomina').asinteger;
      cdBajaImss.FieldByName('IdTipoNomina').AsInteger := dsTipoNomina.DataSet.fieldByName('idTipoNomina').asinteger;

      if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0 then //si es a bordo
      begin //si es a bordo, es decir tiene dias de descanso
        //1. - Si tiene idSalario y no idRangoSalario
        if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull = false) then
        begin
          dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          dsImss.DataSet.FieldByName('SalarioDiario').AsFloat := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
          cdBajaImss.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          cdBajaImss.FieldByName('SalarioDiario').AsFloat := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
        end
        //2. - Si Tiene IdRangoSalario
        else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull = False) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
        begin
          dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          dsImss.DataSet.FieldByName('SalarioDiario').AsFloat := StrToFloat(cbbSalario.Text);  //SALARIO
          cdBajaImss.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          cdBajaImss.FieldByName('SalarioDiario').AsFloat := StrToFloat(cbbSalario.Text);  //SALARIO
        end
        //3. SI no tiene idRangoSalario ni idSalario
        else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
        begin
          dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          dsImss.DataSet.FieldByName('SalarioDiario').AsFloat := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
          cdBajaImss.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          cdBajaImss.FieldByName('SalarioDiario').AsFloat := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
        end;
      end
      else
      begin
        dsImss.DataSet.FieldByName('IdPeriodosGuardia').Clear;  //GUARDIA
        dsImss.DataSet.FieldByName('SalarioDiario').AsFloat := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
        cdBajaImss.FieldByName('IdPeriodosGuardia').Clear;  //GUARDIA
        cdBajaImss.FieldByName('SalarioDiario').AsFloat := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
      end;

      //DEPARTAMENTOS  Y CARGO
      dsImss.DataSet.FieldByName('idcargo').AsInteger := dsCargo.DataSet.FieldByName('idCargo').AsInteger;
      dsImss.DataSet.FieldByName('idDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('idDepartamento').AsInteger;
      cdBajaImss.FieldByName('idcargo').AsInteger := dsCargo.DataSet.FieldByName('idCargo').AsInteger;
      cdBajaImss.FieldByName('idDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('idDepartamento').AsInteger;

      //para almacenar cobra festivos
      if CbCobraFestivos.Visible = False then
      begin
        dsImss.DataSet.FieldByName('CobraFestivos').AsInteger := 0;
        cdBajaImss.FieldByName('CobraFestivos').AsInteger := 0;
      end
      else if (CbCobraFestivos.Checked = true) and (CbCobraFestivos.Visible = true) then
      begin
        dsImss.DataSet.FieldByName('CobraFestivos').AsInteger := 1;
        cdBajaImss.FieldByName('CobraFestivos').AsInteger := 1;
      end
      else
      begin
        dsImss.DataSet.FieldByName('CobraFestivos').AsInteger := 0;
        cdBajaImss.FieldByName('CobraFestivos').AsInteger := 0;
      end;

      //JORNADA DE TRABAJO
      dsImss.DataSet.FieldByName('jornada').AsInteger :=  StrToInt(cbJornada.StoredStrings[cbJornada.ItemIndex]);
      dsImss.DataSet.FieldByName('Comentarios').AsString := MObservacion.Text;
      cdBajaImss.FieldByName('jornada').AsInteger :=  StrToInt(cbJornada.StoredStrings[cbJornada.ItemIndex]);
      cdBajaImss.FieldByName('Comentarios').AsString := MObservacion.Text;

      //INFORMACION EXTRA
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(idPersonalImss) AS id FROM nuc_personalimss;');
      connection.QryBusca.Open;

      if connection.QryBusca.FieldValues['id'] = null then
        dsImss.DataSet.FieldByName('idPersonalImss').AsInteger := 1
      else
        dsImss.DataSet.FieldByName('idPersonalImss').AsInteger := connection.QryBusca.FieldValues['id'] + 1;

      //dsImss.DataSet.FieldByName('idPersonalImss').AsInteger := 0;
      dsImss.DataSet.FieldByName('TipoMovimiento').AsString := 'Reingreso';
      dsImss.DataSet.FieldByName('Procesado').AsString := 'Si';
      dsImss.DataSet.FieldByName('idplazadetalle').AsInteger := 0; //probar y no dejar que vuelva aparecer en la lista de no contratados
      cdBajaImss.FieldByName('idPersonalImss').AsInteger := dsImss.DataSet.FieldByName('idPersonalImss').AsInteger+1;
      cdBajaImss.FieldByName('TipoMovimiento').AsString := 'Baja';
      cdBajaImss.FieldByName('Procesado').AsString := 'No';
      cdBajaImss.FieldByName('idplazadetalle').AsInteger := 0; //probar y no dejar que vuelva aparecer en la lista de no contratados

      salarioIntegrado := cdSalarioMinDF.FieldByName('Salario').AsFloat*25;

      //if (RoundTo(dsImss.DataSet.FieldByName('SalarioDiario').AsFloat*cdFactor.FieldByName('Factor').AsFloat, -2)) <=
      //RoundTo(salarioIntegrado,-2) then
      if (RoundTo(dsImss.DataSet.FieldByName('SalarioDiario').AsFloat*cdFactor.FieldByName('Factor').AsFloat, -2)) <
      RoundTo(1619,-2) then
      begin
        dsImss.DataSet.FieldByName('salarioIntegrado').AsFloat := Roundto(dsImss.DataSet.FieldByName('SalarioDiario').AsFloat*cdFactor.FieldByName('Factor').AsFloat, -2);
        cdBajaImss.FieldByName('salarioIntegrado').AsFloat := Roundto(dsImss.DataSet.FieldByName('SalarioDiario').AsFloat*cdFactor.FieldByName('Factor').AsFloat, -2);
      end
      else
      begin
        dsImss.DataSet.FieldByName('salarioIntegrado').AsFloat := (RoundTo(1619,-2));
        cdBajaImss.FieldByName('salarioIntegrado').AsFloat := (RoundTo(1619,-2));
      end;
      dsImss.DataSet.FieldByName('registroPatronal').AsString := dsOrganizacion.DataSet.FieldByName('regpatimss').AsString;
      cdBajaImss.FieldByName('registroPatronal').AsString := dsOrganizacion.DataSet.FieldByName('regpatimss').AsString;

      if iContratar = 1 then
      begin
        //cdtPersonal := TClientDataSet.Create(nil);
        try
          ActualizaSalarioDiarioEmpleados;

          cdtPersonal.Active:=False;
          cdtPersonal.Open;
          cdtPersonal.ParamByName('idPersonal').AsString:=dsImss.DataSet.FieldByName('idPersonal').asString;
          if cdtPersonal.Active then
            cdtPersonal.Refresh
          else
            cdtPersonal.Open;

          CdImss.Post;
          //TClientDataSet(dsImss.DataSet).applyUpdates(-1);
          if True then

          if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0 then
          begin
            cdBajaImss.Post;
            //cdBajaImss.ApplyUpdates(-1);
          end;
          cdtPersonal.Edit;
          cdtPersonal.FieldByName('idPlazaDetalle').AsInteger := 1;
          cdtPersonal.Post;
          //cdtPersonal.ApplyUpdates(-1);
        finally
          {EliminarConjunto(cdtPersonal);
          cdtPersonal.Destroy;}
        end;
      end;
    except
      on e: Exception do
        ShowMessage(e.Message + ' ' + e.ClassName);
    end;
  finally
    {EliminarConjunto(cdFactor);
    EliminarConjunto(cdSalarioMinDF);
    cdfactor.Destroy;
    cdSalarioMinDF.Destroy;}
    Screen.Cursor := cursor;
  end;
end;

procedure TFrmContratarWizard.dsDepartamentoDataChange(Sender: TObject;
  Field: TField);
begin
   LCbbCargo.KeyValue := cdCargo.FieldByName('idcargo').AsInteger;
end;

procedure TFrmContratarWizard.dtpcontratacionPopupValueAccepted(
  Sender: TObject);
var
  //parametros: TParamFilter;
  cursor: TCursor;
begin
  if (cdtPeriodosG <> nil) and (cbGuardias.KeyValue <> null) then
  begin
    try
      {parametros := TParamFilter.Create;
      parametros.Add('idguardia',inttostr(cbGuardias.KeyValue));
      parametros.Add('fecha',ClientModule1.DatetoStrSql(StrToDate(dtpcontratacion.Text)));}
      try
        {if Not CargarDatosFiltrados(cdtPeriodosG, parametros) then
          raise InteligentException.CreateByCode(11, [' Al consultar por guardia y fecha']);}
        {cdtPeriodosG.Active:=False;
        cdtPeriodosG.Open;
        cdtPeriodosG.ParamByName('idguardia').AsString:=inttostr(cbGuardias.KeyValue);
        cdtPeriodosG.ParamByName('fecha').AsDate:=dtpcontratacion.Date;
        if cdtPeriodosG.active then
          cdtPeriodosG.Refresh
        else
          cdtPeriodosG.Open;}

        if  cdtPeriodosG.RecordCount = 0 then
        begin
          if (MessageDlg('Aviso, Fecha de contratación incorrecta, '+
          'La fecha de contrato no se encuentra en ningún rango de los periodos de guardia.'+
          'Desea que el sistema ajuste la fecha de contratación a la fecha mas próxima?',
          mtError,[mbyes, mbNo],0)) = mrYes then
          begin
            //acomodarGuardia;
            dtpcontratacionPopupValueAccepted(nil);
          end else
          begin
            advLblnoDomingos.Caption.Text := '';
            advLblNoFestivos.Caption.Text := '';
            advLblFechai.Caption.Text := '' ;
            advLblFechaf.Caption.Text := '';
            advLblDDiasFestivos.Caption.Text := '';
            sPeriodoGuardia := -1;
          end;
        end
        else
        begin
          advLblFechai.Caption.Text := cdtPeriodosG.FieldByName('Fechainicio').asString;
          advLblFechaf.Caption.Text := cdtPeriodosG.FieldByName('FechaTermino').asString;
          sPeriodoGuardia := cdtPeriodosG.FieldByName('IdPeriodosGuardia').AsInteger;

          //FESTIVOS Y DOMINGOS
          Try
            cdtDiasFestivos := Tzquery.Create(nil);
            Try
              Screen.Cursor := crHourGlass;
              advLblnoFestivos.Caption.Text := '';
              cdtDiasFestivos.connection:=connection.zConnection;

              // Verificar el número de festivos y domingos
              if cdtDiasFestivos.Active=False then
              begin
                {if not CrearConjunto(cdtDiasFestivos, 'rhu_diasfestivos', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Días Festivos']);}
                cdtDiasFestivos.Active:=False;
                cdtDiasFestivos.SQL.Clear;
                cdtDiasFestivos.Sql.Add('SELECT df.iddiasFestivos, df.Anio, df.Fecha, df.tipo FROM rhu_diasfestivos as df ');
                cdtDiasFestivos.SQL.Add('where ((:Anioinicio = -1 and :Aniotermino = -1) or (df.Anio between :Anioinicio and :Aniotermino)) ');
                cdtDiasFestivos.SQL.Add('order by df.Anio, df.Fecha');
              end;
              if ((cdtDiasFestivos <> nil) and (Not cdtDiasFestivos.Active)) or ((cdtDiasFestivos <> nil) and (cdtDiasFestivos.Active) and (cdtDiasFestivos.RecordCount > 0) and (YearOf(cdtDiasFestivos.FieldByName('Fecha').AsDateTime) <> YearOf(dtpcontratacion.Date))) then
              begin
                {if Not CargarDatosFiltrados(cdtDiasFestivos, 'Anioinicio,Aniotermino',[YearOf(dtpcontratacion.Date), YearOf(StrToDate(advLblFechaf.Caption.Text))]) then
                  raise InteligentException.CreateByCode(6,['Días Festivos', YearOf(dtpcontratacion.Date), 'Año']);}
                cdtDiasFestivos.ParamByName('Anioinicio').AsInteger:=YearOf(dtpcontratacion.Date);
                cdtDiasFestivos.ParamByName('Aniotermino').AsInteger:=YearOf(StrToDate(advLblFechaf.Caption.Text));
                if cdtDiasFestivos.Active then cdtDiasFestivos.Refresh
                else cdtDiasFestivos.Open;
              end;
              ContarFestivos;
            except
              on e:Exception do
                MessageDlg('Aviso,Ah ocurrido un error inesperado, '+
                  'Informe al administrador del siguiente error: ' + #10#13 + e.Message ,
                  mtError,[mbOK],0) ;
            End;
          Finally
            //EliminarConjunto(cdtDiasFestivos);
            cdtDiasFestivos.Destroy;
            Screen.Cursor := Cursor;
          End;
          SalarioCalculado :=  calcularRango;
        end;
      except
      on e:Exception do
        ShowMessage(e.Message+ e.ClassName);
      end;
    finally
      //parametros.Destroy;
    end;
  end;
end;

procedure TFrmContratarWizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DsImss.DataSet.State in [dsInsert,dsEdit] then
    DsImss.DataSet.Cancel;

  if cdBajaImss.State in [dsInsert,dsEdit] then
    cdBajaImss.Cancel;

  FlagSalario := -1;
end;

procedure TFrmContratarWizard.FormCreate(Sender: TObject);
begin
  try
    cdtmp.CreateDataSet;

    isNotificado:=False;

    //GrupoPaginas.ActivePageIndex := 0;
    sPeriodoGuardia := -1;
    iContratar := 0;             

  except
    on e:Exception do
      MessageDlg('Ha ocurrido un error inesperado, Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratarWizard.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  i:Integer;
begin
  EdtSalarioDiario.Top := 215;

  for I := 0 to GrupoPaginas.AdvPageCount-1 do
    GrupoPaginas.AdvPages[i].TabVisible:=false;

  GrupoPaginas.ActivePage:=paso1;

  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      CdOrganizacion.Active:=False;
      CdOrganizacion.Open;

      CdDepartamento.Active:=False;
      CdDepartamento.Open;

      CdImss.Active:=False;
      CdImss.Open;
      CdImss.Append;


      cdSalario.Active:=False;
      cdSalario.Open;

      CdRangoSalario.Active:=False;
      CdRangoSalario.Open;

      //llenamos el combo del primer nivel organizacional
      LlenandoOrg := True;
      try
        {if not CargarDatosFiltrados(cdBajaImss, 'IdPersonalIMSS', [-9]) then
          raise InteligentException.CreateByCode(11, [' al filtrar por personal']);}
        cdBajaImss.Active:=False;
        cdBajaImss.ParamByName('IdPersonalIMSS').AsInteger:=-9;
        if cdBajaImss.Active then
          cdBajaImss.Refresh
        else
          cdBajaImss.Open;

        cdBajaImss.Append;

        QryOrganizacion.Active := False;
        QryOrganizacion.ParamByName('padre').AsInteger := -5;
        QryOrganizacion.Open;

        if QryOrganizacion.RecordCount > 0 then
        begin
            if lblTexto.Caption = 'frm_empleados' then
               cmbOrganizacion.KeyValue  := frm_Empleados.zQEmpleados.FieldByName('idorganizacion').AsInteger;

            if lblTexto.Caption = 'frmEmpleadosGuardias' then
               cmbOrganizacion.KeyValue  := frm_EmpleadosGuardias.frmEmpleadosGuardias.zqryEmpleados.FieldByName('idorganizacion').AsInteger;
            cmbOrganizacion.OnExit(sender);
        end;

        if cdTipoNomina.RecordCount > 0 then
           LCbbTipoNomina.KeyValue := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;

      finally
        CdOrganizacion.Filtered := False;
        CdOrganizacion.First;
        LlenandoOrg := False;
      end;
      CmbOrganizacionSelect(CmbOrganizacion);

      //LlenarCombo('IdRangoSalarios', 'Titulo', TClientDataSet(dsRangoSalario.DataSet), cmbRangosS);

      advLblnoDomingos.Caption.Text := '';
      advLblNoFestivos.Caption.Text := '';
      advLblFechai.Caption.Text := '' ;
      advLblFechaf.Caption.Text := '';
      FlagSalario := -1;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
      MessageDlg('Ha ocurrido un error inesperado, Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmContratarWizard.frContratarDblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
Query : tzquery;
begin
  if (ssCtrl in Shift) and ((MessageDlg('Aviso, Esta seguro que desea contratar a :'+
    Sender.TagStr + #10#13,mtConfirmation,[mbYes,mbNo],0)) = mryes) then
  begin
    try
      iContratar := 1;
      ProcesarContrato := True;
      contratar;
      if lblTexto.Caption='frmEmpleadosGuardias' then frmEmpleadosGuardias.z.Text:='contratado';
      if lblTexto.Caption='frm_empleados' then frm_Empleados.z.Text:='contratado';
      if lblTexto.Caption='FrmCatalogoDePostulante' then FrmCatalogoDePostulante.z.Text:='contratado';
      //if form.Text='frmEmpleadosGuardiasV2' then frmEmpleadosGuardiasV2.z.Text:='contratado';

      if (lblTexto.Caption='frmEmpleadosGuardias') or (lblTexto.Caption='frm_empleados')
          or (lblTexto.Caption='frmEmpleadosGuardiasV2')
      then
      begin
        Query := TZQuery.Create(Self);
        Query.Connection := connection.ZConnection;
        Query.Active := False;
        Query.SQL.Clear;
        Query.SQL.Add('UPDATE empleados SET sStatusPersonal='+  QuotedStr('Contratado')+', iId_Puesto='+IntToStr(CdCargo.FieldByName('idcargo').AsInteger)+' WHERE sIdEmpleado='+ QuotedStr(cdbusqueda.FieldByName('codigopersonal').AsString));
        Query.ExecSQL;
      end;

      {Cerramos en automatico el reporte..}
      frContratar.PreviewForm.Close;
      Self.Close;
      self.ModalResult:=mrOK;

    except
      on e:Exception do
      begin
        messagedlg('Error: ' + e.Message + ', ' + e.ClassName,mterror,[mbok],0);
      end;
    end;
  end else ProcesarContrato := False;
end;

procedure TFrmContratarWizard.frContratarGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'FechaInicio' then
  begin
    Value := dtpcontratacion.Date;
  end;
end;

procedure TFrmContratarWizard.LlenarComboOrg(Llave,Codigo, Titulo, isr: string;
  Cliente: TClientDataset; Combo: TAdvComboBox);
var
  Org: TOrganizacion;
begin
  if Cliente.state = dsBrowse then
  begin
    Combo.items.Clear;

    Cliente.first;
    while not Cliente.eof do
    begin
      Org:= TOrganizacion.Create;
      Org.Identificador := Cliente.FieldByName(llave).AsInteger;
      Org.Isr := Cliente.FieldByName(isr).asstring;
      Combo.AddItem(Cliente.fieldbyname(Codigo).asstring + ' - ' + Cliente.fieldbyname(Titulo).asstring, Org);
      Cliente.next;
    end;
  end;
end;

procedure TFrmContratarWizard.LCbbCargoDropDown(Sender: TObject);
begin
    cbbSalario.ListFieldIndex := 0;
end;

procedure TFrmContratarWizard.LCbbDepartamentoExit(Sender: TObject);
begin
    LCbbCargo.KeyValue := cdCargo.FieldByName('idcargo').AsInteger;
end;

procedure TFrmContratarWizard.LlenarCombo(Llaves, Titulos:string; Cliente:TClientDataset; Combo:TAdvComboBox);
begin
  if Cliente.state = dsBrowse then
  begin
    Combo.items.Clear;
    Cliente.first;
    while not Cliente.eof do
    begin
      Combo.AddItem(Cliente.fieldbyname(Titulos).asstring, TObject(Cliente.FieldByName(llaves).AsInteger));
      Cliente.next;
    end;
  end;
end;

procedure TFrmContratarWizard.EstadoBotones;
begin
  // Verificar que botones deben estar habilitados
  Btn_Anterior.Enabled := GrupoPaginas.ActivePageIndex > 0;
  //Btn_Siguiente.Enabled := GrupoPaginas.ActivePageIndex < GrupoPaginas.AdvPageCount -1;
  Btn_Contratar.Enabled := GrupoPaginas.ActivePageIndex = GrupoPaginas.AdvPageCount -1;
end;

procedure TfrmContratarWizard.ActualizaSalarioDiarioEmpleados;
begin
    //Actualizo la tabla de empleados.
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Update empleados set dSueldodiario =:sueldo where idpersonal =:empleado');
    connection.zCommand.ParamByName('empleado').AsInteger := frmempleados.frm_Empleados.zQEmpleados.FieldByName('IdPersonal').AsInteger;
    connection.zCommand.ParamByName('sueldo').AsFloat     := StrToFloat(edtSalarioDiario.Text);
    connection.zCommand.ExecSQL;
end;

end.
