unit frm_FichaTecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, frm_connection, DB, ADODB, ExtDlgs, global,
  Buttons, Jpeg, Utilerias, frxClass, frxDBSet, unitexcepciones,
  UnitValidaTexto,UnitTBotonesPermisos ;

type
  TfrmFichaTecnica = class(TForm)
    GroupBox1: TGroupBox;
    bImagen: TImage;
    GroupBox2: TGroupBox;
    bImagenAux: TImage;
    tmComentarios: TMemo;
    tsLink: TEdit;
    tsReferencia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    tsNumeroActividad: TEdit;
    Label4: TLabel;
    OpenPicture: TOpenPictureDialog;
    OpenPictureAux: TOpenPictureDialog;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnPrinter: TBitBtn;
    btnNew: TBitBtn;
    btnEdit: TBitBtn;
    tmDescripcion: TMemo;
    Label5: TLabel;
    btnDelete: TBitBtn;
    procedure bImagenDblClick(Sender: TObject);
    procedure bImagenAuxDblClick(Sender: TObject);
    function Tamanyo (Archivo : String): Real;
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsReferenciaEnter(Sender: TObject);
    procedure tsReferenciaExit(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure tsLinkEnter(Sender: TObject);
    procedure tsLinkExit(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure tsLinkKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFichaTecnica: TfrmFichaTecnica;
  lExiste        : boolean ;
  sWbsAct        : string;
  BotonPermiso: TbotonesPermisos;
implementation

{$R *.dfm}


procedure TfrmFichaTecnica.bImagenDblClick(Sender: TObject);
Var
   size: Real ;
   sArchivo : String ;
begin

   OpenPicture.Title := 'Inserta Imagen';
   sArchivo := '' ;
   If OpenPicture.Execute then
   begin
       try
           sArchivo := OpenPicture.FileName ;
           size := Tamanyo (sArchivo) ;
           If size <= 100 Then
                 bImagen.Picture.LoadFromFile(OpenPicture.FileName)
           Else
                 MessageDlg('La imagen a adjuntar no debe ser mayor a 100 kb.', mtInformation, [mbOk], 0);
       except
           bImagen.Picture.LoadFromFile('') ;
       end
   end



end;

Function TfrmFichaTecnica.Tamanyo (Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;

procedure TfrmFichaTecnica.bImagenAuxDblClick(Sender: TObject);
Var
   size: Real ;
   sArchivo : String ;
begin
   OpenPictureAux.Title := 'Inserta Imagen';
   sArchivo := '' ;
   If OpenPictureAux.Execute then
   begin
       try
           sArchivo := OpenPictureAux.FileName ;
           size := Tamanyo (sArchivo) ;
           If size <= 100 Then
                bImagenAux.Picture.LoadFromFile(OpenPictureAux.FileName)
           Else
                MessageDlg('La imagen a adjuntar no debe ser mayor a 100 kb.', mtInformation, [mbOk], 0);
       except
           bImagenAux.Picture.LoadFromFile('') ;
       end
   End
end;

procedure TfrmFichaTecnica.tsNumeroActividadChange(Sender: TObject);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
  try
    lExiste := False ;
    tsReferencia.ReadOnly := True ;
    tsLink.ReadOnly := True ;
    tmComentarios.ReadOnly := True ;
    bImagen.Enabled := False ;
    bImagenAux.Enabled := False ;
    OpenPicture.FileName := '' ;
    OpenPictureAux.FileName := '' ;
    bImagen.Picture.Bitmap := nil ;
    bImagenAux.Picture.Bitmap := nil ;
    tmDescripcion.Text := '' ;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sWbs, mDescripcion From actividadesxanexo ' +
                                 'Where sContrato = :contrato And sNumeroActividad = :Actividad And sIdConvenio = :Convenio') ;
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio ;
    connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
    Begin
        tmDescripcion.Text := Connection.qryBusca.FieldValues['mDescripcion'] ;
        sWbsAct := Connection.qryBusca.FieldValues['sWbs'];
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select bImagen, bImagenAux, sReferencia, sLink, mComentarios From fichatecnica ' +
                                    'Where sContrato = :contrato And sNumeroActividad = :Actividad') ;
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
        Begin
            lExiste := True ;
            bImagen.Picture.Bitmap := Nil ;
            bImagenAux.Picture.Bitmap := Nil ;
            BlobField := Connection.qryBusca.FieldByName('bImagen') ;
            BS := Connection.qryBusca.CreateBlobStream ( BlobField , bmRead ) ;
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
            End ;
            BlobField := Connection.qryBusca.FieldByName('bImagenAux') ;
            BS := Connection.qryBusca.CreateBlobStream ( BlobField , bmRead ) ;
            If bs.Size > 1 Then
            Begin
                try
                    Pic:=TJpegImage.Create;
                    try
                        Pic.LoadFromStream(bS);
                        bImagenAux.Picture.Graphic := Pic;
                    finally
                        Pic.Free;
                    end;
                finally
                    bS.Free
                End
            End ;
            tsReferencia.Text := Connection.qryBusca.FieldValues['sReferencia'] ;
            tsLink.Text := Connection.qryBusca.FieldValues['sLink'] ;
            tmComentarios.Text := Connection.qryBusca.FieldValues['mComentarios'] ;
            btnNew.Enabled := False ;
            btnEdit.Enabled := True ;
            btnSave.Enabled := False ;
            btnCancel.Enabled := False ;
            btnPrinter.Enabled := false ;
//            btnDelete.Enabled := True ;
        End
        Else
        Begin
            btnNew.Enabled := True ;
            btnEdit.Enabled := False ;
            btnSave.Enabled := False ;
            btnCancel.Enabled := False ;
            btnPrinter.Enabled := False ;
//            btnDelete.Enabled := False ;
            tsReferencia.Text := '' ;
            tsLink.Text := '' ;
            tmComentarios.Text := '' ;
        End
    End
  except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FichaTecnica', 'Al ingresar numero de partida', 0);
        end;
  end;
end;

procedure TfrmFichaTecnica.btnNewClick(Sender: TObject);
begin
 try
    lExiste := False ;
    OpenPicture.FileName := '' ;
    OpenPictureAux.FileName := '' ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    tsReferencia.ReadOnly := False ;
    tsLink.ReadOnly := False ;
    tmComentarios.ReadOnly := False ;
    bImagen.Enabled := True ;
    bImagenAux.Enabled := True ;
    tsReferencia.SetFocus ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FichaTecnica', 'Al agregar registro', 0);
  end;
 end;
 btndelete.Enabled:=false;
end;

procedure TfrmFichaTecnica.btnEditClick(Sender: TObject);
begin
 try
    lExiste := True ;
    OpenPicture.FileName := '' ;
    OpenPictureAux.FileName := '' ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := False ;
    btnSave.Enabled := True ;
    btnCancel.Enabled := True ;
    btnPrinter.Enabled := False ;
    tsReferencia.ReadOnly := False ;
    tsLink.ReadOnly := False ;
    tmComentarios.ReadOnly := False ;
    bImagen.Enabled := True ;
    bImagenAux.Enabled := True ;
    tsReferencia.SetFocus ;
 except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FichaTecnica', 'Al editar registro', 0);
    end;
 end;
  btndelete.Enabled:=false;
end;

procedure TfrmFichaTecnica.btnSaveClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Referencia');nombres.Add('Link');
  nombres.Add('Descripcion');

  cadenas.Add(tsReferencia.Text);cadenas.Add(tslink.Text);
  cadenas.Add(tmcomentarios.Text);

  if not validaTexto(nombres, cadenas, 'Numero de partida', tsNumeroActividad.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
  try
    If not lExiste Then
    Begin
        If (OpenPicture.FileName <> '') And (OpenPictureAux.FileName <> '') Then
        Begin
            lExiste := True ;
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'INSERT INTO fichatecnica (sContrato, sWbs, sNumeroActividad, bImagen, bImagenAux, sReferencia, mComentarios, sLink) ' +
                                          'VALUES (:Contrato, :WBS, :Partida, :Imagen1, :Imagen2, :Referencia, :Comentarios, :Link)') ;
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('WBS').DataType := ftString ;
            connection.zCommand.Params.ParamByName('WBS').value := sWbsAct ;
            connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
            connection.zCommand.Params.ParamByName('Imagen1').LoadFromFile(OpenPicture.FileName, ftGraphic) ;
            connection.zCommand.Params.ParamByName('Imagen2').LoadFromFile(OpenPictureAux.FileName, ftGraphic) ;
            connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
            connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
            connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
            connection.zCommand.ExecSQL ;
        End
        Else
            If (OpenPicture.FileName <> '') Then
            Begin
                lExiste := True ;
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'INSERT INTO fichatecnica (sContrato, sWbs, sNumeroActividad, bImagen, sReferencia, mComentarios, sLink) ' +
                                              'VALUES (:Contrato, :WBS, :Partida, :Imagen1, :Referencia, :Comentarios, :Link)') ;
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                connection.zCommand.Params.ParamByName('WBS').DataType := ftString ;
                connection.zCommand.Params.ParamByName('WBS').value := sWbsAct ;
                connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
                connection.zCommand.Params.ParamByName('Imagen1').LoadFromFile(OpenPicture.FileName, ftGraphic) ;
                connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
                connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
                connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
                connection.zCommand.ExecSQL ;
            End
            Else
                If (OpenPictureAux.FileName <> '') Then
                Begin
                    lExiste := True ;
                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add ( 'INSERT INTO fichatecnica (sContrato, sWbs, sNumeroActividad, bImagenAux, sReferencia, mComentarios, sLink) ' +
                                                  'VALUES (:Contrato, :WBS, :Partida, :Imagen2, :Referencia, :Comentarios, :Link)') ;
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                    connection.zCommand.Params.ParamByName('WBS').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('WBS').value := sWbsAct ;
                    connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
                    connection.zCommand.Params.ParamByName('Imagen2').LoadFromFile(OpenPictureAux.FileName, ftGraphic) ;
                    connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
                    connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                    connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
                    connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
                    connection.zCommand.ExecSQL;
                End
                Else
                Begin
                    lExiste := True ;
                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add ( 'INSERT INTO fichatecnica (sContrato, sWbs, sNumeroActividad, sReferencia, mComentarios, sLink) ' +
                                                  'VALUES (:Contrato, :WBS, :Partida, :Referencia, :Comentarios, :Link)') ;
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                    connection.zCommand.Params.ParamByName('WBS').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('WBS').value := sWbsAct ;
                    connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
                    connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
                    connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                    connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
                    connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
                    connection.zCommand.ExecSQL ;
                End
    End
    Else
    Begin
        If (OpenPicture.FileName <> '') And (OpenPictureAux.FileName <> '') Then
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'UPDATE fichatecnica SET bImagen = :Imagen1, bImagenAux = :Imagen2, sReferencia = :Referencia, mComentarios = :Comentarios, sLink = :Link ' +
                                          'where sContrato = :contrato And sNumeroActividad = :Partida') ;
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
            connection.zCommand.Params.ParamByName('Imagen1').LoadFromFile(OpenPicture.FileName, ftGraphic) ;
            connection.zCommand.Params.ParamByName('Imagen2').LoadFromFile(OpenPictureAux.FileName, ftGraphic) ;
            connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
            connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
            connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
            connection.zCommand.ExecSQL ;
        End
        Else
            If (OpenPicture.FileName <> '') Then
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'UPDATE fichatecnica SET bImagen = :Imagen1, sReferencia = :Referencia, mComentarios = :Comentarios, sLink = :Link ' +
                                              'where sContrato = :contrato And sNumeroActividad = :Partida') ;
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
                connection.zCommand.Params.ParamByName('Imagen1').LoadFromFile(OpenPicture.FileName, ftGraphic) ;
                connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
                connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
                connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
                connection.zCommand.ExecSQL ;
            End
            Else
                If (OpenPictureAux.FileName <> '') Then
                Begin
                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add ( 'UPDATE fichatecnica SET bImagenAux = :Imagen1, sReferencia = :Referencia, mComentarios = :Comentarios, sLink = :Link ' +
                                                  'where sContrato = :contrato And sNumeroActividad = :Partida') ;
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                    connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
                    connection.zCommand.Params.ParamByName('Imagen1').LoadFromFile(OpenPictureAux.FileName, ftGraphic) ;
                    connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
                    connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                    connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
                    connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
                    connection.zCommand.ExecSQL ;
                End
                Else
                Begin
                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add ( 'UPDATE fichatecnica SET sReferencia = :Referencia, mComentarios = :Comentarios, sLink = :Link ' +
                                                      'where sContrato = :contrato And sNumeroActividad = :Partida') ;
                    connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                    connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
                    connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text ;
                    connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
                    connection.zCommand.Params.ParamByName('Comentarios').value := tmComentarios.Text ;
                    connection.zCommand.Params.ParamByName('Link').DataType := ftString ;
                    connection.zCommand.Params.ParamByName('Link').value := tsLink.Text ;
                    connection.zCommand.ExecSQL ;
                End
    End ;
    btnNew.Enabled := False ;
    btnEdit.Enabled := True ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    btnPrinter.Enabled := False ;
    tsReferencia.ReadOnly := True ;
    tsLink.ReadOnly := True ;
    tmComentarios.ReadOnly := True ;
    bImagen.Enabled := False ;
    bImagenAux.Enabled := False ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FichaTecnica', 'Al salvar registro', 0);
    end;
  end;
   btndelete.Enabled:=true;
   BotonPermiso.permisosBotones2(btnNew,btnEdit,btnDelete,btnPrinter);
