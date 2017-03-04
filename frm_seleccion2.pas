unit frm_seleccion2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, frm_connection, global, DB, ADODB,
  ComCtrls, ImgList, Newpanel, Mask, DateUtils, ExtCtrls, UnitExcepciones,
  ZAbstractRODataset, ZDataset, Math, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  cxGroupBox, Menus, cxButtons, dxRibbonSkins, dxSkinsdxRibbonPainter,
  cxClasses, dxRibbon, dxSkinsdxBarPainter, dxBar, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, cxTreeView, cxInplaceContainer, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, jpeg, dxGDIPlusClasses;

type
  TfrmSeleccion2 = class(TForm)
    pbRegenera: TProgressBar;
    ds_turnos: TDataSource;
    ImageList1: TImageList;
    ds_ordenesdetrabajo: TDataSource;
    QryDiferencia: TZReadOnlyQuery;
    QryDiferencia3: TZReadOnlyQuery;
    QryDiferencia2: TZReadOnlyQuery;
    Turnos: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    QryResidencias: TZReadOnlyQuery;
    cxGroupBox1: TcxGroupBox;
    TreeObras: TTreeView;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    tmDescripcion: TMemo;
    Label3: TLabel;
    tdFechaInicio: TMaskEdit;
    Label4: TLabel;
    tdFechaFinal: TMaskEdit;
    cxGroupBox3: TcxGroupBox;
    Label1: TLabel;
    tsIdTurno: TDBLookupComboBox;
    lblOrden: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    chkContrato: TCheckBox;
    btnOk: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    bImagen: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure tsContratoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTurnoEnter(Sender: TObject);
    procedure tsIdTurnoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TreeObrasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeObrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeObrasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure refresh ;
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    adentro: boolean;
    cerrar :boolean;
  end;

var
  frmSeleccion2: TfrmSeleccion2;
  MyTreeNode2,
  MyTreeNode3: TTreeNode;
implementation

uses frm_inteligent, frm_reportediarioturno, frm_acerca, frm_acceso,
  frm_Colmena;

{$R *.dfm}

procedure TfrmSeleccion2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    If global_contrato = '' Then
        treeObras.SetFocus;
    if (cerrar = False) and (not frmInteligent.adentro) then
        frmInteligent.Tiempo.Enabled := True;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sIdIdioma From idiomas Where sDescripcion = :Idioma');
      Connection.qryBusca.Params.ParamByName('Idioma').DataType :=      ftString;
      Connection.qryBusca.Params.ParamByName('Idioma').Value    := global_idiomaDesc;
      Connection.qryBusca.Open;
      global_idioma :=  Connection.qryBusca.FieldByName('sIdIdioma').AsString;
end;

procedure TfrmSeleccion2.btnOkClick(Sender: TObject);
var
    MensajeBarco, filtro_check  : Boolean ;
