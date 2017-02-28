unit frm_ProcRegAvFisico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, frm_connection, global, ComCtrls, Buttons,
  DB, utilerias, ZAbstractRODataset, ZDataset, ADODB, unitexcepciones, UnitValidaTexto,
  DBDateTimePicker;
type
  TfrmProcRegAvFisico = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    btnOk: TBitBtn;
    btnExit: TBitBtn;
    Progress: TProgressBar;
    GroupBox1: TGroupBox;
    chFisico: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    Label3: TLabel;
    Acumulado: TADOQuery;
    chkTodo: TCheckBox;
    ordenesdetrabajo: TZReadOnlyQuery;
    tdFechaInicial: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicialEnter(Sender: TObject);
    procedure tdFechaInicialExit(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaInicialChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcRegAvFisico: TfrmProcRegAvFisico;
implementation

{$R *.dfm}
procedure TfrmProcRegAvFisico.FormShow(Sender: TObject);
begin
 try
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;
  tdFechaFinal.Date := Date ;
  tsNumeroOrden.SetFocus;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ProcRegAvFisico', 'Al hacer las consultas de inicio', 0);
  end;
 end;

end;

procedure TfrmProcRegAvFisico.btnOkClick(Sender: TObject);
Var
  dMonto               : Currency ;
  dFinancieroGenerador : Currency ;
  StrCadena            : String ;
  tdIdFecha            : tDate ;
  //****************************BRITO 09/02/11********************************
  sRangoKardex         : String ;
  myYear, myMonth, myDay : Word;
  //****************************BRITO 09/02/11********************************
  nombres, cadenas: TStringList;
begin

 if tsNumeroOrden.text='' then
 begin
  ShowMessage('Selecciones un frente de trabajo');
  tsNumeroOrden.SetFocus;
  abort
 end;

 //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicial.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdFechaFinal.SetFocus;
   exit;
   end;

//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Frente');

  cadenas.Add(tsNumeroOrden.Text);

  if not validaTexto(nombres, cadenas, '','') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
 try
  tdIdFecha := tdFechaInicial.Date ;

  If tsNumeroOrden.Text <> '' Then
  Begin
      If chFisico.Checked = True Then
      Begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'UPDATE avancesglobalesxorden SET dAvance = 0.00 ' +
                                        'WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ' +
                                        'And dIdFecha >= :FechaI And dIdFecha <= :FechaF');
          connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.params.ParamByName('Contrato').Value := Global_Contrato ;
          connection.zCommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zCommand.params.ParamByName('Convenio').Value := Global_Convenio ;
          connection.zCommand.params.ParamByName('Orden').DataType := ftString ;
          connection.zCommand.params.ParamByName('Orden').Value :=  tsNumeroOrden.Text ;
          connection.zCommand.params.ParamByName('FechaI').DataType := ftDate ;
          connection.zCommand.params.ParamByName('FechaI').Value :=  tdIdFecha ;
          connection.zCommand.params.ParamByName('FechaF').DataType := ftDate ;
          connection.zCommand.params.ParamByName('FechaF').Value :=  tdFechaFinal.Date ;
          connection.zCommand.ExecSQL ;

          Str((tdFechaFinal.Date  - tdIdFecha):4:0, strCadena);
          Progress.Visible := True ;
          Progress.Min := 1 ;
          Progress.Max := StrToInt(strCadena) + 1 ;
          Progress.Position := 1 ;
          If chkTodo.Checked Then
              strCadena := 'Avanzada'
          Else
              strCadena := 'Simple' ;
          While tdIdFecha <= tdFechaFinal.Date Do
          Begin
               If OrdenesdeTrabajo.RecordCount > 1 Then
                  cfnCalculaAvances (global_contrato, tsNumeroOrden.Text, global_convenio ,global_turno, True,  tdIdFecha, strCadena , frmProcRegAvFisico)
               Else
                  cfnCalculaAvances (global_contrato, tsNumeroOrden.Text, global_convenio ,global_turno, False , tdIdFecha, strCadena, frmProcRegAvFisico) ;
              Progress.Position := Progress.Position + 1 ;
              tdIdFecha := tdIdFecha + 1 ;
          End;

          //****************************BRITO 09/02/11********************************
          //registrar la operacion en el kardex
          DecodeDate(tdFechaInicial.Date, myYear, myMonth, myDay);
          sRangoKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
          DecodeDate(tdFechaFinal.Date, myYear, myMonth, myDay);
          sRangoKardex := sRangoKardex + ' - ' + inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);

          Kardex('Regeneraciones', 'Regeneracion', sRangoKardex, 'Rango de Fechas', tsNumeroOrden.Text, '', '' );
          //****************************BRITO 09/02/11********************************

      End ;

      MessageDlg('Proceso Terminado con Exito.', mtInformation, [mbOk], 0);
  End
 except
 on e : exception do begin
 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ProcRegAvFisico', 'Al regenerar el avance', 0);
 end;

 end;
end;

procedure TfrmProcRegAvFisico.btnExitClick(Sender: TObject);
begin
  close
end;

procedure TfrmProcRegAvFisico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;

end;

procedure TfrmProcRegAvFisico.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechainicial.SetFocus
end;

procedure TfrmProcRegAvFisico.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_Entrada
end;

procedure TfrmProcRegAvFisico.tsNumeroOrdenExit(Sender: TObject);
begin
// if tsNumeroOrden.text='' then
// begin
//  ShowMessage('Selecciones un frente de trabajo');
//  tsNumeroOrden.SetFocus;
//  abort
// end;

    tsNumeroOrden.Color := global_color_salida ;
    tdFechaInicial.Date := OrdenesdeTrabajo.FieldValues['dFIProgramado']
end;

procedure TfrmProcRegAvFisico.tdFechaFinalChange(Sender: TObject);
begin
//   tdFechaFinal.MinDate:=tdFechaInicial.Date;
end;

procedure TfrmProcRegAvFisico.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entrada
end;
procedure TfrmProcRegAvFisico.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnOk.SetFocus
end;

procedure TfrmProcRegAvFisico.tdFechaInicialChange(Sender: TObject);
begin
  tdFechaFinal.Date:=tdFechainicial.Date;
end;

procedure TfrmProcRegAvFisico.tdFechaInicialEnter(Sender: TObject);
begin
tdfechainicial.Color:=global_color_entrada;

end;

procedure TfrmProcRegAvFisico.tdFechaInicialExit(Sender: TObject);
begin
tdfechainicial.Color:=global_color_salida;
end;

procedure TfrmProcRegAvFisico.tdFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechafinal.SetFocus
end;

procedure TfrmProcRegAvFisico.tdFechaFinalExit(Sender: TObject);
begin
   tdFechaFinal.Color := global_color_salida
end;

end.
