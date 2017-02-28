unit frm_ReporteErrores;

interface

uses
  Windows, Jpeg, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ComCtrls, frm_connection, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_barra, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxMemo, cxDBEdit, cxTextEdit, StdCtrls,
  cxMaskEdit, cxDropDownEdit, global, DBDateTimePicker, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  Menus, CxGridExportLink, ShellApi, cxLookupEdit, cxDBLookupEdit,  
  cxDBLookupComboBox, ExtCtrls, dblookup, ExtDlgs, ClipBrd, UFunctionsGHH,
  cxButtons, dxLayoutContainer, dxLayoutControl, FormAutoScaler, cxSplitter,
  cxGroupBox, dxLayoutControlAdapters, cxCheckBox, frxClass, frxDBSet ;

type
  TfrmRepErrores = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    tdFechaInicio: TDateTimePicker;
    dsReporteerrores: TDataSource;
    qryReporteErrores: TZQuery;
    cReporteErroressId: TStringField;
    cReporteErroressIdUsuario: TStringField;
    dtfldActualizacionesdIdFecha: TDateField;
    cReporteErroressModulo: TStringField;
    cReporteErroressDesarrollador: TStringField;
    cReporteErroressTester: TStringField;
    mfldReporteErroressDescripcion: TMemoField;
    intgrfldActualizacionesiOrden: TIntegerField;
    dtfldActualizacionesdFechaActualizacion: TDateField;
    tdFechaFinal: TDateTimePicker;
    cReporteErroressVersion: TStringField;
    pmPopupPrincipal: TPopupMenu;
    mniInsertar1: TMenuItem;
    mniEditar1: TMenuItem;
    mniN1: TMenuItem;
    mniRegistrar1: TMenuItem;
    mniCan1: TMenuItem;
    mniN2: TMenuItem;
    mniExportarExcel1: TMenuItem;
    mniEliminar1: TMenuItem;
    mniRefresh1: TMenuItem;
    mniN3: TMenuItem;
    mniCopy1: TMenuItem;
    mniPaste1: TMenuItem;
    mniN4: TMenuItem;
    mniSalir1: TMenuItem;
    dlgSave1: TSaveDialog;
    qryClientes: TZQuery;
    dsClientes: TDataSource;
    dsModulos: TDataSource;
    qryModulos: TZQuery;
    cReporteErroressTipoError: TStringField;
    cReporteErroressCliente: TStringField;
    qryReporteErroressImagen: TBlobField;
    cReporteErroressPrograma: TStringField;
    OpenPicture: TOpenPictureDialog;
    QFile: TZQuery;
    cReporteErroressEstado: TStringField;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylGreen: TcxStyle;
    cxstylMaroon: TcxStyle;
    cxstylOliva: TcxStyle;
    cxstylPurple: TcxStyle;
    cxStylVerblan: TcxStyle;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    cxspltr1: TcxSplitter;
    frmtsclr1: TFormAutoScaler;
    zqqryReporteErroreslAplicaScript: TStringField;
    cxstylfuchsia: TcxStyle;
    dbCClientesdxlytcntrl1Item1: TdxLayoutItem;
    pnlInformacion: TNxHeaderPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl8: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    dbDesarrollador: TcxDBTextEdit;
    dbDescripcion: TcxDBMemo;
    dbSolicita: TcxDBTextEdit;
    dbFechaActualizacion: TDBDateTimePicker;
    dbVersion: TcxDBTextEdit;
    grp1: TGroupBox;
    bImagen: TImage;
    dbModulo: TcxDBLookupComboBox;
    cbbTipoError: TComboBox;
    dbCliente: TcxDBLookupComboBox;
    cbbProgramas: TComboBox;
    btnPDF: TButton;
    cbbEstado: TComboBox;
    btnDetalle: TcxButton;
    cxdblAplicaScript: TcxDBCheckBox;
    cxdblAplicaReporte: TcxDBCheckBox;
    mniImpSQL: TMenuItem;
    zqScript: TZReadOnlyQuery;
    frxScript: TfrxReport;
    frxDBScript: TfrxDBDataset;
    mniImprimirReporte1: TMenuItem;
    zqqryReporteErroreslAplicaReporte: TStringField;
    cxgrpbx1: TcxGroupBox;
    frmBarra1: TfrmBarra;
    cxGridActualizaciones: TcxGrid;
    dbg_actualizaciones: TcxGridDBTableView;
    Col_Grid__actualizacionesColumn4: TcxGridDBColumn;
    Col__actualizacionessIdUsuario1: TcxGridDBColumn;
    Col__actualizacionesColumn1: TcxGridDBColumn;
    Col__actualizacionesdIdFecha1: TcxGridDBColumn;
    Col_Grid__actualizacionesColumn2: TcxGridDBColumn;
    Col__actualizacionessModulo1: TcxGridDBColumn;
    Col__actualizacioneseTipoActualizacion1: TcxGridDBColumn;
    Col_Grid__actualizacionesColumn5: TcxGridDBColumn;
    Col__actualizacionessDesarrollador1: TcxGridDBColumn;
    Col__actualizacionessTester1: TcxGridDBColumn;
    Col_Grid__actualizacionesColumn3: TcxGridDBColumn;
    Col__actualizacionessDescripcion1: TcxGridDBColumn;
    dbggridactualizacioneslevel: TcxGridLevel;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    function formatoFecha(fecha: TDate) : string;
    procedure tdFechaInicioChange(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbModuloKeyPress(Sender: TObject; var Key: Char);
    procedure dbTipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbSolicitaKeyPress(Sender: TObject; var Key: Char);
    procedure dbDesarrolladorKeyPress(Sender: TObject; var Key: Char);
    procedure dbFechaActualizacionKeyPress(Sender: TObject; var Key: Char);

    procedure mniInsertar1Click(Sender: TObject);
    procedure mniExportarExcel1Click(Sender: TObject);
    procedure mniEditar1Click(Sender: TObject);
    procedure mniSalir1Click(Sender: TObject);
    procedure mniRegistrar1Click(Sender: TObject);
    procedure mniCan1Click(Sender: TObject);
    procedure mniEliminar1Click(Sender: TObject);
    procedure mniRefresh1Click(Sender: TObject);
    procedure mniPaste1Click(Sender: TObject);
    procedure mniCopy1Click(Sender: TObject);
    procedure dbClienteKeyPress(Sender: TObject; var Key: Char);
    procedure cbbTipoErrorKeyPress(Sender: TObject; var Key: Char);
    procedure dbVersionKeyPress(Sender: TObject; var Key: Char);
    procedure cbbProgramasKeyPress(Sender: TObject; var Key: Char);
    
    procedure bImagenClick(Sender: TObject);
    procedure dbg_actualizacionesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dbg_actualizacionesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_actualizacionesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure btnPDFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure dbg_actualizacionesStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure mniImpSQLClick(Sender: TObject);
    procedure mniImprimirReporte1Click(Sender: TObject);//Sam
  private
    { Private declarations }

  sMenuP: string;
        ListaFiles:TstringList ;
  public
    { Public declarations }
  end;

var
  frmRepErrores: TfrmRepErrores;
   sientra: Byte;

implementation

uses UInteliDialog, UFrmVisorPdf, Func_Genericas, frmDetalleErrores;

{$R *.dfm}

procedure TfrmRepErrores.bImagenClick(Sender: TObject);
begin
 if (qryReporteErrores.State = dsInsert) or (qryReporteErrores.State = dsEdit) then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        sientra := 10;
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        if fileExists(global_ruta + 'MiImagen.jpg') then
          bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
        else
          bImagen.Picture := nil
      end
    end
  end
end;



procedure TfrmRepErrores.btnPDFClick(Sender: TObject);
 Var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;

begin
  if (qryReporteErrores.RecordCount>0) or (qryReporteErrores.State=DsInsert ) then
  begin
    QFile.Active:=false;
    if qryReporteErrores.State=DsInsert then
      QFile.paramByname('Folio').AsInteger:=-1
    else
      QFile.paramByname('Folio').AsInteger:= qryReporteErrores.FieldByNAme('iOrden').AsInteger;

    QFile.paramByname('Movimiento').AsString:='Reporte Errores';
    QFile.paramByname('TipoFile').AsString:='PDF';
    QFile.open;

    application.CreateForm(TFrmVisorPdf,FrmVisorPdf);
    try
      if qryReporteErrores.State=DsInsert then
        FrmVisorPdf.Mode:=VsInsercion;

      if qryReporteErrores.State=DsEdit then
      begin
        if QFile.RecordCount=0 then
          FrmVisorPdf.Mode:=VsInsercion
        else
        begin
          FrmVisorPdf.Mode:=VsEdicion;
          sNameFile:=GenerarTmpName('',QFile.FieldByName('sExtension').AsString);
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(QFile.FieldByName('bFile'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorPdf.FileName:=sTotalFileName;
            FrmVisorPdf.sNameFile:=QFile.FieldByName('sNombreFile').AsString;
          finally
            MryFile.Destroy;
          end;
        end;
      end;

      if qryReporteErrores.State=DsBrowse then
      begin
        if QFile.RecordCount=0 then
          FrmVisorPdf.Mode:=VsInsercion
        else
          FrmVisorPdf.Mode:=VsLectura;

        if QFile.Recordcount>0 then
        begin
          sNameFile:=GenerarTmpName('',QFile.FieldByName('sExtension').AsString);
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(QFile.FieldByName('bFile'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorPdf.FileName:=sTotalFileName;
            FrmVisorPdf.sNameFile:=QFile.FieldByName('sNombreFile').AsString;
          finally
            MryFile.Destroy;
          end;
        end;
      end;

      FrmVisorPdf.TipoFile:=smPdf;

      if FrmVisorPdf.showmodal=mrOk then
      begin
        if qryReporteErrores.State in [DsInsert,DsEdit]  then
        begin
          begin
            //StreamPDF := TFileStream.Create(FrmVisorPdf.PDFStream, fmOpenRead);
           // StreamPDF:=TMemoryStream.Create;
            //StreamPDF.position:=0;
           // StreamPDF:=FrmVisorPdf.PDFStream;//.CopyFrom(FrmVisorPdf.PDFStream,FrmVisorPdf.PDFStream.Size);

            mapdato:=IData.Create;
            if qryReporteErrores.State = dsInsert then
              mapdato.IdDb:=-1
            else
              if QFile.RecordCount=0 then
                 mapdato.IdDb:=-1
              else
                mapdato.IdDb:=QFile.fieldByname('iIdFile').asinteger;


            mapdato.sNameFile:=FrmVisorPdf.FileName;
            mapdato.sTypeFile:='PDF';

            IndReg:=ListaFiles.IndexOf(mapdato.sTypeFile);
            if IndReg=-1 then
            begin
              ListaFiles.AddObject(mapdato.sTypeFile,mapdato);
            end
            else
            begin
              ListaFiles.Delete(IndReg);
              ListaFiles.AddObject(mapdato.sTypeFile,mapdato);
            end;
          end;
        end;
      end;

    finally
      FrmVisorPdf.destroy;
      QFile.close;
    end;
  end;

end;

procedure TfrmRepErrores.btnAddClick(Sender: TObject);
begin
  ListaFiles.Clear;
  qryReporteErrores.Append;
  frmBarra1.btnAddClick(Sender);

  cxGridActualizaciones.Enabled := False;
  dbmodulo.SetFocus;

  dbSolicita.Text      := 'JOSE LUIS FADUL SANCHEZ';
  dbDesarrollador.Text := 'INTELI-CODE';
  dbDescripcion.Text   := '*';
  dbVersion.Text       := '2015.5.27.4' ;
  CbbEstado.Text       := 'Pendientes' ;
end;

procedure TfrmRepErrores.btnCancelClick(Sender: TObject);
begin
  qryReporteErrores.Cancel;
  frmBarra1.btnCancelClick(Sender);
  cxGridActualizaciones.Enabled := True;

end;

procedure TfrmRepErrores.btnDeleteClick(Sender: TObject);
begin
  if qryReporteErrores.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      qryReporteErrores.Delete;
  end;
end;

procedure TfrmRepErrores.btnDetalleClick(Sender: TObject);
begin
    Application.CreateForm(Tfrm_DetalleError, frm_DetalleError);
    frm_DetalleError.show
end;

procedure TfrmRepErrores.btnEditClick(Sender: TObject);
begin

  qryReporteErrores.Edit ;
  ListaFiles.Clear;
  if qryReporteErrores.RecordCount > 0 then
  begin
     qryReporteErrores.Edit;
     frmBarra1.btnEditClick(Sender);
     cxGridActualizaciones.Enabled := False;
  end;
    cbbProgramas.Text := qryReporteErrores.FieldByName('sPrograma').AsString  ;
    cbbTipoError.Text := qryReporteErrores.FieldByName('sTipoError').AsString ;
    CbbEstado.Text := qryReporteErrores.FieldByName('sEstado').AsString ;
end;

procedure TfrmRepErrores.btnExitClick(Sender: TObject);
begin
  if (qryReporteErrores.State in [dsInsert]) or (qryReporteErrores.State in [dsEdit]) then
    qryReporteErrores.Cancel;
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure TfrmRepErrores.btnPostClick(Sender: TObject);
var
  continuar : Boolean;
  x, i : integer;

  bS: TStream;
  bs2 : TFileStream ;

  Pic: TJpegImage;
  Pic2 : TBitMap;
  BlobField: tField;
  cadena: string;
  MapDato:IData;
  BlobSTream:Tstream;
  FileStream:TFileStream;

begin

  if Trim(dbModulo.Text) <> '' then
  begin
    dbModulo.Style.Color := clWindow;
    if Trim(CbbTipoerror.Text) <> 'Tipo Error' then
    begin
      CbbTipoerror.Color := clWindow;
      if (qryReporteErrores.State in [dsInsert]) then
      begin
         connection.QryBusca.Active := False;
         connection.QryBusca.SQL.Text := 'select max(iOrden) as max from nuc_reporterrores';
         connection.QryBusca.Open;

         qryReporteErrores.FieldByName('iOrden').AsInteger               := connection.QryBusca.FieldByName('max').AsInteger + 1;
         qryReporteErrores.FieldByName('dIdFecha').AsDateTime            := Date;
         qryReporteErrores.FieldByName('sIdUsuario').AsString            := global_usuario;
         qryReporteErrores.FieldByName('sId').AsString                   := dbModulo.Text + IntToStr(connection.QryBusca.FieldByName('max').AsInteger);
       end ;

        qryReporteErrores.FieldByName('dFechaActualizacion').AsDateTime  := dbFechaActualizacion.Date;
        qryReporteErrores.FieldByName('sPrograma').AsString              :=  cbbProgramas.Text ;
        qryReporteErrores.FieldByName('sTipoError').AsString             :=  cbbTipoError.Text ;
        qryReporteErrores.FieldByName('sEstado').AsString                :=  cbbEstado.Text ;
        qryReporteErrores.FieldByName('lAplicaReporte').AsString         :=  'No' ;


  //Aqui guardo la imagen cuando venga de un Archivo

   if (qryReporteErrores.FieldValues['bImagen'] = '') and (sientra = 10) then
    begin
      if OpenPicture.FileName <> '' then
      begin
        try
          BlobField := qryReporteErrores.FieldByName('bImagen');
          BS := qryReporteErrores.CreateBlobStream(BlobField, bmWrite);
          try
            Pic := TJpegImage.Create;
            try
              Pic.LoadFromFile(OpenPicture.FileName);
              Pic.SaveToStream(Bs);
            finally
              Pic.Free;
            end;
          finally
            bS.Free
          end
        except

        end
      end
      //else
     // begin
     //   MessageDlg('Agrega una Imagen al ERROR ! ', mtInformation, [mbOk], 0);
    //    exit;
    //  end
    end;

        qryReporteErrores.Post;
        frmBarra1.btnPostClick(Sender);
        cxGridActualizaciones.Enabled := True;

    end
    else
    begin
      MessageDlg('Especifique el Tipo de ERROR', mtInformation, [mbOk], 0);
      cbbTipoerror.Color := $008080FF;
    end;
  end
  else
  begin
    MessageDlg('Especifique el modulo en que se realizo la actualización', mtInformation, [mbOk], 0);
    dbModulo.Style.Color := $008080FF;
  end;


  if ListaFiles.Count>0 then
    begin
       for I := 0 to ListaFiles.Count - 1 do
       begin
        MapDato:=IData(ListaFiles.Objects[I]);
        QFile.Active:=false;
        QFile.paramByname('Folio').AsInteger:=qryReporteErrores.fieldByname('iOrden').AsInteger;
        QFile.paramByname('Movimiento').AsString:='Reporte Errores';
        QFile.paramByname('TipoFile').AsString:=MapDato.sTypeFile;
        QFile.open;

        if QFile.RecordCount=0 then
        begin
          QFile.append;
          QFile.FieldByName('iIdFile').asinteger:=0;
          QFile.FieldByName('iIdFolio').asinteger:=qryReporteErrores.FieldByName('iOrden').asinteger;
          QFile.FieldByNAme('sTipoMovimiento').AsString:='Reporte Errores';
        end
        else
        begin
          QFile.edit;

        end;

        QFile.FieldByNAme('sNombreFile').AsString:=ExtractFileName(MapDato.sNameFile);
        QFile.FieldByNAme('sExtension').AsString:=ExtractFileExt(MapDato.sNameFile);
        QFile.FieldByNAme('sTipoFile').AsString:=MapDato.sTypeFile;

        BlobSTream:=QFile.CreateBlobStream(QFile.FieldByName('bFile'),bmwrite);
        try
          FileStream := TFileStream.Create(MapDato.sNameFile, fmOpenRead);
          try
            BlobStream.CopyFrom(FileStream, FileStream.Size);
          finally
            FileStream.Destroy;
          end;
        Finally
          BlobStream.Destroy;
        end;

        QFile.post;  //aqui esta el post
    end;

  end;

  qryReporteErrores.Refresh ;
//  qryReporteErrores.First ;
end;

procedure TfrmRepErrores.btnRefreshClick(Sender: TObject);
begin
  qryReporteErrores.Active := False;
  qryReporteErrores.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date);
  qryReporteErrores.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qryReporteErrores.Open;
end;

procedure TfrmRepErrores.cbbProgramasKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
     dbDescripcion.SetFocus ;
end;

procedure TfrmRepErrores.cbbTipoErrorKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
     dbDesarrollador.setFocus ;
end;

procedure TfrmRepErrores.dbClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
      cbbProgramas.SetFocus;
end;

procedure TfrmRepErrores.dbDesarrolladorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
     dbVersion.SetFocus ;
end;

procedure TfrmRepErrores.dbFechaActualizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbCliente.SetFocus;
end;


procedure TfrmRepErrores.dbModuloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbSolicita.SetFocus;
end;

procedure TfrmRepErrores.dbSolicitaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cbbTipoError.SetFocus;
end;

procedure TfrmRepErrores.dbTipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbSolicita.SetFocus;
end;

procedure TfrmRepErrores.dbVersionKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
    dbFechaActualizacion.SetFocus;
end;

procedure TfrmRepErrores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ListaFiles.Clear;
  ListaFiles.destroy;
  action := cafree ;
end;

procedure TfrmRepErrores.FormCreate(Sender: TObject);
begin
  ListaFiles:=TstringList.Create;
end;

procedure TfrmRepErrores.FormShow(Sender: TObject);
begin
  tdFechaInicio.Date := Sysutils.Date;
  tdFechaFinal.Date := Sysutils.Date;
  dbFechaActualizacion.Date := Sysutils.Date;
  tdFechaInicio.Date := Date() -2000 ;
  qryReporteErrores.Active := False;
  qryReporteErrores.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date-2000);
  qryReporteErrores.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qryReporteErrores.Open;

  qryModulos.Active := False ;
  qryModulos.Open ;

  qryClientes.Active := False ;
  qryClientes.Params.ParamByName('Contrato').Value := Global_Contrato ;
  qryClientes.Open ;
end;

procedure TfrmRepErrores.dbg_actualizacionesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
 var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if qryReporteErrores.RecordCount > 0 then
  begin
    BlobField := qryReporteErrores.FieldByName('bImagen');
    BS := qryReporteErrores.CreateBlobStream(BlobField, bmRead);
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
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end ;
        cbbProgramas.Text := qryReporteErrores.FieldByName('sPrograma').AsString  ;
        cbbTipoError.Text := qryReporteErrores.FieldByName('sTipoError').AsString ;
        CbbEstado.Text    := qryReporteErrores.FieldByName('sEstado').AsString ;

end;



procedure TfrmRepErrores.dbg_actualizacionesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
 var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if qryReporteErrores.RecordCount > 0 then
  begin
    BlobField := qryReporteErrores.FieldByName('bImagen');
    BS := qryReporteErrores.CreateBlobStream(BlobField, bmRead);
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
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end ;
        cbbProgramas.Text := qryReporteErrores.FieldByName('sPrograma').AsString  ;
        cbbTipoError.Text := qryReporteErrores.FieldByName('sTipoError').AsString ;
        CbbEstado.Text    := qryReporteErrores.FieldByName('sEstado').AsString ;

end;

procedure TfrmRepErrores.dbg_actualizacionesKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
 var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if qryReporteErrores.RecordCount > 0 then
  begin
    BlobField := qryReporteErrores.FieldByName('bImagen');
    BS := qryReporteErrores.CreateBlobStream(BlobField, bmRead);
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
    end
    else
      if fileExists(global_ruta + 'MiImagen.jpg') then
        bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg')
      else
        bImagen.Picture := nil
  end ;
        cbbProgramas.Text := qryReporteErrores.FieldByName('sPrograma').AsString  ;
        cbbTipoError.Text := qryReporteErrores.FieldByName('sTipoError').AsString ;
        CbbEstado.Text := qryReporteErrores.FieldByName('sEstado').AsString ;

end;


procedure TfrmRepErrores.dbg_actualizacionesStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
 AColumn := Sender.PatternGridView.FindItemByName('grid_actualizacioneseTipoActualizacion1');

   if VarToStr(ARecord.Values[AColumn.Index]) = 'No Bloqueantes' then
     AStyle := cxstylBlue;
   if VarToStr(ARecord.Values[AColumn.Index]) = 'Actualizacion' then
     AStyle := cxstylGreen;
   if (VarToStr(ARecord.Values[AColumn.Index]) = 'Bloqueantes') then
     AStyle := cxstylRed;
   if (VarToStr(ARecord.Values[AColumn.Index]) = 'Mejoras Futuras') then
     AStyle := cxstylPurple;
   if (VarToStr(ARecord.Values[AColumn.Index]) = 'Critico') then
     AStyle := cxstylMaroon;
   if (VarToStr(ARecord.Values[AColumn.Index]) = 'Trivial') then
     AStyle := cxstylOliva;
   if (VarToStr(ARecord.Values[AColumn.Index]) = 'Perdida Mayor Funcionalidad') then
     AStyle := cxStylVerblan  ;
   if (VarToStr(ARecord.Values[AColumn.Index]) = 'Interfaz') then
     AStyle := cxstylfuchsia  ;

end;


procedure TfrmRepErrores.mniCan1Click(Sender: TObject);
begin
 frmBarra1.btnCancel.Click ;
end;

procedure TfrmRepErrores.mniCopy1Click(Sender: TObject);
begin
  if dbDescripcion.Focused = true Then
     dbDescripcion.CopyToClipboard ;
end;

procedure TfrmRepErrores.mniEditar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click;
end;

procedure TfrmRepErrores.mniEliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click ;
end;

procedure TfrmRepErrores.mniExportarExcel1Click(Sender: TObject);

Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxGridActualizaciones);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;





procedure TfrmRepErrores.mniImprimirReporte1Click(Sender: TObject);
begin
  zqScript.Active := False ;
  zqScript.SQL.Clear ;
  zqScript.SQL.Add('select re.iOrden, re.dFechaActualizacion,dr.dFecha,re.sTipoError, re.sPrograma, re.sModulo,re.sDesarrollador, dr.mDescripcion  ' +
                   'from nuc_reporterrores re ' +
                   'Inner Join nuc_detallereperrores dr On (dr.idError=re.iOrden)  ' +
                   'Where re.lAplicaReporte="Si" and sTipoSolucion="Reporte .fr3" ') ;
  zqScript.Open ;
      if zqScript.RecordCount > 0 then
      begin
        try
          frxScript.LoadFromFile(global_files + 'script.fr3');
          if not FileExists(global_files+'script.fr3') then
                  showmessage('El archivo de reporte script.fr3 no existe, notifique al administrador del sistema');
          frxScript.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));//listaVerificacion.fr3
         finally

         end;

      end;

