unit frm_estimacionRecursosPT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  Grids, DBGrids, rxToolEdit, RXDBCtrl, CheckLst, JvExControls, JvxCheckListBox,
  ZAbstractDataset;
type
  TfrmEstimacionRecursosPT = class(TForm)
    CmdCancel: TButton;
    ds_recursos: TDataSource;
    GrupoEstimacion: TGroupBox;
    rxRecursos: TRxMemoryData;
    rxRecursossContrato: TStringField;
    DBGrid_Convenios: TDBGrid;
    rxRecursossAnexo: TStringField;
    rxRecursossNumeroActividad: TStringField;
    rxRecursosmDescripcion: TStringField;
    rxRecursosdCantidad: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure CmdCancelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionRecursosPT: TfrmEstimacionRecursosPT;
  Bandera, Fecha  : string;
  oper            : integer ;
  Consecutivo     : integer;

implementation

uses
    frm_EstimacionGeneral, frm_EstimacionDetalleAdicional, frm_EstimacionOrdenes;

{$R *.dfm}

procedure TfrmEstimacionRecursosPT.CmdCancelClick(Sender: TObject);
begin
    close;
end;

procedure TfrmEstimacionRecursosPT.FormShow(Sender: TObject);
var
    Q_Movimientos,
    Q_Pt, Q_Item,
    Q_Recursos : TZReadOnlyQuery;
