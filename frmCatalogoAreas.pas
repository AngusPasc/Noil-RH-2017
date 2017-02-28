unit frmCatalogoAreas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid,  NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid, global,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu,cxInplaceContainer, cxDBTL, cxTLData,
  cxContainer, cxEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxDBEdit, cxImageComboBox, {dxSkinscxPCPainter, }
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, {dxSkinsdxBarPainter,}
  dxBar, dxRibbonRadialMenu, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FormAutoScaler, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter;

type
  Tfrm_CatalogoAreas = class(TForm)
  Splitter1: TSplitter;
  frmBarra1: TfrmBarra;
    zQCatalogodeAreas: TZQuery;
    dsDepartamentos: TDataSource;
    dxbrmngr1: TdxBarManager;
    dxEditar: TdxBarButton;
    dxGuardar: TdxBarButton;
    dxCancelar: TdxBarButton;
    dxEliminar: TdxBarButton;
    dxSalir: TdxBarButton;
    dxRefrescar: TdxBarButton;
    dxImprimir: TdxBarButton;
    dxInsertar: TdxBarButton;
    fsc_CatalogoAreas: TFormAutoScaler;
    QryOrganizacion: TZReadOnlyQuery;
    ds_organizacion: TDataSource;
    zQCatalogodeAreasiddepartamento: TIntegerField;
    zQCatalogodeAreasIdOrganizacion: TIntegerField;
    zQCatalogodeAreascodigodepartamento: TStringField;
    zQCatalogodeAreasEtiqueta: TStringField;
    zQCatalogodeAreastitulodepartamento: TStringField;
    zQCatalogodeAreasdescripcion: TBlobField;
    zQCatalogodeAreascomentarios: TBlobField;
    zQCatalogodeAreasidarbol: TIntegerField;
    zQCatalogodeAreasidpadre: TIntegerField;
    zQCatalogodeAreasnivel: TSmallintField;
    zQCatalogodeAreasherencia: TStringField;
    zQCatalogodeAreasactivo: TStringField;
    grid_Comunidades: TcxGrid;
    Panel1: TPanel;
    Label33: TLabel;
    tsOrganizacion: TDBLookupComboBox;
    tsMemo: TDBMemo;
    codigodepartamento: TcxDBTextEdit;
    titulodepartamento: TcxDBTextEdit;
    etiqueta: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    lbsMascara: TcxLabel;
    lbsDescripcion: TcxLabel;
    lbsIdArea: TcxLabel;
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure blbfldQCatalogodeAreasdescripcionGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
  procedure blbfldQCatalogodeAreascomentariosGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
  procedure grid_ComunidadesDblClick(Sender: TObject);
  procedure actualizar;
    procedure codigodepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure codigodepartamentoEnter(Sender: TObject);
    procedure codigodepartamentoExit(Sender: TObject);
    procedure titulodepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure titulodepartamentoEnter(Sender: TObject);
    procedure titulodepartamentoExit(Sender: TObject);
    procedure etiquetaEnter(Sender: TObject);
    procedure etiquetaExit(Sender: TObject);
    procedure tsorganizacionKeyPress(Sender: TObject; var Key: Char);
    procedure etiquetaKeyPress(Sender: TObject; var Key: Char);
    procedure tsMemoEnter(Sender: TObject);
    procedure tsMemoExit(Sender: TObject);
    procedure cxgrdbtblvwBView_areasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure closeFormulario;
    procedure tsorganizacionEnter(Sender: TObject);
    procedure tsorganizacionExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  //Fin de procedures
private
  { Private declarations }
public
  { Public declarations }
end;

var
  frm_CatalogoAreas: Tfrm_CatalogoAreas;
  sOpcion : string;
implementation

uses frm_connection, frmEmpleados, utilerias, frm_requisiondepersonal, Func_Genericas;

{$R *.dfm}

procedure Tfrm_CatalogoAreas.blbfldQCatalogodeAreascomentariosGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure Tfrm_CatalogoAreas.blbfldQCatalogodeAreasdescripcionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure Tfrm_CatalogoAreas.cxgrdbtblvwBView_areasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Cuando se de coble click, entonces debe mostrar el departamento en el combo de empleados
  closeFormulario;
end;

procedure Tfrm_CatalogoAreas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure Tfrm_CatalogoAreas.FormShow(Sender: TObject);
begin
  actualizar;

  QryOrganizacion.Active := False;
  QryOrganizacion.Open;
end;

procedure Tfrm_CatalogoAreas.actualizar;
begin
  zQCatalogodeAreas.Active := False ;
  zQCatalogodeAreas.Open ;
end;

procedure Tfrm_CatalogoAreas.frmBarra1btnAddClick(Sender: TObject);
begin
  grid_Comunidades.Enabled := False;
  frmBarra1.btnAddClick(Sender);
  zQCatalogodeAreas.Append;
  zQCatalogodeAreas.FieldValues['codigodepartamento'] := '';
  if QryOrganizacion.RecordCount > 0 then
  begin
     QryOrganizacion.First;
     tsOrganizacion.KeyValue := QryOrganizacion.FieldByName('idorganizacion').AsInteger;
  end;
  tsOrganizacion.SetFocus;
  sOpcion := 'New';
end;

procedure Tfrm_CatalogoAreas.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zQCatalogodeAreas.Cancel;
  grid_Comunidades.Enabled := True;
  sOpcion := '';
end;

