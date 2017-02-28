unit frmTipoVisita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, frm_barra, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_connection, global;

type
  Tfrm_TipoVisita = class(TForm)
    panelGrid: TPanel;
    frmbarra1: TfrmBarra;
    edtDescripcion: TEdit;
    lbl1: TLabel;
    memoComentarios: TMemo;
    lblComentarios: TLabel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    gridTiposDeVisita: TcxGrid;
    Descripcion: TcxGridDBColumn;
    Comentarios: TcxGridDBColumn;
    zqryTiposDeVisitas: TZQuery;
    dsTipoDeVisitas: TDataSource;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mostrarDatosEnCampos;
    procedure deshabilitarCampos;
    procedure habilitarCampos;
    procedure limpiarCampos;
    procedure btnCancelClick(Sender: TObject);
    procedure deshabilitarGrid;
    procedure habilitarGrid;
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescripcionEnter(Sender: TObject);
    procedure edtDescripcionExit(Sender: TObject);
    procedure memoComentariosExit(Sender: TObject);
    procedure memoComentariosEnter(Sender: TObject);
  private
    { Private declarations }
  public
  var
    accion : string;
    { Public declarations }
  end;

var
  frm_TipoVisita: Tfrm_TipoVisita;

implementation

uses frmCompanias;

{$R *.dfm}

procedure Tfrm_TipoVisita.btnAddClick(Sender: TObject);
begin
  frmbarra1.btnAddClick(Sender);

  accion := 'Nuevo';

  habilitarCampos;
  limpiarCampos;
  edtDescripcion.SetFocus;
  deshabilitarGrid;
end;

procedure Tfrm_TipoVisita.btnCancelClick(Sender: TObject);
begin
  deshabilitarCampos;
  frmbarra1.btnCancelClick(Sender);
  habilitarGrid;
end;

procedure Tfrm_TipoVisita.btnDeleteClick(Sender: TObject);
begin
try
  zqryTiposDeVisitas.Delete;
except
  showMessage('No se puede eliminar. El registro esta activo');
end;

end;

procedure Tfrm_TipoVisita.btnEditClick(Sender: TObject);
begin
  frmbarra1.btnEditClick(Sender);

  accion := 'Editar';

  habilitarCampos;
  edtDescripcion.SetFocus;
  deshabilitarGrid;
end;

procedure Tfrm_TipoVisita.btnExitClick(Sender: TObject);
begin
  frmbarra1.btnExitClick(Sender);
  Close;
end;

procedure Tfrm_TipoVisita.btnPostClick(Sender: TObject);
begin
  if accion = 'Nuevo' then
  begin
    zqryTiposDeVisitas.Append;
    zqryTiposDeVisitas.FieldByName('sDescripcion').AsString := edtDescripcion.Text;
    zqryTiposDeVisitas.FieldByName('sComentarios').AsString := memoComentarios.Text;

    try
      zqryTiposDeVisitas.Post;
      frmbarra1.btnCancelClick(Sender);
    except
      on e : exception do
      begin
        ShowMessage(e.Message);
      end;
    end;
  end else if accion = 'Editar' then
  begin
    zqryTiposDeVisitas.Edit;
    zqryTiposDeVisitas.FieldByName('sDescripcion').AsString := edtDescripcion.Text;
    zqryTiposDeVisitas.FieldByName('sComentarios').AsString := memoComentarios.Text;

    try
      zqryTiposDeVisitas.Post;
      frmbarra1.btnCancelClick(Sender);
    except
      on e : exception do
      begin
        ShowMessage(e.Message);
      end;
    end;
  end;

  deshabilitarCampos;
  habilitarGrid;
  zqryTiposDeVisitas.Refresh;

  //Si el formulario frmCompanias(Catalogo de Clientes) esta abierto entonces enviar el nuevo Tipo de Visita al combo de Clientes
  if Assigned(frm_Companias) and (frm_Companias.catTipoVisitaNormal = True)then
   begin
        frm_Companias.zqryTiposDeVisitas.Close;
        frm_Companias.zqryTiposDeVisitas.Open;
       frm_Companias.zqryTiposDeVisitas.Refresh;
       frm_Companias.cbbTipoVisita.KeyValue := zqryTiposDeVisitas.FieldByName('iIdTipoVisita').AsInteger;
       frm_Companias.cbbTipoVisita.SetFocus;
       Close;
   end;
end;

procedure Tfrm_TipoVisita.btnRefreshClick(Sender: TObject);
begin
  zqryTiposDeVisitas.Refresh;
end;

procedure Tfrm_TipoVisita.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Mostrar los datos en los campos Edit
  mostrarDatosEnCampos;
end;

procedure Tfrm_TipoVisita.deshabilitarCampos;
begin
  //Desabhilita los campos Edit
  edtDescripcion.Enabled := False;
  memoComentarios.Enabled := False;
end;

procedure Tfrm_TipoVisita.deshabilitarGrid;
begin
  gridTiposDeVisita.Enabled := False;
end;

procedure Tfrm_TipoVisita.edtDescripcionEnter(Sender: TObject);
begin
  edtDescripcion.Color := global_color_entradaERP;
end;

procedure Tfrm_TipoVisita.edtDescripcionExit(Sender: TObject);
begin
  edtDescripcion.Color := $00F0F0F0;
end;

procedure Tfrm_TipoVisita.edtDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    memoComentarios.SetFocus;
end;

procedure Tfrm_TipoVisita.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(frm_Companias) and (frm_Companias.catTipoVisitaNormal = True)then
  begin
    frm_Companias.catTipoVisitaNormal := False;
  end;

  Action := caFree;
end;

procedure Tfrm_TipoVisita.FormShow(Sender: TObject);
begin
  zqryTiposDeVisitas.Active := false;
  zqryTiposDeVisitas.Open;
  zqryTiposDeVisitas.First;

  mostrarDatosEnCampos;
  
  deshabilitarCampos;
end;

procedure Tfrm_TipoVisita.habilitarCampos;
begin
  //Habilita los campos edit
  edtDescripcion.Enabled := True;
  memoComentarios.Enabled := True;
end;

procedure Tfrm_TipoVisita.habilitarGrid;
begin
  gridTiposDeVisita.Enabled := True;
end;

procedure Tfrm_TipoVisita.limpiarCampos;
begin
  //Limpa los campos Edit
  edtDescripcion.Text := '';
  memoComentarios.Text := '';
  
end;

procedure Tfrm_TipoVisita.memoComentariosEnter(Sender: TObject);
begin
   memoComentarios.Color := global_color_entradaERP;
end;

procedure Tfrm_TipoVisita.memoComentariosExit(Sender: TObject);
begin
  memoComentarios.Color := $00F0F0F0;
end;

procedure Tfrm_TipoVisita.mostrarDatosEnCampos;
begin
  //Muestra los datos en los campos Edit
  edtDescripcion.Text := zqryTiposDeVisitas.FieldByName('sDescripcion').AsString;
  memoComentarios.Text := zqryTiposDeVisitas.FieldByName('sComentarios').AsString;
end;

end.
