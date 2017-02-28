unit frm_SqlImportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, RXCtrls, StrUtils, UnitExcepciones, UnitTablasImpactadas,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Menus, cxButtons, cxTrackBar;

type
  TfrmSqlImportar = class(TForm)
    tmSql: TMemo;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    tsArchivo: TEdit;
    OpenSql: TOpenDialog;
    SaveSql: TSaveDialog;
    Status: TStatusBar;
    btnsql: TcxButton;
    btnexecute: TcxButton;
    btnSalir: TcxButton;
    btnCatMaest: TcxButton;
    btnCambiarContrato: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);

    procedure BtnCambiarClick(Sender: TObject);
    procedure tmSqlEnter(Sender: TObject);
    procedure tmSqlExit(Sender: TObject);
    procedure tsArchivoEnter(Sender: TObject);
    procedure tsArchivoExit(Sender: TObject);
    procedure tmSqlKeyPress(Sender: TObject; var Key: Char);
    procedure tsArchivoKeyPress(Sender: TObject; var Key: Char);
    procedure btnsqlClick(Sender: TObject);
    procedure btnexecutClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnCatMaestClick(Sender: TObject);
    procedure btnCambiarContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSqlImportar: TfrmSqlImportar;

implementation

uses frm_CambioContrato, frm_anexosCotemar, frm_inteligent;

{$R *.dfm}

procedure TfrmSqlImportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmSqlImportar.FormShow(Sender: TObject);
begin
  tmSql.SetFocus
end;

procedure TfrmSqlImportar.tmSqlEnter(Sender: TObject);
begin
  tmsql.Color:= global_color_entrada;
end;

procedure TfrmSqlImportar.tmSqlExit(Sender: TObject);
begin
  tmsql.Color:= global_color_salida;
end;

procedure TfrmSqlImportar.tmSqlKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
        tsarchivo.SetFocus;
end;

procedure TfrmSqlImportar.tsArchivoEnter(Sender: TObject);
begin
  tsarchivo.Color:= global_color_entrada;
end;

procedure TfrmSqlImportar.tsArchivoExit(Sender: TObject);
begin
  tsarchivo.color:= global_color_salida;
end;

procedure TfrmSqlImportar.tsArchivoKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
        tmsql.SetFocus;
end;

procedure TfrmSqlImportar.btnExitClick(Sender: TObject);
begin
    Close
end;

procedure TfrmSqlImportar.btnsqlClick(Sender: TObject);
begin
 try
    tmSql.Text := '' ;
    OpenSql.Title := 'Inserta Archivo de Consulta';
    If OpenSql.Execute then
       tsArchivo.Text := OpenSql.FileName
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importacion de datos', 'Al seleccionar archivo', 0);
    end;
  end;
end;

procedure TfrmSqlImportar.btnSalirClick(Sender: TObject);
begin
  close ;
end;

procedure TfrmSqlImportar.btnCambiarContratoClick(Sender: TObject);
begin
   frmInteligent.mnuBorrarContrato.Tag := 25 ;
   Application.CreateForm(TfrmCambioContrato, frmCambioContrato);
   frmCambioContrato.Show  ;
end;

procedure TfrmSqlImportar.BtnCambiarClick(Sender: TObject);
begin
(*
    if UnitTablasImpactadas.boolRelaciones(connection.zConnection) then
    begin
      MessageDlg('Para cambiar el nombre del contrato' + #10 + #10 +
                 'entre al catálogo de contratos y edite el registro'
                 , mtWarning, [mbOk], 0);
    end
    else
    begin
*)

 // end;
end;

procedure TfrmSqlImportar.btnCatMaestClick(Sender: TObject);
begin
    Application.CreateForm(TfrmAnexosCotemar, frmAnexosCotemar);
    frmAnexosCotemar.show
end;

procedure TfrmSqlImportar.btnexecutClick(Sender: TObject);
var
  F: TextFile;
  S: wideString;
  StringList: TStrings;
  sTermina  : String ;
  lOtroComando : Boolean ;
begin
  If tmSql.Text <> '' Then
  Begin
     Try
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( tmSql.Text );
        connection.zCommand.SQL.Text := AnsiReplaceText(connection.zCommand.SQL.Text , ':CONTRATO' , '"' + global_contrato + '"') ;
        connection.zCommand.SQL.Text := AnsiReplaceText(connection.zCommand.SQL.Text , ':CONVENIO' , '"' + global_convenio + '"') ;
        connection.zCommand.ExecSQL ;
     Except

     End ;
  End
  Else
  Begin
    AssignFile(F, tsArchivo.Text ); { File selected in dialog }
    Reset(F);
    StringList := TStringList.Create;
    sTermina := chr(39) + ') ; ' ;
    while not Eof(F) do
    begin
        Readln(F, S);                        { Read first line of file }
        S := Trim ( S ) ;
        If Copy( S, 1 , 2) = '##' Then
             status.Panels.Items[1].Text := S
        Else
            If (Copy( S, 1 , 1) <> '#') And (Trim(S) <> '') Then
            Begin
                // Checo comandos .....
                lOtroComando := False ;
                sTermina := UpperCase(MidStr(S, 1, 12)) ;
                If Pos ( 'INSERT INTO' , sTermina ) > 0 Then
                    lOtroComando := True ;
                If Pos ( 'DELETE FROM' , sTermina) > 0 Then
                    lOtroComando := True ;
                If Pos ( 'UPDATE ' , sTermina ) > 0 Then
                    lOtroComando := True ;
                If (Trim(StringList.Text) <> '') And lOtroComando Then
                Begin
                    Try
                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zCommand.SQL.Add (StringList.Text) ;
                        connection.zCommand.ExecSQL ;
                    Except
                        MessageDlg(StringList.Text, mtInformation, [mbOk], 0);
                    End ;
                    StringList.Clear ;
                    StringList.Add(S) ;
                End
                Else
                    StringList.Add(S) ;
            End ;
    end;
    If (Trim(StringList.Text) <> '') Then
    Begin
        Try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( StringList.Text );
            connection.zCommand.ExecSQL ;
        Except
            MessageDlg(StringList.Text, mtInformation, [mbOk], 0);
        End
    End ;
    StringList.Destroy ;
    CloseFile (F) ;
  end ;
  MessageDlg('Proceso Terminado.', mtInformation, [mbOk], 0);

end;




end.
