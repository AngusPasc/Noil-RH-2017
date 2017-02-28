unit frmEquiposPorEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons, RXDBCtrl, Newpanel, ZAbstractDataset, StrUtils, DBCtrls, Mask,
  ComCtrls, frxClass, frxDBSet, DateUtils, RxMemDS, rxToolEdit, frmEmpleados,
  NxEdit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Menus, cxButtons,
  dxSkinscxPCPainter, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControlAdapters, frm_inteligent;

type
  Tfrm_EquiposPorEmpleado = class(TForm)
  zqEquipos: TZQuery;
  dsEquipos: TDataSource;
  zqCategoriaEquipo: TZQuery;
  ds_CategoriaEquipo: TDataSource;
    zqCategoriaEquiposIdFamilia: TStringField;
    zqCategoriaEquiposDescripcion: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxFecha: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dbCatEquipos: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dbEquipos: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxStatusRecepcion: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxCantidad: TcxSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    Button1: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    Button2: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    btnCategoria: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    btnEquipos: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormShow(Sender: TObject);
  procedure Button1Click(Sender: TObject);
  procedure Button2Click(Sender: TObject);
  procedure dbCatEquiposClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edtCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure btnEquiposClick(Sender: TObject);
    procedure btnCategoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var frm_EquiposPorEmpleado: Tfrm_EquiposPorEmpleado;
qryEquiposporEmpleado: tzQuery;

implementation
uses frm_Connection, UInteliDialog, frmCatalogoDeCategoriasDeEquipos, frmCatalogoDeEquipos;
{$R *.dfm}
procedure Tfrm_EquiposPorEmpleado.btnCategoriaClick(Sender: TObject);
begin
  if qryEquiposporEmpleado.State IN [dsEdit, dsInsert] then
  begin
    Application.CreateForm(Tfrm_CatalogoDeCategoriasDeEquipos, frm_CatalogoDeCategoriasDeEquipos );
    frm_CatalogoDeCategoriasDeEquipos.Show;
    zqCategoriaEquipo.Refresh;
  end;
end;

procedure Tfrm_EquiposPorEmpleado.btnEquiposClick(Sender: TObject);
begin
  if qryEquiposporEmpleado.State IN [dsEdit, dsInsert] then
  begin
    Application.CreateForm(Tfrm_CatalogoDeEquipos, frm_CatalogoDeEquipos );
    frm_CatalogoDeEquipos.Show;
    zqEquipos.Refresh;
  end;
end;

procedure Tfrm_EquiposPorEmpleado.Button1Click(Sender: TObject);
begin
  if StrToInt(cxCantidad.Text) > 0 then
  begin

    if StrToInt(cxCantidad.Text) <= zqEquipos.FieldByName('dCantidad').AsInteger then
      begin
        qryEquiposporEmpleado.Append;
        qryEquiposporEmpleado.FieldByName('sIdEmpleado').AsString := frm_Empleados.zqEmpleados.FieldByName('sIdEmpleado').AsString ;
        qryEquiposporEmpleado.FieldValues['iIdEquipo']            := zqEquipos.FieldByName('iId').AsInteger;
//        qryEquiposporEmpleado.FieldValues['sNombreEntrega']       := frm_Empleados.tsNombreEntrega.text;//frm_Empleados.tsNombreEntrega.text;
//        qryEquiposporEmpleado.FieldValues['sNombreAutorizacion']  := frm_Empleados.tsNombreAutoriza.text;
        qryEquiposporEmpleado.FieldValues['sStatus_Recepcion']    := cxStatusRecepcion.text;
        qryEquiposporEmpleado.FieldValues['bActivo']              := '1';
        qryEquiposporEmpleado.FieldValues['dFecha_recepcion']     := cxFecha.Date;
        qryEquiposporEmpleado.FieldValues['dCantidad']            := cxCantidad.text;
        qryEquiposporEmpleado.Post;
        Close;
      end
    else
      InteliDialog.ShowModal('Aviso', 'No hay Cantidades Existente en el Inventario, No se Pueden Asignar el Equipo...', mtInformation, [mbOK], 0) ;
  end
  else
    InteliDialog.ShowModal('Aviso', 'La cantidad no puede ser igual a 0', mtInformation, [mbOK], 0) ;


end;

procedure Tfrm_EquiposPorEmpleado.Button2Click(Sender: TObject);
begin
  frm_Empleados.zq_EquiposPorEmpleado.Cancel;
  Close;
end;

procedure Tfrm_EquiposPorEmpleado.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
       cxCantidad.SetFocus ;
end;

procedure Tfrm_EquiposPorEmpleado.dbCatEquiposClick(Sender: TObject);
begin
  zqEquipos.Active := False;
  zqEquipos.Params.ParamByName('Categoria').AsString:= dbCatEquipos.EditValue;
  zqEquipos.Open;
  dbEquipos.Refresh;
end;

procedure Tfrm_EquiposPorEmpleado.edtCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin

 if not (Key in [#8,'0'..'9']) then  //quitando: #8 y ',' sirve para numeros enteros
  begin
    MessageBeep(MB_ICONERROR);
    Key:=#0;
  end;
end;

procedure Tfrm_EquiposPorEmpleado.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  frm_Empleados.zq_EquiposPorEmpleado.Refresh;
  qryEquiposporEmpleado.Close ;
  qryEquiposporEmpleado.Destroy ;
  action := cafree ;
end;

procedure Tfrm_EquiposPorEmpleado.FormShow(Sender: TObject);
begin
    cxFecha.Date:=date;
    zqCategoriaEquipo.Open;
    dbCatEquipos.SetFocus ;
    zqEquipos.Open;
    qryEquiposporEmpleado := tzQuery.Create(Self);
    qryEquiposporEmpleado.Connection := connection.zConnection ;
    qryEquiposporEmpleado.Active := False;
    qryEquiposporEmpleado.SQL.Add('select * from con_equiposporempleado  where iIdEquipo=0') ;
    qryEquiposporEmpleado.Open  ;
end;
end.
