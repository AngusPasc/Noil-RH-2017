unit frmCatalogoDeCargoA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, frm_barra,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frm_connection, DBCtrls, global,
  Menus, dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, cxContainer, cxGroupBox;

type
  Tfrm_CatalogoDeCargoA = class(TForm)
    panelGridAreas: TPanel;
    frmbarra1: TfrmBarra;
    zqryAreas: TZQuery;
    dsAreas: TDataSource;
    cxGroupBox1: TcxGroupBox;
    edtIdArea: TEdit;
    lbl1: TLabel;
    edtDescripcion: TEdit;
    lblDescripcion: TLabel;
    edtMascara: TEdit;
    edtTipoDeArea: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    grid_cxgrd1: TcxGrid;
    dbgGrid1DBTableView1: TcxGridDBTableView;
    Col_IdArea: TcxGridDBColumn;
    Col_Descripcion: TcxGridDBColumn;
    Col_Mascara: TcxGridDBColumn;
    Col_TipoArea: TcxGridDBColumn;
    dbgGrid1Level1: TcxGridLevel;
    dxbrmngr1: TdxBarManager;
    Editar1: TdxBarButton;
    Registrar1: TdxBarButton;
    Can1: TdxBarButton;
    Eliminar1: TdxBarButton;
    Salir1: TdxBarButton;
    Refresh1: TdxBarButton;
    Imprimir1: TdxBarButton;
    Insertar1: TdxBarButton;
    PopupPrincipal: TdxRibbonRadialMenu;
    procedure FormShow(Sender: TObject);
    procedure dbgGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mostrarAreaClickeada;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure insertarArea;
    procedure limpiarCampos;
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure habilitarCampos;
    procedure deshabilitarCampos;
    procedure btnCancelClick(Sender: TObject);
    procedure editarArea;
    procedure btnRefreshClick(Sender: TObject);
    procedure edtIdAreaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure edtMascaraKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdAreaEnter(Sender: TObject);
    procedure edtIdAreaExit(Sender: TObject);
    procedure edtDescripcionEnter(Sender: TObject);
    procedure edtDescripcionExit(Sender: TObject);
    procedure edtMascaraEnter(Sender: TObject);
    procedure edtMascaraExit(Sender: TObject);
    procedure edtTipoDeAreaEnter(Sender: TObject);
    procedure edtTipoDeAreaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtTipoDeAreaKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      accion : string;
  end;

var
  frm_CatalogoDeCargoA: Tfrm_CatalogoDeCargoA;

implementation

uses frmEgresos, frmGastos;

{$R *.dfm}

procedure Tfrm_CatalogoDeCargoA.btnAddClick(Sender: TObject);
begin
  //Cambiar el valor de accion a nuevo
  accion := 'nuevo';
  habilitarCampos;
  frmBarra1.btnAddClick(Sender);
  limpiarCampos;
  edtIdArea.Enabled := True;
  edtIdArea.SetFocus; //Pone el foco en el idArea
end;

procedure Tfrm_CatalogoDeCargoA.btnCancelClick(Sender: TObject);
begin
  //deshabilita los campos Edit
  deshabilitarCampos;
  frmbarra1.btnCancelClick(Sender);
end;

procedure Tfrm_CatalogoDeCargoA.btnDeleteClick(Sender: TObject);
begin
  //Eliminar la fila seleccionada
  try
    zqryAreas.Delete;
  except
    on e : Exception do
    ShowMessage(e.Message);
  end;
end;

procedure Tfrm_CatalogoDeCargoA.btnEditClick(Sender: TObject);
begin
  accion := 'editar';
  habilitarCampos;
  edtDescripcion.setFocus;
  frmBarra1.btnEditClick(Sender);
end;

procedure Tfrm_CatalogoDeCargoA.btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure Tfrm_CatalogoDeCargoA.btnPostClick(Sender: TObject);
var
  zqryIdAreaExiste :TZQuery;
