unit frm_DespieceDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, RXDBCtrl, DBCtrls, DB, Grids,
  DBGrids, Buttons, sBitBtn, ExtCtrls, RxMemDS, frm_EstimaInstalado, global,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Newpanel ;

type
  TfrmDespieceDX = class(TForm)
    dsDespiece: TDataSource;
    Panel1: TPanel;
    Grid_Despiece: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Total: TLabel;
    cmdAdd: TButton;
    cmdEdit: TButton;
    cmdDelete: TButton;
    cmdPost: TButton;
    cmdCancel: TButton;
    lblEje: TLabel;
    lblEntre: TLabel;
    lbleje1: TLabel;
    lbleje2: TLabel;
    Label7: TLabel;
    lblveces: TLabel;
    Label9: TLabel;
    lblLargo: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    tdNumVeces: TRxDBCalcEdit;
    tdCaras: TRxDBCalcEdit;
    tdLargo: TRxDBCalcEdit;
    tdAlto: TRxDBCalcEdit;
    tdAncho: TRxDBCalcEdit;
    tdSubtotal: TRxDBCalcEdit;
    txtEje: TDBEdit;
    txtEje1: TDBEdit;
    txtEje2: TDBEdit;
    tdTotal: TRxCalcEdit;
    Q_Despiece: TZQuery;
    cmdOk: TsBitBtn;
    cmdExit: TsBitBtn;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    Q_perimetros: TZQuery;
    ds_perimetros: TDataSource;
    txtInicio: TEdit;
    procedure cmdOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdAddClick(Sender: TObject);
    procedure cmdEditClick(Sender: TObject);
    procedure cmdPostClick(Sender: TObject);
    procedure cmdDeleteClick(Sender: TObject);
    procedure cmdCancelClick(Sender: TObject);
    procedure txtEjeKeyPress(Sender: TObject; var Key: Char);
    procedure txtEje1KeyPress(Sender: TObject; var Key: Char);
    procedure txtEje2KeyPress(Sender: TObject; var Key: Char);
    procedure tdNumVecesKeyPress(Sender: TObject; var Key: Char);
    procedure tdCarasKeyPress(Sender: TObject; var Key: Char);
    procedure tdLargoKeyPress(Sender: TObject; var Key: Char);
    procedure tdAltoKeyPress(Sender: TObject; var Key: Char);
    procedure tdAnchoKeyPress(Sender: TObject; var Key: Char);
    procedure txtEjeEnter(Sender: TObject);
    procedure txtEjeExit(Sender: TObject);
    procedure txtEje1Enter(Sender: TObject);
    procedure txtEje1Exit(Sender: TObject);
    procedure txtEje2Enter(Sender: TObject);
    procedure txtEje2Exit(Sender: TObject);
    procedure tdNumVecesEnter(Sender: TObject);
    procedure tdNumVecesExit(Sender: TObject);
    procedure tdCarasEnter(Sender: TObject);
    procedure tdCarasExit(Sender: TObject);
    procedure tdLargoEnter(Sender: TObject);
    procedure tdLargoExit(Sender: TObject);
    procedure tdAltoEnter(Sender: TObject);
    procedure tdAltoExit(Sender: TObject);
    procedure tdAnchoEnter(Sender: TObject);
    procedure tdAnchoExit(Sender: TObject);
    procedure Q_DespieceAfterPost(DataSet: TDataSet);
    procedure botonesInsert;
    procedure botonesCancel;
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure cmdExitClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Suma: Extended;
  end;

var
  frmDespieceDX: TfrmDespieceDX;

implementation

{$R *.dfm}

Var
  ExitCode: Boolean;

procedure TfrmDespieceDX.cmdAddClick(Sender: TObject);
var
  nOrden: Integer;
begin
  txtEje.SetFocus;
  if Q_Despiece.RecordCount > 0 then
  Begin
    Q_Despiece.Last;
    nOrden := Q_Despiece.FieldByName('iIdOrden').AsInteger + 1;
  End
  else
    nOrden := 1;
  Q_Despiece.Append;
  Q_Despiece.FieldByName('iIdOrden').AsInteger := nOrden;
  botonesInsert;

  Grid_Despiece.Enabled := False;
end;

