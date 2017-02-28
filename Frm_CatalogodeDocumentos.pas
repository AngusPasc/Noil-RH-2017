unit Frm_CatalogodeDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_barra, Grids, DBGrids, ExtCtrls, NxPageControl, StdCtrls,
  DBCtrls, Mask, JvExControls, JvLabel, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ShellAPI, frm_connection;

type
  EValidaciones = class(Exception)
  end;

type
  TFrmCatalogodeDocumentos = class(TForm)
   grid_estatus: TDBGrid;
    frmBarra1: TfrmBarra;
    Panel1: TPanel;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    edtNombreDoc: TDBEdit;
    DbmDescripcion: TDBMemo;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    CmbTipo: TDBComboBox;
    JvLabel3: TJvLabel;
    Splitter1: TSplitter;
    ZqDocumentos: TZQuery;
    DsDocumentos: TDataSource;
    ZqDocumentosIidDocumento: TIntegerField;
    ZqDocumentosSNombreDocumento: TStringField;
    ZqDocumentosSDescripcion: TMemoField;
    ZqDocumentosSActivo: TStringField;
    ZqDocumentosSTipo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmbTipoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogodeDocumentos: TFrmCatalogodeDocumentos;

implementation

{$R *.dfm}

procedure TFrmCatalogodeDocumentos.CmbTipoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  CmbTipo.text:='';
  zqdocumentos.FieldByName('STipo').AsString:='';
end;

procedure TFrmCatalogodeDocumentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := Cafree;
end;

procedure TFrmCatalogodeDocumentos.FormShow(Sender: TObject);
begin
 try
   ZqDocumentos.Active;
   ZqDocumentos.Open;
 except
  on e:exception do
  begin
    messagedlg('Ha ocurrido un error inesperado del sistema, Avise del siguiente error al administradr: '+#10+#10+'Error'+#10+#10+e.message, mterror, [mbok], 0);
    PostMessage(self.Handle, WM_CLOSE, 0, 0);
  end;
 end;
end;

procedure TFrmCatalogodeDocumentos.frmBarra1btnAddClick(Sender: TObject);
begin
  try
    FrmBarra1.btnAdd.Enabled := False ;
    FrmBarra1.btnEdit.Enabled := False ;
    FrmBarra1.btnPost.Enabled := True ;
    FrmBarra1.btnCancel.Enabled := True ;
    FrmBarra1.btnDelete.Enabled := False ;
    FrmBarra1.btnPrinter.Enabled := False ;
    FrmBarra1.btnRefresh.Enabled := False ;
    FrmBarra1.btnExit.Enabled := False ;
    ZqDocumentos.Append;
    ZqDocumentos.FieldByName('SActivo').AsString := 'Si';
    ZqDocumentos.FieldByName('IidDocumento').AsInteger := 0;
  except
    on e:exception do
    begin
      messagedlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.message, mterror, [mbok], 0);
      zqdocumentos.CancelUpdates;
    end;
  end;

end;

procedure TFrmCatalogodeDocumentos.frmBarra1btnCancelClick(Sender: TObject);
begin
  FrmBarra1.btnAdd.Enabled := True ;
  FrmBarra1.btnEdit.Enabled := True ;
  FrmBarra1.btnPost.Enabled := False ;
  FrmBarra1.btnCancel.Enabled := False ;
  FrmBarra1.btnDelete.Enabled := True ;
  FrmBarra1.btnPrinter.Enabled := True ;
  FrmBarra1.btnRefresh.Enabled := True ;
  FrmBarra1.btnExit.Enabled := True ;
  zqdocumentos.CancelUpdates;
end;

procedure TFrmCatalogodeDocumentos.frmBarra1btnEditClick(Sender: TObject);
begin
  FrmBarra1.btnAdd.Enabled := False ;
  FrmBarra1.btnEdit.Enabled := False ;
  FrmBarra1.btnPost.Enabled := True ;
  FrmBarra1.btnCancel.Enabled := True ;
  FrmBarra1.btnDelete.Enabled := False ;
  FrmBarra1.btnPrinter.Enabled := False ;
  FrmBarra1.btnRefresh.Enabled := False ;
  FrmBarra1.btnExit.Enabled := False ;
  Zqdocumentos.Edit;
end;

procedure TFrmCatalogodeDocumentos.frmBarra1btnPostClick(Sender: TObject);
begin
  try
    if length(trim(EdtNombreDoc.Text)) =0 then
      raise EValidaciones.Create('El campo "Nombre del Documento" no pude estar vacio');

    if length(trim(CmbTipo.Text)) = 0 then
      raise EValidaciones.Create('El campo "Tipo" no pude estar vacio');

    ZqDocumentos.Post;
    FrmBarra1.btnAdd.Enabled := True ;
    FrmBarra1.btnEdit.Enabled := True ;
    FrmBarra1.btnPost.Enabled := False ;
    FrmBarra1.btnCancel.Enabled := False ;
    FrmBarra1.btnDelete.Enabled := True ;
    FrmBarra1.btnPrinter.Enabled := True ;
    FrmBarra1.btnRefresh.Enabled := True ;
    FrmBarra1.btnExit.Enabled := True ;    
  except
    on e:Evalidaciones do
    begin
      messagedlg('Aviso: '+#10+#10+e.Message, mtinformation, [mbok], 0);
    end;

    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
      ZqDocumentos.CancelUpdates;
    end;
  end;

end;

end.
