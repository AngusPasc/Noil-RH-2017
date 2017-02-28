unit frm_DespieceImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Jpeg,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, RXDBCtrl, DBCtrls, DB, Grids, UnitTBotonesPermisos,
  DBGrids, Buttons, sBitBtn, ExtCtrls, RxMemDS, frm_EstimaInstalado, global, frm_connection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Newpanel,
  ExtDlgs ;

type
  TfrmDespieceImagen = class(TForm)
    dsImagen: TDataSource;
    Splitter1: TSplitter;
    Q_imagen: TZQuery;
    btnExaminar: TBitBtn;
    btnEditar: TBitBtn;
    btnGrabar: TBitBtn;
    btnCancelar: TBitBtn;
    btnEliminar: TBitBtn;
    btnSaveImage: TBitBtn;
    Grid_Imagenes: TRxDBGrid;
    tsDescripcion: TMemo;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    bImagen: TImage;
    btnPreview: TBitBtn;
    cmdOk: TsBitBtn;
    OpenPicture: TOpenPictureDialog;
    procedure btnExaminarClick(Sender: TObject);
    function Tamanyo (Archivo : String): Real ;
    procedure btnEditarClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Grid_ImagenesCellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
    Suma: Extended;
  end;

var
   frmDespieceImagen: TfrmDespieceImagen;
   sArchivo      : String ;
   sOpcion       : String ;
   BotonPermiso1: TBotonesPermisos;

implementation

{$R *.dfm}

Var
  ExitCode: Boolean;

procedure TfrmDespieceImagen.btnCancelarClick(Sender: TObject);
begin
btnPreview.Enabled := True ;
    tsDescripcion.ReadOnly := True ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnGrabar.Enabled := False ;
    BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
    Q_imagen.Cancel;
    If Q_imagen.State <> dsInactive Then
        If Q_imagen.RecordCount > 0 Then
         Begin
             btnSaveImage.Enabled := True ;
             btnEliminar.Enabled := True ;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
             Grid_Imagenes.SetFocus
         End
         Else
         Begin
             btnSaveImage.Enabled := False ;
             btnEliminar.Enabled := False ;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
         End
end;

procedure TfrmDespieceImagen.btnEditarClick(Sender: TObject);
begin
     If frmEstimainstalado.EstimacionxPartida.RecordCount > 0 Then
     Begin
         btnPreview.Enabled := False ;
         sOpcion := 'Edit' ;
         sArchivo := '' ;
         Q_imagen.Edit;
         btnGrabar.Enabled := True ;
         btnCancelar.Enabled := True ;
         btnExaminar.Enabled := False ;
         btnEditar.Enabled := False ;
         btnSaveImage.Enabled := False ;
         btnEliminar.Enabled := False ;
         tsDescripcion.ReadOnly := False ;
         BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
      End
end;

procedure TfrmDespieceImagen.btnEliminarClick(Sender: TObject);
begin
    If Q_imagen.RecordCount > 0 Then
    Begin
        bImagen.Picture.Bitmap := Nil ;
        bImagen.Picture.LoadFromFile('') ;
        tsDescripcion.Text := '' ;
        Q_imagen.Delete;
        Q_imagen.Refresh ;
        BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
        If Q_imagen.RecordCount > 0 Then
        begin
             btnEliminar.Enabled := True;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
        end
        Else
        begin
             btnEliminar.Enabled := False ;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
        end;
    End
end;

procedure TfrmDespieceImagen.btnExaminarClick(Sender: TObject);
Var
   size: Real ;
    nOrden: Integer;
begin

    If frmEstimainstalado.EstimacionxPartida.RecordCount > 0 Then
    Begin
          btnPreview.Enabled :=False;
          sOpcion := 'New' ;
          bImagen.Picture.Bitmap := Nil ;
          btnGrabar.Enabled := True ;
          btnCancelar.Enabled := True ;
          btnSaveImage.Enabled := False ;
          btnExaminar.Enabled := False ;
          btnEditar.Enabled := False ;
          tsDescripcion.ReadOnly := False ;
          OpenPicture.Title := 'Inserta Imagen';
          sArchivo := '' ;
          tsDescripcion.Text := '' ;
          BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
          If OpenPicture.Execute then
          begin
              try
                  sArchivo := OpenPicture.FileName ;
                  size := Tamanyo (sArchivo) ;

                  connection.QryBusca.Active := False;
                  connection.QryBusca.SQL.Clear;
                  connection.QryBusca.SQL.Add('select max(iIdOrden) as iIdOrden from estimaciondespiece_imagen group by sContrato');
                  connection.QryBusca.Open;

                  if connection.QryBusca.RecordCount > 0 then
                     nOrden := connection.QryBusca.FieldByName('iIdOrden').AsInteger + 1
                  else
                    nOrden := 1;
                  Q_imagen.Append;
                  Q_imagen.FieldByName('iIdOrden').AsInteger := nOrden;

              except
                  bImagen.Picture.LoadFromFile('') ;
              end;
          end
    end;
end;


procedure TfrmDespieceImagen.btnGrabarClick(Sender: TObject);
Var
  iItem    : Integer ;
  Pic      : TJpegImage;
  indice   : integer;
