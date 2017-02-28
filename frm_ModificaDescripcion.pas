unit frm_ModificaDescripcion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  DBCtrls, frm_Connection, Global, ExtCtrls, Buttons, JvDBImage, ExtDlgs,
  Jpeg;

type
  TfrmModificaDescripcion = class(TForm)
    qDatos: TZQuery;
    dsDatos: TDataSource;
    DescActividad: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    Panel5: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DescNotas: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    DBMemo3: TDBMemo;
    DescFotos: TPanel;
    DBMemo4: TDBMemo;
    Panel7: TPanel;
    Label4: TLabel;
    Panel8: TPanel;
    Splitter2: TSplitter;
    JvDBImage1: TJvDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBImage1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    pContrato,
    pOrden,
    pTurno: String;

    pFecha: TDate;
    
    pDiario,
    pCual,
    pIndex: Integer;
  end;

var
  frmModificaDescripcion: TfrmModificaDescripcion;

implementation

{$R *.dfm}

procedure TfrmModificaDescripcion.BitBtn1Click(Sender: TObject);
begin
  Try
    Cursor := crHourGlass;
    qDatos.Post;
  Finally
    Cursor := crDefault;
  End;
end;

procedure TfrmModificaDescripcion.BitBtn2Click(Sender: TObject);
begin
  qDatos.Cancel;
end;

procedure TfrmModificaDescripcion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtn2.Click;
end;

procedure TfrmModificaDescripcion.FormShow(Sender: TObject);
begin
  Try
    Cursor := crHourGlass;

    case pIndex of
      0: begin     // Descripción de actividades
        DescActividad.Visible := True;

        dbMemo1.DataSource := dsDatos;
        dbMemo2.DataSource := dsDatos;

        qDatos.Close;
        qDatos.Sql.Text := 'select * from bitacoradeactividades where scontrato = :contrato and snumeroorden = :orden and sIdTurno = :Turno and didfecha = :fecha and iiddiario = :diario';
        qDatos.ParamByName('contrato').AsString := pContrato;
        qDatos.ParamByName('orden').AsString := pOrden;
        qDatos.ParamByName('turno').AsString := pTurno;
        qDatos.ParamByName('fecha').AsDate := pFecha;
        qDatos.ParamByName('diario').AsInteger := pDiario;
        qDatos.Open;

        qDatos.Edit;

        Case pCual of
          1: DBMemo1.SetFocus;
          2: DBMemo2.SetFocus;
        End;
      end;
      1: begin     // Descripción de Notas
        DescNotas.Visible := True;

        dbMemo3.DataSource := dsDatos;

        qDatos.Close;
        qDatos.Sql.Text := 'select a.* from bitacoradeactividades a left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = "" and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs) ' +
                           'where a.sContrato = :Contrato and a.dIdFecha = :Fecha and a.sNumeroOrden = :Orden and a.sIdTurno = :Turno and iIdDiario = :Diario and a.sIdTipoMovimiento = "N"';
        qDatos.ParamByName('contrato').AsString := pContrato;
        qDatos.ParamByName('orden').AsString := pOrden;
        qDatos.ParamByName('Fecha').AsDate := pFecha;
        qDatos.ParamByName('Turno').AsString := pTurno;
        qDatos.ParamByName('diario').AsInteger := pDiario;
        qDatos.Open;

        qDatos.Edit;
      end;
      2: begin
        DescFotos.Visible := True;

        dbMemo4.DataSource := dsDatos;
        JvDBImage1.DataSource := dsDatos;

        qDatos.Close;
        qDatos.Sql.Text := 'select * from reportefotografico where scontrato = :Contrato and snumeroorden = :Orden and sidturno = :Turno and didfecha = :Fecha and iImagen = :Imagen';
        qDatos.ParamByName('contrato').AsString := pContrato;
        qDatos.ParamByName('orden').AsString := pOrden;
        qDatos.ParamByName('Fecha').AsDate := pFecha;
        qDatos.ParamByName('Turno').AsString := pTurno;
        qDatos.ParamByName('Imagen').AsInteger := pDiario;
        qDatos.Open;

        qDatos.Edit;

        // Verificar en que parte se realizó el doble click
        if pCual = 1 then
          JvDBImage1.OnDblClick(JvDBImage1)
        else
          DBMemo4.SetFocus;
      end;
    end;
  Finally
    Cursor := crDefault;
  End;
end;

procedure TfrmModificaDescripcion.JvDBImage1DblClick(Sender: TObject);
var
  bS  : TStream;
  Pic : TJpegImage;
  BlobField : tField ;
begin
  if (Sender.ClassType.ClassName = 'TJvDBImage') and (TJvDBImage(Sender).DataSource.DataSet.State = dsEdit) then
  begin
    try
      Cursor := crHourGlass;

      // Seleccionar una nueva imagen
      if OpenPictureDialog1.Execute(Self.Handle) then
      begin
        BlobField := TJvDBImage(Sender).DataSource.DataSet.FieldByName('bImagen');
        BS := TJvDBImage(Sender).DataSource.DataSet.CreateBlobStream (BlobField, bmWrite);
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromFile(OpenPictureDialog1.FileName) ;
            Pic.SaveToStream(Bs) ;
          finally
            Pic.Free;
          end;
        finally
          bS.Free;
        end
      end;
    finally
      Cursor := crDefault;
    end;
  end;
end;

end.
