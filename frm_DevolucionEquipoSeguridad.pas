unit frm_DevolucionEquipoSeguridad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, RXDBCtrl, Menus, Grids, DBGrids,
  NxCollection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls,
  JvExMask, JvToolEdit, JvDBControls, global, frm_barra, ExtCtrls, rtflabel;

type
  TfrmDevolucionEquipoSeguridad = class(TForm)
    tsFiltraEmpleado: TEdit;
    lbEmpleado: TLabel;
    tsFiltraEquipo: TEdit;
    lbFiltraEquipo: TLabel;
    tsMotivo: TEdit;
    lbFecha: TLabel;
    lbMotivo: TLabel;
    lbEstado: TLabel;
    tsEstado: TEdit;
    chbRegresaInventario: TCheckBox;
    NxHeaderPanel1: TNxHeaderPanel;
    DBGridEmpleados: TDBGrid;
    NxHeaderPanel2: TNxHeaderPanel;
    DBGridInsumosxEmpleado: TDBGrid;
    tzEmpleadosD: TZQuery;
    dsEmpleadosD: TDataSource;
    dsFolios: TDataSource;
    tzFolios: TZQuery;
    tzInsumosxFolios: TZQuery;
    dsInsumosxFolios: TDataSource;
    tzFoliosiFolios: TIntegerField;
    tzInsumosxFoliossIdInsumo: TStringField;
    tzInsumosxFoliossInsumo: TStringField;
    dbDateFecha: TDateEdit;
    tzFoliosdFecha: TDateField;
    tzFoliossIdFolio: TStringField;
    lbCapturaEmpleado: TLabel;
    lbCapturaInsumo: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    NxHeaderPanel3: TNxHeaderPanel;
    Label1: TLabel;
    lbCapturaFolio: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGridFolios: TDBGrid;
    frmBarra2: TfrmBarra;
    tzvalida: TZQuery;
    tzInsumosxFoliossNumeroSerie: TStringField;
    tzInsumosxFoliosiCantidad: TIntegerField;
    tzInsumosxFoliosdExistencia: TFloatField;
    tzInsumosxFoliosiId: TIntegerField;
    tzInsumosxFoliossIdAlmacen: TStringField;
    tzEmpleadosDsIdEmpleado: TStringField;
    tzEmpleadosDsNombreCompleto: TStringField;
    procedure tsFiltraEmpleadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsFiltraEmpleadoExit(Sender: TObject);
    procedure tsFiltraEmpleadoEnter(Sender: TObject);
    procedure tsFiltraEquipoEnter(Sender: TObject);
    procedure tsFiltraEquipoExit(Sender: TObject);
    procedure tsMotivoEnter(Sender: TObject);
    procedure tsMotivoExit(Sender: TObject);
    procedure tsEstadoExit(Sender: TObject);
    procedure tsEstadoEnter(Sender: TObject);
    procedure tsEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure dbComboFrenteKeyPress(Sender: TObject; var Key: Char);
    procedure dbDateFechaKeyPress(Sender: TObject; var Key: Char);
    procedure chbRegresaInventarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGridEmpleadosCellClick(Column: TColumn);
    procedure tzEmpleadosDAfterScroll(DataSet: TDataSet);
    procedure DBGridFoliosCellClick(Column: TColumn);
    procedure tzFoliosAfterScroll(DataSet: TDataSet);
    procedure dbDateFechaEnter(Sender: TObject);
    procedure dbDateFechaExit(Sender: TObject);
    procedure tsFiltraEquipoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tzInsumosxFoliosAfterScroll(DataSet: TDataSet);
    procedure tsMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure tsCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;                              

var
  frmDevolucionEquipoSeguridad: TfrmDevolucionEquipoSeguridad;
  IdEmpleado, IdFolio, IdInsumo, SiInsumo, NumeroSerie, dExistencia, ID, Almacen : string;
  //CantidadD, CantidadValida : Double;
implementation

{$R *.dfm}