procedure TfrmDespieceDX.cmdEditClick(Sender: TObject);
begin
  Q_Despiece.Edit;
  botonesInsert; 
  Grid_Despiece.Enabled := False;
end;

procedure TfrmDespieceDX.cmdExitClick(Sender: TObject);
begin
    frmEstimaInstalado.tdCantidad.Value := tdTotal.Value;
end;

procedure TfrmDespieceDX.cmdDeleteClick(Sender: TObject);
begin
  if Q_Despiece.RecordCount > 0 then
  Begin
    If MessageDlg('¿Está seguro de que desea eliminar este registro', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
    Begin
      Q_Despiece.Delete;
      Grid_Despiece.Refresh;
      cmdEdit.Enabled := Q_Despiece.RecordCount > 0;
      cmdPost.Enabled := Q_Despiece.RecordCount > 0;
    End;
  End;
end;

procedure TfrmDespieceDX.cmdPostClick(Sender: TObject);
var
   total  : double;
   opcion : string;
   caras, largo, alto, ancho : double;
begin
  if (Q_Despiece.State = dsInsert) or (Q_Despiece.State = dsEdit) then
  Begin
      if Q_Despiece.State = dsInsert then
         opcion := 'inserta'
      else
         opcion := 'edita';

      Q_Despiece.FieldValues['sContrato']        := global_contrato;
      Q_Despiece.FieldValues['sNumeroOrden']     := frmEstimaInstalado.OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
      Q_Despiece.FieldValues['sNumeroGenerador'] := frmEstimaInstalado.Estimaciones.FieldByName('sNumeroGenerador').AsString;
      Q_Despiece.FieldValues['sWbs']             := frmEstimaInstalado.ActividadesIguales.FieldByName('swbs').AsString;
      Q_Despiece.FieldValues['sNumeroActividad'] := frmEstimaInstalado.ActividadesIguales.FieldByName('snumeroactividad').AsString;
      Q_Despiece.FieldValues['sIsometrico']      := frmEstimaInstalado.tsIsometrico.Text;

      if Q_Despiece.FieldValues['dCaras'] = null  then
         caras := 1
      else
         caras := Q_Despiece.FieldValues['dCaras'];

      if Q_Despiece.FieldValues['dLargo'] = null  then
         largo := 1
      else
         largo := Q_Despiece.FieldValues['dLargo'];

      if Q_Despiece.FieldValues['dAlto'] = null  then
         alto := 1
      else
         alto := Q_Despiece.FieldValues['dAlto'];

      if Q_Despiece.FieldValues['dAncho'] = null  then
         ancho := 1
      else
         ancho := Q_Despiece.FieldValues['dAncho'] ;

      {Operaciones..}
      total := (Q_Despiece.FieldByName('dNumVeces').AsFloat * caras * largo * alto * ancho);

      Q_Despiece.FieldByName('dSubtotal').AsFloat := total;
      Q_Despiece.Post;
      Grid_Despiece.Refresh;
      ExitCode := False;
  End;

  if opcion = 'inserta' then
     cmdAdd.Click
  else
     botonesCancel;

  Grid_Despiece.Enabled := True;
end;

procedure TfrmDespieceDX.cmdCancelClick(Sender: TObject);
begin
  if (Q_Despiece.State = dsInsert) or (Q_Despiece.State = dsEdit) then
  Begin
    Q_Despiece.Cancel;
    Grid_Despiece.Refresh;
    cmdEdit.Enabled := Q_Despiece.RecordCount > 0;
    cmdPost.Enabled := Q_Despiece.RecordCount > 0;
  End;
  botonesCancel;
  Grid_Despiece.Enabled := True;
end;

procedure TfrmDespieceDX.FormShow(Sender: TObject);
var
    total  : double;
    unidad : string;
begin
    {Definimos la unidad de medida para la configuracion..}
    unidad := frmEstimaInstalado.ActividadesIguales.FieldByName('sMedida').AsString;
    if  (unidad = 'M2') or (unidad = 'm2') then
    begin
        lblEje.Caption   := 'TIPO';
        lblEje1.Caption  := 'Diam.';
        lblEje2.Caption  := 'Convert.';
        lblEntre.Caption := 'DIAMETRO';
        lblVeces.Caption := 'CONST. PI';
        lblLargo.Caption := 'LONG. TOTAL';
    end
    else
    begin
        lblEntre.Caption := 'ENTRE';
        lblEje.Caption   := 'EJE';
        lblEje1.Caption  := 'EJE 1';
        lblEje2.Caption  := 'ENE 2';
        lblVeces.Caption := 'NO. VECES';
        lblLargo.Caption := 'LARGO';
    end;

    Q_despiece.Close;
    Q_despiece.ParamByName('contrato').AsString   := global_contrato;
    Q_despiece.ParamByName('orden').AsString      := frmEstimaInstalado.OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
    Q_despiece.ParamByName('generador').AsString  := frmEstimaInstalado.Estimaciones.FieldByName('sNumeroGenerador').AsString;
    Q_despiece.ParamByName('wbs').AsString        := frmEstimaInstalado.ActividadesIguales.FieldByName('swbs').AsString;
    Q_despiece.ParamByName('actividad').AsString  := frmEstimaInstalado.ActividadesIguales.FieldByName('snumeroactividad').AsString;
    Q_despiece.ParamByName('isometrico').AsString := frmEstimaInstalado.tsIsometrico.Text;
    Q_despiece.Open;

    Q_despiece.First;
    while not Q_despiece.Eof do
    begin
        total := total + Q_Despiece.FieldByName('dSubtotal').AsFloat;
        Q_despiece.Next;
    end;

    tdTotal.Value := total;

    if txtInicio.Text = 'New' then
       cmdAdd.Click
    else
    begin
        if Q_despiece.RecordCount = 0 then
           cmdAdd.Click
        else
           Grid_Despiece.SetFocus;
    end;
end;

procedure TfrmDespieceDX.ListaObjetoKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        txtEje.Text  := q_perimetros.FieldByName('sTipo').AsString;
        txtEje1.Text := q_perimetros.FieldByName('sDimension').AsString;

        if (txtEje.Text = 'OC') or (txtEje.Text = 'oc') then
           txtEje2.Text := q_perimetros.FieldByName('dExtMts').AsString;

        if (txtEje.Text = 'IPR') or (txtEje.Text = 'ipr') then
           txtEje2.Text := q_perimetros.FieldByName('dPerimMts').AsString;

        if (txtEje.Text = 'LI') or (txtEje.Text = 'li') then
           txtEje2.Text := q_perimetros.FieldByName('dArea_m2').AsString;

        Panel.Visible := False;

        if (txtEje.Text = 'OC') or (txtEje.Text = 'oc') then
           tdLargo.SetFocus
        else
           tdNumVeces.SetFocus;
    end;
end;

procedure TfrmDespieceDX.Q_DespieceAfterPost(DataSet: TDataSet);
var
    total : double;
begin
    Q_despiece.First;
    while not Q_despiece.Eof do
    begin
        total := total + Q_Despiece.FieldByName('dSubtotal').AsFloat;
        Q_despiece.Next;
    end;

    tdTotal.Value := total;
end;

procedure TfrmDespieceDX.cmdOkClick(Sender: TObject);
begin
    frmEstimaInstalado.tdCantidad.Value := tdTotal.Value;
end;

procedure TfrmDespieceDX.tdAltoEnter(Sender: TObject);
begin
    tdAlto.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.tdAltoExit(Sender: TObject);
begin
    tdAlto.Color := global_color_salida;
end;

procedure TfrmDespieceDX.tdAltoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        tdAncho.SetFocus;
end;

procedure TfrmDespieceDX.tdAnchoEnter(Sender: TObject);
begin
    tdAncho.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.tdAnchoExit(Sender: TObject);
begin
    tdAncho.Color := global_color_salida;
end;

procedure TfrmDespieceDX.tdAnchoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        if (Q_Despiece.State = dsInsert) or (Q_Despiece.State = dsEdit) then
           cmdPost.SetFocus
        else
            cmdOk.SetFocus;
end;

procedure TfrmDespieceDX.tdCarasEnter(Sender: TObject);
begin
    tdCaras.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.tdCarasExit(Sender: TObject);
begin
      tdCaras.Color := global_color_salida;
end;

procedure TfrmDespieceDX.tdCarasKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
       tdLargo.SetFocus;
end;

procedure TfrmDespieceDX.tdLargoEnter(Sender: TObject);
begin
    tdLargo.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.tdLargoExit(Sender: TObject);
begin
    tdLargo.Color := global_color_salida;
end;

procedure TfrmDespieceDX.tdLargoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
       tdAlto.SetFocus;
end;

procedure TfrmDespieceDX.tdNumVecesEnter(Sender: TObject);
begin
    tdNumVeces.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.tdNumVecesExit(Sender: TObject);
begin
    tdNumVeces.Color := global_color_salida;
end;

procedure TfrmDespieceDX.tdNumVecesKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
       tdCaras.SetFocus;
end;

procedure TfrmDespieceDX.txtEje1Enter(Sender: TObject);
begin
    txtEje1.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.txtEje1Exit(Sender: TObject);
begin
    txtEje1.Color := global_color_salida;
end;

procedure TfrmDespieceDX.txtEje1KeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
       txtEje2.SetFocus;
end;

procedure TfrmDespieceDX.txtEje2Enter(Sender: TObject);
begin
    txtEje2.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.txtEje2Exit(Sender: TObject);
begin
    txtEje2.Color := global_color_salida;
end;

procedure TfrmDespieceDX.txtEje2KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tdNumVeces.SetFocus;
end;

procedure TfrmDespieceDX.txtEjeEnter(Sender: TObject);
begin
    txtEje.Color := global_color_entrada;
end;

procedure TfrmDespieceDX.txtEjeExit(Sender: TObject);
begin
    txtEje.Color := global_color_salida;
end;

procedure TfrmDespieceDX.txtEjeKeyPress(Sender: TObject; var Key: Char);
begin
    if (key = #13) or (key = #9) then
    begin
        if (frmEstimaInstalado.ActividadesIguales.FieldByName('sMedida').AsString = 'M2') or
           (frmEstimaInstalado.ActividadesIguales.FieldByName('sMedida').AsString = 'm2') then
        begin
            ListaObjeto.Columns[2].Visible := True;
            ListaObjeto.Columns[3].Visible := True;
            ListaObjeto.Columns[4].Visible := True;
            ListaObjeto.Columns[5].Visible := True;
            ListaObjeto.Columns[6].Visible := True;
            ListaObjeto.Columns[7].Visible := True;
            ListaObjeto.Columns[8].Visible := True;

            q_perimetros.Active := False;
            q_perimetros.SQL.Clear;
            q_perimetros.SQL.Add('select * from perimetros where sTipo =:Tipo');
            q_perimetros.ParamByName('Tipo').AsString := txtEje.Text;
            q_perimetros.Open;

            if (txtEje.Text = 'OC') or (txtEje.Text = 'oc') then
            begin
                ListaObjeto.Columns[4].Visible := False;
                ListaObjeto.Columns[5].Visible := False;
                ListaObjeto.Columns[6].Visible := False;
                ListaObjeto.Columns[7].Visible := False;
                ListaObjeto.Columns[8].Visible := False;
            end;

            if (txtEje.Text = 'IPR') or (txtEje.Text = 'ipr') then
            begin
                ListaObjeto.Columns[2].Visible := False;
                ListaObjeto.Columns[3].Visible := False;
                ListaObjeto.Columns[5].Visible := False;
                ListaObjeto.Columns[6].Visible := False;
                ListaObjeto.Columns[7].Visible := False;
                ListaObjeto.Columns[8].Visible := False;
            end;

            if (txtEje.Text = 'LI') or (txtEje.Text = 'li') then
            begin
                ListaObjeto.Columns[2].Visible := False;
                ListaObjeto.Columns[3].Visible := False;
                ListaObjeto.Columns[4].Visible := False;
            end;
            Panel.Visible := True;
            listaObjeto.SetFocus;
        end
        else
           txtEje1.SetFocus;
    end;

end;

procedure TfrmDespieceDX.botonesInsert;
begin
    cmdAdd.Enabled    := False;
    cmdEdit.Enabled   := False;
    cmdPost.Enabled   := True;
    cmdCancel.Enabled := True;
    cmdDelete.Enabled := False;
    cmdOk.Enabled     := False;
end;

procedure TfrmDespieceDX.botonesCancel;
begin
    cmdAdd.Enabled    := True;
    cmdEdit.Enabled   := True;
    cmdPost.Enabled   := False;
    cmdCancel.Enabled := False;
    cmdDelete.Enabled := True;
    cmdOk.Enabled     := True;
end;



end.
