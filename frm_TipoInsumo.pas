unit frm_TipoInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, StdCtrls, Mask, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, frm_barra, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, UnitExcepciones, UnitValidaTexto, frm_connection, global,masUtilerias,
  Menus, FormAutoScaler;

type
  TfrmTipoInsumo = class(TForm)
    frmBarra1: TfrmBarra;
    grid_TipoInsumo: TcxGrid;
    grid_TipoInsumoView: TcxGridDBTableView;
    grid_TipoInsumoViewColumn1: TcxGridDBColumn;
    grid_TipoInsumoViewColumn2: TcxGridDBColumn;
    grid_TipoInsumoLevel1: TcxGridLevel;
    tsTipo: TDBEdit;
    Label2: TLabel;
    zqTipoInsumo: TZQuery;
    dsTipoInsumo: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure tsTipoEnter(Sender: TObject);
    procedure tsTipoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoInsumo: TfrmTipoInsumo;
  sOldId : string;
implementation

uses
  frm_Consumibles;

{$R *.dfm}

procedure TfrmTipoInsumo.btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zqTipoInsumo.Append;
  zqTipoInsumo.FieldValues['sDescripcion']   := '' ;
  frmbarra1.btnPrinter.Enabled := False;
  grid_TipoInsumo.Enabled := False;
  tsTipo.Enabled := True;
  tsTipo.SetFocus;
end;

procedure TfrmTipoInsumo.btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zqTipoInsumo.Cancel ;
  frmbarra1.btnPrinter.Enabled := False;
  grid_TipoInsumo.Enabled := True;
end;

procedure TfrmTipoInsumo.btnDeleteClick(Sender: TObject);
begin
  If   zqTipoInsumo.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sTipoActividad from insumos Where sTipoActividad =:tipo');
          Connection.QryBusca.Params.ParamByName('tipo').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('tipo').Value    := zqTipoInsumo.FieldValues['sDescripcion'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('No se puede Borrar el Registro por que esta asignado a un Material en la tabla Insumos', mtInformation, [mbOk], 0)
          Else
            zqTipoInsumo.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Unidades de Medida', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmTipoInsumo.btnEditClick(Sender: TObject);
begin
  If zqTipoInsumo.RecordCount > 0 Then
    Begin
        try
         frmBarra1.btnEditClick(Sender);
         sOpcion := 'Edit';
         sOldId  := zqTipoInsumo.FieldValues['sDescripcion'];
         zqTipoInsumo.Edit ;
         grid_TipoInsumo.Enabled := False;
         tsTipo.Enabled := True ;
         tsTipo.SetFocus;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Unidades de Medida', 'Al agregar registro', 0);
           end;
        end;
    End;
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmTipoInsumo.btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure TfrmTipoInsumo.btnPostClick(Sender: TObject);
var
   Id : integer;
begin
  if Length(tsTipo.Text)=0 then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    Try
       //BUSCAMOS EL MAXIMO
      if zqTipoInsumo.State=dsInsert then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select max(iId) as Folio FROM alm_tipoinsumo');
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
           zqTipoInsumo.FieldByName('iId').AsInteger := Connection.zCommand.FieldByName('Folio').AsInteger + 1
        else
           zqTipoInsumo.FieldByName('iId').AsInteger := 1;
      end;
      Id := zqTipoInsumo.FieldByName('iId').AsInteger;
      zqTipoInsumo.Post;

      try
          frmConsumibles.Refresh;
          frmConsumibles.cargar_tipo;
      Except
      end;

      if sOpcion = 'Edit' then
      begin
          if sOldId <> zqTipoInsumo.FieldByName('sDescripcion').AsString then
          begin
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('update insumos set sTipoActividad =:Tipo where sTipoActividad =:TipoOld ');
              connection.zCommand.ParamByName('Tipo').AsString    := zqTipoInsumo.FieldByName('sDescripcion').AsString;
              connection.zCommand.ParamByName('TipoOld').AsString := sOldId;
              connection.zCommand.ExecSQL;
          end;
      end;

      frmBarra1.btnPostClick(Sender);
      grid_TipoInsumo.Enabled := True;
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Unidades de Medida', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
       end;
    end;      
end;

procedure TfrmTipoInsumo.btnRefreshClick(Sender: TObject);
begin
  zqTipoInsumo.Refresh;
end;

procedure TfrmTipoInsumo.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmTipoInsumo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if frmConsumibles.Active then
    begin
      frmConsumibles.cargar_tipo;
      frmConsumibles.sTipoActividad.ItemIndex:=frmConsumibles.sTipoActividad.Items.IndexOf(zqTipoInsumo.FieldByName('sDescripcion').AsString);
    end;
  Except
  end;
  action := cafree ;
end;

procedure TfrmTipoInsumo.FormShow(Sender: TObject);
begin
  frmbarra1.btnCancel.Click ;
  zqTipoInsumo.Active:=False;
  zqTipoInsumo.Open ;

  grid_TipoInsumo.SetFocus;
  frmbarra1.btnPrinter.Enabled := False;
  tsTipo.Enabled := False ;
end;

procedure TfrmTipoInsumo.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmTipoInsumo.tsTipoEnter(Sender: TObject);
begin
  tsTipo.Color := global_color_entradaERP;
end;

procedure TfrmTipoInsumo.tsTipoExit(Sender: TObject);
begin
  tsTipo.Color := global_color_salidaERP;
end;

end.