begin
  //Validar que los campos tengan valores
  if edtIdArea.Text = '' then
  begin
    ShowMessage('El campo Id Area esta vacio');
    edtIdArea.SetFocus;
    Exit;
  end else if edtDescripcion.Text = '' then
  begin
    ShowMessage('El campo Descripcion esta vacio');
    edtDescripcion.SetFocus;
    Exit;
  end else if edtMascara.Text = '' then
  begin
    ShowMessage('El campo Mascara esta vacio');
    edtMascara.SetFocus;
    Exit;
  end else if (edtTipoDeArea.Text <> 'Operativa') and (edtTipoDeArea.Text <> 'No Operativa') then
  begin
    ShowMessage('Elija el Tipo de Area');
    edtTipoDeArea.SetFocus;
    Exit;
  end;


  //Si accion es igual a nuevo, entonces que se inserte el registro del area
  if accion = 'nuevo' then
  begin

    zqryIdAreaExiste := TZQuery.Create(Self);
    zqryIdAreaExiste.Connection := connection.ZConnection;
    zqryIdAreaExiste.Active:=False;
    zqryIdAreaExiste.SQL.Clear;
    zqryIdAreaExiste.SQL.Add('select sIdArea from con_areas where sIdArea = :sIdArea');
    zqryIdAreaExiste.Params.ParamByName('sIdArea').AsString := edtIdArea.Text;
    zqryIdAreaExiste.Open;

    //Checar que no exista el Id del Area
    if zqryIdAreaExiste.RecordCount = 1 then
    begin
      ShowMessage('El id del Area ya existe');
      edtIdArea.SetFocus;
      exit;
    end
    else
    begin
      insertarArea;
      frmbarra1.btnCancelClick(Sender); //Los botones vuelven a estar como al principio
    end;


  end else if accion = 'editar' then //Si se clickeo e boton Editar, entonces que se edite dicha fila seleccionada
  begin
    editarArea;
    frmbarra1.btnCancelClick(Sender); //Los botones vuelven a estar como al principio
  end;
  deshabilitarCampos;

  //Mandar los valores creados al formulario de Cheques si es que esta abierto
  if (Assigned(frm_Egresos)) and (frm_Egresos.Visible = True) then
   begin
       frm_Egresos.zQAreas.Refresh;
       frm_Egresos.tdbsIdArea.KeyValue := zqryAreas.FieldValues['sIdArea'];
       frm_Egresos.tdbsIdArea.SetFocus;
       Close;
   end;

   //Mandar los valores creados al formulario de Gastos si es que esta abierto
  if (Assigned(frm_Gastos)) and (frm_Gastos.Visible = True) then
   begin
       frm_Gastos.zQAreas.Refresh;
       frm_Gastos.tdbsIdArea.KeyValue := zqryAreas.FieldValues['sIdArea'];
       frm_Gastos.tdbsIdArea.SetFocus;
       Close;
   end;
end;

procedure Tfrm_CatalogoDeCargoA.btnRefreshClick(Sender: TObject);
begin
  //Refrescar el grid(el zqryAreas)
  zqryAreas.Refresh;
end;

procedure Tfrm_CatalogoDeCargoA.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_CatalogoDeCargoA.dbgGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Al dar click sobre una fila, se deben de mostrar los datos en los Edit
  mostrarAreaClickeada;
end;

procedure Tfrm_CatalogoDeCargoA.deshabilitarCampos;
begin
  //Deshabilita los campos Edit
  edtIdArea.Enabled := false;
  edtDescripcion.Enabled := false;
  edtMascara.Enabled := false;
  edtTipoDeArea.Enabled := false;
end;

procedure Tfrm_CatalogoDeCargoA.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click ;
end;

procedure Tfrm_CatalogoDeCargoA.editarArea;
begin
  //Edita el area seleccionada
  try
    zqryAreas.Edit;
    zqryAreas.FieldByName('sIdArea').AsString := edtIdArea.Text;
    zqryAreas.FieldByName('sDescripcion').AsString := edtDescripcion.Text;
    zqryAreas.FieldByName('sMascara').AsString := edtMascara.Text;
    zqryAreas.FieldByName('sTipoArea').AsString := edtTipoDeArea.Text;
    zqryAreas.Post;
  except
    on e:Exception do
    begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure Tfrm_CatalogoDeCargoA.edtDescripcionEnter(Sender: TObject);
begin
  edtDescripcion.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDeCargoA.edtDescripcionExit(Sender: TObject);
begin
  edtDescripcion.Color := clWhite;
end;

procedure Tfrm_CatalogoDeCargoA.edtDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Saltar al campo Mascara
  if key = #13 then edtMascara.SetFocus;
end;

procedure Tfrm_CatalogoDeCargoA.edtIdAreaEnter(Sender: TObject);
begin
  edtIdArea.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDeCargoA.edtIdAreaExit(Sender: TObject);
begin
  edtIdArea.Color := clWhite;
end;

