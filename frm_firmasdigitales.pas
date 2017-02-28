unit frm_firmasdigitales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ExtCtrls,
  cxGroupBox, ExtDlgs, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, NxCollection, StdCtrls, cxTextEdit, cxDBEdit, frm_connection, jpeg,
  frm_barra, global, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfrmFirmasDigitales = class(TForm)
    dsFirmante: TDataSource;
    qrFirmante: TZQuery;
    OpenPicture: TOpenPictureDialog;
    GridFirmantes: TcxGridDBTableView;
    grdFirLvl: TcxGridLevel;
    cxGridFirmantes: TcxGrid;
    GridFirmantessFirmante1: TcxGridDBColumn;
    NxHeaderPanel1: TNxHeaderPanel;
    grpInfFirmante: TcxGroupBox;
    grpImgFirmante: TcxGroupBox;
    bImagen: TImage;
    GridFirmantesColumn1: TcxGridDBColumn;
    dbFirmante: TcxDBTextEdit;
    dbPuesto: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    qrFirmantesIdNombre: TStringField;
    qrFirmantesPuesto: TStringField;
    qrFirmantebFirma: TBlobField;
    frmBarra2: TfrmBarra;
    procedure FormShow(Sender: TObject);
    procedure qrFirmanteAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure dbFirmanteEnter(Sender: TObject);
    procedure dbFirmanteExit(Sender: TObject);
    procedure dbFirmanteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    nombreAnterior : string;
  public
    { Public declarations }
  end;

var
  frmFirmasDigitales: TfrmFirmasDigitales;

implementation

{$R *.dfm}

procedure TfrmFirmasDigitales.bImagenClick(Sender: TObject);
begin
  if (qrFirmante.State = dsEdit) or (qrFirmante.State = dsInsert) Then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        bImagen.Picture.LoadFromFile('');
      end
    end
  end
end;

procedure TfrmFirmasDigitales.btnAddClick(Sender: TObject);
begin
  qrFirmante.Append;
  frmBarra2.btnAddClick(Sender);
  dbFirmante.SetFocus;
end;

procedure TfrmFirmasDigitales.btnCancelClick(Sender: TObject);
begin
  if (qrFirmante.State in [dsEdit]) or (qrFirmante.State in [dsInsert]) then
    qrFirmante.Cancel;
  frmBarra2.btnCancelClick(Sender);
end;

procedure TfrmFirmasDigitales.btnDeleteClick(Sender: TObject);
var
  zBusca : TZReadOnlyQuery;
begin
  try
    try
      zBusca := TZReadOnlyQuery.Create( nil );
      zBusca.Connection := connection.zConnection;
      zbusca.Active := False;
      zBusca.SQL.Text := 'select count( sFirmante ) as Encontrados from vta_cotizaciones '+
                         'where lower( sFirmante ) = :firma ';
      zBusca.ParamByName( 'firma' ).AsString :=  LowerCase( qrFirmante.FieldByName( 'sIdNombre' ).AsString );
      zBusca.Open;

      if zBusca.FieldByName( 'Encontrados' ).AsInteger > 0 then
        raise Exception.Create( 'El firmante tiene cotizaciones asignadas, no se puede eliminar.' );

      if qrFirmante.RecordCount > 0 then
        qrFirmante.Delete;
    except
      on e:Exception do
        MessageDlg( e.Message, mtInformation, [ mbOK ], 0 );
    end;
  finally
    zBusca.Free;
  end;
end;

procedure TfrmFirmasDigitales.btnEditClick(Sender: TObject);
begin
  qrFirmante.Edit;
  frmBarra2.btnEditClick(Sender);
end;

procedure TfrmFirmasDigitales.btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  Close;
end;

procedure TfrmFirmasDigitales.btnPostClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;

  count : integer;

begin
  if Trim(dbFirmante.Text) <> '' then
  begin
    if ((qrFirmante.State in [dsEdit]) and (nombreAnterior <> qrFirmante.FieldByName('sIdNombre').AsString)) or (qrFirmante.State in [dsInsert]) then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from firmantesdigital where sIdNombre = :firmante');
      connection.QryBusca.ParamByName('firmante').AsString := qrFirmante.FieldByName('sIdNombre').AsString;
      connection.QryBusca.Open;
      count := connection.QryBusca.RecordCount
    end
    else
      count := 0;

    if count = 0 then
    begin
      
      if OpenPicture.FileName <> '' then
      begin
        try
           BlobField := qrFirmante.FieldByName('bFirma');
           BS := qrFirmante.CreateBlobStream(BlobField, bmWrite);
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
           end;
        except
        end;
      end;

      with connection.zCommand do
      begin
        Active := False;
        SQL.Text := 'update vta_cotizaciones set sFirmante = :nombre where sFirmante = :firma';
        ParamByName( 'nombre' ).AsString := qrFirmante.FieldByName( 'sIdNombre' ).AsString;
        ParamByName( 'firma' ).AsString := nombreAnterior;
        ExecSQL;
      end;

      qrFirmante.Post;
      frmBarra2.btnPostClick(Sender);
    end
    else
      MessageDlg('Ya esta registrado: ' + dbFirmante.Text + ' en la base de datos', mtInformation, [mbOK], 0);
  end
  else
    MessageDlg('Especifique un Nnombre valido', mtInformation, [mbOK], 0);
end;

procedure TfrmFirmasDigitales.btnRefreshClick(Sender: TObject);
begin
  qrFirmante.Active := False;
  qrFirmante.Open;
end;

procedure TfrmFirmasDigitales.dbFirmanteEnter(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color :=  global_color_entradaERP;
end;

procedure TfrmFirmasDigitales.dbFirmanteExit(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color :=  $00FFF3E8;
end;

procedure TfrmFirmasDigitales.dbFirmanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbPuesto.SetFocus;
end;

procedure TfrmFirmasDigitales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFirmasDigitales.FormShow(Sender: TObject);
begin
  qrFirmante.Active := False;
  qrFirmante.Open;
end;

procedure TfrmFirmasDigitales.qrFirmanteAfterScroll(DataSet: TDataSet);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  nombreAnterior := qrFirmante.FieldByName('sIdNombre').AsString;

  BlobField := qrFirmante.FieldByName('bFirma');
  bS := qrFirmante.CreateBlobStream(BlobField, bmRead);

  if bS.Size > 1 then
  begin
    try
      Pic := TJPEGImage.Create;
      try
        Pic.LoadFromStream(bS);
        bImagen.Picture.Graphic := Pic;
      finally
        Pic.Free;
      end;
    finally
      bS.Free;
    end;
  end
  else
    bImagen.Picture.LoadFromFile('');
end;

end.
