unit frm_indirectos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, DateUtils, UFunctionsGHH,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, StdCtrls, Mask, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, frm_barra, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, UnitExcepciones, UnitValidaTexto, frm_connection, global,masUtilerias,
  Menus, ExtCtrls, rxToolEdit, rxCurrEdit, Buttons, RXSpin, Grids, DBGrids,
  RXDBCtrl, ComCtrls, DBDateTimePicker, frxClass, frxDBSet, FormAutoScaler;

type
  TfrmIndirectos = class(TForm)
    frmBarra1: TfrmBarra;
    grid_Indirectos: TcxGrid;
    grid_IndirectosView: TcxGridDBTableView;
    grid_IndirectosViewColumn1: TcxGridDBColumn;
    grid_IndirectosViewColumn2: TcxGridDBColumn;
    grid_IndirectosLevel1: TcxGridLevel;
    zqIndirecto: TZQuery;
    dsIndirecto: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Panel1: TPanel;
    grid_IndirectosViewColumn3: TcxGridDBColumn;
    grid_IndirectosViewColumn4: TcxGridDBColumn;
    grid_IndirectosViewColumn5: TcxGridDBColumn;
    Label9: TLabel;
    tsIdIndirecto: TDBEdit;
    Label2: TLabel;
    tsDescripcion: TDBEdit;
    Label1: TLabel;
    dbCostomn: TDBEdit;
    Label4: TLabel;
    tdVentaMN: TDBEdit;
    tdVentaDLL: TDBEdit;
    Label5: TLabel;
    Label3: TLabel;
    dbCostoDLL: TDBEdit;
    Label6: TLabel;
    dbMedida: TDBEdit;
    gbTarifaDiaria: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    rxDistribucion: TRxDBGrid;
    tsMes: TComboBox;
    tiAnno: TRxSpinEdit;
    btnDistribuir: TBitBtn;
    tdCantidadMensual: TCurrencyEdit;
    ds_DistribuciondeIndirectos: TDataSource;
    DistribuciondeIndirectos: TZQuery;
    DistribuciondeIndirectosiAnno: TIntegerField;
    DistribuciondeIndirectossMes: TStringField;
    DistribuciondeIndirectosdIdFecha: TDateField;
    DistribuciondeIndirectosdCantidad: TFloatField;
    DistribuciondeIndirectossIdIndirecto: TStringField;
    Label13: TLabel;
    tdCantidad: TDBEdit;
    Label14: TLabel;
    tdFechaInicio: TDBDateTimePicker;
    Label15: TLabel;
    tdFechaFinal: TDBDateTimePicker;
    DistribucionMensualdeIndirectos1: TMenuItem;
    Cantidades1: TMenuItem;
    Montos1: TMenuItem;
    AnexoDT4: TZReadOnlyQuery;
    AnexoDT4sContrato: TStringField;
    AnexoDT4sDescripcion: TStringField;
    AnexoDT4sMedida: TStringField;
    AnexoDT4dCantidad: TFloatField;
    AnexoDT4dCostoMN: TFloatField;
    AnexoDT4dCostoDLL: TFloatField;
    AnexoDT4dVentaMN: TFloatField;
    AnexoDT4dVentaDLL: TFloatField;
    AnexoDT4dFechaInicio: TDateField;
    AnexoDT4dFechaFinal: TDateField;
    AnexoDT4dMensual: TFloatField;
    AnexoDT4dMensualMonto: TFloatField;
    AnexoDT4dAnno: TIntegerField;
    AnexoDT4dMes: TIntegerField;
    DBAnexoDT4: TfrxDBDataset;
    frxAnexoDT4: TfrxReport;
    AnexoDT4sIdIndirecto: TStringField;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure btnDistribuirClick(Sender: TObject);
    procedure zqIndirectoAfterScroll(DataSet: TDataSet);
    procedure DistribuciondeIndirectosCalcFields(DataSet: TDataSet);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Cantidades1Click(Sender: TObject);
    procedure Montos1Click(Sender: TObject);
  private
    { Private declarations }
    sMenuP: string;
    procedure ImprimeDistribucion(sParamTipo :string);
  public
    { Public declarations }
  end;

var
  Months: array[1..12] of string;

  frmIndirectos: TfrmIndirectos;

implementation

uses
  frm_Consumibles;

{$R *.dfm}

procedure TfrmIndirectos.btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zqIndirecto.Append;
  zqIndirecto.FieldValues['sIdIndirecto'] := '';
  zqIndirecto.FieldValues['sDescripcion'] := '';
  zqIndirecto.FieldValues['dCostoMN']     := 0 ;
  zqIndirecto.FieldValues['dCostoDLL']    := 0 ;
  zqIndirecto.FieldValues['dVentaMN']     := 0 ;
  zqIndirecto.FieldValues['dVentaDLL']    := 0 ;
  zqIndirecto.FieldValues['sMedida']      := '';
  zqIndirecto.FieldValues['dCantidad']    := 0;
  zqIndirecto.FieldValues['dFechaInicio'] := date;
  zqIndirecto.FieldValues['dFechaFinal']  := date;

  frmbarra1.btnPrinter.Enabled := False;
  BloquearItemsPopup(PopupPrincipal, True );
  grid_Indirectos.Enabled := False;
  tsIdIndirecto.SetFocus;
