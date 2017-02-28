unit frm_Conversiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frm_connection, ZAbstractRODataset, ZDataset, DBCtrls, Grids, DBGrids,
  StdCtrls, Mask, global, udbgrid, UnitExcepciones;

type
  TfrmConversiones = class(TForm)
    ds_Conversiones: TDataSource;
    Label1: TLabel;
    zrConversiones: TZReadOnlyQuery;
    dbConsulta: TDBGrid;
    dbConversiones: TDBLookupComboBox;
    zrConsulta: TZReadOnlyQuery;
    ds_Consulta: TDataSource;
    zrConsultasNombre: TStringField;
    zrConsultaiConsecutivo: TIntegerField;
    zrConsultasDplg: TStringField;
    zrConsultasbplgs: TStringField;
    zrConsultasTplg: TStringField;
    zrConsultasDmm: TStringField;
    zrConsultasBmm: TStringField;
    zrConsultasTmm: TStringField;
    zrConsultasAreaT: TFloatField;
    zrConsultadPeso: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbConversion: TComboBox;
    txtResultado: TEdit;
    txtDato: TEdit;
    procedure FormShow(Sender: TObject);
    procedure dbConversionesExit(Sender: TObject);
    procedure cmbConversionExit(Sender: TObject);
    procedure dbConsultaCellClick(Column: TColumn);
    procedure dbConsultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbConversionesEnter(Sender: TObject);
    procedure txtDatoEnter(Sender: TObject);
    procedure txtDatoExit(Sender: TObject);
    procedure cmbConversionEnter(Sender: TObject);
    procedure txtResultadoEnter(Sender: TObject);
    procedure txtResultadoExit(Sender: TObject);
    procedure dbConversionesKeyPress(Sender: TObject; var Key: Char);
    procedure txtDatoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbConversionKeyPress(Sender: TObject; var Key: Char);
    procedure txtResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbConsultaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbConsultaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbConsultaTitleClick(Column: TColumn);
    procedure txtDatoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConversiones: TfrmConversiones;
  Oper : Currency ;
   utgrid:ticdbgrid;
implementation

{$R *.dfm}

procedure TfrmConversiones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  utgrid.Destroy;
  action:=cafree;
end;

procedure TfrmConversiones.FormShow(Sender: TObject);
begin
  zrConversiones.Open ;
  UtGrid:=TicdbGrid.create(dbconsulta);
end;

procedure TfrmConversiones.txtDatoChange(Sender: TObject);
begin
  if TEdit(Sender).Text = '-' then begin
    TEdit(Sender).Clear;
  end;
end;

procedure TfrmConversiones.txtDatoEnter(Sender: TObject);
begin
  txtdato.Color:= global_color_entradaERP;
end;

procedure TfrmConversiones.txtDatoExit(Sender: TObject);
begin
txtdato.Color:= global_color_salidaPU;
end;

procedure TfrmConversiones.txtDatoKeyPress(Sender: TObject; var Key: Char);
Var
  S : String;
begin
    If Key = #13 Then
        cmbconversion.SetFocus;
end;

procedure TfrmConversiones.txtResultadoEnter(Sender: TObject);
begin
txtresultado.Color:= global_color_entradaERP;
end;

procedure TfrmConversiones.txtResultadoExit(Sender: TObject);
begin
txtresultado.Color:= global_color_salidaPU;
end;

procedure TfrmConversiones.txtResultadoKeyPress(Sender: TObject; var Key: Char);
Var
  S : String;
begin
    If Key = #13 Then
        dbconversiones.SetFocus;
end;

procedure TfrmConversiones.dbConversionesEnter(Sender: TObject);
begin
dbconversiones.Color:= global_color_entradaERP;
end;

procedure TfrmConversiones.dbConversionesExit(Sender: TObject);
begin
  try
    zrConsulta.SQL.Clear ;
    zrConsulta.SQL.Add('Select * from conversiones Where sNombre = :Nombre ') ;
    zrConsulta.Params.ParamByName('Nombre').DataType := ftString ;
    zrConsulta.Params.ParamByName('Nombre').Value    := dbConversiones.Text ;
    zrConsulta.Open ;
    dbconversiones.Color:= global_color_salidaPU;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conversiones', 'Al seleccionar material', 0);
    end;
  end;
end;

procedure TfrmConversiones.dbConversionesKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        txtdato.SetFocus; 
end;

procedure TfrmConversiones.cmbConversionEnter(Sender: TObject);
begin
cmbconversion.Color:= global_color_entradaERP;
end;

procedure TfrmConversiones.cmbConversionExit(Sender: TObject);

begin
  try
    If cmbConversion.Text = 'KGS.' Then
      Begin
         Oper :=  strToCurr(txtDato.Text) ;
         txtResultado.Text :=  CurrToStr(zrConsulta.FieldValues['dPeso'] * Oper) ;
      end ;
    cmbconversion.Color:= global_color_salidaPU;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conversiones', 'Al seleccionar conversion', 0);
    end;
  end;
end;

procedure TfrmConversiones.cmbConversionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        txtresultado.SetFocus; 
end;

procedure TfrmConversiones.dbConsultaCellClick(Column: TColumn);
begin
 try
   If cmbConversion.Text = 'KGS.' Then

      Begin
         Oper :=  strToCurr(txtDato.Text) ;
         txtResultado.Text :=  CurrToStr(zrConsulta.FieldValues['dPeso'] * Oper) ;
      end ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conversiones', 'Al calcular conversion', 0);
    end;
  end;
end;

procedure TfrmConversiones.dbConsultaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 try
   If cmbConversion.Text = 'KGS.' Then

      Begin
         Oper :=  strToCurr(txtDato.Text) ;
         txtResultado.Text :=  CurrToStr(zrConsulta.FieldValues['dPeso'] * Oper) ;
      end ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conversiones', 'Al calcular conversion', 0);
    end;
  end;
end;

procedure TfrmConversiones.dbConsultaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 UtGrid.dbGridMouseMoveCoord(x,y); 
end;

procedure TfrmConversiones.dbConsultaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConversiones.dbConsultaTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConversiones.dbConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  try
   If cmbConversion.Text = 'KGS.' Then

      Begin
         Oper :=  strToCurr(txtDato.Text) ;
         txtResultado.Text :=  CurrToStr(zrConsulta.FieldValues['dPeso'] * Oper) ;
      end ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conversiones', 'Al calcular conversion', 0);
    end;
  end;
end;

end.