end;

procedure TfrmRepErrores.mniImpSQLClick(Sender: TObject);
begin
  zqScript.Active := False ;
  zqScript.SQL.Clear ;
  zqScript.SQL.Add('select re.iOrden, re.dFechaActualizacion,dr.dFecha,re.sTipoError, re.sPrograma, re.sModulo,re.sDesarrollador, dr.mDescripcion  ' +
                   'from nuc_reporterrores re ' +
                   'Inner Join nuc_detallereperrores dr On (dr.idError=re.iOrden)  ' +
                   'Where re.lAplicaScript="Si" and sTipoSolucion="Script" Order  By dr.dFecha DESC') ;
  zqScript.Open ;

      if zqScript.RecordCount > 0 then
      begin
        try
          frxScript.LoadFromFile(global_files+ 'script.fr3');
          if not FileExists(global_files + 'script.fr3') then
                  showmessage('El archivo de reporte script.fr3 no existe, notifique al administrador del sistema');

          //frxScript.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));//listaVerificacion.fr3
         frxScript.ShowReport ;
         finally

         end;

      end;

end;

procedure TfrmRepErrores.mniInsertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click;
end;

 procedure TfrmRepErrores.mniPaste1Click(Sender: TObject);
begin
  if dbDescripcion.Focused = true Then
     dbDescripcion.PasteFromClipboard ;