begin
  try
    If TreeObras.Selected.Text <> '' then
        If TreeObras.Selected.getFirstChild = Nil Then
        Begin
            // Para localizar el usuario y determinar si puede Insertar, Eliminar, Editar, Imprimir
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Text := 'select eInsertar, eEditar, eEliminar, eImprimir, eGrabar from usuarios where sIdUsuario = :Usuario';
            Connection.QryBusca.ParamByName('usuario').AsString := global_Usuario;
            Connection.QryBusca.Open;
            If Connection.QryBusca.RecordCount > 0 Then
            begin
                global_Insertar  := Connection.qryBusca.fieldValues['eInsertar'] ;
                global_Editar    := Connection.qryBusca.fieldValues['eEditar'] ;
                global_grabar    := Connection.qryBusca.fieldValues['eGrabar'] ;
                global_Eliminar  := Connection.qryBusca.fieldValues['eEliminar'] ;
                global_Imprimir  := Connection.qryBusca.fieldValues['eImprimir'] ;
            end;

            global_contrato := TreeObras.Selected.Text ;

            //inicialización de las variables globales para la etiqueta de personal y equipo
            Connection.QryBusca2.Close;
            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;
            Connection.QryBusca2.SQL.Add('select sAnexo, sTipo, sTierra, sDescripcion from anexos');
            Connection.QryBusca2.Open;

            While NOT Connection.QryBusca2.Eof Do
            begin
                if Connection.QryBusca2.FieldValues['sTipo']='PERSONAL' then
                begin
                    global_labelPersonal     := Connection.QryBusca2.FieldValues['sAnexo'];
                    global_labelPersonalDesc := Connection.QryBusca2.FieldValues['sDescripcion'];
                end;

                if Connection.QryBusca2.FieldValues['sTipo']='EQUIPO' then
                begin
                    global_labelEquipo     := Connection.QryBusca2.FieldValues['sAnexo'];
                    global_labelEquipoDesc     := Connection.QryBusca2.FieldValues['sDescripcion'];
                end;

                if (Connection.QryBusca2.FieldValues['sTipo']='MATERIAL') And (Connection.QryBusca2.FieldValues['sTierra']='Si') then
                begin
                    global_Materialtierra     := Connection.QryBusca2.FieldValues['sAnexo'];
                    global_MaterialtierraDesc := Connection.QryBusca2.FieldValues['sDescripcion'];
                end;

                if (Connection.QryBusca2.FieldValues['sTipo']='MATERIAL') And (Connection.QryBusca2.FieldValues['sTierra']='No') then
                begin
                    global_Materialbordo     := Connection.QryBusca2.FieldValues['sAnexo'];
                    global_MaterialbordoDesc := Connection.QryBusca2.FieldValues['sDescripcion'];
                end;

                if (Connection.QryBusca2.FieldValues['sTipo']='PERNOCTA') And (Connection.QryBusca2.FieldValues['sTierra']='No') Then
                begin
                    global_labelPernocta      := Connection.QryBusca2.FieldValues['sAnexo'];
                    global_labelPernoctaDesc  := Connection.QryBusca2.FieldValues['sDescripcion'];
                end;

                if Connection.QryBusca2.FieldValues['sTipo']='CONSUMIBLES' then
                  global_MaterialConsumible   := Connection.QryBusca2.FieldValues['sAnexo'];

                 Connection.QryBusca2.Next ;
            end;

            If tsIdTurno.Text <> '' Then
            begin
                global_turno := tsIdTurno.KeyValue ;
                global_sturno := tsIdTurno.Text
            end ;

             // Actualizo Kardex del Sistema ....
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                          'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('Fecha').Value := Date ;
            connection.zCommand.Params.ParamByName('Hora').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
            connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Descripcion').Value := 'Selección del Contrato [' + global_contrato + '] turno [' + global_turno + '] desde la dirección [' + global_ip + ']' ;
            connection.zCommand.Params.ParamByName('Origen').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Origen').Value := 'Accesó' ;
            connection.zCommand.ExecSQL ;

            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;
            Connection.QryBusca2.SQL.Add('Select lCobraPersonal, lJorPu, lCobraEquipo, sTipoObra From contratos Where sContrato = :Contrato') ;
            Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca2.Params.ParamByName('Contrato').Value    := Global_Contrato ;
            Connection.QryBusca2.Open ;
            if Connection.QryBusca2.RecordCount > 0 then
                Begin
                  Global_Optativa  := Connection.QryBusca2.FieldValues['sTipoObra'] ;
                  Global_Personal  := Connection.QryBusca2.FieldValues['lCobraPersonal'] ;
                  Global_Equipo    := Connection.QryBusca2.FieldValues['lCobraEquipo'] ;
                  Global_PuJor     := Connection.QryBusca2.FieldValues['lJorPu'] ;
                End;

            If global_usuario = 'INTEL-CODE' Then
            Begin
                Connection.ContratosxUsuario.Active := False ;
                Connection.ContratosxUsuario.SQL.Clear ;
                Connection.ContratosxUsuario.SQL.Add('Select stipoObra, sContrato, mDescripcion From contratos Order By sContrato') ;
                Connection.ContratosxUsuario.Open ;
            End
            Else
            Begin
                Connection.ContratosxUsuario.Active := False ;
                Connection.ContratosxUsuario.SQL.Clear ;
                Connection.ContratosxUsuario.SQL.Add('Select c.sTipoObra, c.sContrato, c.mDescripcion From contratosxusuario u ' +
                                                     'INNER JOIN contratos c ON (c.sContrato = u.sContrato and c.lStatus = "Activo") ' +
                                                     'Where u.sIdUsuario = :Usuario Order By c.sContrato') ;
                Connection.ContratosxUsuario.Params.ParamByName('Usuario').DataType := ftString ;
                Connection.ContratosxUsuario.Params.ParamByName('Usuario').Value := global_usuario ;
                Connection.ContratosxUsuario.Open ;
            End ;
            /////////
            connection.contrato.Active := False ;
            connection.contrato.Params.ParamByName('Contrato').DataType:= ftString ;
            connection.contrato.Params.ParamByName('Contrato').Value := global_contrato ;
            connection.contrato.Open ;

            //global_contrato_barco := global_contrato ;
            global_Contrato_Barco := connection.contrato.fieldbyname('scodigo').AsString;
            connection.configuracion.Active := False ;
            connection.configuracion.Params.ParamByName('Contrato').DataType:= ftString ;
            connection.configuracion.Params.ParamByName('Contrato').Value := global_contrato ;
            connection.configuracion.Open ;

            global_miReporte := connection.configuracion.FieldByName('sReportesCIA').AsString;

            global_contrato := connection.contrato.FieldValues['sContrato'];
            frmInteligent.status.Panels.Items[7].Text  := global_contrato;

            global_convenio := 'C' ;
            Global_Afectacion := 'Anexo' ;

            If upperCase(global_independiente) = 'SI' then
                global_orden_general := tsNumeroOrden.KeyValue
            else
                global_orden_general := '' ;

            If connection.configuracion.RecordCount = 0 then
                  application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema' , 'Inteligent' ,  0 )
            Else
            Begin
                  If global_usuario = 'INTEL-CODE' then
                        global_depto := connection.configuracion.FieldValues['sIdDepartamento'] ;

                  Global_Convenio := connection.configuracion.FieldValues['sIdConvenio'] ;
                  Global_Afectacion := connection.configuracion.FieldValues['sPartidaEfectiva'] ;

                  filtro_check := False ;

            End ;
            cerrar := True;
            Close;


        End;

    frminteligent.status.Panels.Items[5].Text  := global_db;
    //Selecciona la configuracion para el contrato seleccionado
    Connection.configuracionCont.Active := False;;
    Connection.configuracionCont.ParamByName('sNombreCorto').AsString := global_contrato;
    Connection.configuracionCont.Open  ;
    global_Iva := ((connection.configuracionCont.FieldByName('IVA').AsFloat)/100);
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Seleccion de Contrato', 'Al seleccionar contrato', 0);
      end;
  end;