end;

procedure TfrmIndirectos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmIndirectos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click;
end;

procedure TfrmIndirectos.Montos1Click(Sender: TObject);
begin
     ImprimeDistribucion('Monto');
end;

procedure TfrmIndirectos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmIndirectos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click;
end;

procedure TfrmIndirectos.EnterControl(Sender: TObject);
begin
    if (sender is TDBEdit) then
        TDBEdit(sender).Color := global_color_entradaERP;

    if (sender is TDBDateTimePicker) then
        TDBDateTimePicker(sender).Color := global_color_entradaERP;
end;

procedure TfrmIndirectos.SalidaControl(Sender: TObject);
begin
    if (sender is TDBEdit) then
        TDBEdit(sender).Color := global_color_salidaERP;

    if (sender is TDBDateTimePicker) then
        TDBDateTimePicker(sender).Color := global_color_SalidaERP;
end;

procedure TfrmIndirectos.Salir1Click(Sender: TObject);
begin
     frmBarra1.btnExit.Click;
end;

procedure TfrmIndirectos.zqIndirectoAfterScroll(DataSet: TDataSet);
begin
    if zqIndirecto.State=dsbrowse then
    begin
      If frmBarra1.btnCancel.Enabled = False Then
      Begin
          DistribuciondeIndirectos.Active := False ;
          DistribuciondeIndirectos.Params.ParamByName('Contrato').DataType  := ftString ;
          DistribuciondeIndirectos.Params.ParamByName('Contrato').Value     := global_contrato ;
          DistribuciondeIndirectos.Params.ParamByName('Indirecto').DataType := ftString ;
          DistribuciondeIndirectos.Params.ParamByName('Indirecto').Value    := zqIndirecto.FieldByName('sIdIndirecto').AsString  ;
          DistribuciondeIndirectos.Open ;

          tiAnno.Value    := YearOf(zqIndirecto.FieldByName('dFechaInicio').AsDateTime) ;
          tsMes.ItemIndex := MonthOf(zqIndirecto.FieldByName('dFechaInicio').AsDateTime) - 1;
          tdCantidadMensual.Value := 0 ;
      End;
    end;
end;

procedure TfrmIndirectos.btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zqIndirecto.Cancel ;
  BloquearItemsPopup(PopupPrincipal, False );
  frmbarra1.btnPrinter.Enabled := False;
  grid_Indirectos.Enabled := True;
end;

procedure TfrmIndirectos.btnDeleteClick(Sender: TObject);
begin
  If   zqIndirecto.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
         zqIndirecto.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Indirectos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmIndirectos.btnDistribuirClick(Sender: TObject);
begin
    //Función para distribuir indirectos..
    DistribuyerecursosPeEqMaHeIn(tsMes.Text, tiAnno.Text, zqIndirecto.FieldValues['sIdIndirecto'] , 'sIdIndirecto', 'distribuciondeindirectos', 'indirectos', tdCantidadMensual.Value, zqIndirecto.FieldByName('dCantidad').AsFloat);

    DistribuciondeIndirectos.refresh ;
    DistribuciondeIndirectos.Last ;
    If tsMes.Text <> 'DICIEMBRE' Then
       tsMes.ItemIndex := tsMes.ItemIndex + 1
    Else
       tsMes.ItemIndex := 0 ;

    tdCantidadMensual.SetFocus
end;

procedure TfrmIndirectos.btnEditClick(Sender: TObject);
begin
  If zqIndirecto.RecordCount > 0 Then
    Begin
        try
         frmBarra1.btnEditClick(Sender);
         sOpcion := 'Edit';
         zqIndirecto.Edit ;
         grid_Indirectos.Enabled := False;
         tsDescripcion.SetFocus;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Indirectos', 'Al agregar registro', 0);
           end;
        end;
    End;
   BloquearItemsPopup(PopupPrincipal, True ); 
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmIndirectos.btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure TfrmIndirectos.btnPostClick(Sender: TObject);
var
   Id : integer;
begin
    if tsIdIndirecto.Text = '' then
    begin
        messageDLG('Ingrese un Id de Indirecto', mtInformation, [mbOk], 0);
        tsIdIndirecto.SetFocus;
        exit;
    end;

   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
       showmessage('la fecha final es menor a la fecha inicial' );
       tdFechaFinal.SetFocus;
       exit;
   end;

    Try
       //BUSCAMOS EL MAXIMO
      zqIndirecto.FieldByName('sContrato').AsString := global_contrato;
      zqIndirecto.FieldByName('dFechaInicio').AsDateTime := tdFechaInicio.Date;
      zqIndirecto.FieldByName('dFechaFinal').AsDateTime  := tdFechaFinal.Date;
      zqIndirecto.Post;

      frmBarra1.btnPostClick(Sender);
      grid_Indirectos.Enabled := True;
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Indirectos', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
       end;
    end;
    BloquearItemsPopup(PopupPrincipal, False );