Begin
    If frmEstimainstalado.EstimacionxPartida.RecordCount > 0 Then
    begin
        indice := Q_imagen.FieldValues['iIdOrden'];
        If sOpcion = 'New' Then
        Begin
            If sArchivo <> '' Then
            Begin
                btnPreview.Enabled := True ;
                Q_imagen.FieldValues['sContrato']        := global_contrato;
                Q_imagen.FieldValues['sNumeroOrden']     := frmEstimaInstalado.OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
                Q_imagen.FieldValues['sNumeroGenerador'] := frmEstimaInstalado.Estimaciones.FieldByName('sNumeroGenerador').AsString;
                Q_imagen.FieldValues['sWbs']             := frmEstimaInstalado.ActividadesIguales.FieldByName('swbs').AsString;
                Q_imagen.FieldValues['sNumeroActividad'] := frmEstimaInstalado.ActividadesIguales.FieldByName('snumeroactividad').AsString;
                Q_imagen.FieldValues['sIsometrico']      := frmEstimaInstalado.tsIsometrico.Text;
                Q_imagen.Post;

                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zcommand.SQL.Add ( 'Update estimaciondespiece_imagen SET bImagen = :Imagen, mDescripcion = :Descripcion ' +
                                              'Where iIdOrden = :Orden') ;
                connection.zcommand.Params.ParamByName('Orden').DataType := ftInteger ;
                connection.zcommand.Params.ParamByName('Orden').Value    := indice;
                connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                connection.zcommand.ExecSQL;
            End
        End
        Else
        Begin
            If sArchivo <> '' Then
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zcommand.SQL.Add ( 'Update estimaciondespiece_imagen SET mDescripcion = :Descripcion ' +
                                              'Where iIdOrden = :Orden') ;
                connection.zcommand.Params.ParamByName('Orden').DataType := ftInteger ;
                connection.zcommand.Params.ParamByName('Orden').Value    := indice;
                connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                connection.zcommand.ExecSQL;
            End
            Else
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zcommand.SQL.Add ( 'Update estimaciondespiece_imagen SET mDescripcion = :Descripcion ' +
                                              'Where iIdOrden = :Orden') ;
                connection.zcommand.Params.ParamByName('Orden').DataType := ftInteger ;
                connection.zcommand.Params.ParamByName('Orden').Value    := indice;
                connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                connection.zcommand.ExecSQL;
            End
        End ;
    end;
    Q_imagen.Active := False ;
    Q_imagen.Open ;
    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnSaveImage.Enabled := True ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnEliminar.Enabled := True ;
    btnPreview.Enabled := True ;
    tsDescripcion.ReadOnly := True ;
    BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
end;

procedure TfrmDespieceImagen.btnPreviewClick(Sender: TObject);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    If Q_imagen.RecordCount > 0 then
    Begin
        bImagen.Picture.LoadFromFile('') ;
        If btnGrabar.Enabled = False Then
            If Q_imagen.RecordCount > 0 then
            Begin
                Connection.QryBusca.Active := False ;
                Connection.QryBusca.SQL.Clear ;
                Connection.QryBusca.SQL.Add('Select bImagen from estimaciondespiece_imagen Where iIdOrden = :orden') ;
                Connection.QryBusca.Params.ParamByName('orden').DataType := ftInteger ;
                Connection.QryBusca.Params.ParamByName('orden').Value    := Q_imagen.FieldValues['iIdOrden'] ;
                Connection.QryBusca.Open ;
                If Connection.QryBusca.RecordCount > 0 Then
                Begin
                    BlobField := Connection.QryBusca.FieldByName('bImagen') ;
                    BS := Connection.QryBusca.CreateBlobStream(BlobField, bmRead) ;
                      //.CreateBlobStream ( BlobField , bmRead ) ;
                    If bs.Size > 1 Then
                    Begin
                        try
                            Pic:=TJpegImage.Create;
                            try
                               Pic.LoadFromStream(bS);
                               bImagen.Picture.Graphic := Pic;
                            finally
                               Pic.Free;
                            end;
                        finally
                            bS.Free
                        End
                    End
                End ;     
            End
    End

end;

procedure TfrmDespieceImagen.FormShow(Sender: TObject);
begin
    BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opGeneradores');
    Q_imagen.Close;
    Q_imagen.ParamByName('contrato').AsString   := global_contrato;
    Q_imagen.ParamByName('orden').AsString      := frmEstimaInstalado.OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
    Q_imagen.ParamByName('generador').AsString  := frmEstimaInstalado.Estimaciones.FieldByName('sNumeroGenerador').AsString;
    Q_imagen.ParamByName('wbs').AsString        := frmEstimaInstalado.ActividadesIguales.FieldByName('swbs').AsString;
    Q_imagen.ParamByName('actividad').AsString  := frmEstimaInstalado.ActividadesIguales.FieldByName('snumeroactividad').AsString;
    Q_imagen.ParamByName('isometrico').AsString := frmEstimaInstalado.tsIsometrico.Text;
    Q_imagen.Open;

    BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
end;

procedure TfrmDespieceImagen.Grid_ImagenesCellClick(Column: TColumn);
begin
    if q_imagen.RecordCount > 0 then
    begin
       tsDescripcion.Text := Q_imagen.FieldValues['mDescripcion'] ;
       btnPreview.Click;
    end;
end;

Function TfrmDespieceImagen.Tamanyo (Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;

end.