//  frmColmena.ShowModal;
//  if frmColmena.salir then
//  begin
//   // tiempo.enabled := True;
//    abort;
//  end;


end;

procedure TfrmSeleccion2.tsContratoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
     tsIdTurno.SetFocus
end;

procedure TfrmSeleccion2.tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
       btnOk.SetFocus;
end;

procedure TfrmSeleccion2.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsnumeroorden.Color:= global_color_entrada;
end;

procedure TfrmSeleccion2.tsNumeroOrdenExit(Sender: TObject);
begin
  tsnumeroorden.Color:= global_color_salida;
end;

procedure TfrmSeleccion2.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
        tsidturno.SetFocus;
end;

procedure TfrmSeleccion2.tsIdTurnoEnter(Sender: TObject);
begin
    tsIdTurno.Color := global_color_entrada
end;

procedure TfrmSeleccion2.tsIdTurnoExit(Sender: TObject);
begin
    tsIdTurno.Color :=global_color_salida
end;

procedure TfrmSeleccion2.dxBarLargeButton12Click(Sender: TObject);
begin
  adentro := True;
  connection.zConnection.Disconnect;
  frmAcceso.ShowModal;
end;

procedure TfrmSeleccion2.dxBarLargeButton13Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSeleccion2.dxBarLargeButton14Click(Sender: TObject);
begin
  Application.HelpFile := 'C:\inteligent\inteligenthelp.chm';
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TfrmSeleccion2.dxBarLargeButton15Click(Sender: TObject);
begin
  frmAcerca.showModal