end;

procedure TfrmIndirectos.btnRefreshClick(Sender: TObject);
begin
  zqIndirecto.Refresh;
end;

procedure TfrmIndirectos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click;
end;

procedure TfrmIndirectos.Cantidades1Click(Sender: TObject);
begin
    ImprimeDistribucion('Cantidad');
end;

procedure TfrmIndirectos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmIndirectos.DistribuciondeIndirectosCalcFields(DataSet: TDataSet);
begin
    Case MonthOf(Distribuciondeindirectos.FieldValues['dIdFecha']) Of
        1 : DistribuciondeIndirectossMes.Value := 'ENERO' ;
        2 : DistribuciondeIndirectossMes.Value := 'FEBRERO' ;
        3 : DistribuciondeIndirectossMes.Value := 'MARZO' ;
        4 : DistribuciondeIndirectossMes.Value := 'ABRIL' ;
        5 : DistribuciondeIndirectossMes.Value := 'MAYO' ;
        6 : DistribuciondeIndirectossMes.Value := 'JUNIO' ;
        7 : DistribuciondeIndirectossMes.Value := 'JULIO' ;
        8 : DistribuciondeIndirectossMes.Value := 'AGOSTO' ;
        9 : DistribuciondeIndirectossMes.Value := 'SEPTIEMBRE' ;
        10 : DistribuciondeIndirectossMes.Value := 'OCTUBRE' ;
        11 : DistribuciondeIndirectossMes.Value := 'NOVIEMBRE' ;
        12 : DistribuciondeIndirectossMes.Value := 'DICIEMBRE' ;
    End ;
    DistribuciondeIndirectosiAnno.Value := YearOf (Distribuciondeindirectos.FieldValues['dIdFecha'])
end;

procedure TfrmIndirectos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if frmConsumibles.Active then
    begin
      frmConsumibles.cargar_tipo;
      frmConsumibles.sTipoActividad.ItemIndex:=frmConsumibles.sTipoActividad.Items.IndexOf(zqIndirecto.FieldByName('sDescripcion').AsString);
    end;
  Except
  end;
  action := cafree ;
end;

procedure TfrmIndirectos.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  frmbarra1.btnCancel.Click ;
  zqIndirecto.Active:=False;
  zqIndirecto.Open ;

  Months[1] := 'ENERO';
  Months[2] := 'FEBRERO';
  Months[3] := 'MARZO';
  Months[4] := 'ABRIL';
  Months[5] := 'MAYO';
  Months[6] := 'JUNIO';
  Months[7] := 'JULIO';
  Months[8] := 'AGOSTO';
  Months[9] := 'SEPTIEMBRE';
  Months[10] := 'OCTUBRE';
  Months[11] := 'NOVIEMBRE';
  Months[12] := 'DICIEMBRE';

  grid_Indirectos.SetFocus;
  BloquearItemsPopup(PopupPrincipal, False );
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmIndirectos.Pegar1Click(Sender: TObject);
begin
    ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmIndirectos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click;
end;

procedure TfrmIndirectos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click;
end;

procedure TfrmIndirectos.ImprimeDistribucion(sParamTipo: string);
begin
   If zqIndirecto.RecordCount > 0 Then
   begin
        AnexoDT4.Active := False ;
        AnexoDT4.Params.ParamByName('Contrato').DataType := ftString ;
        AnexoDT4.Params.ParamByName('Contrato').Value := global_Contrato ;
        AnexoDT4.Open ;

        if AnexoDT4.RecordCount > 0 then
        begin
          frxAnexoDT4.PreviewOptions.MDIChild := False ;
          frxAnexoDT4.PreviewOptions.Modal := True ;
          frxAnexoDT4.PreviewOptions.ShowCaptions := False ;
          frxAnexoDT4.Previewoptions.ZoomMode := zmPageWidth ;

          if sParamTipo = 'Cantidad' then
          begin
              frxAnexoDT4.LoadFromFile(Global_Files+ global_miReporte + '_DmoIndirecto.fr3') ;
              if not FileExists(global_files + global_miReporte + '_DmoIndirecto.fr3') Then
                 showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_DmoIndirecto.fr3 no existe, notifique al administrador del sistema')
              else
                 frxAnexoDT4.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
          end;

          if sParamTipo = 'Monto' then
          begin
              frxAnexoDT4.LoadFromFile(Global_Files+ global_miReporte + '_DmoIndirectoMonto.fr3') ;
              if not FileExists(global_files + global_miReporte + '_DmoIndirectoMonto.fr3') Then
                 showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_DmoIndirectoMonto.fr3 no existe, notifique al administrador del sistema')
              else
                 frxAnexoDT4.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
          end;
       end
       else
          messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
   end
   else
       ShowMessage('No existen registros para Generar la Distribucion Mensual de Indirectos');
end;

end.