procedure TfrmDevolucionEquipoSeguridad.chbRegresaInventarioKeyPress(
  Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
       tsMotivo.SetFocus
end;

procedure TfrmDevolucionEquipoSeguridad.dbDateFechaEnter(Sender: TObject);
begin
dbDateFecha.Color := global_color_entrada
end;

procedure TfrmDevolucionEquipoSeguridad.dbDateFechaExit(Sender: TObject);
begin
 dbDateFecha.Color := global_color_salida
end;

procedure TfrmDevolucionEquipoSeguridad.dbComboFrenteKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
       tsFiltraEmpleado.SetFocus
end;

procedure TfrmDevolucionEquipoSeguridad.dbDateFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
       tsEstado.SetFocus
end;

procedure TfrmDevolucionEquipoSeguridad.DBGridEmpleadosCellClick(
  Column: TColumn);
begin


  IdEmpleado := tzEmpleadosD.FieldByName('sIdEmpleado').AsString;
  tzFolios.Active := False;
  tzFolios.Params.ParamByName('IdEmpleado').AsString := IdEmpleado;
  tzFolios.Open;
  if tzFolios.RecordCount > 0 then
    begin
       tsFiltraEquipo.Enabled := True;
    end;

end;

procedure TfrmDevolucionEquipoSeguridad.DBGridFoliosCellClick(Column: TColumn);
begin
     IdFolio := tzFolios.FieldByName('iFolios').AsString;
  tzInsumosxFolios.Active := False;
  tzInsumosxFolios.Params.ParamByName('IdFolio').AsString := IdFolio;
  tzInsumosxFolios.Open;
  tzInsumosxFolios.Refresh;
end;

procedure TfrmDevolucionEquipoSeguridad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := CaFree;
end;

procedure TfrmDevolucionEquipoSeguridad.FormShow(Sender: TObject);
begin
frmBarra2.btnAdd.Enabled := False;
frmBarra2.btnEdit.Enabled := False;
frmBarra2.btnCancel.Enabled := False;
frmBarra2.btnDelete.Enabled := True;
frmBarra2.btnPrinter.Enabled := False;
tzEmpleadosD.Open;
tsMotivo.Enabled := False;
tsEstado.Enabled := False;
//tsCantidad.Enabled := False;
dbDateFecha.Enabled := False;
dbDateFecha.Date := Date;
chbRegresaInventario.Enabled := False;
tsFiltraEquipo.Enabled := False;
tsFiltraEquipo.Enabled := True;
lbMotivo.Enabled := False;
lbEstado.Enabled := False;
lbFecha.Enabled := False;

end;

procedure TfrmDevolucionEquipoSeguridad.frmBarra2btnCancelClick(
  Sender: TObject);
begin
  tsMotivo.Text := '';
  tsEstado.Text := '';
  //tsCantidad.Text := '1';
  chbRegresaInventario.Checked := False;
  frmBarra2.btnAdd.Enabled := False;
  frmBarra2.btnPost.Enabled := False;
  frmBarra2.btnEdit.Enabled := False;
  frmBarra2.btnCancel.Enabled := False;
  frmBarra2.btnDelete.Enabled := True;
  frmBarra2.btnPrinter.Enabled := False;
  tsMotivo.Enabled := False;
  tsEstado.Enabled := False;
  //tsCantidad.Enabled := False;
  dbDateFecha.Enabled := False;
  chbRegresaInventario.Enabled := False;
  tsFiltraEmpleado.Enabled := True;
  tsFiltraEquipo.Enabled := True;
  DBGridEmpleados.Enabled := True;
  DBGridInsumosxEmpleado.Enabled := True;
  DBGridFolios.Enabled := True;
  dbDateFecha.Date := Date;
  lbMotivo.Enabled := False;
  lbEstado.Enabled := False;
  lbFecha.Enabled := False;

end;

procedure TfrmDevolucionEquipoSeguridad.frmBarra2btnDeleteClick(
  Sender: TObject);
begin
  Almacen := tzInsumosxFolios.FieldByName('sIdAlmacen').AsString;
  ID := tzInsumosxFolios.FieldByName('iId').AsString;
  NumeroSerie := tzInsumosxFolios.FieldByName('sNumeroSerie').AsString;
  //ShowMessage( '''+ID+'' y ''+IdInsumo+''' );
  SiInsumo := tzInsumosxFolios.FieldByName('sIdInsumo').AsString;

 if (SiInsumo = '') then
      begin
                showmessage('No Selecciono Ningún Material');
                exit;
      end;
  frmBarra2.btnAdd.Enabled := False;
  frmBarra2.btnPost.Enabled := True;
  frmBarra2.btnCancel.Enabled := True;
  frmBarra2.btnDelete.Enabled := False;
  frmBarra2.btnPrinter.Enabled := False;
  tsMotivo.Enabled := True;
  //tsCantidad.Enabled := True;
  tsEstado.Enabled := True;
  dbDateFecha.Enabled := True;
  chbRegresaInventario.Enabled := True;
  tsFiltraEmpleado.Enabled := False;
  tsFiltraEquipo.Enabled := False;
  DBGridEmpleados.Enabled := False;
  DBGridInsumosxEmpleado.Enabled := False;
  DBGridFolios.Enabled := False;
  lbMotivo.Enabled := True;
  lbEstado.Enabled := True;
  lbFecha.Enabled := True;
  tsMotivo.SetFocus;
end;

procedure TfrmDevolucionEquipoSeguridad.frmBarra2btnEditClick(Sender: TObject);
begin
  frmBarra2.btnEditClick(Sender);

end;

procedure TfrmDevolucionEquipoSeguridad.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnAdd.Enabled := False;
  frmBarra2.btnPost.Enabled := False;
  frmBarra2.btnEdit.Enabled := False;
  frmBarra2.btnCancel.Enabled := False;
  frmBarra2.btnDelete.Enabled := True;
  frmBarra2.btnPrinter.Enabled := False;
       Close;
end;

procedure TfrmDevolucionEquipoSeguridad.frmBarra2btnPostClick(Sender: TObject);
begin

    if (tsMotivo.Text = '' ) then
    begin
           showmessage('Describa un Motivo para la Devolución');
           tsMotivo.SetFocus;
           exit;
    end;
                 (*if (tsCantidad.Text = '' ) then
            begin
            showmessage('No a Indicado la Cantidad a Devolver');
            tsCantidad.SetFocus;
            exit;
            end;

            CantidadD := tzInsumosxFolios.FieldByName('iCantidad').AsInteger;
            CantidadValida := StrtoInt(tsCantidad.text);

             if CantidadValida > CantidadD then
            begin
            showmessage('La Cantidad que Quiere Devolver es Mayor a la Asignada');
            tsCantidad.SetFocus;
            exit;
            end; *)

            if (tsEstado.Text = '' ) then
            begin
            showmessage('Describa el Estado en que se Recibe el Material.');
            tsEstado.SetFocus;
            exit;
            end;


                ShortDateFormat := 'yyyy-mm-dd';
                tzvalida.Active := False;
                tzvalida.SQL.text := 'SELECT * FROM alm_devolucioninsumos';
                tzvalida.Open;

                tzvalida.Append;
                tzvalida.FieldByName('sMotivo').AsString := tsMotivo.Text;
                tzvalida.FieldByName('dFechaDevolucion').AsDateTime := dbDateFecha.Date;
                tzvalida.FieldByName('sEstado').AsString := tsEstado.Text;
                tzvalida.FieldByName('sIdInsumo').AsString := SiInsumo;
                tzvalida.FieldByName('iFolios').AsString := IdFolio;
                tzvalida.FieldByName('sNumeroSerie').AsString := NumeroSerie;
                tzvalida.FieldByName('iId').AsString := ID;
                // tzvalida.FieldByName('iCantidad').AsString := tsCantidad.Text;
                if chbRegresaInventario.Checked = True then
                begin
                 tzvalida.FieldByName('iSumaInventario').AsInteger := 1;
                 tzvalida.Post;

                 tzvalida.Active := False;
                 tzvalida.SQL.Clear;
                 tzvalida.SQL.text := 'UPDATE insumos SET dExistencia = (dExistencia + '+tzInsumosxFolios.FieldByName('iCantidad').AsString+') WHERE sIdInsumo = ''' +SiInsumo+ ''' AND sIdAlmacen = ''' +Almacen+ '''';
                 tzvalida.ExecSQL;

//                 tzvalida.Active := False;
//                 tzvalida.SQL.Clear;
//                 tzvalida.SQL.text := 'UPDATE empleado_insumo SET iCantidad = (iCantidad - '+ FloattoStr(CantidadValida) +') WHERE iId = ''' +ID+ '''';
//                 tzvalida.ExecSQL;
                end else  begin
                  tzvalida.FieldByName('iSumaInventario').AsInteger := 0;
                  tzvalida.Post;

//                   tzvalida.Active := False;
//                   tzvalida.SQL.Clear;
//                   tzvalida.SQL.text := 'UPDATE empleado_insumo SET iCantidad = (iCantidad - '+ FloattoStr(CantidadValida) +') WHERE iId = ''' +ID+ '''';
//                   tzvalida.ExecSQL;
                end;



                // CantidadD := (CantidadD-StrtoInt(tsCantidad.text));

                // if CantidadD < 1 then
                //  begin
                tzvalida.Active := False;
                tzvalida.SQL.Clear;
                tzvalida.SQL.text := 'UPDATE alm_empleado_insumo SET iActivo = 0 WHERE iId = '''+ID+'''';
                tzvalida.ExecSQL;
               // end;



  tzFolios.Refresh;
  tzInsumosxFolios.Refresh;
  tsMotivo.Text := '';
  tsEstado.Text := '';
  //tsCantidad.Text := '1';
  chbRegresaInventario.Checked := False;

  frmBarra2.btnAdd.Enabled := False;
  frmBarra2.btnPost.Enabled := False;
  frmBarra2.btnEdit.Enabled := False;
  frmBarra2.btnCancel.Enabled := False;
  frmBarra2.btnDelete.Enabled := True;
  frmBarra2.btnPrinter.Enabled := False;
  tsMotivo.Enabled := False;
  tsEstado.Enabled := False;
  //tsCantidad.Enabled := False;
  dbDateFecha.Enabled := False;
  chbRegresaInventario.Enabled := False;
  tsFiltraEmpleado.Enabled := True;
  tsFiltraEquipo.Enabled := True;
  DBGridEmpleados.Enabled := True;
  DBGridInsumosxEmpleado.Enabled := True;
  DBGridFolios.Enabled := True;
  lbMotivo.Enabled := False;
  lbEstado.Enabled := False;
  lbFecha.Enabled := False;
  exit;
end;

procedure TfrmDevolucionEquipoSeguridad.tsCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
       tsEstado.SetFocus
end;

procedure TfrmDevolucionEquipoSeguridad.tsEstadoEnter(Sender: TObject);
begin
    tsEstado.Color := global_color_entrada
end;

procedure TfrmDevolucionEquipoSeguridad.tsEstadoExit(Sender: TObject);
begin
  tsEstado.Color := global_color_salida
end;

procedure TfrmDevolucionEquipoSeguridad.tsEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
       chbRegresaInventario.SetFocus

end;

procedure TfrmDevolucionEquipoSeguridad.tsFiltraEmpleadoEnter(Sender: TObject);
begin
  tsFiltraEmpleado.Color := global_color_entrada
end;

procedure TfrmDevolucionEquipoSeguridad.tsFiltraEmpleadoExit(Sender: TObject);
begin

  tsFiltraEmpleado.Color := global_color_salida
end;

procedure TfrmDevolucionEquipoSeguridad.tsFiltraEmpleadoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
       if length(trim(tsFiltraEmpleado.Text)) > 0 then
        begin
        tzEmpleadosD.Filtered := False;
        tzEmpleadosD.Filter := ' sNombreCompleto LIKE ' + QuotedStr('*' + tsFiltraEmpleado.Text + '* ');
        tzEmpleadosD.Filtered := True;
        tzEmpleadosD.Refresh;
        end
     else
        begin
        tzEmpleadosD.Filtered := False;
        end;
end;

procedure TfrmDevolucionEquipoSeguridad.tsFiltraEquipoEnter(Sender: TObject);
begin
tsFiltraEquipo.Color := global_color_entrada
end;

procedure TfrmDevolucionEquipoSeguridad.tsFiltraEquipoExit(Sender: TObject);
begin
  tsFiltraEquipo.Color := global_color_salida
end;

procedure TfrmDevolucionEquipoSeguridad.tsFiltraEquipoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if length(trim(tsFiltraEquipo.Text)) > 0 then
        begin
        tzInsumosxFolios.Filtered := False;
        tzInsumosxFolios.Filter := ' sInsumo LIKE ' + QuotedStr('*' + tsFiltraEquipo.Text + '* ');
        tzInsumosxFolios.Filtered := True;
        tzInsumosxFolios.Refresh;
        end
     else
        begin
        tzInsumosxFolios.Filtered := False;
        end;
end;

procedure TfrmDevolucionEquipoSeguridad.tsMotivoEnter(Sender: TObject);
begin
  tsMotivo.Color := global_color_entrada
end;

procedure TfrmDevolucionEquipoSeguridad.tsMotivoExit(Sender: TObject);
begin
  tsMotivo.Color := global_color_salida
end;

procedure TfrmDevolucionEquipoSeguridad.tsMotivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
       dbDateFecha.SetFocus

end;

procedure TfrmDevolucionEquipoSeguridad.tzEmpleadosDAfterScroll(
  DataSet: TDataSet);
begin
  IdEmpleado := tzEmpleadosD.FieldByName('sIdEmpleado').AsString;
  tzFolios.Active := False;
  tzFolios.Params.ParamByName('IdEmpleado').AsString := IdEmpleado;
  tzFolios.Open;
  lbCapturaEmpleado.Caption := tzEmpleadosD.FieldByName('sNombreCompleto').AsString;
  IdFolio := tzFolios.FieldByName('iFolios').AsString;
  tzInsumosxFolios.Active := False;
  tzInsumosxFolios.Params.ParamByName('IdFolio').AsString := IdFolio;
  tzInsumosxFolios.Open;
  tzFolios.Refresh;
  tzInsumosxFolios.Refresh;

end;

procedure TfrmDevolucionEquipoSeguridad.tzFoliosAfterScroll(DataSet: TDataSet);
begin
  IdFolio := tzFolios.FieldByName('iFolios').AsString;
  tzInsumosxFolios.Active := False;
  tzInsumosxFolios.Params.ParamByName('IdFolio').AsString := IdFolio;
  tzInsumosxFolios.Open;
  lbCapturaFolio.Caption := tzFolios.FieldByName('iFolios').AsString;

end;

procedure TfrmDevolucionEquipoSeguridad.tzInsumosxFoliosAfterScroll(
  DataSet: TDataSet);
begin
  lbCapturaInsumo.Caption := tzInsumosxFolios.FieldByName('sInsumo').AsString;
end;

end.