procedure Tfrm_CatalogoAreas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zQCatalogodeAreas.RecordCount  > 0 then
  begin
    if MSG_YN('Desea eliminar el Registro Activo?') then
    begin
      try
          zQCatalogodeAreas.Edit ;
          zQCatalogodeAreas.FieldValues['activo'] := 'No';
          zQCatalogodeAreas.Post;

          zQCatalogodeAreas.Refresh;
      except
        MSG_ER('Ocurrio un error al eliminar el registro.');
      end
    end
  end else MSG_ER('No hay registros para eliminar?');
end;

procedure Tfrm_CatalogoAreas.frmBarra1btnEditClick(Sender: TObject);
begin
  If zQCatalogodeAreas.RecordCount > 0 Then
  begin
    frmBarra1.btnEditClick(Sender);
    zQCatalogodeAreas.Edit ;
    sOpcion := 'Edit';
  end
  else MSG_ER('No hay registros que editar');
end;

procedure Tfrm_CatalogoAreas.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_CatalogoAreas.frmBarra1btnPostClick(Sender: TObject);
var
   maximo : integer;
begin
    if codigodepartamento.Text = '' then
    begin
      ShowMessage('El campo codigo departamento esta vacio');
      codigodepartamento.SetFocus;
    end else if titulodepartamento.Text = '' then
    begin
      ShowMessage('El campo titulo departamento esta vacio');
      titulodepartamento.SetFocus;
    end else if etiqueta.Text = '' then
    begin
      ShowMessage('El campo etiqueta esta vacio');
      etiqueta.SetFocus;
    end
    else
    begin
        try
          frmBarra1.btnPostClick(Sender);
          if sOpcion = 'New' then
          begin
             {Buscamos el maximo elemento..}
              connection.QryBusca.Active := False;
              connection.QryBusca.SQL.Clear;
              connection.QryBusca.SQL.Add('SELECT MAX(iddepartamento) AS id FROM nuc_departamento');
              connection.QryBusca.Open;
              if connection.QryBusca.FieldByName('id').AsInteger = 0 then
                 Maximo := 1
              else
                 Maximo := connection.QryBusca.FieldByName('id').AsInteger + 1;

              zQCatalogodeAreas.FieldByName('iddepartamento').AsInteger := Maximo;
              zQCatalogodeAreas.FieldByName('nivel').AsInteger   := 1;
              zQCatalogodeAreas.FieldByName('herencia').AsString := '*';
              zQCatalogodeAreas.FieldByName('activo').AsString   := 'Si';
           end;

           zQCatalogodeAreas.FieldByName('idorganizacion').AsInteger := tsOrganizacion.KeyValue;
           zQCatalogodeAreas.FieldByName('idarbol').AsInteger := QryOrganizacion.FieldByName('idorganizacion').AsInteger;
           zQCatalogodeAreas.FieldByName('idpadre').AsInteger := QryOrganizacion.FieldByName('idorganizacion').AsInteger;

           zQCatalogodeAreas.Post;
           frmBarra1.btnPostClick(Sender);
           grid_Comunidades.Enabled := True;
           sOpcion := '';

           closeFormulario;
        except
          on e:Exception do
          begin
            showmessage(e.Message + ', ' + e.classname);
            zQCatalogodeAreas.Cancel;
            frmBarra1.btnCancelClick(Sender);
            sOpcion := '';
          end;
        end;
    end;
end;

procedure Tfrm_CatalogoAreas.frmBarra1btnRefreshClick(Sender: TObject);
begin
  actualizar;
end;

procedure Tfrm_CatalogoAreas.grid_ComunidadesDblClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_CatalogoAreas.titulodepartamentoEnter(Sender: TObject);
begin
  titulodepartamento.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoAreas.titulodepartamentoExit(Sender: TObject);
begin
  titulodepartamento.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoAreas.titulodepartamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then etiqueta.SetFocus;
end;

procedure Tfrm_CatalogoAreas.tsMemoEnter(Sender: TObject);
begin
    tsmemo.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoAreas.tsMemoExit(Sender: TObject);
begin
    tsMemo.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoAreas.tsorganizacionEnter(Sender: TObject);
begin
tsOrganizacion.color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoAreas.tsorganizacionExit(Sender: TObject);
begin
tsOrganizacion.color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoAreas.tsorganizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       codigodepartamento.SetFocus;
end;

procedure Tfrm_CatalogoAreas.codigodepartamentoEnter(Sender: TObject);
begin
  codigodepartamento.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoAreas.codigodepartamentoExit(Sender: TObject);
begin
  codigodepartamento.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoAreas.codigodepartamentoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then titulodepartamento.SetFocus;
end;

procedure Tfrm_CatalogoAreas.etiquetaEnter(Sender: TObject);
begin
  etiqueta.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoAreas.etiquetaExit(Sender: TObject);
begin
  etiqueta.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoAreas.etiquetaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       tsmemo.SetFocus;
end;

procedure Tfrm_CatalogoAreas.closeFormulario;
begin
    try
      if Assigned(frm_Empleados)then
      begin
          frm_Empleados.zQDepartamentos.Refresh;
          //frm_Empleados.tsIdDepartamento.KeyField := zQCatalogodeAreas.FieldByName('iddepartamento').asString;          Close;      end;      if Assigned( frmRequisiciondePersonal ) then      begin        frmRequisiciondePersonal.idarea := zQCatalogodeAreas.FieldByName('iddepartamento').asstring;
        close;
      end;    Except    end;
end;

end.