end;

procedure TfrmFichaTecnica.btnCancelClick(Sender: TObject);
begin
  try
    tsReferencia.ReadOnly := True ;
    tsLink.ReadOnly := True ;
    tmComentarios.ReadOnly := True ;
    bImagen.Enabled := False ;
    bImagenAux.Enabled := False ;
    btnSave.Enabled := False ;
    btnCancel.Enabled := False ;
    If lExiste Then
    begin
        btnNew.Enabled := False ;
        btnPrinter.Enabled := False ;
        btnEdit.Enabled := True ;
    End
    Else
    begin
        btnNew.Enabled := True ;
        btnPrinter.Enabled := False ;
        btnEdit.Enabled := False ;
    end
  except
      on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FichaTecnica', 'Al cancelar', 0);
      end;

  end;
   btndelete.Enabled:=true;
end;

procedure TfrmFichaTecnica.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cFichaTecnica');
  BotonPermiso.permisosBotones2(btnNew,btnEdit,btnDelete,btnPrinter);
  tsNumeroActividad.SetFocus ;
end;

procedure TfrmFichaTecnica.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsReferencia.SetFocus 
end;

procedure TfrmFichaTecnica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  botonPermiso.Free;
  action := cafree ;
end;

procedure TfrmFichaTecnica.tsReferenciaEnter(Sender: TObject);
begin
    tsReferencia.Color := global_color_entradaERP;