end;

procedure TfrmRepErrores.mniRefresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click ;
end;

procedure TfrmRepErrores.mniRegistrar1Click(Sender: TObject);
begin
   frmBarra1.btnPost.Click();
end;

procedure TfrmRepErrores.mniSalir1Click(Sender: TObject);
begin
  close ;
end;

procedure TfrmRepErrores.tdFechaFinalChange(Sender: TObject);
begin
  qryReporteErrores.Active := False;
  qryReporteErrores.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date);
  qryReporteErrores.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qryReporteErrores.Open;
end;

procedure TfrmRepErrores.tdFechaInicioChange(Sender: TObject);
begin
  qryReporteErrores.Active := False;
  qryReporteErrores.ParamByName('fechaI').AsString := formatoFecha(tdFechaInicio.Date);
  qryReporteErrores.ParamByName('fechaF').AsString := formatoFecha(tdFechaFinal.Date);
  qryReporteErrores.Open;
end;

function TfrmRepErrores.formatoFecha(fecha: TDate) : string;//Sam
var
  anio, mes, dia : Word;
  resultado : string;
begin
  DecodeDate(fecha, anio, mes, dia);
  resultado := IntToStr(anio) + '/' + IntToStr(mes) + '/' + IntToStr(dia);//Sam
  Result := resultado;
end;

end.
