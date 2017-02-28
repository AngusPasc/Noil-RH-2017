unit frm_EstimacionAlbum;

interface

uses
  forms, frxClass, Menus, Dialogs, ExtDlgs, DB, ADODB, ComCtrls, StdCtrls,
  Buttons, Grids, DBGrids, Newpanel, DBCtrls, ExtCtrls, Controls,
  Classes, jpeg, Windows, Messages, Variants, sysutils, strUtils, UnitExcepciones,
  ZAbstractDataset, ZDataset, ZAbstractRODataset, Graphics, sSkinProvider,
  RxLookup ;

type
    TfrmEstimacionAlbum = class(TForm)
    dsEstimacionxIsometrico: TDataSource;
    dsImagenes: TDataSource;
    pnComentarios: tNewGroupBox;
    Grid_Isometricos: TDBGrid;
    gbReportes: tNewGroupBox;
    ImgReporte: TImage;
    tmDescripcion: TDBMemo;
    btnAdiciona: TBitBtn;
    OpenPicture: TOpenPictureDialog;
    tdIdFecha: TDateTimePicker;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    frGenerador: TfrxReport;
    Label2: TLabel;
    NavReportes: TDBNavigator;
    Imagenes: TZReadOnlyQuery;
    GroupBox1: TGroupBox;
    bImagen: TImage;
    Label1: TLabel;
    tmDescripcionIsom: TDBMemo;
    imgReportes: TImage;
    sSkinProvider1: TsSkinProvider;
    btnUp: TBitBtn;
    btnDown: TBitBtn;
    btnEditar: TBitBtn;
    btnExaminar: TBitBtn;
    btnGrabar: TBitBtn;
    btnCancelar: TBitBtn;
    btnEliminar: TBitBtn;
    btnSaveImage: TBitBtn;
    ds_isometricos: TDataSource;
    zIsometricos: TZQuery;
    Label3: TLabel;
    tsIsometrico: TComboBox;
    EstimacionxIsometrico: TZQuery;
    Label4: TLabel;
    mDescripcion: TMemo;
    ds_partidas: TDataSource;
    zPartidas: TZQuery;
    tsPartida: TRxDBLookupCombo;
    ImprimirReporteFotografico1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImagenesAfterScroll(DataSet: TDataSet);
    procedure EstimacionxIsometricoAfterScroll(DataSet: TDataSet);
    procedure Grid_IsometricosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAdicionaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaChange(Sender: TObject);
    procedure tmDescripcionIsomKeyPress(Sender: TObject; var Key: Char);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure Imprimir1Click(Sender: TObject);
    procedure imgReportesClick(Sender: TObject);
    procedure btnExaminarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure OrdenarFotos(sParamOrden : string);
    procedure bImagenDblClick(Sender: TObject);
    procedure tsIsometricoEnter(Sender: TObject);
    procedure tsIsometricoExit(Sender: TObject);
    procedure tmDescripcionIsomContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tmDescripcionIsomEnter(Sender: TObject);
    procedure tsPartidaExit(Sender: TObject);
    procedure ImprimirReporteFotografico1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionAlbum: TfrmEstimacionAlbum;
  sIsometrico, sPrefijo : String ;
  sArchivo      : String ;
  sOpcion       : String ;

implementation

uses frm_connection, global, utilerias;

{$R *.dfm}