end;

procedure TfrmSeleccion2.FormActivate(Sender: TObject);
begin
    if not frmInteligent.adentro then
    begin
        ordenesdetrabajo.Active := False ;
        tmDescripcion.Text := '' ;
        turnos.Active := False ;
        global_contrato := '' ;
        chkContrato.Checked := False ;
        If global_grupo = 'INTEL-CODE' Then
          chkContrato.Visible := True
        Else
          chkContrato.Visible := False ;
    end
end;

procedure TfrmSeleccion2.refresh ;
Var
 bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
    tmDescripcion.Text := '' ;
    tdFechaInicio.Text := '' ;
    tdFechaFinal.Text := '' ;
    Turnos.Active := False ;
    If TreeObras.Selected.Text <> '' then
        If TreeObras.Selected.getFirstChild = Nil Then
        Begin
            If upperCase(global_independiente) = 'SI' then
            begin
                OrdenesdeTrabajo.Active := False ;
                OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
                OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                OrdenesdeTrabajo.Open ;
                If OrdenesdeTrabajo.RecordCount > 0 Then
                    tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ; 
            End ;
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select cnf.bImagen, c.mDescripcion, cn.dFechaInicio, cn.dFechaFinal From contratos c ' +
                                             'INNER JOIN configuracion cnf ON (c.sContrato = cnf.sContrato) '  +
                                             'INNER JOIN convenios cn ON (cn.sContrato = c.sContrato And cn.sIdConvenio = cnf.sIdConvenio) ' +
                                             'Where c.sContrato = :Contrato') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
            Begin
                tmDescripcion.Text := Connection.QryBusca.FieldValues['mDescripcion'] ;

                //para la pinche Imagen soriano
                  BlobField := Connection.QryBusca.FieldByName('bImagen');
                  BS := Connection.QryBusca.CreateBlobStream(BlobField, bmRead);
                  if bs.Size > 1 then
                     begin
                         try
                           Pic := TJpegImage.Create;
                            try
                              Pic.LoadFromStream(bS);
                              bImagen.Picture.Graphic := Pic;
                            finally
                              Pic.Free;
                            end;
                         finally
                            bS.Free
                         end
                      end ;

                tdFechaInicio.Text := Connection.QryBusca.FieldValues['dFechaInicio'] ;
                If VarIsNull(Connection.QryBusca.FieldValues['dFechaFinal']) Then
                     MessageDlg('No hay Fecha Final del Convenio  !!', mtError, [mbOk], 0)
                Else
                  tdFechaFinal.Text := Connection.QryBusca.FieldValues['dFechaFinal'] ;
                Turnos.Active := False ;
                Turnos.Params.ParamByName('Contrato').DataType := ftString ;
                Turnos.Params.ParamByName('Contrato').Value := TreeObras.Selected.Text ;
                Turnos.Open ;
                If Turnos.RecordCount > 0 Then
                Begin
                    Turnos.First ;
                    tsIdTurno.KeyValue := Turnos.FieldValues['sIdTurno']
                End
             End
        End
        Else
        Begin
             Turnos.Active := False ;
             Turnos.Params.ParamByName('Contrato').DataType := ftString ;
             Turnos.Params.ParamByName('Contrato').Value := '' ;
             Turnos.Open ;
             tmDescripcion.Text := '' ;
             tdFechaInicio.Text := '' ;
             tdFechaFinal.Text := '' ;
             tsIdTurno.KeyValue := ''
        End
end;


