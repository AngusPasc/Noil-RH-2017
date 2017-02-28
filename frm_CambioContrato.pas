unit frm_CambioContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  frxClass, frxDBSet, Buttons, utilerias,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel, strUtils,
  rxToolEdit, rxCurrEdit, sSkinProvider, UnitExcepciones, UnitTablasImpactadas,
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
  dxSkinXmas2008Blue, cxTextEdit, cxButtons;

type
  TfrmCambioContrato = class(TForm)
    sSkinProvider1: TsSkinProvider;
    Progress: TProgressBar;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    txtContratoNuevo: TcxTextEdit;
    txtContratoActual: TcxTextEdit;
    btProceso: TcxButton;
    cxSalir: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btProcesoClick(Sender: TObject);
    procedure cxSalirClick(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmCambioContrato: TfrmCambioContrato;
  sCadena: string;
  qryAnexo: TZReadOnlyQuery;
  iTabla: Byte;

implementation

uses frm_inteligent, UInteliDialog;

{$R *.dfm}

procedure TfrmCambioContrato.btnExitClick(Sender: TObject);
begin
  close;
end;



procedure TfrmCambioContrato.btProcesoClick(Sender: TObject);
var
  iAnexo: Byte;
  i, x: integer;
  base, tabla, campo, cad: string;
  datos: array[1..200] of string;

begin
     qryAnexo := tzReadOnlyQuery.Create(Self);
     qryAnexo.Connection := Connection.zConnection;

If frmInteligent.mnuBorrarContrato.Tag = 15 Then
 begin
  if InteliDialog.ShowModal('Aviso', '¿Esta Seguro de Borrar ese Contrato/Empresa...?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
      if txtContratoNuevo.Text <> '' then
       begin
           connection.qryBusca.Active := False;
           connection.qryBusca.SQL.Clear;
           connection.qryBusca.SQL.Add('SET FOREIGN_KEY_CHECKS=0');
           connection.qryBusca.ExecSQL;

           connection.qryBusca.Active := False;
           connection.qryBusca.SQL.Clear;
           connection.qryBusca.SQL.Add('select sContrato from contratos where sContrato =:Contrato');
           connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
           connection.qryBusca.Params.ParamByName('Contrato').Value    := txtContratoNuevo.Text;
           connection.qryBusca.Open;

         if connection.QryBusca.RecordCount > 0 then
           begin
               connection.qryBusca.Active := False;
               connection.qryBusca.SQL.Clear;
               connection.qryBusca.SQL.Add('Show tables');
               connection.qryBusca.Open;
               base := 'Tables_in_' + global_db;
               i := 1;
               progress.Min := 1;
               progress.Position := 1;
               progress.Max := connection.QryBusca.RecordCount + 1;
               While not connection.QryBusca.Eof do
               begin
                  tabla := connection.QryBusca.FieldValues[base];
                  connection.qryBusca2.Active := False;
                  connection.qryBusca2.SQL.Clear;
                  connection.qryBusca2.SQL.Add('describe ' + tabla + ' ');
                  connection.qryBusca2.Open;
                  if connection.QryBusca2.RecordCount > 0 then
                    begin
                     while not connection.QryBusca2.Eof do
                     begin
                      if connection.QryBusca2.FieldValues['Field'] = 'sContrato' then
                        begin
                         datos[i] := tabla;
                         i := i + 1;
                         //memo1.Lines.Add(tabla);
                        end;
                       connection.QryBusca2.Next;
                      end;
                   end;
                     connection.QryBusca.Next;
                     progress.Position := progress.Position + 1;
               end;

            //resetear la barra de progreso
             progress.Position := 1;
             progress.Max := i;
            // Actualiza todos los registros..
            for x := 1 to i - 1 do
             begin
                tabla := datos[x];
                memo1.Lines.Add('Borrando en : ' + tabla);
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('delete from ' + tabla + ' Where sContrato = :Contrato ');
                connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('Contrato').Value    := txtContratoNuevo.Text;
                connection.zCommand.ExecSQL;
                progress.Position := progress.Position + 1;
             end;
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('SET FOREIGN_KEY_CHECKS=1');
                connection.qryBusca.ExecSQL;
                MessageDlg('Proceso Terminado Con Exito, para cargar los cambios salga y entre del programa.', mtInformation, [mbOk], 0);
           end
         Else
               MessageDlg('Ese Contrato no EXISTE', mtInformation, [mbOk], 0);
      end ;
     txtContratoNuevo.SetFocus ;
    end ;




   end
else
  begin
   try

      if txtContratoNuevo.Text <> '' then
       begin
//      if not UnitTablasImpactadas.boolRelaciones(connection.zConnection) then
//      begin
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('SET FOREIGN_KEY_CHECKS=0');
        connection.qryBusca.ExecSQL;


        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('select sContrato from contratos where sContrato =:Contrato');
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Contrato').Value := txtContratoActual.Text;
        connection.qryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('Show tables');
          connection.qryBusca.Open;
          base := 'Tables_in_' + global_db;
          i := 1;
          progress.Min := 1;
          progress.Position := 1;
          progress.Max := connection.QryBusca.RecordCount + 1;
          while not connection.QryBusca.Eof do
          begin
            tabla := connection.QryBusca.FieldValues[base];
            connection.qryBusca2.Active := False;
            connection.qryBusca2.SQL.Clear;
            connection.qryBusca2.SQL.Add('describe ' + tabla + ' ');
            connection.qryBusca2.Open;

            if connection.QryBusca2.RecordCount > 0 then
            begin
              while not connection.QryBusca2.Eof do
              begin
                if connection.QryBusca2.FieldValues['Field'] = 'sContrato' then
                begin
                  datos[i] := tabla;
                  i := i + 1;
                  //memo1.Lines.Add(tabla);
                end;
                connection.QryBusca2.Next;
              end;
            end;
            connection.QryBusca.Next;
            progress.Position := progress.Position + 1;
          end;

            //resetear la barra de progreso
          progress.Position := 1;
          progress.Max := i;
            // Actualiza todos los registros..
          for x := 1 to i - 1 do
          begin
            tabla := datos[x];
            memo1.Lines.Add('Actualizando en : ' + tabla);
            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('update ' + tabla + ' set sContrato = :ContratoNuevo where sContrato = :Contrato ');
            connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Contrato').Value := txtContratoActual.Text;
            connection.qryBusca.Params.ParamByName('ContratoNuevo').DataType := ftString;
            connection.qryBusca.Params.ParamByName('ContratoNuevo').Value := txtContratoNuevo.Text;
            connection.qryBusca.ExecSQL;
            progress.Position := progress.Position + 1;
          end;
          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('SET FOREIGN_KEY_CHECKS=1');
          connection.qryBusca.ExecSQL;
          MessageDlg('Proceso Terminado Con Exito, para cargar los cambios salga y entre del programa.', mtInformation, [mbOk], 0);
        end
        else
          MessageDlg('No existe el Contrato Actual !', mtInformation, [mbOk], 0);
//      end
//      else
//      begin
//        connection.qryBusca.Active := False;
//        connection.qryBusca.SQL.Clear;
//        connection.qryBusca.SQL.Add('update contratos set sContrato = :ContratoNuevo where sContrato = :Contrato ');
//        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
//        connection.qryBusca.Params.ParamByName('Contrato').Value := txtContratoActual.Text;
//        connection.qryBusca.Params.ParamByName('ContratoNuevo').DataType := ftString;
//        connection.qryBusca.Params.ParamByName('ContratoNuevo').Value := txtContratoNuevo.Text;
//        connection.qryBusca.ExecSQL;
//      end;
      end
    else
      MessageDlg('Debe escribir un Contrato Nuevo..!', mtInformation, [mbOk], 0);
  except
    on e: exception do begin
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('SET FOREIGN_KEY_CHECKS=1');
      connection.qryBusca.ExecSQL;
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cambio de Nombre de Contrato', 'Al cambiar nombre de contrato', 0);
    end;
  end;
  end;
end;

procedure TfrmCambioContrato.cxSalirClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmCambioContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCambioContrato.FormShow(Sender: TObject);
begin

 if frmInteligent.mnuBorrarContrato.Tag = 15 Then
    begin
      Label1.Visible            := False ;
      txtContratoActual.Visible := False ;
      txtContratoNuevo.Text     := Global_Contrato ;
      Label2.Caption            := 'Contrato a Borrar ' ;
    end
 else
    txtContratoActual.Text := Global_Contrato;

    txtContratoNuevo.SetFocus;
  end;

end.