procedure TfrmEstimacionAlbum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmEstimacionAlbum.ImagenesAfterScroll(DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
  If Imagenes.RecordCount > 0 then
  Begin
      gbReportes.Caption := 'REPORTE DIARIO No. ' + imagenes.FieldValues['sNumeroReporte'] ;
      BlobField := imagenes.FieldByName('bImagen') ;
      BS := imagenes.CreateBlobStream ( BlobField , bmRead ) ;
      If bs.Size > 1 Then
      Begin
          try
              Pic:=TJpegImage.Create;
              try
                 Pic.LoadFromStream(bS);
                 imgReporte.Picture.Graphic:=Pic;
              finally
                 Pic.Free;
              end;
          finally
              bS.Free
          End
      End
      Else
            imgReporte.Picture.LoadFromFile(global_ruta +  'MiImagen.jpg') ;
  End
  Else
  begin
      imgReporte.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg') ;
      gbReportes.Caption := 'REPORTES DIARIOS'
  end
end;

procedure TfrmEstimacionAlbum.EstimacionxIsometricoAfterScroll(
  DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
  If sOpcion = '' Then
  begin
      If EstimacionxIsometrico.RecordCount > 0 then
      Begin
          sIsometrico := estimacionxisometrico.FieldValues['sIsometrico'] ;
          tsIsometrico.Text  := sIsometrico;
          tsPartida.KeyValue := estimacionxisometrico.FieldValues['sNumeroActividad'];
          if zPartidas.FieldValues['sNumeroActividad'] = Null then
             mDescripcion.Text := '';
          sPrefijo := estimacionxisometrico.FieldValues['sPrefijo'] ;
          BlobField := estimacionxisometrico.FieldByName('bIsometrico') ;
          BS := EstimacionxIsometrico.CreateBlobStream ( BlobField , bmRead ) ;
          If bs.Size > 1 Then
          Begin
              try
                  Pic:=TJpegImage.Create;
                  try
                     Pic.LoadFromStream(bS);
                     bImagen.Picture.Graphic:=Pic;
                  finally
                     Pic.Free;
                  end;
              finally
                  bS.Free
              End
          End
          Else
              bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg') ;
      End
      Else
      begin
          bImagen.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg') ;
          sIsometrico := 'INTRODUZCA DEFINICION DEL ISOMETRICO' ;
          sPrefijo := ''
      end ;
  end ;
end;


procedure TfrmEstimacionAlbum.Grid_IsometricosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    If Key = VK_RETURN	Then
        Key := Ord(VK_TAB)
end;

procedure TfrmEstimacionAlbum.bImagenDblClick(Sender: TObject);
begin
    btnExaminar.Click;
end;

procedure TfrmEstimacionAlbum.btnAdicionaClick(Sender: TObject);
begin
  If Imagenes.RecordCount > 0 Then
  begin
      If EstimacionxIsometrico.RecordCount = 0 Then
          EstimacionxIsometrico.Insert 
      Else
          If (EstimacionxIsometrico.State = dsBrowse) Then
              EstimacionxIsometrico.Insert ;

      If ImgReporte.Picture <> nil Then
      begin
          bImagen.Picture := ImgReporte.Picture ;
          If estimacionxisometrico.FieldValues['mDescripcion'] = '*' Then
              estimacionxisometrico.FieldValues['mDescripcion'] := imagenes.FieldValues['sDescripcion'] 
          Else
              If (EstimacionxIsometrico.State = dsInsert) Then
                  estimacionxisometrico.FieldValues['mDescripcion'] := imagenes.FieldValues['sDescripcion'] ;
          estimacionxisometrico.Post ;
      end
  end
end;

procedure TfrmEstimacionAlbum.btnCancelarClick(Sender: TObject);
begin
    tmDescripcion.ReadOnly := True ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnGrabar.Enabled := False ;
    sOpcion := '';
end;

procedure TfrmEstimacionAlbum.btnDownClick(Sender: TObject);
begin
     OrdenarFotos('Abajo');
end;

procedure TfrmEstimacionAlbum.btnEditarClick(Sender: TObject);
begin
    sOpcion := 'Edit' ;
    sArchivo := '' ;
    btnGrabar.Enabled := True ;
    btnCancelar.Enabled := True ;
    btnExaminar.Enabled := False ;
    btnEditar.Enabled := False ;
    btnSaveImage.Enabled := False ;
    btnEliminar.Enabled := False ;
    tmDescripcion.ReadOnly := False ;
end;

procedure TfrmEstimacionAlbum.btnEliminarClick(Sender: TObject);
begin
    if estimacionxisometrico.RecordCount > 0 then
    begin
      try
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zcommand.SQL.Add ( 'Delete from estimacionxisometrico Where sContrato = :contrato and sNumeroOrden =:Orden And sNumeroGenerador = :Generador and sIsometrico =:Isometrico And sPrefijo = :Prefijo and iIMagen =:Item ') ;
        connection.zcommand.Params.ParamByName('Contrato').DataType  := ftString ;
        connection.zcommand.Params.ParamByName('Contrato').Value     := Global_Contrato ;
        connection.zcommand.Params.ParamByName('Orden').DataType     := ftString ;
        connection.zcommand.Params.ParamByName('Orden').Value        := sGeneradorOrden;
        connection.zcommand.Params.ParamByName('Generador').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Generador').Value    := sGeneradorNumero ;
        connection.zcommand.Params.ParamByName('Isometrico').DataType:= ftString ;
        connection.zcommand.Params.ParamByName('Isometrico').Value   := estimacionxisometrico.FieldValues['sIsometrico'];
        connection.zcommand.Params.ParamByName('Item').DataType      := ftInteger;
        connection.zcommand.Params.ParamByName('Item').Value         := estimacionxisometrico.FieldValues['iImagen'];
        connection.zcommand.Params.ParamByName('Prefijo').DataType   := ftString;
        connection.zcommand.Params.ParamByName('Prefijo').Value      := estimacionxisometrico.FieldValues['sPrefijo'];
        connection.zCommand.ExecSQL ();
        bImagen.Picture.Bitmap := Nil ;
        bImagen.Picture.LoadFromFile('') ;
        tmDescripcion.Text := '' ;
        estimacionxisometrico.Refresh ;
      Except
      end;
    end;
end;

procedure TfrmEstimacionAlbum.btnExaminarClick(Sender: TObject);
Var
   size: Real ;
   indice : integer;
   lTamanio : boolean;
begin
    if tsIsometrico.Text = '' then
    begin
        messageDLG('Seleccione un Isometrico!', mtInformation, [mbOk], 0);
        exit;
    end;
    sOpcion := 'New' ;
    bImagen.Picture.Bitmap := Nil ;
    btnGrabar.Enabled := True ;
    btnCancelar.Enabled := True ;
    btnSaveImage.Enabled := False ;
    btnExaminar.Enabled := False ;
    btnEditar.Enabled := False ;
    tmDescripcion.ReadOnly := False ;
    OpenPicture.Title := 'Inserta Imagen';
    sArchivo := '' ;
    tmDescripcion.Text := '' ;
    lTamanio := True;

    If OpenPicture.Execute then
    begin
        indice := 0;
        OpenPicture.Files.Count;
        while indice < OpenPicture.Files.Count  do
        begin
            try
                sArchivo := OpenPicture.Files.Strings[indice] ;
                size := Tamanyo (sArchivo) ;
                If size <= 350 Then
                    bImagen.Picture.LoadFromFile(OpenPicture.Files.Strings[indice])
                Else
                begin
                    MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
                    lTamanio := False;
                end;
            except
                bImagen.Picture.LoadFromFile('') ;
            end;
            inc(indice);
        end;
        if lTamanio = False then
           sArchivo := '';
    end;
end;

procedure TfrmEstimacionAlbum.btnGrabarClick(Sender: TObject);
Var
  iItem    : Integer ;
  indice   : integer;
Begin
    If sOpcion = 'New' Then
    Begin
        If sArchivo <> '' Then
        Begin
            iItem  := 1 ;
            indice := 0;
            while indice < OpenPicture.Files.Count  do
            begin
                sArchivo := OpenPicture.Files.Strings[indice];

                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('select max(iImagen) as iImagen from estimacionxisometrico where sContrato =:Contrato and sNumeroOrden =:Orden and sNumeroGenerador =:Generador group by sContrato ');
                connection.zCommand.ParamByName('Contrato').AsString  := global_contrato;
                connection.zCommand.ParamByName('Orden').AsString     := sGeneradorOrden;
                connection.zCommand.ParamByName('Generador').AsString := sGeneradorNumero;
                connection.zCommand.Open;

                if connection.zCommand.RecordCount > 0 then
                   iItem := connection.zCommand.FieldValues['iImagen'] + 1;

                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zcommand.SQL.Add('Insert Into estimacionxisometrico (sContrato, sNumeroOrden, sNumeroGenerador, sIsometrico, sWbs, sNumeroActividad, iImagen, sPrefijo, bIsometrico, mDescripcion) ' +
                                            'Values (:Contrato, :Orden, :Generador, :Isometrico, :Wbs, :Actividad, :item, :Prefijo, :Imagen, :Descripcion)') ;
                connection.zcommand.Params.ParamByName('Contrato').DataType  := ftString ;
                connection.zcommand.Params.ParamByName('Contrato').Value     := Global_Contrato ;
                connection.zcommand.Params.ParamByName('Orden').DataType     := ftString ;
                connection.zcommand.Params.ParamByName('Orden').Value        := sGeneradorOrden ;
                connection.zcommand.Params.ParamByName('Generador').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Generador').Value    := sGeneradorNumero ;
                connection.zcommand.Params.ParamByName('Wbs').DataType       := ftString ;
                connection.zcommand.Params.ParamByName('Wbs').Value          := zPartidas.FieldValues['sWbs'] ;
                connection.zcommand.Params.ParamByName('Actividad').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Actividad').Value    := zPartidas.FieldValues['sNumeroActividad'] ;
                connection.zcommand.Params.ParamByName('Item').DataType      := ftInteger;
                connection.zcommand.Params.ParamByName('Item').Value         := iItem ;
                connection.zcommand.Params.ParamByName('Prefijo').DataType   := ftString;
                connection.zcommand.Params.ParamByName('Prefijo').Value      := sPrefijo ;
                connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo;
                connection.zcommand.Params.ParamByName('Descripcion').Value    := tmDescripcion.Text;
                connection.zcommand.Params.ParamByName('Isometrico').DataType  := ftString ;
                connection.zcommand.Params.ParamByName('Isometrico').Value     := tsIsometrico.Text ;
                connection.zCommand.ExecSQL();
                inc(indice);
            end;
        End
    End
    Else
    Begin
        If sArchivo <> '' Then
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zcommand.SQL.Add ( 'Update estimacionxisometrico SET bImagen = :Imagen, sIsometrico =:isometrico, mDescripcion = :Descripcion, sWbs =:Wbs, sNumeroActividad =:Actividad  ' +
                                          'Where sContrato = :contrato and sNumeroOrden =:Orden And sNumeroGenerador = :Generador and iIMagen =:Item ') ;
            connection.zcommand.Params.ParamByName('Contrato').DataType  := ftString ;
            connection.zcommand.Params.ParamByName('Contrato').Value     := Global_Contrato ;
            connection.zcommand.Params.ParamByName('Orden').DataType     := ftString ;
            connection.zcommand.Params.ParamByName('Orden').Value        := sGeneradorOrden;
            connection.zcommand.Params.ParamByName('Generador').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Generador').Value    := sGeneradorNumero ;
            connection.zcommand.Params.ParamByName('Wbs').DataType       := ftString ;
            connection.zcommand.Params.ParamByName('Wbs').Value          := zPartidas.FieldValues['sWbs'] ;
            connection.zcommand.Params.ParamByName('Actividad').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Actividad').Value    := zPartidas.FieldValues['sNumeroActividad'] ;
            connection.zcommand.Params.ParamByName('Isometrico').DataType:= ftString ;
            connection.zcommand.Params.ParamByName('Isometrico').Value   := tsIsometrico.Text;
            connection.zcommand.Params.ParamByName('Item').DataType      := ftInteger;
            connection.zcommand.Params.ParamByName('Item').Value         := estimacionxisometrico.FieldValues['iImagen'];
            connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
            connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
            connection.zcommand.Params.ParamByName('Descripcion').Value    := tmDescripcion.Text ;
            connection.zCommand.ExecSQL ();
        End
        Else
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zcommand.SQL.Add ( 'Update estimacionxisometrico SET  mDescripcion = :Descripcion, sIsometrico =:Isometrico, sWbs =:Wbs, sNumeroActividad =:Actividad ' +
                                          'Where sContrato = :contrato and sNumeroOrden =:Orden And sNumeroGenerador = :Generador and iIMagen =:Item ') ;
            connection.zcommand.Params.ParamByName('Contrato').DataType  := ftString ;
            connection.zcommand.Params.ParamByName('Contrato').Value     := Global_Contrato ;
            connection.zcommand.Params.ParamByName('Orden').DataType     := ftString ;
            connection.zcommand.Params.ParamByName('Orden').Value        := sGeneradorOrden;
            connection.zcommand.Params.ParamByName('Generador').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Generador').Value    := sGeneradorNumero ;
            connection.zcommand.Params.ParamByName('Wbs').DataType       := ftString ;
            connection.zcommand.Params.ParamByName('Wbs').Value          := zPartidas.FieldValues['sWbs'] ;
            connection.zcommand.Params.ParamByName('Actividad').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Actividad').Value    := zPartidas.FieldValues['sNumeroActividad'] ;
            connection.zcommand.Params.ParamByName('Isometrico').DataType:= ftString ;
            connection.zcommand.Params.ParamByName('Isometrico').Value   := tsIsometrico.Text;
            connection.zcommand.Params.ParamByName('Item').DataType      := ftInteger;
            connection.zcommand.Params.ParamByName('Item').Value         := estimacionxisometrico.FieldValues['iImagen'];
            connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
            connection.zcommand.Params.ParamByName('Descripcion').Value    := tmDescripcion.Text ;
            connection.zCommand.ExecSQL ();
        End
    End ;
    estimacionxisometrico.Refresh;
    sOpcion := '';
    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnSaveImage.Enabled := True ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnEliminar.Enabled := True ;
    tmDescripcion.ReadOnly := True ;
end;

procedure TfrmEstimacionAlbum.btnUpClick(Sender: TObject);
begin
    OrdenarFotos('Arriba');
end;

procedure TfrmEstimacionAlbum.FormShow(Sender: TObject);
begin
    caption := 'ALBUM FOTOGRAFICO DEL GENERADOR DE OBRA No. ' +  sGeneradorNumero ;
    sIsometrico := 'INTRODUZCA DEFINICION DEL ISOMETRICO' ;
    sPrefijo := '' ;

    tdIdFecha.Date := Date ;
    Imagenes.Active := False ;
    Imagenes.Params.ParamByName('contrato').DataType := ftString ;
    Imagenes.Params.ParamByName('contrato').Value := sGeneradorContrato ;
    Imagenes.Params.ParamByName('orden').DataType := ftString ;
    Imagenes.Params.ParamByName('orden').Value := sGeneradorOrden ;
    Imagenes.Params.ParamByName('fecha').DataType := ftDate ;
    Imagenes.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
    Imagenes.Open ;

    zPartidas.Active := False;
    zPartidas.ParamByName('Contrato').AsString  := global_contrato;
    zPartidas.ParamByName('Convenio').AsString  := global_convenio;
    zPartidas.ParamByName('Orden').AsString     := sGeneradorOrden;
    zPartidas.ParamByName('Generador').AsString := sGeneradorNumero;
    zPartidas.Open;

    if zPartidas.RecordCount > 0 then
    begin
       tsPartida.KeyValue := zPartidas.FieldValues['sNumeroActividad'];
       tsPartida.OnExit(sender);
       mDescripcion.Text := zPartidas.FieldValues['mDescripcion'];
    end;

    EstimacionxIsometrico.Active := False ;
    If sGeneradorStatus = 'Pendiente' Then
        btnAdiciona.Enabled := True
    Else
        btnAdiciona.Enabled := False ;

    EstimacionxIsometrico.Params.ParamByName('contrato').DataType := ftString ;
    EstimacionxIsometrico.Params.ParamByName('contrato').Value := sGeneradorContrato ;
    EstimacionxIsometrico.Params.ParamByName('orden').DataType := ftString ;
    EstimacionxIsometrico.Params.ParamByName('orden').Value := sGeneradorOrden ;
    EstimacionxIsometrico.Params.ParamByName('generador').DataType := ftString ;
    EstimacionxIsometrico.Params.ParamByName('generador').Value := sGeneradorNumero ;
    EstimacionxIsometrico.Open ;

    zIsometricos.Active := False;
    zIsometricos.ParamByName('Contrato').AsString  := global_contrato;
    zIsometricos.ParamByName('Orden').AsString     := sGeneradorOrden;
    zIsometricos.ParamByName('Generador').AsString := sGeneradorNumero;
    zIsometricos.Open;

    tsIsometrico.Clear;
    while not zIsometricos.Eof do
    begin
        tsIsometrico.Items.Add(zIsometricos.FieldValues['sIsometricoReferencia']);
        zIsometricos.Next;
    end;

    tsIsometrico.ItemIndex := 0;

end;

procedure TfrmEstimacionAlbum.tdIdFechaChange(Sender: TObject);
begin
    imgReporte.Picture.LoadFromFile(global_ruta + 'MiImagen.jpg') ;
    gbReportes.Caption := 'REPORTES DIARIOS' ;

    Imagenes.Active := False ;
    Imagenes.Params.ParamByName('contrato').DataType := ftString ;
    Imagenes.Params.ParamByName('contrato').Value := sGeneradorContrato ;
    Imagenes.Params.ParamByName('orden').DataType := ftString ;
    Imagenes.Params.ParamByName('orden').Value := sGeneradorOrden ;
    Imagenes.Params.ParamByName('fecha').DataType := ftDate ;
    Imagenes.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
    Imagenes.Open
end;

procedure TfrmEstimacionAlbum.tmDescripcionIsomContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
     tmDescripcion.Color := global_Color_entrada;
end;

procedure TfrmEstimacionAlbum.tmDescripcionIsomEnter(Sender: TObject);
begin
    tmDescripcion.Color := global_Color_salida;
end;

procedure TfrmEstimacionAlbum.tmDescripcionIsomKeyPress(Sender: TObject;
  var Key: Char);
var
    sPartida : String ;
begin
    If Key = #10 Then
    begin
        sPartida := MidStr ( tmDescripcionIsom.Text , pos( '##' , tmDescripcionIsom.Text), 10 ) ;
        sPartida := Trim(MidStr ( sPartida , 3, pos( ' ' , tmDescripcionIsom.Text))) ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('select mDescripcion from actividadesxorden ' +
                                    'Where sContrato = :contrato and sNumeroOrden = :orden and sNumeroActividad = :actividad And sTipoActividad = "Actividad"') ;
        connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('contrato').Value := sGeneradorContrato ;
        connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('orden').Value := sGeneradorOrden ;
        connection.QryBusca.Params.ParamByName('actividad').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('actividad').Value := sPartida ;
        connection.QryBusca.Open ;
        if connection.QryBusca.RecordCount > 0 Then
            tmDescripcionIsom.Lines.Add('"' + connection.QryBusca.FieldValues['mDescripcion'] + '"') ;
    end ;
end;

procedure TfrmEstimacionAlbum.tsIsometricoEnter(Sender: TObject);
begin
    tsIsometrico.Color := global_Color_entrada;
end;

procedure TfrmEstimacionAlbum.tsIsometricoExit(Sender: TObject);
begin
    tsIsometrico.Color := global_Color_salida;
end;

procedure TfrmEstimacionAlbum.tsPartidaExit(Sender: TObject);
begin
    if zPartidas.RecordCount > 0 then
       mDescripcion.Text := zPartidas.FieldValues['mDescripcion'];
end;

procedure TfrmEstimacionAlbum.frGeneradorGetValue(const VarName: String;
  var Value: Variant);
begin
  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;
  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisorGenerador;
  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;
  if CompareText(VarName, 'SUPERVISOR_RESIDENTE') = 0 then
    Value := sResidente;
  if CompareText(VarName, 'SUPERVISOR_SUBCONTRATISTA') = 0 then
    Value := sSupervisorSubContratista;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;
  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisorGenerador;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_SUBCONTRATISTA') = 0 then
    Value := sPuestoSupervisorSubContratista;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_RESIDENTE') = 0 then
    Value := sPuestoResidente;
end;

procedure TfrmEstimacionAlbum.Imprimir1Click(Sender: TObject);
begin
    try
        procAlbumGeneradorGob (sGeneradorContrato , sGeneradorOrden , sGeneradorNumero , global_convenio, frmEstimacionAlbum, frGenerador.OnGetValue, True)
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico', 'Al imprimir', 0);
        end;
    end;
end;


procedure TfrmEstimacionAlbum.ImprimirReporteFotografico1Click(Sender: TObject);
begin
    try
        //procAlbumGeneradorMod(sGeneradorContrato , sGeneradorOrden , sGeneradorNumero , global_convenio, frmEstimacionAlbum, frGenerador.OnGetValue, True)
    except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico', 'Al imprimir', 0);
        end;
    end;
end;

procedure TfrmEstimacionAlbum.imgReportesClick(Sender: TObject);
begin
    gbReportes.Visible := Not gbReportes.Visible
end;



procedure TfrmEstimacionAlbum.OrdenarFotos(sParamOrden: string);
var
   idAuxiliar, idAuxiliar2 : integer;
   SavePlace   : TBookmark;
begin
    if estimacionxisometrico.RecordCount > 0 then
    begin
        if sParamOrden = 'Arriba' then
        begin
            idAuxiliar2 := estimacionxisometrico.FieldValues['iImagen'];
            estimacionxisometrico.Prior;

            idAuxiliar  := estimacionxisometrico.FieldValues['iImagen'];
            estimacionxisometrico.Next;
        end;

        if sParamOrden = 'Abajo' then
        begin
            idAuxiliar2 := estimacionxisometrico.FieldValues['iImagen'];
            estimacionxisometrico.Next;

            idAuxiliar  := estimacionxisometrico.FieldValues['iImagen'];
            estimacionxisometrico.Prior;
        end;
        //Colocamos un id mayor para evitar duplicidad..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE estimacionxisometrico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And sNumeroOrden = :Orden and sNumeroGenerador =:Generador And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value       := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Orden').DataType       := ftString;
        Connection.zCommand.Params.ParamByName('Orden').value          := sGeneradorOrden;
        Connection.zCommand.Params.ParamByName('Generador').DataType   := ftString;
        Connection.zCommand.Params.ParamByName('Generador').value      := sGeneradorNumero;
        Connection.zCommand.Params.ParamByName('diario').DataType      := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value         := idAuxiliar2;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar + 500;
        connection.zCommand.ExecSQL;

        //Ahora actualizamos el item mayor
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE estimacionxisometrico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And sNumeroOrden = :Orden and sNumeroGenerador =:Generador And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value       := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Orden').DataType       := ftString;
        Connection.zCommand.Params.ParamByName('Orden').value          := sGeneradorOrden;
        Connection.zCommand.Params.ParamByName('Generador').DataType   := ftString;
        Connection.zCommand.Params.ParamByName('Generador').value      := sGeneradorNumero;
        Connection.zCommand.Params.ParamByName('diario').DataType      := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value         := idAuxiliar;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar2;
        connection.zCommand.ExecSQL;

         //Ahora actualizamos el item alterado
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE estimacionxisometrico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And sNumeroOrden = :Orden and sNumeroGenerador =:Generador And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value       := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Orden').DataType       := ftString;
        Connection.zCommand.Params.ParamByName('Orden').value          := sGeneradorOrden;
        Connection.zCommand.Params.ParamByName('Generador').DataType   := ftString;
        Connection.zCommand.Params.ParamByName('Generador').value      := sGeneradorNumero;
        Connection.zCommand.Params.ParamByName('diario').DataType      := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value         := idAuxiliar + 500;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar;
        connection.zCommand.ExecSQL;

        if sParamOrden = 'Arriba' then
           estimacionxisometrico.Prior
        else
           estimacionxisometrico.Next;

        SavePlace := estimacionxisometrico.GetBookmark;
        estimacionxisometrico.Refresh;
        estimacionxisometrico.GotoBookmark(SavePlace);
        estimacionxisometrico.FreeBookmark(SavePlace);

    end;
end;


end.