end;

procedure TfrmFichaTecnica.tsReferenciaExit(Sender: TObject);
begin
    tsReferencia.Color := global_color_salidaERP;
end;

procedure TfrmFichaTecnica.tsNumeroActividadEnter(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entradaERP;
end;

procedure TfrmFichaTecnica.tsNumeroActividadExit(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_salidaERP;
end;

procedure TfrmFichaTecnica.tsReferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsLink.SetFocus 
end;

procedure TfrmFichaTecnica.tmComentariosEnter(Sender: TObject);
begin
  tmComentarios.Color:= global_color_entradaERP;
end;

procedure TfrmFichaTecnica.tmComentariosExit(Sender: TObject);
begin
  tmComentarios.Color:= global_color_salidaERP;
end;

procedure TfrmFichaTecnica.tsLinkEnter(Sender: TObject);
begin
    tsLink.Color := global_color_entradaERP;
end;

procedure TfrmFichaTecnica.tsLinkExit(Sender: TObject);
begin
    tsLink.Color := global_color_salidaERP;
end;

procedure TfrmFichaTecnica.tsLinkKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tMCOMENTARIOS.SetFocus
end;

procedure TfrmFichaTecnica.btnPrinterClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_rFichaTecnica.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_rFichaTecnica.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;
  try
    procFichaTecnica (global_contrato, global_convenio , tsNumeroActividad.Text, frmFichaTecnica) ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FichaTecnica', 'Al imprimir registro', 0);
    end;
  end;
end;

procedure TfrmFichaTecnica.btnDeleteClick(Sender: TObject);
begin
 try
    If lExiste Then
    Begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ('Delete From fichatecnica where sContrato = :contrato And sNumeroActividad = :Partida') ;
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Partida').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Partida').value := tsNumeroActividad.Text ;
        connection.zCommand.ExecSQL ;
        btnEdit.Enabled := False ;
        bImagen.Picture.Bitmap := nil ;
        bImagenAux.Picture.Bitmap := nil ;
        tmDescripcion.Text := '' ;
        tsReferencia.Text := '' ;
        tsLink.Text := '' ;
        tmComentarios.Text := '' ;
    End
 Except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_FichaTecnica', 'Al eliminar registro', 0);
        end;
 end;
end;


end.
