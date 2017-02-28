unit UTFrmEvaluarEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, global, OleCtrls,
  Dialogs, StdCtrls, ExtCtrls, UTFrmEvaluacionPersonal, dxGDIPlusClasses, jpeg, frm_connection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGraphics, cxControls, UnitExcel, ExcelXP, ComObj, Excel2000,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBCtrls, AdvGlowButton, ComCtrls,
  AdvPanel, Grids, DBGrids, RXDBCtrl, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, Spin, frm_barra, frxClass, frxDBSet, Buttons, Menus,
  cxButtons, OleServer, ExtDlgs;

type
  TFrmEvaluarEmpleados = class(TForm)
    panelDatos: TPanel;
    imagen: TImage;
    panelFoto: TPanel;
    datosPersonales: TPanel;
    lbl7: TLabel;
    pnl1: TPanel;
    lbl8: TLabel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    zqryEmpleados: TZQuery;
    strngfldFolioEmpleadossNombreCompleto: TStringField;
    strngfldFolioEmpleadossIdEmpleado: TStringField;
    sIdEmpleado: TcxGridDBColumn;
    sNombreCompleto: TcxGridDBColumn;
    atncfldEmpleadosIdPersonal: TAutoIncField;
    strngfldFolioEmpleadoslSexo: TStringField;
    dtfldAplicacionEmpleadosdFechaNacimiento: TDateField;
    lbl1: TLabel;
    lblNombre: TLabel;
    lbl2: TLabel;
    lblFicha: TLabel;
    dsEmpleados: TDataSource;
    panelEncuesta: TPanel;
    Evaluar: TPanel;
    lbl6: TLabel;
    lblEvaluarA: TLabel;
    panelScroll: TScrollBox;
    panelFechas: TPanel;
    dtpFechaActual: TDateTimePicker;
    lblFecha: TLabel;
    IdEmpleadoEmpleadosiddepartamento: TIntegerField;
    cbbValores: TComboBox;
    cbbDesempeno: TComboBox;
    lblValores: TLabel;
    lblDesempeno: TLabel;
    panelA1: TPanel;
    panelA2: TPanel;
    panelA3: TPanel;
    panelB1: TPanel;
    panelB2: TPanel;
    panelB3: TPanel;
    panelC1: TPanel;
    panelC2: TPanel;
    panelC3: TPanel;
    panelComentarios: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblCompromisos: TLabel;
    cxgrdbtblvwGrid1DBTableView11: TcxGridDBTableView;
    cxgrdlvlGrid1Level11: TcxGridLevel;
    gridCalificaciones: TcxGrid;
    memoPositivos: TMemo;
    memoMejoras: TMemo;
    memoCompromisos: TMemo;
    lblTituloDescripcion: TLabel;
    lblDescripcion: TLabel;
    zqryEvaluaciones: TZQuery;
    dsEvaluaciones: TDataSource;
    folioGrid1DBTableView11eValores: TcxGridDBColumn;
    folioGrid1DBTableView11eDesempeno: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView11Column1: TcxGridDBColumn;
    sDescripcion: TcxGridDBColumn;
    lblTituloAnoEvaluado: TLabel;
    AnoEvaluado: TcxGridDBColumn;
    panelBotonera: TPanel;
    btnNuevo: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnCancelar1: TAdvGlowButton;
    btnEliminar: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    seAnoEvaluado: TSpinEdit;
    btnSalir: TAdvGlowButton;
    frmBarra1: TfrmBarra;
    lblVer: TLabel;
    cbbVer: TComboBox;
    nombre: TcxGridDBColumn;
    frxReporte: TfrxDBDataset;
    reporte: TfrxReport;
    imgBlancoNegro: TImage;
    frxReporteIndividual: TfrxDBDataset;
    zqryIndividual: TZQuery;
    zqOrganizacionEmpleadosdSueldo: TFloatField;
    btnImportarEvaluacion: TBitBtn;
    btnSeleccionar: TBitBtn;
    edtArchivo: TEdit;
    dlgArchivo: TOpenDialog;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    progressbar1: TProgressBar;
    strngfldEmpleadosNombre: TStringField;
    strngfldEmpleadossApellidoPaterno: TStringField;
    strngfldEmpleadossApellidoMaterno: TStringField;
    strngfldEmpleadostitulocargo: TStringField;
    lbl3: TLabel;
    btnExportar: TBitBtn;
    btnGenerarPlantilla: TBitBtn;
    dlgArchivo2: TOpenTextFileDialog;
    procedure btnCancelarClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure concatenarCalificacion;
    procedure cbbValoresChange(Sender: TObject);
    procedure cbbDesempenoChange(Sender: TObject);
    procedure descolorearCaja(caja : string);
    procedure descolorearLimpiar( caja : string);
    procedure FormShow(Sender: TObject);
    procedure mostrarDescripcion(calificacion : string);
    procedure panelA1Click(Sender: TObject);
    procedure panelA2Click(Sender: TObject);
    procedure panelA3Click(Sender: TObject);
    procedure panelB1Click(Sender: TObject);
    procedure panelB2Click(Sender: TObject);
    procedure panelB3Click(Sender: TObject);
    procedure panelC1Click(Sender: TObject);
    procedure panelC2Click(Sender: TObject);
    procedure panelC3Click(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure mostrarEvaluacionesGrid;
    procedure limpiarCampos;
    procedure cxgrdbtblvwGrid1DBTableView11CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DeshabilitarCasillas;
    procedure habilitarCasillas;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnCancelar1Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure cbbVerChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure mostrarFoto;
    procedure cbbValoresKeyPress(Sender: TObject; var Key: Char);
    procedure cbbDesempenoKeyPress(Sender: TObject; var Key: Char);
    procedure memoPositivosKeyPress(Sender: TObject; var Key: Char);
    procedure memoMejorasKeyPress(Sender: TObject; var Key: Char);
    procedure cbbValoresEnter(Sender: TObject);
    procedure cbbValoresExit(Sender: TObject);
    procedure cbbDesempenoEnter(Sender: TObject);
    procedure cbbDesempenoExit(Sender: TObject);
    procedure memoPositivosEnter(Sender: TObject);
    procedure memoPositivosExit(Sender: TObject);
    procedure memoMejorasEnter(Sender: TObject);
    procedure memoMejorasExit(Sender: TObject);
    procedure memoCompromisosEnter(Sender: TObject);
    procedure memoCompromisosExit(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnImportarEvaluacionClick(Sender: TObject);
    procedure importarEvaluacion;

    function getDescripcion(calificacion : string) : string;

    procedure excelEvaluacionPorEmpleado(iIdPersonal : Integer; eValores : string; eDesempeno : string; iAnoEvaluado : Integer; dSueldo : Real; sDescripcion : string; sComentariosPositivos : string; sComentariosMejoras : string; sCompromisos : string);

    procedure updateExcelEvaluacionPorEmpleado(iIdPersonal : Integer; eValores : string; eDesempeno : string; iAnoEvaluado : Integer; dSueldo : Real; sDescripcion : string);
    procedure btnExportarClick(Sender: TObject);

    procedure exportarEvaluacion;
    procedure btnGenerarPlantillaClick(Sender: TObject);

    procedure generarPlantilla;
    procedure zqryEmpleadosAfterScroll(DataSet: TDataSet);
    procedure edtArchivoEnter(Sender: TObject);
    procedure edtArchivoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    
  private
    { Private declarations }
    calificacion : string;
  public
    abiertoXFormShow : Boolean;
    { Public declarations }
  end;

 var
  //frmImportaciondeDatos: TfrmImportaciondeDatos;
  Excel, Libro, Hoja: Variant;
  columnas: array[1..260] of string;
  MensajePartidas, sDatoNivel: string;
  lContratoActual: boolean;
  flcid: integer;
  CodigoColor: array[1..4] of string;

  recursos: array[1..25000, 1..6] of string;
  registro: integer;
 //
var
  FrmEvaluarEmpleados: TFrmEvaluarEmpleados;
  editar : boolean;

implementation

{$R *.dfm}
uses
  DateUtils;

procedure TFrmEvaluarEmpleados.btnExportarClick(Sender: TObject);
begin
  //Exporta las evaluaciones a Excel, como en el archivo que el usuario envio
  exportarEvaluacion;
end;

procedure TFrmEvaluarEmpleados.btnCancelar1Click(Sender: TObject);
begin
  lblTituloDescripcion.Visible := false;
  lblDescripcion.Visible := False;
  //Deshabilita los campos
limpiarCampos;
DeshabilitarCasillas;
  //Habilitar los botones que se deshbilitaron
  btnNuevo.Enabled := true;
    btnEditar.Enabled := true;
    btnEliminar.Enabled := true;
    btnImprimir.Enabled := true;
    btnExportar.Enabled := true;
    btnSalir.Enabled := true;

    //Habilitar los grid de empleados
    gridCalificaciones.Enabled := true;
    cxgrd1.Enabled := true;
end;

procedure TFrmEvaluarEmpleados.btnCancelarClick(Sender: TObject);
begin
  //Cuando se de click en Cancelar, entonces se debe de cerrar la ventana de Evaluacion del Empleado
  Close;
end;

procedure TFrmEvaluarEmpleados.btnEditarClick(Sender: TObject);
begin
  if zqryEvaluaciones.FieldByName('IidEvaluacion').AsInteger <> 0 then
  begin
    //Deshabilitar los grid para que no cambien de empleado en la creacion de una evaluacion
    cxgrd1.Enabled := false;
    gridCalificaciones.Enabled := false;

    //Habilita los campos para hacer la edicion de la evaluacion del empleado
    habilitarCasillas;

    //Tambien se deben habilitar los botones Salvar y Cancelar
     btnSalvar.Enabled := true;
    btnCancelar1.Enabled := true;
    editar := true;
    seAnoEvaluado.Enabled := false;

    //Deshabilitar los botones: Nuevo, Editar, Eliminar, Imprimir, Actualizar y salir
    btnNuevo.Enabled := false;
    btnEditar.Enabled := false;
    btnEliminar.Enabled := false;
    btnImprimir.Enabled := false;
    btnExportar.Enabled := false;
    btnSalir.Enabled := false;

    //Poner el foco en el combo cbbValores
    cbbValores.SetFocus;
  end
end;

procedure TFrmEvaluarEmpleados.btnEliminarClick(Sender: TObject);
var
  zqryEliminarEvaluacion : TZQuery;
begin
  //Eliminar el registro seleccionado del grid de evaluaciones
  If zqryEvaluaciones.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar la Evaluacion?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          try
          zqryEliminarEvaluacion := TZQuery.Create(Self);
          zqryEliminarEvaluacion.Connection := connection.ZConnection;
          zqryEliminarEvaluacion.Active:=False;
          zqryEliminarEvaluacion.SQL.Clear;
          zqryEliminarEvaluacion.SQL.Add('delete from rh_evaluacionporempleado where iIdPersonal = :iIdPersonal and iAnoEvaluado = :iAnoEvaluado');
          zqryEliminarEvaluacion.Params.ParamByName('iIdPersonal').AsInteger := zqryEmpleados.FieldByName('IdPersonal').AsInteger;
          zqryEliminarEvaluacion.Params.ParamByName('iAnoEvaluado').AsInteger := zqryEvaluaciones.FieldByName('iAnoEvaluado').AsInteger;

          zqryEliminarEvaluacion.ExecSQL;

          zqryEvaluaciones.Refresh;

          //Cada vez que se elimine una fila, se deben de poner vacias los campos del form
          limpiarCampos;
          deshabilitarCasillas;
          except
            on e:Exception do
              ShowMessage(e.Message);
          end
        end;
  end;
end;

procedure TFrmEvaluarEmpleados.btnGenerarPlantillaClick(Sender: TObject);
begin
  //Generar Plantilla
  generarPlantilla;
end;

procedure TFrmEvaluarEmpleados.btnGuardarClick(Sender: TObject);
var
  zqryInsertarEvaluacion : TZQuery;
  zqryValidarGuardado : TZQuery;
  zqryActualizarEvaluacion : TZQuery;
begin
  if editar = false then
  begin
    //Esta consulta nos dira si en la fecha indicada ya se agrego una evaluacion, en caso de ke a ese empleado se le halla
    //evaluado, entonces ya no se le podra evaluar
    zqryValidarGuardado := TZQuery.Create(Self);
    zqryValidarGuardado.Active:= false;
    zqryValidarGuardado.Connection := connection.zConnection;
    zqryValidarGuardado.SQL.Clear;
    zqryValidarGuardado.SQL.Text:= 'select * from rh_evaluacionporempleado where iIdPersonal = :iIdPersonal and iAnoEvaluado = :iAnoEvaluado';
    zqryValidarGuardado.Params.ParamByName('iIdPersonal').AsInteger := zqryEmpleados.FieldByName('IdPersonal').AsInteger;
    zqryValidarGuardado.Params.ParamByName('iAnoEvaluado').AsInteger := seAnoEvaluado.Value;
    zqryValidarGuardado.Open;

    if zqryValidarGuardado.RecordCount > 0 then
    begin
      ShowMessage('El empleado ya fue evaluado en el año seleccionado, solo se permite modificar la evaluacion');
    end
    else
    begin
      if (cbbValores.ItemIndex >= 0) and (cbbDesempeno.ItemIndex >= 0) then
      begin
      if (cbbValores.Text = 'NA') or (cbbDesempeno.Text = 'NA')  then
      begin
        cbbValores.ItemIndex := 0;
        cbbDesempeno.ItemIndex := 0;
      end;
        //Insertar los datos otenidos de la evaluacion
        {$REGION 'Consulta de inserccion'}

        connection.zCommand.Active := False;

        connection.zCommand.SQL.Text := 'insert into rh_evaluacionporempleado(iIdPersonal, ' +
                                            'eValores, eDesempeno, dFechaEvaluacion, iAnoEvaluado, dSueldo, sDescripcion, sComentariosPositivos,' +
                                            'sComentariosMejoras, sCompromisos) ' +#10+
                                            'values(:iIdPersonal, :eValores, :eDesempeno, ' +
                                            ':dFechaEvaluacion, :iAnoEvaluado, :dSueldo, :sDescripcion, :sComentariosPositivos, :sComentariosMejoras, '+
                                            ':sCompromisos)';
        connection.zCommand.Params.ParamByName('iIdPersonal').AsInteger:= zqryEmpleados.FieldByName('IdPersonal').AsInteger;
        connection.zCommand.Params.ParamByName('eValores').AsString := cbbValores.Text;
        connection.zCommand.Params.ParamByName('eDesempeno').AsString := cbbDesempeno.Text;
        connection.zCommand.Params.ParamByName('dFechaEvaluacion').AsDateTime := dtpFechaActual.DateTime;
        connection.zCommand.Params.ParamByName('iAnoEvaluado').AsInteger := seAnoEvaluado.Value;
        connection.zCommand.Params.ParamByName('dSueldo').AsFloat := zqryEmpleados.FieldByName('dSueldo').AsFloat;
        connection.zCommand.Params.ParamByName('sDescripcion').AsString := lblDescripcion.Caption;
        connection.zCommand.Params.ParamByName('sComentariosPositivos').AsString := memoPositivos.Text;
        connection.zCommand.Params.ParamByName('sComentariosMejoras').AsString := memoMejoras.Text;
        connection.zCommand.Params.ParamByName('sCompromisos').AsString := memoCompromisos.Text;

        {$ENDREGION}

        try
        begin
           connection.zCommand.ExecSQL();
           ShowMessage('Evaluacion creada correctamente');
           limpiarCampos;
           mostrarEvaluacionesGrid;
           cbbValores.SetFocus;
           DeshabilitarCasillas;

           //Los botones de Salvar y Cancelar se deben de desactivar cuando se Salve
           deshabilitarCasillas;
           btnSalvar.Enabled := false;
           btnCancelar1.Enabled := false;

           //Habilitar los botones que se deshbilitaron
            btnNuevo.Enabled := true;
            btnEditar.Enabled := true;
            btnEliminar.Enabled := true;
            btnImprimir.Enabled := true;
            btnExportar.Enabled := true;
            btnSalir.Enabled := true;

            //Habilitar el grid de empleados
            cxgrd1.Enabled := true;
        end;

        except
          on e:Exception do
          begin
            MessageDlg('No se pudo insertar la evaluacion ha ocurrido el siguiente problema: '+#10+e.Message, mtInformation, [mbOK], 0);
          end;

        end;
      end else
      begin
        ShowMessage('La Evaluacion no es valida, corrobore que la calificacion seleccionada es valida');
      end;
    end;
  end

  else  // Si editar es verdadero, entonces se realizara una actualizacion de la evaluacion
  begin
    if (cbbValores.Text = 'NA') or (cbbDesempeno.Text = 'NA')  then
    begin
      cbbValores.ItemIndex := 0;
      cbbDesempeno.ItemIndex := 0;
    end;

    editar := false;

    //Realizar la actualizacion de la evaluacion seleccionada
    zqryActualizarEvaluacion := TZQuery.Create(Self);
    zqryActualizarEvaluacion.Active:= false;
    zqryActualizarEvaluacion.Connection := connection.zConnection;
    zqryActualizarEvaluacion.SQL.Clear;
    zqryActualizarEvaluacion.SQL.Text:= 'update rh_evaluacionporempleado set eValores = :eValores, ' +
                                        'eDesempeno = :eDesempeno, dFechaEvaluacion = :dFechaEvaluacion, ' +
                                        'iAnoEvaluado = :iAnoEvaluado,  sDescripcion = :sDescripcion, ' +
                                        'sComentariosPositivos = :sComentariosPositivos, ' +
                                        'sComentariosMejoras = :sComentariosMejoras, sCompromisos = :sCompromisos ' +
                                        'where IidEvaluacion = :IidEvaluacion';
    zqryActualizarEvaluacion.Params.ParamByName('eValores').AsString := cbbValores.Text;
    zqryActualizarEvaluacion.Params.ParamByName('eDesempeno').AsString := cbbDesempeno.Text;
    zqryActualizarEvaluacion.Params.ParamByName('dFechaEvaluacion').AsDate := dtpFechaActual.DateTime;
    zqryActualizarEvaluacion.Params.ParamByName('iAnoEvaluado').AsInteger := seAnoEvaluado.Value;
    zqryActualizarEvaluacion.Params.ParamByName('sDescripcion').AsString := lblDescripcion.Caption;
    zqryActualizarEvaluacion.Params.ParamByName('sComentariosPositivos').AsString := memoPositivos.Text;
    zqryActualizarEvaluacion.Params.ParamByName('sComentariosMejoras').AsString := memoMejoras.Text;
    zqryActualizarEvaluacion.Params.ParamByName('sCompromisos').AsString := memoCompromisos.Text;
    zqryActualizarEvaluacion.Params.ParamByName('IidEvaluacion').AsInteger := zqryEvaluaciones.FieldByName('IidEvaluacion').AsInteger;
    zqryActualizarEvaluacion.ExecSQL;

    zqryEvaluaciones.Refresh;

    //Los botones de Salvar y Cancelar se deben de desactivar cuando se Actualice
    deshabilitarCasillas;
    btnSalvar.Enabled := false;
    btnCancelar1.Enabled := false;

    //Habilitar los botones que se deshbilitaron
    btnNuevo.Enabled := true;
    btnEditar.Enabled := true;
    btnEliminar.Enabled := true;
    btnImprimir.Enabled := true;
    btnExportar.Enabled := true;
    btnSalir.Enabled := true;

    //Habilitar los grid de empleados
    cxgrd1.Enabled := true;
    gridCalificaciones.Enabled := true;
  end;

end;

procedure TFrmEvaluarEmpleados.btnImportarEvaluacionClick(Sender: TObject);
begin
  //Importar los datos de la plantilla de Excel al Sistema
  importarEvaluacion;
end;

procedure TFrmEvaluarEmpleados.btnImprimirClick(Sender: TObject);
begin




  if cbbVer.ItemIndex = 1 then
  begin
    //Mostrar reporte de evaluaciones
    connection.configuracionRecHum.Active := false;
    connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
    connection.configuracionRecHum.Open;
    reporte.LoadFromFile(global_files + global_MiReporte+ '_EvaluacionEmpleado.fr3') ;
     if not FileExists(global_files + global_miReporte + '_EvaluacionEmpleado.fr3') then
   begin
    showmessage('El archivo de reporte '+global_Mireporte+'_EvaluacionEmpleado.fr3 no existe, notifique al administrador del sistema');
   end;

    reporte.ShowReport();
  end else if cbbVer.ItemIndex = 0 then
  begin
  zqryIndividual.Active := false;
  zqryIndividual.Params.ParamByName('Personal').AsInteger := zqryEmpleados.FieldByName('IdPersonal').AsInteger;
  zqryIndividual.Open;

    //Mostrar reporte individual del empleado
     connection.configuracionRecHum.Active := false;
    connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
    connection.configuracionRecHum.Open;
    reporte.LoadFromFile(global_files + global_MiReporte+ '_EvaluacionIndividual.fr3') ;

       if not FileExists(global_files + global_miReporte + '_EvaluacionIndividual.fr3') then
    begin
      showmessage('El archivo de reporte '+global_Mireporte+'_EvaluacionIndividual.fr3 no existe, notifique al administrador del sistema');

      end;
    reporte.ShowReport();
  end;
           


end;

procedure TFrmEvaluarEmpleados.btnNuevoClick(Sender: TObject);
begin
  //Bloquear los grid para que no cambien de empleado
  cxgrd1.Enabled := False;

  //Habilita las opciones para poder evluar al empleado
  limpiarCampos;
  habilitarCasillas;

  //Habilitar los botones de Salvar y Cancelar
  btnSalvar.Enabled := true;
  btnCancelar1.Enabled := true;

  //Deshabilitar los botones: Nuevo, Editar, Eliminar, Imprimir, Actualizar y salir
  btnNuevo.Enabled := false;
  btnEditar.Enabled := false;
  btnEliminar.Enabled := false;
  btnImprimir.Enabled := false;
  btnExportar.Enabled := false;
  btnSalir.Enabled := false;

  //Poner el foco en el combo cbbValores
  cbbValores.SetFocus;
end;

procedure TFrmEvaluarEmpleados.btnSeleccionarClick(Sender: TObject);
begin
  //Seleccionar el archivo con la plantilla de evaluacion
  if dlgArchivo2.Execute() then
  begin
    edtArchivo.Text := dlgArchivo2.FileName;
  end;
end;

procedure TFrmEvaluarEmpleados.cbbDesempenoChange(Sender: TObject);
begin
  //Concatena los valores de los dos combo box y pone el vlor ne el label calificacio siempre y cuando los dos combos
  //tengan una calificacion valida
  concatenarCalificacion;
end;

procedure TFrmEvaluarEmpleados.cbbDesempenoEnter(Sender: TObject);
begin
  //
  cbbDesempeno.Color := global_color_entradaERP
end;

procedure TFrmEvaluarEmpleados.cbbDesempenoExit(Sender: TObject);
begin
  cbbDesempeno.Color := global_color_salidaERP;
end;

procedure TFrmEvaluarEmpleados.cbbDesempenoKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Salta al campo memoPositivos
  if Key = #13 then
    memoPositivos.SetFocus
end;

procedure TFrmEvaluarEmpleados.cbbValoresChange(Sender: TObject);
begin
  //Concatena los valores de los dos combo box y pone el vlor ne el label calificacio siempre y cuando los dos combos
  //tengan una calificacion valida
  concatenarCalificacion;
end;

procedure TFrmEvaluarEmpleados.cbbValoresEnter(Sender: TObject);
begin
  //Al entrar al combo, tendra un color
  cbbValores.Color := global_color_entradaERP
end;

procedure TFrmEvaluarEmpleados.cbbValoresExit(Sender: TObject);
begin
  //Al salir del combo cbbValores, tendra otro color
  cbbValores.Color := global_color_salidaERP;
end;

procedure TFrmEvaluarEmpleados.cbbValoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Saltar al campo desempeno
  if Key = #13 then
    cbbDesempeno.SetFocus
end;

procedure TFrmEvaluarEmpleados.limpiarCampos;
begin
  cbbValores.ItemIndex := 0;
  cbbDesempeno.ItemIndex := 0;
  memoPositivos.Text := '';
  memoMejoras.Text := '';
  memoCompromisos.Text := '';
  descolorearLimpiar('NA');
  mostrarDescripcion('NA');
end;

procedure TFrmEvaluarEmpleados.cbbVerChange(Sender: TObject);
begin
  //Cuando el combo cambie se deben mostrar ya sea las evaluaciones del empleado seleccionado o de todos los empleados
  if cbbVer.ItemIndex = 0 then
  begin
    btnNuevo.Enabled := True;
    btnEditar.Enabled := True;
    btnEliminar.Enabled := True;

    //Mostrar solo las evaluaciones del empleado seleccionado
    mostrarEvaluacionesGrid;
  end
  else if cbbVer.ItemIndex = 1 then
  begin
    //Deshabilitar los botones para que el usuario no pueda modificar ni hacer nada, mas que imprimir y cerrar
    btnNuevo.Enabled := False;
    btnEditar.Enabled := False;
    btnEliminar.Enabled := False;
    limpiarCampos;
    lblTituloDescripcion.Caption := '';
    lblDescripcion.Caption := '';
    //Si es la opcion de Todos los empleados entonces, debe mostrar las evaluaciones de todos los empleados
    zqryEvaluaciones.Active := False;
    zqryEvaluaciones.Open;

    zqryEvaluaciones.Filtered := false; //No hace filtrado, entonces se muestran todas las evaluaciones
  end;

end;

procedure TFrmEvaluarEmpleados.concatenarCalificacion;
var
  calificacion :string;
begin
  //Concatena las calificaciones de los dos combobox siempre y cuando los dos tengan un valor valido
  if (cbbValores.ItemIndex >= 0) and (cbbDesempeno.ItemIndex >= 0) then
  begin

    lblTituloDescripcion.Visible := True;
    lblDescripcion.Visible := True;

    calificacion := cbbValores.Text + cbbDesempeno.Text;

    //Colorear el panel de la tabla de calificaciones segun elija el usuario las calificaciones de los combos
    if calificacion = 'A1' then
    begin
      panelA1.Color := clBlack;
      panelA1.Font.Color := clWhite;
      descolorearLimpiar('A1');
      mostrarDescripcion('A1');
    end else if calificacion = 'A2' then
    begin
      panelA2.Color := clBlack;
      panelA2.Font.Color := clWhite;
      descolorearLimpiar('A2');
      mostrarDescripcion('A2');
    end else if calificacion = 'A3' then
    begin
      panelA3.Color := clBlack;
      panelA3.Font.Color := clWhite;
      descolorearLimpiar('A3');
      mostrarDescripcion('A3');
    end else if calificacion = 'B1' then
    begin
      panelB1.Color := clBlack;
      panelB1.Font.Color := clWhite;
      descolorearLimpiar('B1');
      mostrarDescripcion('B1');
    end else if calificacion = 'B2' then
    begin
      panelB2.Color := clBlack;
      panelB2.Font.Color := clWhite;
      descolorearLimpiar('B2');
      mostrarDescripcion('B2');
    end else if calificacion = 'B3' then
    begin
      panelB3.Color := clBlack;
      panelB3.Font.Color := clWhite;
      descolorearLimpiar('B3');
      mostrarDescripcion('B3');
    end else if calificacion = 'C1' then
    begin
      panelC1.Color := clBlack;
      panelC1.Font.Color := clWhite;
      descolorearLimpiar('C1');
      mostrarDescripcion('C1');
    end else if calificacion = 'C2' then
    begin
      panelC2.Color := clBlack;
      panelC2.Font.Color := clWhite;
      descolorearLimpiar('C2');
      mostrarDescripcion('C2');
    end else if calificacion = 'C3' then
    begin
      panelC3.Color := clBlack;
      panelC3.Font.Color := clWhite;
      descolorearLimpiar('C3');
      mostrarDescripcion('C3');
    end else if (cbbValores.Text = 'NA') or (cbbDesempeno.Text = 'NA') then
    begin
      mostrarDescripcion('NA');
    end

  end

  else //Si no se dio una calificacion diferente de NA en los dos combos entonces que no alumbre ningun panel
  begin
    descolorearLimpiar('NA');
    lblTituloDescripcion.Visible := false;
    lblDescripcion.Visible := false;
  end;

end;

procedure TFrmEvaluarEmpleados.cxgrdbtblvwGrid1DBTableView11CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Cuando se seleccione una evaluacion del empleado, entonces se debn de mostrar los datos en los campos
  //del formulario
  if cbbVer.ItemIndex = 1 then
  begin
    Exit;
  end
  else if zqryEvaluaciones.RecordCount > 0 then
  begin
    //Poner el valor del año en el spin
    seAnoEvaluado.Text := IntToStr(zqryEvaluaciones.FieldByName('iAnoEvaluado').AsInteger);

     if zqryEvaluaciones.FieldByName('eValores').AsString = 'A' then
      begin
        cbbValores.ItemIndex := 1;
      end else if zqryEvaluaciones.FieldByName('eValores').AsString = 'B' then
      begin
        cbbValores.ItemIndex := 2;
      end else if zqryEvaluaciones.FieldByName('eValores').AsString = 'C' then
      begin
        cbbValores.ItemIndex := 3;
      end else if zqryEvaluaciones.FieldByName('eValores').AsString = 'NA' then
      begin
        cbbValores.ItemIndex := 0;
      end;

      if zqryEvaluaciones.FieldByName('eDesempeno').AsString = '1' then
      begin
        cbbDesempeno.ItemIndex := 1;
      end else if zqryEvaluaciones.FieldByName('eDesempeno').AsString= '2' then
      begin
        cbbDesempeno.ItemIndex := 2;
      end else if zqryEvaluaciones.FieldByName('eDesempeno').AsString = '3' then
      begin
        cbbDesempeno.ItemIndex := 3;
      end else if zqryEvaluaciones.FieldByName('eDesempeno').AsString = 'NA' then
      begin
        cbbDesempeno.ItemIndex := 0;
      end;
      concatenarCalificacion;

      memoPositivos.Text := zqryEvaluaciones.FieldByName('sComentariosPositivos').AsString;
      memoMejoras.Text := zqryEvaluaciones.FieldByName('sComentariosMejoras').AsString;
      memoCompromisos.Text := zqryEvaluaciones.FieldByName('sCompromisos').AsString;
  end;


end;

procedure TFrmEvaluarEmpleados.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnNuevo.Enabled := True;
  btnEditar.Enabled := True;
  btnEliminar.Enabled := True;
  lblTituloDescripcion.Visible := false;
  lblDescripcion.Visible := false;
  //Cuando se de click en un empleado debe mostrar el nombre del empleado y su evaluaciom asi como la ficha
  lblFicha.Caption := zqryEmpleados.FieldByName('sIdEmpleado').AsString;
  lblNombre.Caption := zqryEmpleados.FieldByName('sNombreCompleto').AsString;
  lblEvaluarA.Caption := zqryEmpleados.FieldByName('sNombreCompleto').AsString;

  limpiarCampos;

  mostrarEvaluacionesGrid;

  //Poner el combo de Evaljaciones de en el primer index ('Este empleado')
  cbbVer.ItemIndex := 0;

  //Mostrar la foto del empleado seleccionado en ese momento
  mostrarFoto;
end;

procedure TFrmEvaluarEmpleados.descolorearCaja(caja: string);
begin
  //Descolorea a las cajas que no deben estar coloreadas, pues solo puede estar coloreada la que sea calificada x el usuario
  if caja = 'A1' then
  begin
    panelA1.Color := clWhite;
    panelA1.Font.Color := clBlack;
  end else if caja = 'A2' then
  begin
    panelA2.Color := clWhite;
    panelA2.Font.Color := clBlack;
  end else if caja = 'A3' then
  begin
    panelA3.Color := clWhite;
    panelA3.Font.Color := clBlack;
  end else if caja = 'B1' then
  begin
    panelB1.Color := clWhite;
    panelB1.Font.Color := clBlack;
  end else if caja = 'B2' then
  begin
    panelB2.Color := clWhite;
    panelB2.Font.Color := clBlack;
  end else if caja = 'B3' then
  begin
    panelB3.Color := clWhite;
    panelB3.Font.Color := clBlack;
  end else if caja = 'C1' then
  begin
    panelC1.Color := clWhite;
    panelC1.Font.Color := clBlack;
  end else if caja = 'C2' then
  begin
    panelC2.Color := clWhite;
    panelC2.Font.Color := clBlack;
  end else if caja = 'C3' then
  begin
    panelC3.Color := clWhite;
    panelC3.Font.Color := clBlack;
  end

end;

procedure TFrmEvaluarEmpleados.descolorearLimpiar(caja: string);
begin
  if caja = 'A1' then
  begin
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'A2' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'A3' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'B1' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'B2' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'B3' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'C1' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C2');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'C2' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C3');
    descolorearCaja('NA');
  end else if caja = 'C3' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('NA');
  end else if caja = 'NA' then
  begin
    descolorearCaja('A1');
    descolorearCaja('A2');
    descolorearCaja('A3');
    descolorearCaja('B1');
    descolorearCaja('B2');
    descolorearCaja('B3');
    descolorearCaja('C1');
    descolorearCaja('C2');
    descolorearCaja('C3');
  end

end;

procedure TFrmEvaluarEmpleados.DeshabilitarCasillas;
begin
  //Desabhilita las casillas para que no puedan ser modificadas por el usuario
  cbbValores.Enabled := False;
  cbbDesempeno.Enabled := False;
  seAnoEvaluado.Enabled := False;
  panelA1.Enabled := False;
  panelA2.Enabled := False;
  panelA3.Enabled := False;
  panelB1.Enabled := False;
  panelB2.Enabled := False;
  panelB3.Enabled := False;
  panelC1.Enabled := False;
  panelC2.Enabled := False;
  panelC3.Enabled := False;

  memoPositivos.Enabled := False;
  memoMejoras.Enabled := False;
  memoCompromisos.Enabled := False;

  //Los botones de Salvar y Cancelar tammbien deben de estar desactivados
  btnSalvar.Enabled := false;
  btnCancelar1.Enabled := false;
end;

procedure TFrmEvaluarEmpleados.edtArchivoEnter(Sender: TObject);
begin
   edtArchivo.Color := global_color_entradaERP;
end;

procedure TFrmEvaluarEmpleados.edtArchivoExit(Sender: TObject);
begin
   edtArchivo.Color := global_color_salidaERP;
end;

procedure TFrmEvaluarEmpleados.excelEvaluacionPorEmpleado(iIdPersonal: Integer;
  eValores, eDesempeno: string; iAnoEvaluado: Integer; dSueldo: Real;
  sDescripcion: string; sComentariosPositivos : string; sComentariosMejoras : string; sCompromisos : string);
begin
  //De excel a la tabla rh_evaluacionporempleado
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('INSERT INTO rh_evaluacionporempleado (iIdPersonal, eValores, eDesempeno, dFechaEvaluacion, iAnoEvaluado, dSueldo, sDescripcion, sComentariosPositivos, sComentariosMejoras, sCompromisos)' +
  ' VALUES (:iIdPersonal, :eValores, :eDesempeno, :dFechaEvaluacion, :iAnoEvaluado, :dSueldo, :sDescripcion, :sComentariosPositivos, :sComentariosMejoras, :sCompromisos)');

  //Connection.zCommand.Params.ParamByName('iIdPersonal').DataType := ftInteger;
  Connection.zCommand.Params.ParamByName('iIdPersonal').AsInteger := iIdPersonal;

  //Connection.zCommand.Params.ParamByName('eValores').DataType := ftString;
  Connection.zCommand.Params.ParamByName('eValores').AsString := eValores;

  //Connection.zCommand.Params.ParamByName('eDesempeno').DataType := ftString;
  Connection.zCommand.Params.ParamByName('eDesempeno').AsString := eDesempeno;

  Connection.zCommand.Params.ParamByName('dFechaEvaluacion').DataType := ftDate;
  Connection.zCommand.Params.ParamByName('dFechaEvaluacion').value := Date;

  //Connection.zCommand.Params.ParamByName('iAnoEvaluado').DataType := ftInteger;
  Connection.zCommand.Params.ParamByName('iAnoEvaluado').AsInteger := iAnoEvaluado;

  Connection.zCommand.Params.ParamByName('dSueldo').DataType := ftFloat;
  Connection.zCommand.Params.ParamByName('dSueldo').value := dSueldo;

  //Connection.zCommand.Params.ParamByName('sDescripcion').DataType := ftString;
  Connection.zCommand.Params.ParamByName('sDescripcion').AsString := sDescripcion;

  //Connection.zCommand.Params.ParamByName('sComentariosPositivos').DataType := ftString;
  Connection.zCommand.Params.ParamByName('sComentariosPositivos').AsString := sComentariosPositivos;

  //Connection.zCommand.Params.ParamByName('sComentariosMejoras').DataType := ftString;
  Connection.zCommand.Params.ParamByName('sComentariosMejoras').AsString := sComentariosMejoras;

  //Connection.zCommand.Params.ParamByName('sCompromisos').DataType := ftString;
  Connection.zCommand.Params.ParamByName('sCompromisos').AsString := sCompromisos;

  Connection.zCommand.ExecSQL;
end;

procedure TFrmEvaluarEmpleados.exportarEvaluacion;
var
  i, Fila, Columna : integer;
  excel, libro, hoja : Variant;
  zqryAnosEvaluaciones : TZQuery;
  zqryIdPersonal : TZQuery;
  zqrySueldoCalificacion : TZQuery;
  letraColumna : string;
  excelOrganizacion, excelFicha, exceliAnoEvaluado : string;
begin
  //Exporta la evaluacion a un archivo de excel referente al formto que el usuario facilito
  
  //excel variante
  try
    excel := CreateOleObject('Excel.Application');
    excel.Visible := True;
    excel.displayalerts := False;
    excel.workbooks.add;
    libro := excel.workbooks[1];
    hoja := libro.sheets[1];
    hoja.select;
  except
    on e:Exception do
    begin
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
      Exit;
    end;
  end;

  Excel.Columns['A:A'].ColumnWidth := 15;
  Excel.Columns['B:B'].ColumnWidth := 15;
  Excel.Columns['C:C'].ColumnWidth := 25;
  Excel.Columns['D:F'].ColumnWidth := 20;

  Hoja.Range['A1:A1'].Select;
  Excel.Selection.Value := 'Organizacion';
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['B1:B1'].Select;
  Excel.Selection.Value := 'Id';
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['C1:C1'].Select;
  Excel.Selection.Value := 'Puesto';
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['D1:D1'].Select;
  Excel.Selection.Value := 'Nombre';
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['E1:E1'].Select;
  Excel.Selection.Value := 'Apellido Paterno';
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['F1:F1'].Select;
  Excel.Selection.Value := 'Apellido Materno';
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;

  excel.Range['A' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['B' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['C' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['D' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['E' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['F' + Trim(IntToStr(1))].Interior.ColorIndex := 41;

  zqryEmpleados.Active := false;
  zqryEmpleados.Open;
  zqryEmpleados.First;
   i := 0;
   Fila := 2;
  while i < zqryEmpleados.RecordCount do
  begin
    excel.Range['A' + Trim(IntToStr(Fila))].Value2 := connection.contrato.FieldByName('sContrato').AsString;
    excel.Range['B' + Trim(IntToStr(Fila))].Select;
    excel.Selection.NumberFormat := '@';
    excel.Range['B' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('sIdEmpleado').AsString;
    excel.Range['C' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('titulocargo').AsString;
    excel.Range['D' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('Nombre').AsString;
    excel.Range['E' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('sApellidoPaterno').AsString;
    excel.Range['F' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('sApellidoMaterno').AsString;
    zqryEmpleados.Next;
    Fila := Fila + 1;
    i := i + 1;
  end;
  zqryEmpleados.First;

  Columna := 7;
  Fila := 2;  //Aun no la ocupo

  //Ahora se deben de poner las cabeceras de los años(diferentes) que existen en las evaluaciones
  zqryAnosEvaluaciones := TZQuery.Create(Self);
  zqryAnosEvaluaciones.Connection := connection.zConnection;
  zqryAnosEvaluaciones.Active := False;
  zqryAnosEvaluaciones.SQL.Text := 'select iAnoEvaluado from rh_evaluacionporempleado group by iAnoEvaluado order by iAnoEvaluado';
  zqryAnosEvaluaciones.Open;

  while not zqryAnosEvaluaciones.Eof do //Mientras existan años
  begin
    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := IntToStr(zqryAnosEvaluaciones.FieldByName('iAnoEvaluado').AsInteger);
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;

//    Columna := Columna + 1;
//
//    //Colocar la columna de año y bloques por ejemplo(2013 9B)
//    letraColumna := ColumnaNombre(Columna);
//    excel.Range[letraColumna + '1'].Value2 := IntToStr(zqryAnosEvaluaciones.FieldByName('iAnoEvaluado').AsInteger) + ' 9B';
//    excel.Range[letraColumna + '1'].Select;
//    Excel.Selection.Font.Color := clWhite;
//      Excel.Selection.Interior.Pattern := xlSolid;
//    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;

    Columna := Columna + 1;

    //Colocar los comentarios positivos si es que se le escribio comentario
    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := 'Comentarios Positivos';
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;
    Excel.Columns[letraColumna + ':' + letraColumna].ColumnWidth := 45;

    Columna := Columna + 1;

    //Colocar los comentarios de mejoras si es que se le escribio comentario
    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := 'Comentarios de Mejoras';
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;
    Excel.Columns[letraColumna + ':' + letraColumna].ColumnWidth := 45;

    Columna := Columna + 1;

    //Colocar los comentarios de mejoras si es que se le escribio comentario
    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := 'Compromisos';
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;
    Excel.Columns[letraColumna + ':' + letraColumna].ColumnWidth := 45;

    zqryAnosEvaluaciones.Next;
    Columna := Columna + 1;
  end;

  //Ahora se colocaran las calificaciones de los empleados(si es que tienen, sino pues debe mostrar N/A)
  Fila := 2;
  Columna := 8;
  excelOrganizacion := excel.Range['A' + Trim(IntToStr(Fila))].Value2;

  zqryIdPersonal := TZQuery.Create(Self);
  zqryIdPersonal.Connection := connection.zConnection;

  zqrySueldoCalificacion := TZQuery.Create(Self);
  zqrySueldoCalificacion.Connection := connection.zConnection;
  zqryAnosEvaluaciones.First;
  while not zqryAnosEvaluaciones.Eof do
  begin
    while (excelOrganizacion <> '') do
    begin
      excelFicha := excel.Range['B' + Trim(IntToStr(Fila))].Value2; //Obtener la ficha del empleado
      exceliAnoEvaluado := excel.Range[ColumnaNombre(Columna-1)+inttostr(1)].Value2; //Obtener el año de evaluacion

      //Obtener el IdPersonal del empleado
      zqryIdPersonal.Active := False;
      zqryIdPersonal.SQL.Text := 'select IdPersonal from empleados where sIdEmpleado = :sIdEmpleado';
      zqryIdPersonal.Params.ParamByName('sIdEmpleado').AsString := excelFicha;
      zqryIdPersonal.Open;
      zqryIdPersonal.First;

      //Ahora a buscar al empleado y mostrar su calificacion
      zqrySueldoCalificacion.Active := False;
      zqrySueldoCalificacion.SQL.Text := 'select IF(eValores <> "NA" and eDesempeno <> "NA", concat(eValores, eDesempeno), "NA") as Calificacion, dSueldo, ' +
                                         'sComentariosPositivos, sComentariosMejoras, sCompromisos ' +
                                         'from rh_evaluacionporempleado ' +
                                         'where iIdPersonal = :iIdPersonal and iAnoEvaluado = :iAnoEvaluado';
      zqrySueldoCalificacion.Params.ParamByName('iIdPersonal').AsInteger := zqryIdPersonal.FieldByName('IdPersonal').AsInteger;
      zqrySueldoCalificacion.Params.ParamByName('iAnoEvaluado').AsInteger := StrToInt(exceliAnoEvaluado);
      zqrySueldoCalificacion.Open;
      zqrySueldoCalificacion.First;

      if zqrySueldoCalificacion.RecordCount >= 1 then
      begin
        //Colocar la calificacion del empleado
        Excel.Range[ColumnaNombre(Columna-1)+inttostr(Fila)].Value2 := zqrySueldoCalificacion.FieldByName('Calificacion').AsString;
        //Colocar el sueldo del empleado
        //Excel.Range[ColumnaNombre(Columna-1)+inttostr(Fila)].Value2 := zqrySueldoCalificacion.FieldByName('dSueldo').AsString;
        //Colocar los comentarios positivos
        Excel.Range[ColumnaNombre(Columna)+inttostr(Fila)].Value2 := zqrySueldoCalificacion.FieldByName('sComentariosPositivos').AsString;
        //Colocar los comentarios de mejoras
        Excel.Range[ColumnaNombre(Columna+1)+inttostr(Fila)].Value2 := zqrySueldoCalificacion.FieldByName('sComentariosMejoras').AsString;
        //Colocar los compromisos
        Excel.Range[ColumnaNombre(Columna+2)+inttostr(Fila)].Value2 := zqrySueldoCalificacion.FieldByName('sCompromisos').AsString;
      end
      else
      begin
        Excel.Range[ColumnaNombre(Columna-1)+inttostr(Fila)].Value2 := 'NA';
        //Excel.Range[ColumnaNombre(Columna-1)+inttostr(Fila)].Value2 := 0;
      end;

      //Columna := Columna + 2;
      Fila := Fila + 1;
      excelOrganizacion := excel.Range['A' + Trim(IntToStr(Fila))].Value2;
    end;

    Excel.Columns[ColumnaNombre(Columna+2) + ':' + ColumnaNombre(Columna+2)].EntireColumn.AutoFit;

    Fila := 2;
    excelOrganizacion := excel.Range['A' + Trim(IntToStr(Fila))].Value2;

    Columna := Columna + 4;
    zqryAnosEvaluaciones.Next;
  end;


end;

procedure TFrmEvaluarEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree ;
end;

procedure TFrmEvaluarEmpleados.FormShow(Sender: TObject);
begin
  //Variable que hara saber si la ventana esta abriendose con formshow
  abiertoXFormShow := True;

  //Muestra la foto del empleado
  mostrarFoto;

  //Poner el combo de Evaluacion de(este empleado) colocado por default
  cbbVer.ItemIndex := 0;

  //Inicializar consultas TZQueries
  zqryEmpleados.Active := false;
  zqryEmpleados.Open;
  zqryEmpleados.First;

  zqryEmpleados.Locate('sIdEmpleado', zqryEmpleados.FieldByName('sIdEmpleado').AsString, [loCaseInsensitive]);

  zqryEvaluaciones.Active := false;
  zqryEvaluaciones.Open;

  //El dateTimePicker tiene la fecha actual
  dtpFechaActual.Date := Date;

  //Muestra el nombre del empleado en el Label debjo de la foto
  lblFicha.Caption := zqryEmpleados.FieldByName('sIdEmpleado').AsString;
  lblNombre.Caption := zqryEmpleados.FieldByName('sNombreCompleto').AsString;
  seAnoEvaluado.Value := StrToInt(FormatDateTime('YYY', Now)) - 1;
  lblEvaluarA.Caption := zqryEmpleados.FieldByName('sNombreCompleto').AsString;
  mostrarEvaluacionesGrid;

  DeshabilitarCasillas;
  btnCancelar1.Click;
end;

procedure TFrmEvaluarEmpleados.generarPlantilla;
var
  excel, libro, hoja : Variant;
  sValue, letraColumna : string;
  Fila, i, Columna : Integer;
  zqryAnosEvaluaciones : TZQuery;
begin
  //Genera la plantilla para que el usuario llene los datos y suba las evaluaciones desde un archivo de excel
  //excel variante
  try
    excel := CreateOleObject('Excel.Application');
    excel.Visible := True;
    excel.displayalerts := False;
    excel.workbooks.add;
    libro := excel.workbooks[1];
    hoja := libro.sheets[1];
    hoja.select;
  except
    on e:Exception do
    begin
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
      Exit;
    end;
  end;

  Excel.Columns['A:A'].ColumnWidth := 15;
  Excel.Columns['B:B'].ColumnWidth := 15;
  Excel.Columns['C:C'].ColumnWidth := 25;
  Excel.Columns['D:F'].ColumnWidth := 20;

  Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['A1:A1'].Select;
  Excel.Selection.Value := 'Organizacion';

  Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['B1:B1'].Select;
  Excel.Selection.Value := 'Ids Existentes';

  Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['C1:C1'].Select;
  Excel.Selection.Value := 'Puesto';

  Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['D1:D1'].Select;
  Excel.Selection.Value := 'Nombre';

  Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['E1:E1'].Select;
  Excel.Selection.Value := 'Apellido Paterno';

  Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
  Hoja.Range['F1:F1'].Select;
  Excel.Selection.Value := 'Apellido Materno';
  Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;

  excel.Range['A' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['B' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['C' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['D' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['E' + Trim(IntToStr(1))].Interior.ColorIndex := 41;
  excel.Range['F' + Trim(IntToStr(1))].Interior.ColorIndex := 41;

  Fila := 2;

  zqryEmpleados.Active := false;
  zqryEmpleados.Open;
  zqryEmpleados.First;
   i := 0;
   Fila := 2;
  while i < zqryEmpleados.RecordCount do
  begin
    excel.Range['A' + Trim(IntToStr(Fila))].Value2 := connection.contrato.FieldByName('sContrato').AsString;
    excel.Range['B' + Trim(IntToStr(Fila))].Select;
    excel.Selection.NumberFormat := '@';
    excel.Range['B' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('sIdEmpleado').AsString;
    excel.Range['C' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('titulocargo').AsString;
    excel.Range['D' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('Nombre').AsString;
    excel.Range['E' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('sApellidoPaterno').AsString;
    excel.Range['F' + Trim(IntToStr(Fila))].Value2 := zqryEmpleados.FieldByName('sApellidoMaterno').AsString;
    zqryEmpleados.Next;
    Fila := Fila + 1;
    i := i + 1;
  end;
  zqryEmpleados.First;

  Columna := 7;
  Fila := 2;  //Aun no la ocupo

  //Ahora se deben de poner las cabeceras de los años(diferentes) que existen en las evaluaciones
  zqryAnosEvaluaciones := TZQuery.Create(Self);
  zqryAnosEvaluaciones.Connection := connection.zConnection;
  zqryAnosEvaluaciones.Active := False;
  zqryAnosEvaluaciones.SQL.Text := 'select iAnoEvaluado from rh_evaluacionporempleado group by iAnoEvaluado order by iAnoEvaluado';
  zqryAnosEvaluaciones.Open;

  while not zqryAnosEvaluaciones.Eof do //Mientras existan años
  begin
    //Colocar la columna de año
    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := IntToStr(zqryAnosEvaluaciones.FieldByName('iAnoEvaluado').AsInteger);
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;

//    Columna := Columna + 1;
//
//    //colocar 9bloques por ejemplo(2013 9B)
//    letraColumna := ColumnaNombre(Columna);
//    excel.Range[letraColumna + '1'].Value2 := IntToStr(zqryAnosEvaluaciones.FieldByName('iAnoEvaluado').AsInteger) + ' 9B';
//    excel.Range[letraColumna + '1'].Select;
//    Excel.Selection.Font.Color := clWhite;
//      Excel.Selection.Interior.Pattern := xlSolid;
//    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;

    //Colocar cabecera de Comentarios Positivos
    Columna := Columna + 1;

    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := 'Comentarios Positivos';
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;
    Excel.Columns[letraColumna + ':' + letraColumna].ColumnWidth := 45;

    //Colocar cabecera de Comentarios de Mejoras
    Columna := Columna + 1;

    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := 'Comentarios de Mejoras';
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;
    Excel.Columns[letraColumna + ':' + letraColumna].ColumnWidth := 45;

    //Colocar cabecera de Compromisos
    Columna := Columna + 1;

    letraColumna := ColumnaNombre(Columna);
    excel.Range[letraColumna + '1'].Value2 := 'Compromisos';
    excel.Range[letraColumna + '1'].Select;
    Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;
    excel.Range[letraColumna + '1'].Interior.ColorIndex := 41;
    Excel.Columns[letraColumna + ':' + letraColumna].ColumnWidth := 45;

    zqryAnosEvaluaciones.Next;
    Columna := Columna + 1;
  end;
  excel.Range['G2'].Select;
end;

function TFrmEvaluarEmpleados.getDescripcion(calificacion: string): string;
begin
  //Con esta funcion se obtiene la descripcion de la calificacion
  if calificacion = 'A1' then
  begin
    Result := 'Son aquellos jugadores' + #13 +
                              'que hacen la diferencia en un equipo';
  end else if calificacion = 'A2' then
  begin
    Result := 'Requieren enfoque /ayuda ' + #13 +
                              'para exceder los números';
  end else if calificacion = 'A3' then
  begin
    Result := 'Inefectivos, se les percibe como:' + #13 +
                              '* no dedicados /  inconsistentes' + #13 +
                              '* no esforzados / sin una misión clara' + #13 +
                              '* tienen excusas de por qué no logran los números';
  end else if calificacion = 'B1' then
  begin
    Result := 'Requieren aprender acerca de ellos mismos' + #13 +
                              'y de temas de liderazgo';
  end else if calificacion = 'B2' then
  begin
    Result := 'Son gente cumplida, se les percibe' + #13 +
                              'con potencial para crecer';
  end else if calificacion = 'B3' then
  begin
    Result := 'Inefectivos, se les percibe como:' + #13 +
                              '* no dedicados /  inconsistentes' + #13 +
                              '* no esforzados / sin una misión clara' + #13 +
                              '* tienen excusas de por qué no logran los números';
  end else if calificacion = 'C1' then
  begin
    Result := 'Motivación incorrecta: ' + #13 +
                                '* no quieren cambiar hábitos ' +  #13 +
                                '* generalmente no son confiables' +  #13 +
                                '* su mismo equipo los rechaza ' + #13 +
                                '* se sienten incomprendidos';
  end else if calificacion = 'C2' then
  begin
    Result := 'Motivación incorrecta: ' +  #13 +
                                '* no quieren cambiar hábitos ' +  #13 +
                                '* generalmente no son confiables' +  #13 +
                                '* su mismo equipo los rechaza ' +  #13 +
                                '* se sienten incomprendidos';
  end else if calificacion = 'C3' then
  begin
    Result := 'Motivación incorrecta: ' + #13 +
                                '* no quieren cambiar hábitos ' + #13 +
                                '* generalmente no son confiables' + #13 +
                                '* su mismo equipo los rechaza ' + #13 +
                                '* se sienten incomprendidos';
  end else if calificacion = 'NA' then
  begin
    Result := 'No Aplica';
  end
end;

procedure TFrmEvaluarEmpleados.habilitarCasillas;
begin
  //Habilita las casillas cuando se de click en el boton Nuevo
  cbbValores.Enabled := true;
  cbbDesempeno.Enabled := true;
  seAnoEvaluado.Enabled := true;
  panelA1.Enabled := true;
  panelA2.Enabled := true;
  panelA3.Enabled := true;
  panelB1.Enabled := true;
  panelB2.Enabled := true;
  panelB3.Enabled := true;
  panelC1.Enabled := true;
  panelC2.Enabled := true;
  panelC3.Enabled := true;

  memoPositivos.Enabled := true;
  memoMejoras.Enabled := true;
  memoCompromisos.Enabled := true;
end;

procedure TFrmEvaluarEmpleados.importarEvaluacion;
var
  {$REGION 'Variables'}
  excel, libro, hoja : Variant;

  //Filas, Columnas y cariables de errores del archivo de excel
  flcid, Fila, Columna, coloreados,
  erroresDeOrganizacion, erroresDeSueldo, erroresDeSueldo2, erroresDeCalificacion, erroresDeCalificacion2, erroresDeFicha: Integer;
  //ListaActividades: TStringList;

  sValue, sColumnaAno, sColumnaSueldo, sColumnaCalificacion, ImpsContrato, ImpsNumeroActividad,
  excelsIdEmpleado, exceliAnoEvaluado, exceliAnoEvaluado2, exceldSueldo, excelPuesto, exceldSueldo2,
  excelNombre, excelApellidoPaterno, excelApellidoMaterno, excelCalificacion, excelCalificacion2, valores, desempeno,
  sDescripcion, excelComentariosPositivos, excelComentariosMejoras, excelCompromisos: string;
  //iRegistros, iColumna: integer;

  //Analizador.
  SobreTodos: Boolean;
  //Resp: Integer;

  //Ventana Robert importa informacion
  //lImportarDescripcion, lImportarPreciosMN, lImportarPreciosDLL, lImportarMedida,
  //lImportarFechaIni, lImportarFechaFin, lImportarCantidad: boolean;
  //lMsExcel, lOrdenInteligent: boolean;
  CodErr1, CodErr2: string;

  //ImpsIdConvenio,
  //sTmpContrato: string;
  //ImpdAvancePonderadoDia, ImpdAvancePonderadoGlobal, ImpdAvanceFinanciero: Double;

  //ImpdCantidad, ImpdMontoPonderado : Double;
  //sTmpOrden: string;

  zqryEmpleado : TZQuery;
  zqryPuestoExistente : TZQuery;
  zqryFichaExistente : TZQuery;
  zqryEvaluacionExistente : TZQuery;
  zqryActualizarEvaluacion :TZQuery;
  {$ENDREGION}
const
  Blanco = 2;
  Rojo = 3;

begin
  if (edtArchivo.Text = '') or ((edtArchivo.Text <> '') and not FileExists(edtArchivo.Text)) then
  begin
    MessageDlg('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0);
    Exit;
  end;

  //CodErr1 := 'Al generar ambiente de EXCEL para levantamiento de información';
  //CodErr2 := 'Al intentar modificar atributos de EXCEL';

  //excel variante
  try
    excel := CreateOleObject('Excel.Application');
    excel.Visible := False;
    excel.displayalerts := False;
    excel.workbooks.open(Trim( edtArchivo.Text ) );
    libro := excel.workbooks[1];
    hoja := libro.sheets[1];
    hoja.select;
  except
    on e:Exception do
    begin
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
      Exit;
    end;
  end;

  try
    lContratoActual := False;

    Fila := 1;
    SobreTodos := False;

    Fila := 2;
    progressbar1.Visible := True;
    ProgressBar1.Max := 0;
    if lContratoActual then
      sValue := global_contrato
    else
      sValue := excel.Range['A' + Trim(IntToStr(Fila))].Value2;

      //if sValue <> global_contrato then
      //raise Exception.Create('El archivo que desea importar pertenece a otro contrato');
      erroresDeOrganizacion := 0;
      erroresDeFicha := 0;
      erroresDeSueldo := 0;
      erroresDeSueldo2 := 0;
      erroresDeCalificacion := 0;
      erroresDeCalificacion2 := 0;
      coloreados := 0;

      while (sValue <> '') do
      begin
        sValue := excel.Range['A' + Trim(IntToStr(Fila))].Value2;
        Fila := Fila + 1;
      end;
      
      //Limpiar los indicadores de errores ue se generan de las filas de mas abajo
      excel.cells.select;
      excel.selection.interior.Pattern := xlNone;
      excel.selection.Interior.TintAndShade := 0;
      excel.selection.Interior.PatternTintAndShade := 0;
      excel.Range['A1'].Select;

      excel.Range['B' + Trim(IntToStr(Fila + 3))].value := '';
      excel.Range['B' + Trim(IntToStr(Fila + 5))].value := '';
      excel.Range['B' + Trim(IntToStr(Fila + 7))].value := '';
      excel.Range['B' + Trim(IntToStr(Fila + 9))].value := '';
      excel.Range['B' + Trim(IntToStr(Fila +11))].value := '';

      //Pintar los encabezados de color Azul
      excel.Range['A' + Trim(IntToStr(1)) + ':' + 'F' + Trim(IntToStr(1))].Interior.ColorIndex := 41;

      Columna := 7;
      sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;

      while sColumnaAno <> '' do
      begin
        excel.Range[ColumnaNombre(Columna) + '1'].Interior.ColorIndex := 41;
        excel.Range[ColumnaNombre(Columna + 1) + '1'].Interior.ColorIndex := 41;
        excel.Range[ColumnaNombre(Columna + 2) + '1'].Interior.ColorIndex := 41;
        excel.Range[ColumnaNombre(Columna + 3) + '1'].Interior.ColorIndex := 41;

         Columna := Columna + 4;
         sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;
      end;

      Fila := 2;
      Columna := 7;
      sValue := excel.Range['A' + Trim(IntToStr(Fila))].Value2;

      {$REGION 'Validar Evaluaciones de Excel'}
      while (sValue <> '') do
      begin

        excelsIdEmpleado := excel.Range['B' + Trim(IntToStr(Fila))].Value2;
        excelPuesto := excel.Range['C' + Trim(IntToStr(Fila))].Value2;
        //exceldSueldo := excel.Range['G' + Trim(IntToStr(Fila))].Value2;
        //exceldSueldo2 := excel.Range['I' + Trim(IntToStr(Fila))].Value2;
        excelCalificacion := excel.Range['G' + Trim(IntToStr(Fila))].Value2;
        excelCalificacion2 := excel.Range['K' + Trim(IntToStr(Fila))].Value2;

        //Si la organizacion es diferente de la organizacion actual, entonces que lo pinte
        if sValue <> connection.contrato.FieldByName('sContrato').AsString then
        begin
          excel.Range['A' + Trim(IntToStr(Fila))].Interior.Color := clGray;
          erroresDeOrganizacion := erroresDeOrganizacion + 1;
        end;

        zqryFichaExistente := TZQuery.Create(Self);
        zqryFichaExistente.Active:= false;
        zqryFichaExistente.Connection := connection.zConnection;
        zqryFichaExistente.SQL.Clear;
        zqryFichaExistente.SQL.Text:= 'select sIdEmpleado from empleados where sIdEmpleado = :sIdEmpleado';
        zqryFichaExistente.Params.ParamByName('sIdEmpleado').AsString := excelsIdEmpleado;
        zqryFichaExistente.Open;
        //Corroorar que la ficha del empleado exista en la BD, si no existe, entonces que lo marque de Rojo
        if zqryFichaExistente.RecordCount < 1 then
        begin
          excel.Range['B' + Trim(IntToStr(Fila))].Interior.Color := clRed;
          erroresDeFicha := erroresDeFicha + 1;
        end;

        //Corroborar que las columnas de las fichas no esten vacias, en caso de que lo este, colorear las celdas y poer un indicativo
        if excelsIdEmpleado = '' then
        begin
          excel.Range['B' + Trim(IntToStr(Fila))].Interior.Color := clRed;
          erroresDeFicha := erroresDeFicha + 1;
        end;

        //Corroborar que la primer calificacion sea una alificacion valida, sino colorearla de algun color
        if (excelCalificacion <> 'A1') and (excelCalificacion <> 'A2') and (excelCalificacion <> 'A3')
        and (excelCalificacion <> 'B1') and (excelCalificacion <> 'B2') and (excelCalificacion <> 'B3')
        and (excelCalificacion <> 'C1') and (excelCalificacion <> 'C2') and (excelCalificacion <> 'C3')
        and (excelCalificacion <> 'NA')
         then
         begin
           excel.Range['G' + Trim(IntToStr(Fila))].Interior.Color := clBlue;
           erroresDeCalificacion := erroresDeCalificacion + 1;
         end;

        sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;

        while sColumnaAno <> '' do
        begin
          //sColumnaSueldo := excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Value2;
          sColumnaCalificacion := excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Value2;

          //Comprobar que el sueldo sea numero
//          try
//          StrToFloat(sColumnaSueldo);
//          except
//            excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Interior.Color := clGreen;
//            erroresDeSueldo := erroresDeSueldo + 1;
//          end;

          //Comprobar que la calificacion sea valida
          if (sColumnaCalificacion <> 'A1') and (sColumnaCalificacion <> 'A2') and (sColumnaCalificacion <> 'A3')
          and (sColumnaCalificacion <> 'B1') and (sColumnaCalificacion <> 'B2') and (sColumnaCalificacion <> 'B3')
          and (sColumnaCalificacion <> 'C1') and (sColumnaCalificacion <> 'C2') and (sColumnaCalificacion <> 'C3')
          and (sColumnaCalificacion <> 'NA')
           then
           begin
             excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Interior.Color := clBlue;
             erroresDeCalificacion := erroresDeCalificacion + 1;
           end;

           Columna := Columna + 4;
           sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;
        end;

        //Checar si el puesto ya existe en la tabla nuc_cargo, si existe entonces que se inserte el IdOrgnizacion en la tabla de empleados
        zqryPuestoExistente := TZQuery.Create(Self);
        zqryPuestoExistente.Active:= false;
        zqryPuestoExistente.Connection := connection.zConnection;
        zqryPuestoExistente.SQL.Clear;
        zqryPuestoExistente.SQL.Text:= 'select idcargo from nuc_cargo where titulocargo = :titulocargo';
        zqryPuestoExistente.Params.ParamByName('titulocargo').AsString := excelPuesto;
        zqryPuestoExistente.Open;

        if zqryPuestoExistente.RecordCount <= 0 then
        begin
          excel.Range['C' + Trim(IntToStr(Fila))].Interior.Color := clYellow;
          coloreados := coloreados + 1;
        end;
        Fila := Fila + 1;
        Columna := 7;
        sValue := excel.Range['A' + Trim(IntToStr(Fila))].Value2;
      end;

      if erroresDeOrganizacion >= 1 then
      begin
        excel.Range['A' + Trim(IntToStr(Fila + 4))].Interior.Color := clGray;
        excel.Range['B' + Trim(IntToStr(Fila + 4))].value := 'Organizacion fuera del contrato Actual';
      end;

      if erroresDeFicha >= 1 then
      begin
        excel.Range['A' + Trim(IntToStr(Fila + 6))].Interior.Color := clRed;
        excel.Range['B' + Trim(IntToStr(Fila + 6))].value := 'La celda esta vacia o la ficha no se encuentra en la BD';
      end;

      if (coloreados >= 1) then //Si existe algun puesto coloreado(porque no existe), entonces que de un exit desde este punto
      begin
        excel.Range['A' + Trim(IntToStr(Fila + 8))].Interior.Color := clYellow;
        excel.Range['B' + Trim(IntToStr(Fila + 8))].value := 'El Puesto no existe en la DB';
      end;

      if (erroresDeSueldo >= 1) or (erroresDeSueldo2 >= 1) then
      begin
        excel.Range['A' + Trim(IntToStr(Fila + 10))].Interior.Color := clGreen;
        excel.Range['B' + Trim(IntToStr(Fila + 10))].value := 'El sueldo debe ser numero';
      end;

      if (erroresDeCalificacion >= 1) or (erroresDeCalificacion2 >= 1) then
      begin
        excel.Range['A' + Trim(IntToStr(Fila + 12))].Interior.Color := clBlue;
        excel.Range['B' + Trim(IntToStr(Fila + 12))].value := 'La calificacion no es valida';
      end;

      if (erroresDeOrganizacion >= 1) or (erroresDeFicha >= 1) or (coloreados >= 1) or (erroresDeSueldo >= 1) or (erroresDeSueldo2 >= 1) or (erroresDeCalificacion >= 1) or (erroresDeCalificacion2 >= 1) then
      begin
        excel.Visible := True;
        Exit;
      end;
      {$ENDREGION}

      Fila := 2;
      Columna := 7;
      sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;
      sValue := excel.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

      while sColumnaAno <> '' do
      begin
        {$REGION 'IMPORTAR EVALUACIONES'}
        //Importa los datos del excel al sistema
        while (sValue <> '') do
        begin
          CodErr1 := '';
          CodErr2 := '';

          if lContratoActual then
            ImpsContrato := global_contrato
          else
            ImpsContrato := excel.Range['A' + Trim(IntToStr(Fila))].Value2;

          if ImpsContrato <> global_contrato then
            raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

          excelsIdEmpleado := excel.Range['B' + Trim(IntToStr(Fila))].Value2;
          excelPuesto      := excel.Range['C' + Trim(IntToStr(Fila))].Value2;
          excelNombre      := excel.Range['D' + Trim(IntToStr(Fila))].Value2;
          excelApellidoPaterno := excel.Range['E' + Trim(IntToStr(Fila))].Value2;
          excelApellidoMaterno := excel.Range['F' + Trim(IntToStr(Fila))].Value2;
          exceliAnoEvaluado := excel.Range[ColumnaNombre(Columna) + '1'].Value2;
          //exceldSueldo      := excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Value2;
          excelCalificacion := excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Value2;
          excelComentariosPositivos := excel.Range[ColumnaNombre(Columna + 1) + Trim(IntToStr(Fila))].Value2;
          excelComentariosMejoras := excel.Range[ColumnaNombre(Columna + 2) + Trim(IntToStr(Fila))].Value2;
          excelCompromisos := excel.Range[ColumnaNombre(Columna + 3) + Trim(IntToStr(Fila))].Value2;
          //La calificacion por ejemplo A1 se necesita partir en A y en 1 para poderlo meter a la tabla rh_evaluacionporempleado
          //Sacar la descripcion de la calificacion para insertarlo en la tabla rh_evaluacionporempleado
          sDescripcion := getDescripcion(excelCalificacion);

          //CodErr1 := 'Importación de Plantilla de Evaluacion de Empleados';
          //CodErr2 := 'Al tratar de insertar registros en la tabla rh_evaluacionporempleado';

          try
            zqryPuestoExistente.Active := false;
            zqryPuestoExistente.SQL.Clear;
            zqryPuestoExistente.SQL.Text:= 'select idcargo from nuc_cargo where titulocargo = :titulocargo';
            zqryPuestoExistente.Params.ParamByName('titulocargo').AsString := excelPuesto;
            zqryPuestoExistente.Open;

            {$REGION 'Actualizar Empleados'}
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE empleados SET sIdEmpleado = :sIdEmpleado, ' +
                                        'sNombreCompleto = :sNombreCompleto, iIdEstatus = 14, ' +
                                        'iId_Puesto = :iId_Puesto, idorganizacion = :idorganizacion, ' +
                                        'sApellidoPaterno = :sApellidoPaterno, sApellidoMaterno = :sApellidoMaterno ' +
                                        'where sIdEmpleado = :sIdEmpleado');

            //Connection.zCommand.Params.ParamByName('sIdEmpleado').DataType := ftString;
            Connection.zCommand.Params.ParamByName('sIdEmpleado').AsString := excelsIdEmpleado;

            //Connection.zCommand.Params.ParamByName('sNombreCompleto').DataType := ftString;
            Connection.zCommand.Params.ParamByName('sNombreCompleto').value := excelNombre;

            //Connection.zCommand.Params.ParamByName('dSueldo').DataType := ftFloat;
            //Connection.zCommand.Params.ParamByName('dSueldo').AsString := exceldSueldo;

            //Connection.zCommand.Params.ParamByName('iId_Puesto').DataType := ftFloat;
            Connection.zCommand.Params.ParamByName('iId_Puesto').AsInteger := zqryPuestoExistente.FieldByName('idcargo').AsInteger;

            //Connection.zCommand.Params.ParamByName('idorganizacion').DataType := ftInteger;
            Connection.zCommand.Params.ParamByName('idorganizacion').AsInteger := connection.contrato.FieldByName('idorganizacion').AsInteger;

            //Connection.zCommand.Params.ParamByName('sApellidoPaterno').DataType := ftString;
            Connection.zCommand.Params.ParamByName('sApellidoPaterno').AsString := excelApellidoPaterno;

            //Connection.zCommand.Params.ParamByName('sApellidoMaterno').DataType := ftString;
            Connection.zCommand.Params.ParamByName('sApellidoMaterno').AsString := excelApellidoMaterno;

            Connection.zCommand.ExecSQL;
            {$ENDREGION}

            //Obtener el IdPersonal del empleado que se acaba de insertar a la tabla empleados, con el fin de casafrlo con
            //la tabla rh_evaluacionporempleado
            zqryEmpleado := TZQuery.Create(Self);
            zqryEmpleado.Active:= false;
            zqryEmpleado.Connection := connection.zConnection;
            zqryEmpleado.SQL.Clear;
            zqryEmpleado.SQL.Text:= 'select IdPersonal, sIdEmpleado from empleados where sIdEmpleado = :sIdEmpleado';
            zqryEmpleado.Params.ParamByName('sIdEmpleado').AsString := excelsIdEmpleado;
            zqryEmpleado.Open;
            zqryEmpleado.First;

            zqryEvaluacionExistente := TZQuery.Create(Self);
            zqryEvaluacionExistente.Active:= false;
            zqryEvaluacionExistente.Connection := connection.zConnection;
            zqryEvaluacionExistente.SQL.Clear;
            zqryEvaluacionExistente.SQL.Text:= 'select IidEvaluacion from rh_evaluacionporempleado where iIdPersonal = :iIdPersonal and iAnoEvaluado = :iAnoEvaluado LIMIT 1';
            zqryEvaluacionExistente.Params.ParamByName('iIdPersonal').AsInteger := zqryEmpleado.FieldByName('IdPersonal').AsInteger;
            zqryEvaluacionExistente.Params.ParamByName('iAnoEvaluado').AsInteger := StrToInt(exceliAnoEvaluado);
            zqryEvaluacionExistente.Open;

            //************************************************************************************************************************888
            if zqryEvaluacionExistente.RecordCount = 1 then  //Si la evaluacion del empleado existe entonces que actualice dicha evaluacion
            begin
              sColumnaCalificacion := excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Value2;
              zqryActualizarEvaluacion := TZQuery.Create(Self);
              zqryActualizarEvaluacion.Active:= false;
              zqryActualizarEvaluacion.Connection := connection.zConnection;
              zqryActualizarEvaluacion.SQL.Clear;
              zqryActualizarEvaluacion.SQL.Text := 'update rh_evaluacionporempleado set eValores = :eValores, ' +
                                                  'eDesempeno = :eDesempeno, dFechaEvaluacion = :dFechaEvaluacion, ' +
                                                  'sDescripcion = :sDescripcion, ' +
                                                  'sComentariosPositivos = :sComentariosPositivos, ' +
                                                  'sComentariosMejoras = :sComentariosMejoras, ' +
                                                  'sCompromisos = :sCompromisos ' +
                                                  'where iIdPersonal = :iIdPersonal and iAnoEvaluado = :iAnoEvaluado';
              if sColumnaCalificacion = 'NA' then
              begin
                zqryActualizarEvaluacion.Params.ParamByName('eValores').AsString := sColumnaCalificacion;
                zqryActualizarEvaluacion.Params.ParamByName('eDesempeno').AsString := sColumnaCalificacion;
              end

              else
              begin
                zqryActualizarEvaluacion.Params.ParamByName('eValores').AsString := sColumnaCalificacion[1];
                zqryActualizarEvaluacion.Params.ParamByName('eDesempeno').AsString := sColumnaCalificacion[2];
              end;

              zqryActualizarEvaluacion.Params.ParamByName('dFechaEvaluacion').AsDate := Date;
              //zqryActualizarEvaluacion.Params.ParamByName('dSueldo').AsFloat := StrToFloat(exceldSueldo); //Modificar el valor del sueldo
              zqryActualizarEvaluacion.Params.ParamByName('sDescripcion').AsString := getDescripcion(excelCalificacion);//Modificar el valor de la calificacion
              zqryActualizarEvaluacion.Params.ParamByName('iIdPersonal').AsInteger := zqryEmpleado.FieldByName('IdPersonal').AsInteger;
              zqryActualizarEvaluacion.Params.ParamByName('iAnoEvaluado').AsInteger := StrToInt(exceliAnoEvaluado);
              zqryActualizarEvaluacion.Params.ParamByName('sComentariosPositivos').AsString := excelComentariosPositivos;
              zqryActualizarEvaluacion.Params.ParamByName('sComentariosMejoras').AsString := excelComentariosMejoras;
              zqryActualizarEvaluacion.Params.ParamByName('sCompromisos').AsString := excelCompromisos;
              zqryActualizarEvaluacion.ExecSQL;
            end;
            //***************************************************************************************************************************

            if zqryEvaluacionExistente.RecordCount <= 0 then //Si la evaluacion no existe, entonces que inserte la evaluacion
            begin
              //sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;

             // while sColumnaAno <> '' do
              //begin
                //sColumnaSueldo := excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Value2;
                sColumnaCalificacion := excel.Range[ColumnaNombre(Columna) + Trim(IntToStr(Fila))].Value2;

                if sColumnaCalificacion = 'NA' then
                begin
                  //Insertar la evaluacion con NA
                  excelEvaluacionPorEmpleado(zqryEmpleado.FieldByName('IdPersonal').AsInteger, sColumnaCalificacion,
                  sColumnaCalificacion, StrToInt(sColumnaAno), 0, getDescripcion(sColumnaCalificacion),
                  excelComentariosPositivos, excelComentariosMejoras, excelCompromisos);
                  //Columna := Columna + 5;
                  //sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;
                end
                else
                begin
                  //Insertar la evaluacion del año posicionado
                  excelEvaluacionPorEmpleado(zqryEmpleado.FieldByName('IdPersonal').AsInteger, sColumnaCalificacion[1],
                  sColumnaCalificacion[2], StrToInt(sColumnaAno), 0, getDescripcion(sColumnaCalificacion),
                  excelComentariosPositivos, excelComentariosMejoras, excelCompromisos);

                  //Columna := Columna + 5;
                  //sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;
                end;

              //end;
              //Columna := 7;
            end;
      //**********************************************************
          except
            on e: exception do
              ShowMessage(e.Message);
          end;

          ProgressBar1.Max := ProgressBar1.Max + 1;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          Fila := Fila + 1;
          sValue := excel.Range['A' + Trim(IntToStr(Fila))].Value2;
        end;
    {$ENDREGION}

        Columna := Columna + 4;
        Fila := 2;
        sValue := excel.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        sColumnaAno := excel.Range[ColumnaNombre(Columna) + '1'].Value2;
      end;
  finally
    zqryEmpleados.Refresh;
    progressbar1.Visible := False;
    //excel.quit;
  end;
  MessageDlg('Las evaluaciones fueron Importadas Correctamente', mtInformation, [mbOK], 0);
  excel.Visible := True; //Mostrar el archivo de excel
end;

procedure TFrmEvaluarEmpleados.memoCompromisosEnter(Sender: TObject);
begin
  memoCompromisos.Color := global_color_entradaERP
end;

procedure TFrmEvaluarEmpleados.memoCompromisosExit(Sender: TObject);
begin
  memoCompromisos.Color := global_color_salidaERP;
end;

procedure TFrmEvaluarEmpleados.memoMejorasEnter(Sender: TObject);
begin
  memoMejoras.Color := global_color_entradaERP
end;

procedure TFrmEvaluarEmpleados.memoMejorasExit(Sender: TObject);
begin
  memoMejoras.Color := global_color_salidaERP;
end;

procedure TFrmEvaluarEmpleados.memoMejorasKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Salta al campo memoCompromisos
  if Key = #13 then
    memoCompromisos.SetFocus
end;

procedure TFrmEvaluarEmpleados.memoPositivosEnter(Sender: TObject);
begin
  memoPositivos.Color := global_color_entradaERP
end;

procedure TFrmEvaluarEmpleados.memoPositivosExit(Sender: TObject);
begin
  memoPositivos.Color := global_color_salidaERP;
end;

procedure TFrmEvaluarEmpleados.memoPositivosKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Salta al campo memoMejoras
  if Key = #13 then
    memoMejoras.SetFocus
end;

procedure TFrmEvaluarEmpleados.mostrarDescripcion(calificacion: string);
begin
  //Muestra la descripcion de la calificacion que se le halla asignado al empleado conforme a ls combos
  if calificacion = 'A1' then
  begin
    lblDescripcion.Caption := 'Son aquellos jugadores' + #13 +
                              'que hacen la diferencia en un equipo';
  end else if calificacion = 'A2' then
  begin
    lblDescripcion.Caption := 'Requieren enfoque /ayuda ' + #13 +
                              'para exceder los números';
  end else if calificacion = 'A3' then
  begin
    lblDescripcion.Caption := 'Inefectivos, se les percibe como:' + #13 +
                              '* no dedicados /  inconsistentes' + #13 +
                              '* no esforzados / sin una misión clara' + #13 +
                              '* tienen excusas de por qué no logran los números';
  end else if calificacion = 'B1' then
  begin
    lblDescripcion.Caption := 'Requieren aprender acerca de ellos mismos' + #13 +
                              'y de temas de liderazgo';
  end else if calificacion = 'B2' then
  begin
    lblDescripcion.Caption := 'Son gente cumplida, se les percibe' + #13 +
                              'con potencial para crecer';
  end else if calificacion = 'B3' then
  begin
    lblDescripcion.Caption := 'Inefectivos, se les percibe como:' + #13 +
                              '* no dedicados /  inconsistentes' + #13 +
                              '* no esforzados / sin una misión clara' + #13 +
                              '* tienen excusas de por qué no logran los números';
  end else if calificacion = 'C1' then
  begin
    lblDescripcion.Caption := 'Motivación incorrecta: ' + #13 +
                                '* no quieren cambiar hábitos ' +  #13 +
                                '* generalmente no son confiables' +  #13 +
                                '* su mismo equipo los rechaza ' + #13 +
                                '* se sienten incomprendidos';
  end else if calificacion = 'C2' then
  begin
    lblDescripcion.Caption := 'Motivación incorrecta: ' +  #13 +
                                '* no quieren cambiar hábitos ' +  #13 +
                                '* generalmente no son confiables' +  #13 +
                                '* su mismo equipo los rechaza ' +  #13 +
                                '* se sienten incomprendidos';
  end else if calificacion = 'C3' then
  begin
    lblDescripcion.Caption := 'Motivación incorrecta: ' + #13 +
                                '* no quieren cambiar hábitos ' + #13 +
                                '* generalmente no son confiables' + #13 +
                                '* su mismo equipo los rechaza ' + #13 +
                                '* se sienten incomprendidos';
  end else if calificacion = 'NA' then
  begin
    lblDescripcion.Caption := 'No Aplica';
  end

end;

procedure TFrmEvaluarEmpleados.mostrarEvaluacionesGrid;
begin
  //Muestra las evaluaciones en el gridEvluaciones dependiendo el empleado que se este seleccionado en ese momento
  //Hacer un filtro en el grid de evaluaciones conforme sea el empleado seleccionado
  zqryEvaluaciones.Active := False;
  //zqryEvaluaciones.Params.ParamByName('idPersonal').AsInteger :=  zqryEmpleados.FieldByName('IdPersonal').AsInteger;
  zqryEvaluaciones.Open;

  zqryEvaluaciones.Filtered := false;
  zqryEvaluaciones.Filter :=' iIdPersonal= '+QuotedStr(IntToStr(zqryEmpleados.FieldByName('IdPersonal').AsInteger));
  zqryEvaluaciones.Filtered := True;
end;

procedure TFrmEvaluarEmpleados.mostrarFoto;
var
  QryBusca: TZQuery;
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  //Muestra la foto del empleado seleccionado en ese momento
    Try
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := connection.zConnection;
      QryBusca.Active := False;
      QryBusca.SQL.Text := 'SELECT bImagen FROM catalogo_imagenes WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado';
      QryBusca.Params.ParamByName('IdEmpleado').AsString := zqryEmpleados.FieldByName('sIdEmpleado').AsString;
      QryBusca.Open;
      if QryBusca.RecordCount > 0 then
      begin
      imgBlancoNegro.Visible := false;
        imagen.Picture.LoadFromFile('');
        BlobField := QryBusca.FieldByName('bImagen');
        BS := QryBusca.CreateBlobStream(BlobField, bmRead);
        if bs.Size > 15 then
        begin
          Try
            Pic := TJpegImage.Create;
            Try
              Pic.LoadFromStream(bS);
              imagen.Picture.Graphic := Pic;
            Finally
              Pic.Free;
            End;
          Finally
            bS.Free
          End;
        end;
      end
      else
      begin
        //Si no hay imagen del empleado, entonces que no muestre la imagen
        imagen.Picture.Graphic := Nil;
        imgBlancoNegro.Visible := true;
      end;
    Finally
      QryBusca.Free;
    End;
end;

procedure TFrmEvaluarEmpleados.panelA1Click(Sender: TObject);
begin
  //Cuando se de click en el boton A1 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 1;
  cbbDesempeno.ItemIndex := 1;
  concatenarCalificacion;
  panelA1.Color := clBlack;
  panelA1.Font.Color := clWhite;
  descolorearLimpiar('A1');
  mostrarDescripcion('A1');
end;

procedure TFrmEvaluarEmpleados.panelA2Click(Sender: TObject);
begin
  //Cuando se de click en el boton A2 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 1;
  cbbDesempeno.ItemIndex := 2;
  concatenarCalificacion;
  panelA2.Color := clBlack;
  panelA2.Font.Color := clWhite;
  descolorearLimpiar('A2');
  mostrarDescripcion('A2');
end;

procedure TFrmEvaluarEmpleados.panelA3Click(Sender: TObject);
begin
  //Cuando se de click en el boton A3 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 1;
  cbbDesempeno.ItemIndex := 3;
  concatenarCalificacion;
  panelA3.Color := clBlack;
  panelA3.Font.Color := clWhite;
  descolorearLimpiar('A3');
  mostrarDescripcion('A3');
end;

procedure TFrmEvaluarEmpleados.panelB1Click(Sender: TObject);
begin
  //Cuando se de click en el boton B1 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 2;
  cbbDesempeno.ItemIndex := 1;
  concatenarCalificacion;
  panelB1.Color := clBlack;
  panelB1.Font.Color := clWhite;
  descolorearLimpiar('B1');
  mostrarDescripcion('B1');
end;

procedure TFrmEvaluarEmpleados.panelB2Click(Sender: TObject);
begin
  //Cuando se de click en el boton B2 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 2;
  cbbDesempeno.ItemIndex := 2;
  concatenarCalificacion;
  panelB2.Color := clBlack;
  panelB2.Font.Color := clWhite;
  descolorearLimpiar('B2');
  mostrarDescripcion('B2');
end;

procedure TFrmEvaluarEmpleados.panelB3Click(Sender: TObject);
begin
  //Cuando se de click en el boton B3 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 2;
  cbbDesempeno.ItemIndex := 3;
  concatenarCalificacion;
  panelB3.Color := clBlack;
  panelB3.Font.Color := clWhite;
  descolorearLimpiar('B3');
  mostrarDescripcion('B3');
end;

procedure TFrmEvaluarEmpleados.panelC1Click(Sender: TObject);
begin
  //Cuando se de click en el boton C1 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 3;
  cbbDesempeno.ItemIndex := 1;
  concatenarCalificacion;
  panelC1.Color := clBlack;
  panelC1.Font.Color := clWhite;
  descolorearLimpiar('C1');
  mostrarDescripcion('C1');
end;

procedure TFrmEvaluarEmpleados.panelC2Click(Sender: TObject);
begin
  //Cuando se de click en el boton C2 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 3;
  cbbDesempeno.ItemIndex := 2;
  concatenarCalificacion;
  panelC2.Color := clBlack;
  panelC2.Font.Color := clWhite;
  descolorearLimpiar('C2');
  mostrarDescripcion('C2');
end;

procedure TFrmEvaluarEmpleados.panelC3Click(Sender: TObject);
begin
  //Cuando se de click en el boton C3 se debe de poner la calificacion en el labelCalificacio y los combos deben de ponerse
  //configurados a la calificacion seleccionada
  cbbValores.ItemIndex := 3;
  cbbDesempeno.ItemIndex := 3;
  concatenarCalificacion;
  panelC3.Color := clBlack;
  panelC3.Font.Color := clWhite;
  descolorearLimpiar('C3');
  mostrarDescripcion('C3');
end;

procedure TFrmEvaluarEmpleados.updateExcelEvaluacionPorEmpleado(
  iIdPersonal: Integer; eValores, eDesempeno: string; iAnoEvaluado: Integer;
  dSueldo: Real; sDescripcion: string);
begin
  //Actualizar la tabla rh_evaluacionporempleado en cado de que el usuario quiera meter valores duplicados
  //De excel a la tabla rh_evaluacionporempleado
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('update rh_evaluacionporempleado set iIdPersonal = :iIdPersonal, eValores = :eValores, ' +
  'eDesempeno = :eDesempeno, dFechaEvaluacion = :dFechaEvaluacion, iAnoEvaluado = :iAnoEvaluado, dSueldo = :dSueldo, ' +
  'sDescripcion = :sDescripcion where (iIdPersonal = :iIdPersonal and iAnoEvaluado = :iAnoEvaluado)');

  Connection.zCommand.Params.ParamByName('iIdPersonal').DataType := ftInteger;
  Connection.zCommand.Params.ParamByName('iIdPersonal').value := iIdPersonal;

  Connection.zCommand.Params.ParamByName('eValores').DataType := ftString;
  Connection.zCommand.Params.ParamByName('eValores').value := eValores;

  Connection.zCommand.Params.ParamByName('eDesempeno').DataType := ftString;
  Connection.zCommand.Params.ParamByName('eDesempeno').value := eDesempeno;

  Connection.zCommand.Params.ParamByName('dFechaEvaluacion').DataType := ftDate;
  Connection.zCommand.Params.ParamByName('dFechaEvaluacion').value := Date;

  Connection.zCommand.Params.ParamByName('iAnoEvaluado').DataType := ftInteger;
  Connection.zCommand.Params.ParamByName('iAnoEvaluado').value := iAnoEvaluado;

  Connection.zCommand.Params.ParamByName('dSueldo').DataType := ftFloat;
  Connection.zCommand.Params.ParamByName('dSueldo').value := dSueldo;

  Connection.zCommand.Params.ParamByName('sDescripcion').DataType := ftString;
  Connection.zCommand.Params.ParamByName('sDescripcion').value := sDescripcion;

  Connection.zCommand.ExecSQL;
end;

procedure TFrmEvaluarEmpleados.zqryEmpleadosAfterScroll(DataSet: TDataSet);
begin
if abiertoXFormShow = False then
  begin
    btnNuevo.Enabled := True;
    btnEditar.Enabled := True;
    btnEliminar.Enabled := True;
    lblTituloDescripcion.Visible := false;
    lblDescripcion.Visible := false;
    //Cuando se de click en un empleado debe mostrar el nombre del empleado y su evaluaciom asi como la ficha
    lblFicha.Caption := zqryEmpleados.FieldByName('sIdEmpleado').AsString;
    lblNombre.Caption := zqryEmpleados.FieldByName('sNombreCompleto').AsString;
    lblEvaluarA.Caption := zqryEmpleados.FieldByName('sNombreCompleto').AsString;

    limpiarCampos;

    mostrarEvaluacionesGrid;

    //Poner el combo de Evaljaciones de en el primer index ('Este empleado')
    cbbVer.ItemIndex := 0;

    //Mostrar la foto del empleado seleccionado en ese momento
    mostrarFoto;

    abiertoXFormShow := False;
  end;
end;

end.