begin
    rxRecursos.Open;
    rxRecursos.EmptyTable;

    Q_Movimientos := TZReadOnlyQuery.Create(self);
    Q_Movimientos.Connection := connection.zConnection;

    Q_Pt := TZReadOnlyQuery.Create(self);
    Q_Pt.Connection := connection.zConnection;

    Q_Item := TZReadOnlyQuery.Create(self);
    Q_Item.Connection := connection.zConnection;

    if frmEstimacionOrdenes.Convenios.FieldValues['sIdConvenio'] = '' then
       frmEstimacionRecursosPt.Caption := frmEstimacionRecursosPt.Caption + 'INICIAL ]'
    else
       frmEstimacionRecursosPt.Caption := frmEstimacionRecursosPt.Caption + frmEstimacionOrdenes.Convenios.FieldValues['sIdConvenio'] + ' ]';

    {Ahora buscamos el total de movimientos de acuerdo a la PT.}
    Q_pt.Active := False;
    Q_pt.SQL.Clear;
    Q_pt.SQL.Add('select * from movimientos_contrato where sContrato =:Contrato and sIdConvenio =:Convenio ');
    Q_pt.ParamByName('Contrato').AsString := frmEstimacionOrdenes.tsOrdenes.Text ;
    Q_pt.ParamByName('Convenio').AsString := frmEstimacionOrdenes.convenios.FieldValues['sIdConvenio'] ;
    Q_pt.Open;

    while not Q_pt.Eof do
    begin
        Q_Item.Active := False;
        Q_Item.SQL.Clear;
        Q_Item.SQL.Add('Select sDescripcion from tiposdemovimiento where sContrato =:Contrato and sIdTipoMovimiento =:Id and sClasificacion = "Movimiento de Barco" ');
        Q_Item.ParamByName('Contrato').AsString := global_contrato_barco;
        Q_Item.ParamByName('Id').AsString       := Q_pt.FieldValues['sIdTipoMovimiento'];
        Q_Item.Open;

        rxRecursos.Append;
        rxRecursos.FieldValues['sAnexo']           := '';
        rxRecursos.FieldValues['sNumeroActividad'] := Q_pt.FieldValues['sIdTipoMovimiento'];
        if Q_Item.RecordCount > 0 then
           rxRecursos.FieldValues['mDescripcion']  := Q_Item.FieldValues['sDescripcion']
        else
           rxRecursos.FieldValues['mDescripcion']  := 'SIN DESCRIPCION';
        rxRecursos.FieldValues['dCantidad']        := Q_pt.FieldValues['dCantidad'];
        rxRecursos.Post;
        Q_pt.Next;
    end;

    {Ahora buscamos el total de personal de acuerdo a la PT.}
    Q_pt.Active := False;
    Q_pt.SQL.Clear;
    Q_pt.SQL.Add('select * from personal_contrato where sContrato =:Contrato and sIdConvenio =:Convenio order by iItemOrden ');
    Q_pt.ParamByName('Contrato').AsString := frmEstimacionOrdenes.tsOrdenes.Text ;
    Q_pt.ParamByName('Convenio').AsString := frmEstimacionOrdenes.convenios.FieldValues['sIdConvenio'] ;
    Q_pt.Open;

    {Buscamos el anexo..}
    Q_Movimientos.Active := False;
    Q_Movimientos.SQL.Clear;
    Q_Movimientos.SQL.Add('select sAnexo from anexos where sTipo = "PERSONAL"');
    Q_Movimientos.Open;

    while not Q_pt.Eof do
    begin
        {Consultamos catalogo de personal..}
        Q_Item.Active := False;
        Q_Item.SQL.Clear;
        Q_Item.SQL.Add('Select sDescripcion from personal where sContrato =:Contrato and sIdPersonal =:Id');
        Q_Item.ParamByName('Contrato').AsString := frmEstimacionOrdenes.tsOrdenes.Text ;
        Q_Item.ParamByName('Id').AsString       := Q_pt.FieldValues['sIdPersonal'];
        Q_Item.Open;

        {Guardamos datos en Rx..}
        rxRecursos.Append;
        rxRecursos.FieldValues['sAnexo']           := Q_Movimientos.FieldValues['sAnexo'];
        rxRecursos.FieldValues['sNumeroActividad'] := Q_pt.FieldValues['sIdPersonal'];
        if Q_Item.RecordCount > 0 then
           rxRecursos.FieldValues['mDescripcion']  := Q_Item.FieldValues['sDescripcion']
        else
           rxRecursos.FieldValues['mDescripcion']  := 'SIN DESCRIPCION';
        rxRecursos.FieldValues['dCantidad']        := Q_pt.FieldValues['dCantidad'];
        rxRecursos.Post;
        Q_pt.Next;
    end;

    {Ahora buscamos el total de equipo de acuerdo a la PT.}
    Q_pt.Active := False;
    Q_pt.SQL.Clear;
    Q_pt.SQL.Add('select * from equipos_contrato where sContrato =:Contrato and sIdConvenio =:Convenio order by iItemOrden ');
    Q_pt.ParamByName('Contrato').AsString := frmEstimacionOrdenes.tsOrdenes.Text ;
    Q_pt.ParamByName('Convenio').AsString := frmEstimacionOrdenes.convenios.FieldValues['sIdConvenio'] ;
    Q_pt.Open;

    {Buscamos el anexo..}
    Q_Movimientos.Active := False;
    Q_Movimientos.SQL.Clear;
    Q_Movimientos.SQL.Add('select sAnexo from anexos where sTipo = "EQUIPO"');
    Q_Movimientos.Open;

    while not Q_pt.Eof do
    begin
        {Consultamos catalogo de personal..}
        Q_Item.Active := False;
        Q_Item.SQL.Clear;
        Q_Item.SQL.Add('Select sDescripcion from equipos where sContrato =:Contrato and sIdEquipo =:Id');
        Q_Item.ParamByName('Contrato').AsString := frmEstimacionOrdenes.tsOrdenes.Text ;
        Q_Item.ParamByName('Id').AsString       := Q_pt.FieldValues['sIdEquipo'];
        Q_Item.Open;

        {Guardamos datos en Rx..}
        rxRecursos.Append;
        rxRecursos.FieldValues['sAnexo']           := Q_Movimientos.FieldValues['sAnexo'];
        rxRecursos.FieldValues['sNumeroActividad'] := Q_pt.FieldValues['sIdEquipo'];
         if Q_Item.RecordCount > 0 then
           rxRecursos.FieldValues['mDescripcion']  := Q_Item.FieldValues['sDescripcion']
        else
           rxRecursos.FieldValues['mDescripcion']  := 'SIN DESCRIPCION';
        rxRecursos.FieldValues['dCantidad']        := Q_pt.FieldValues['dCantidad'];
        rxRecursos.Post;
        Q_pt.Next;
    end;

    {Ahora buscamos el total de pernoctas de acuerdo a la PT.}
    Q_pt.Active := False;
    Q_pt.SQL.Clear;
    Q_pt.SQL.Add('select * from cuentas_contrato where sContrato =:Contrato and sIdConvenio =:Convenio ');
    Q_pt.ParamByName('Contrato').AsString := frmEstimacionOrdenes.tsOrdenes.Text ;
    Q_pt.ParamByName('Convenio').AsString := frmEstimacionOrdenes.convenios.FieldValues['sIdConvenio'] ;
    Q_pt.Open;

    {Buscamos el anexo..}
    Q_Movimientos.Active := False;
    Q_Movimientos.SQL.Clear;
    Q_Movimientos.SQL.Add('select sAnexo from anexos where sTipo = "PERNOCTA"');
    Q_Movimientos.Open;

    while not Q_pt.Eof do
    begin
        {Consultamos catalogo de personal..}
        Q_Item.Active := False;
        Q_Item.SQL.Clear;
        Q_Item.SQL.Add('Select sDescripcion from cuentas where sIdPernocta =:Id');
        Q_Item.ParamByName('Id').AsString       := Q_pt.FieldValues['sIdCuenta'];
        Q_Item.Open;

        {Guardamos datos en Rx..}
        rxRecursos.Append;
        rxRecursos.FieldValues['sAnexo']           := Q_Movimientos.FieldValues['sAnexo'];
        rxRecursos.FieldValues['sNumeroActividad'] := Q_pt.FieldValues['sIdCuenta'];
        if Q_Item.RecordCount > 0 then
           rxRecursos.FieldValues['mDescripcion']  := Q_Item.FieldValues['sDescripcion']
        else
           rxRecursos.FieldValues['mDescripcion']  := 'SIN DESCRIPCION';
        rxRecursos.FieldValues['dCantidad']        := Q_pt.FieldValues['dCantidad'];
        rxRecursos.Post;
        Q_pt.Next;
    end;

    rxRecursos.First;

end;

end.