procedure TfrmSeleccion2.TreeObrasClick(Sender: TObject);
begin
  refresh;
end;

procedure TfrmSeleccion2.FormShow(Sender: TObject);
begin

 
  
  cerrar := False;
  If upperCase(global_independiente) = 'SI' then
  begin
      tsNumeroOrden.Visible := True ;
      lblOrden.Visible := True
  End
  Else
  begin
      tsNumeroOrden.Visible := False ;
      lblOrden.Visible := False
  End ;

  {Verificamos el numeor de accesos Oceanografia version bETA ...}
  Connection.QryBusca.Active := False ;
  Connection.QryBusca.SQL.Clear ;
  connection.QryBusca.SQL.Add('select * from activos where iAccesos <= 210') ;
  connection.QryBusca.Open ;

  if connection.QryBusca.RecordCount = 0 then
  begin
      messageDLG('La Version de Inteligent ERP de 2015 ha Expirado, Actualice su version!', mtInformation, [mbOk], 0);
      exit;
  end
  else
  begin
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('Update activos set iAccesos = iAccesos + 1 ') ;
      connection.QryBusca.ExecSQL;
  end;


  with TreeObras.Items do
  begin
    Clear;
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select * From activos Order By sIdActivo') ;
    Connection.QryBusca.Open ;
    While NOT Connection.QryBusca.Eof Do
    Begin
        MyTreeNode2 := Add(nil,Connection.QryBusca.FieldValues['sDescripcion'] );
        // Selecciono las distintas residencias o municipios
        QryResidencias.Active := False ;
        qryResidencias.Params.ParamByName('activo').DataType := ftString ;
        qryResidencias.Params.ParamByName('activo').Value := Connection.QryBusca.FieldValues['sIdActivo'] ;
        qryResidencias.Open ;
        While NOT qryResidencias.Eof Do
        Begin
            MyTreeNode3 := AddChild(MyTreeNode2,qryResidencias.FieldValues['sDescripcion']);

            // Seleciono los contratos del municipio
            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;
            If (global_usuario = 'INTEL-CODE') or (global_usuario = 'ADMIN') Then
            Begin
                Connection.QryBusca2.SQL.Add('select c.sContrato From contratos c Where c.sIdResidencia = :Residencia And c.lStatus = "Activo" Order By c.sContrato') ;
                Connection.QryBusca2.Params.ParamByName('Residencia').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Residencia').Value := qryResidencias.FieldValues['sIdResidencia'] ;
            End
            Else
            Begin
                Connection.QryBusca2.SQL.Add('select c.sContrato From contratos c INNER JOIN contratosxusuario u ON ' +
                                             '(c.sContrato = u.sContrato And u.sIdUsuario = :Usuario) ' +
                                             'Where c.sIdResidencia = :Residencia And c.sIdActivo = :Activo And c.lStatus = "Activo" Order By c.sContrato') ;
                Connection.QryBusca2.Params.ParamByName('Activo').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Activo').Value := Connection.QryBusca.FieldValues['sIdActivo'] ;
                Connection.QryBusca2.Params.ParamByName('Residencia').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Residencia').Value := qryResidencias.FieldValues['sIdResidencia'] ;
                Connection.QryBusca2.Params.ParamByName('Usuario').DataType := ftString ;
                Connection.QryBusca2.Params.ParamByName('Usuario').Value := global_usuario ;
            End ;
            Connection.QryBusca2.Open ;
            if connection.QryBusca2.RecordCount = 0 then
               TreeObras.Items.Delete(MyTreeNode3);
            While NOT Connection.QryBusca2.Eof Do
            Begin
                AddChild(MyTreeNode3,Connection.QryBusca2.FieldValues['sContrato']);
                Connection.QryBusca2.Next
            End ;
            QryResidencias.Next
        End ;
        Connection.QryBusca.Next
    End
  End ;
  treeObras.SetFocus
end;

procedure TfrmSeleccion2.TreeObrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    refresh
end;

procedure TfrmSeleccion2.TreeObrasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    refresh
end;

end.