procedure Tfrm_CatalogoDeCargoA.edtIdAreaKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Saltar al campo Descripcion
  if key = #13 then edtDescripcion.SetFocus;
end;

procedure Tfrm_CatalogoDeCargoA.edtMascaraEnter(Sender: TObject);
begin
  edtMascara.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDeCargoA.edtMascaraExit(Sender: TObject);
begin
  edtMascara.Color := clWhite;
end;

procedure Tfrm_CatalogoDeCargoA.edtMascaraKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Saltar al campo Tipoe de Areas
  if key = #13 then edtTipoDeArea.SetFocus;
end;

procedure Tfrm_CatalogoDeCargoA.edtTipoDeAreaEnter(Sender: TObject);
begin
  edtTipoDeArea.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDeCargoA.edtTipoDeAreaExit(Sender: TObject);
begin
  edtTipoDeArea.Color := clWhite;
end;

procedure Tfrm_CatalogoDeCargoA.edtTipoDeAreaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if accion = 'editar' then
    begin
      edtDescripcion.SetFocus;
    end
    else
      edtIdArea.setFocus;

  end;



end;

procedure Tfrm_CatalogoDeCargoA.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click ;
end;

procedure Tfrm_CatalogoDeCargoA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_CatalogoDeCargoA.FormShow(Sender: TObject);
begin
  accion := '';  //Valor por defecto de accion

  //Deshabilitar los campos para que no puedan ser modificados sin antes haber dado Nuevo o Editar
  //deshabilitarCampos;

  //Abrir zqryAreas para mostrarlo en el grid
  zqryAreas.Active := false;
  zqryAreas.Open;

  //zqryAreas.First;

  //Mostrar los datos del primer registro en los campos Edit
  edtIdArea.Text := zqryAreas.FieldByName('sIdArea').AsString;
  edtDescripcion.Text := zqryAreas.FieldByName('sDescripcion').AsString;
  edtMascara.Text := zqryAreas.FieldByName('sMascara').AsString;

  if zqryAreas.FieldByName('sTipoArea').AsString = 'Operativa' then
  begin
    edtTipoDeArea.ItemIndex := 0;
  end else if zqryAreas.FieldByName('sTipoArea').AsString = 'No Operativa' then
  begin
    edtTipoDeArea.ItemIndex := 1;
  end;
end;

procedure Tfrm_CatalogoDeCargoA.habilitarCampos;
begin
  //Habilita los campos Edit
  edtIdArea.Enabled := False;
  edtDescripcion.Enabled := true;
  edtMascara.enabled := true;
  edtTipoDeArea.enabled := true;
end;

procedure Tfrm_CatalogoDeCargoA.Imprimir1Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click ;
end;

procedure Tfrm_CatalogoDeCargoA.Insertar1Click(Sender: TObject);
begin
   frmbarra1.btnAdd.Click
end;

procedure Tfrm_CatalogoDeCargoA.insertarArea;
begin
  //Inserta una nueva area al catalogo
  try
    zqryAreas.Append;
    zqryAreas.FieldByName('sIdArea').AsString := edtIdArea.Text;
    zqryAreas.FieldByName('sDescripcion').AsString := edtDescripcion.Text;
    zqryAreas.FieldByName('sMascara').AsString := edtMascara.Text;
    zqryAreas.FieldByName('sTipoArea').AsString := edtTipoDeArea.Text;
    zqryAreas.Post;
    zqryAreas.Refresh;
  except
    on e:Exception do
    ShowMessage(e.Message);
  end;
end;

procedure Tfrm_CatalogoDeCargoA.limpiarCampos;
begin
  //Limpia los campos edit del formulario
  edtIdArea.Text := '';
  edtDescripcion.Text := '';
  edtMascara.Text := '';
  edtTipoDeArea.ItemIndex := -1;
end;

procedure Tfrm_CatalogoDeCargoA.mostrarAreaClickeada;
begin
  //Muestra los datos de la fila seleccionada con click en los Edit
  edtIdArea.Text := zqryAreas.FieldByName('sIdArea').AsString;
  edtDescripcion.Text := zqryAreas.FieldByName('sDescripcion').AsString;
  edtMascara.Text := zqryAreas.FieldByName('sMascara').AsString;
  edtTipoDeArea.Text := zqryAreas.FieldByName('sTipoArea').AsString;
end;

procedure Tfrm_CatalogoDeCargoA.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click ;
end;

procedure Tfrm_CatalogoDeCargoA.Salir1Click(Sender: TObject);
begin
  close ;
end;

end.
