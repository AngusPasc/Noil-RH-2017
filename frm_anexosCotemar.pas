unit frm_anexosCotemar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin, StrUtils,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  frxClass, frxDBSet, Buttons, utilerias,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxToolEdit, rxCurrEdit, sSkinProvider, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, RxMemDS, RXDBCtrl,
  sPageControl, dblookup, UnitExcepciones, frm_seleccionarpaquetecotemar,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxDropDownEdit;

type
  TfrmAnexosCotemar = class(TForm)
    Progress: TProgressBar;
    btnOk: TBitBtn;
    btnExit: TBitBtn;
    pgCatalogos: TsPageControl;
    pgPersonal: TsTabSheet;
    pgEquipo: TsTabSheet;
    pgMaterial: TsTabSheet;
    pgAnexo: TsTabSheet;
    rxPersonal: TRxMemoryData;
    ds_Personal_2: TDataSource;
    btnAsigna: TBitBtn;
    btnBorra: TBitBtn;
    bntTodo: TBitBtn;
    rxPersonal_2: TRxMemoryData;
    btnAsigna2: TBitBtn;
    btnBorra2: TBitBtn;
    btnTodo2: TBitBtn;
    ds_Personal: TDataSource;
    Q_Insertar: TZQuery;
    ds_Insertar: TDataSource;
    rxEquipo: TRxMemoryData;
    ds_Equipo: TDataSource;
    rxEquipo_2: TRxMemoryData;
    ds_Equipo_2: TDataSource;
    btnAsigna3: TBitBtn;
    btnBorra3: TBitBtn;
    btnTodo3: TBitBtn;
    btnAsigna4: TBitBtn;
    btnBorra4: TBitBtn;
    btnTodo4: TBitBtn;
    rxMaterial: TRxMemoryData;
    ds_Material: TDataSource;
    rxMaterial_2: TRxMemoryData;
    ds_Material_2: TDataSource;
    rxAnexo: TRxMemoryData;
    ds_Anexo: TDataSource;
    rxAnexo_2: TRxMemoryData;
    ds_Anexo_2: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    pgHerramienta: TsTabSheet;
    pgBasicos: TsTabSheet;
    btnAsigna5: TBitBtn;
    btnBorra5: TBitBtn;
    btnTodo5: TBitBtn;
    rxHerramienta: TRxMemoryData;
    ds_Herramienta: TDataSource;
    rxHerramienta2: TRxMemoryData;
    ds_Herramienta2: TDataSource;
    btnAsigna6: TBitBtn;
    btnBorrar6: TBitBtn;
    btnTodos6: TBitBtn;
    rxBasicos: TRxMemoryData;
    ds_basicos: TDataSource;
    rxBasicos2: TRxMemoryData;
    ds_basicos2: TDataSource;
    Zanexo: TZReadOnlyQuery;
    pm1: TPopupMenu;
    mniProceso1: TMenuItem;
    mniSalir1: TMenuItem;
    grid_personal: TcxGrid;
    grDetalle: TcxGridDBTableView;
    Grid_Grid1DBTableView1Column1: TcxGridDBColumn;
    Grid_Grid1DBTableView1Column2: TcxGridDBColumn;
    Grid_Grid1DBTableView1Column3: TcxGridDBColumn;
    Grid_Grid1DBTableView1Column4: TcxGridDBColumn;
    Grid_Grid1DBTableView1Column5: TcxGridDBColumn;
    Grid_Grid1DBTableView1Column6: TcxGridDBColumn;
    dbgDetalle2: TcxGridLevel;
    grid_personal_2: TcxGrid;
    g1: TcxGridDBTableView;
    Grid_2: TcxGridDBColumn;
    Grid_3: TcxGridDBColumn;
    Grid_4: TcxGridDBColumn;
    Grid_5: TcxGridDBColumn;
    Grid_6: TcxGridDBColumn;
    Grid_7: TcxGridDBColumn;
    dbg1: TcxGridLevel;
    Grid_Equipo: TcxGrid;
    gE1: TcxGridDBTableView;
    Grid_8: TcxGridDBColumn;
    Grid_9: TcxGridDBColumn;
    Grid_10: TcxGridDBColumn;
    Grid_11: TcxGridDBColumn;
    Grid_12: TcxGridDBColumn;
    Grid_13: TcxGridDBColumn;
    dbg2: TcxGridLevel;
    Grid_Equipo_2: TcxGrid;
    gE2: TcxGridDBTableView;
    Grid_1: TcxGridDBColumn;
    Grid_14: TcxGridDBColumn;
    Grid_15: TcxGridDBColumn;
    Grid_16: TcxGridDBColumn;
    Grid_17: TcxGridDBColumn;
    Grid_18: TcxGridDBColumn;
    dbg3: TcxGridLevel;
    Grid_Material: TcxGrid;
    gm1: TcxGridDBTableView;
    Grid_19: TcxGridDBColumn;
    Grid_20: TcxGridDBColumn;
    Grid_21: TcxGridDBColumn;
    dbg4: TcxGridLevel;
    Grid_Material_2: TcxGrid;
    gm2: TcxGridDBTableView;
    Grid_22: TcxGridDBColumn;
    Grid_23: TcxGridDBColumn;
    Grid_24: TcxGridDBColumn;
    dbg5: TcxGridLevel;
    grid_25: TcxGrid;
    dbgM1: TcxGridDBTableView;
    Grid_26: TcxGridDBColumn;
    Grid_27: TcxGridDBColumn;
    Grid_28: TcxGridDBColumn;
    dbg7: TcxGridLevel;
    Grid_dbg6Column1: TcxGridDBColumn;
    Grid_dbg6Column2: TcxGridDBColumn;
    Grid_dbg6Column3: TcxGridDBColumn;
    Grid_dbg6Column4: TcxGridDBColumn;
    Grid_dbg6Column5: TcxGridDBColumn;
    Grid_dbg6Column6: TcxGridDBColumn;
    Grid_dbg6Column7: TcxGridDBColumn;
    grid_29: TcxGrid;
    dbgM2: TcxGridDBTableView;
    Grid_30: TcxGridDBColumn;
    Grid_31: TcxGridDBColumn;
    Grid_32: TcxGridDBColumn;
    Grid_33: TcxGridDBColumn;
    Grid_34: TcxGridDBColumn;
    Grid_35: TcxGridDBColumn;
    Grid_36: TcxGridDBColumn;
    Grid_37: TcxGridDBColumn;
    Grid_38: TcxGridDBColumn;
    Grid_39: TcxGridDBColumn;
    dbg8: TcxGridLevel;
    grid_Herramienta: TcxGrid;
    dbgHerramienta: TcxGridDBTableView;
    Grid_41: TcxGridDBColumn;
    Grid_44: TcxGridDBColumn;
    Grid_46: TcxGridDBColumn;
    Grid_49: TcxGridDBColumn;
    Grid_50: TcxGridDBColumn;
    dbg9: TcxGridLevel;
    grid_Herramienta_2: TcxGrid;
    dbgHerramienta2: TcxGridDBTableView;
    Grid_42: TcxGridDBColumn;
    Grid_43: TcxGridDBColumn;
    Grid_45: TcxGridDBColumn;
    Grid_47: TcxGridDBColumn;
    Grid_48: TcxGridDBColumn;
    dbg10: TcxGridLevel;
    grid_Basico: TcxGrid;
    dbgBasico: TcxGridDBTableView;
    Grid_51: TcxGridDBColumn;
    Grid_52: TcxGridDBColumn;
    Grid_53: TcxGridDBColumn;
    Grid_54: TcxGridDBColumn;
    Grid_55: TcxGridDBColumn;
    dbg11: TcxGridLevel;
    grid_Basico_2: TcxGrid;
    dbgBasico2: TcxGridDBTableView;
    Grid_56: TcxGridDBColumn;
    Grid_57: TcxGridDBColumn;
    Grid_58: TcxGridDBColumn;
    Grid_59: TcxGridDBColumn;
    Grid_60: TcxGridDBColumn;
    dbg12: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure equipoypersonal(Anexo: string);
    procedure FormShow(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure ds_Personal_2DataChange(Sender: TObject; Field: TField);
    procedure btnBorraClick(Sender: TObject);
    procedure bntTodoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnAsigna2Click(Sender: TObject);
    procedure btnBorra2Click(Sender: TObject);
    procedure btnTodo2Click(Sender: TObject);
    procedure pgCatalogosChange(Sender: TObject);
    procedure btnAsigna3Click(Sender: TObject);
    procedure btnBorra3Click(Sender: TObject);
    procedure btnTodo3Click(Sender: TObject);
    procedure btnAsigna4Click(Sender: TObject);
    procedure btnBorra4Click(Sender: TObject);
    procedure btnTodo4Click(Sender: TObject);

    procedure cargarMaterial();

    procedure cargaHerramienta();
    procedure cargarBasicos();

    procedure Grid_AnexoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

    procedure btnAsigna5Click(Sender: TObject);
    procedure btnBorra5Click(Sender: TObject);
    procedure btnTodo5Click(Sender: TObject);

    procedure btnAsigna6Click(Sender: TObject);
    procedure btnBorrar6Click(Sender: TObject);
    procedure btnTodos6Click(Sender: TObject);

    procedure mniSalir1Click(Sender: TObject);
    procedure mniProceso1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnexosCotemar: TfrmAnexosCotemar;
  sGrupo: string;
  sOpcion: string;
  qryAnexo: TZReadOnlyQuery;
  qryAgregar: TzQuery;
  Cta: integer;
  Q_Recurso: TZReadOnlyQuery;
  Q_Fases: TZReadOnlyQuery;
  fase: string;
implementation

{$R *.dfm}



procedure TfrmAnexosCotemar.cargarMaterial();
begin
        {AHOR EL MATERIAL...}
  rxMaterial.FieldDefs.Clear;
  rxMaterial_2.FieldDefs.Clear;

  Q_Recurso.Active := False;
  Q_Recurso.SQL.Clear;
  Q_Recurso.SQL.Add('select sIdInsumo, SubStr(mDescripcion, 1,255) as sDescripcion, sTipoActividad from insumos ' +
    'where sContrato =:Contrato order by sIdInsumo ');
  Q_Recurso.ParamByName('Contrato').AsString := global_contrato_barco;
  Q_Recurso.Open;

        {Material Anexo}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count do
      rxMaterial.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

        {Material Orden}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count do
      rxMaterial_2.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

  rxMaterial_2.Open;
  rxMaterial_2.EmptyTable;

  rxMaterial.Open;
  rxMaterial.EmptyTable;
  while not Q_Recurso.Eof do
  begin
    rxMaterial.Append;
    for Cta := 1 to rxMaterial.FieldDefs.Count do
      rxMaterial.Fields.FieldByNumber(Cta).AsVariant := Q_Recurso.Fields.FieldByNumber(Cta).AsVariant;
    rxMaterial.Post;
    Q_Recurso.next;
  end;
end;



procedure TfrmAnexosCotemar.btnBorra2Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxEquipo_2.GetBookmark;
  try

    begin
      for iGrid := 0 to gE2.Controller.SelectedRowCount - 1 do
      begin
        rxEquipo_2.GotoBookmark(SavePlace);
        rxEquipo_2.Edit;
        rxEquipo_2.Delete;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnBorra3Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxMaterial_2.GetBookmark;
  try

    begin
      for iGrid := 0 to gm2.Controller.SelectedRowCount - 1 do
      begin
        rxMaterial_2.GotoBookmark(SavePlace);
        rxMaterial_2.Edit;
        rxMaterial_2.Delete;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnBorra4Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxAnexo_2.GetBookmark;
  try
    begin
      for iGrid := 0 to dbgM2.Controller.SelectedRowCount - 1 do
      begin
        rxAnexo_2.GotoBookmark(SavePlace);
        rxAnexo_2.Edit;
        rxAnexo_2.Delete;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnBorra5Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxHerramienta2.GetBookmark;
  try

    begin
      for iGrid := 0 to dbgHerramienta.Controller.SelectedRowCount - 1 do
      begin
        rxHerramienta2.GotoBookmark(SavePlace);
        rxHerramienta2.Edit;
        rxHerramienta2.Delete;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnBorraClick(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxPersonal_2.GetBookmark;
  try

    begin
      for iGrid := 0 to g1.Controller.SelectedRowCount - 1 do
      begin
        rxPersonal_2.GotoBookmark(SavePlace);

        rxPersonal_2.Edit;
        rxPersonal_2.Delete;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnBorrar6Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxBasicos2.GetBookmark;
  try

    begin
      for iGrid := 0 to dbgBasico2.Controller.SelectedRowCount - 1 do
      begin
        rxBasicos2.GotoBookmark(SavePlace);
        rxBasicos2.Edit;
        rxBasicos2.Delete;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;

end;

procedure TfrmAnexosCotemar.bntTodoClick(Sender: TObject);
begin
  rxPersonal_2.EmptyTable;
  rxPersonal.First;
  while not rxPersonal.Eof do
  begin
    rxPersonal_2.Append;
    for Cta := 1 to rxPersonal.FieldDefs.Count do
      rxPersonal_2.Fields.FieldByNumber(Cta).AsVariant := rxPersonal.Fields.FieldByNumber(Cta).AsVariant;
    rxPersonal_2.Post;
    rxPersonal.Next;
  end;
end;

procedure TfrmAnexosCotemar.btnAsigna2Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxEquipo.GetBookmark ;
  try

    begin
      for iGrid := 0 to gE1.Controller.SelectedRowCount - 1 do
      begin
        rxEquipo.GotoBookmark(SavePlace);
        rxEquipo_2.Append;
        for Cta := 1 to rxEquipo.FieldDefs.Count do
          rxEquipo_2.Fields.FieldByNumber(Cta).AsVariant := rxEquipo.Fields.FieldByNumber(Cta).AsVariant;
        rxEquipo_2.Post;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnAsigna3Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxMaterial.GetBookmark;
  try

    begin
      for iGrid := 0 to gM1.Controller.SelectedRowCount - 1 do
      begin
        rxMaterial.GotoBookmark(SavePlace);
        rxMaterial_2.Append;
        for Cta := 1 to rxMaterial.FieldDefs.Count do
          rxMaterial_2.Fields.FieldByNumber(Cta).AsVariant := rxMaterial.Fields.FieldByNumber(Cta).AsVariant;
        rxMaterial_2.Post;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnAsigna4Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxAnexo.GetBookmark;
  try

    begin
      for iGrid := 0 to dbgM1.Controller.SelectedRowCount - 1 do
      begin
        rxAnexo.GotoBookmark(SavePlace);
        rxAnexo_2.Append;
        for Cta := 1 to rxAnexo.FieldDefs.Count do
          rxAnexo_2.Fields.FieldByNumber(Cta).AsVariant := rxAnexo.Fields.FieldByNumber(Cta).AsVariant;
        rxAnexo_2.Post;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnAsigna5Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxHerramienta.GetBookmark;
  try

    begin
      for iGrid := 0 to dbgHerramienta.Controller.SelectedRowCount - 1 do
      begin
        rxHerramienta.GotoBookmark(SavePlace);
        rxHerramienta2.Append;
        for Cta := 1 to rxHerramienta.FieldDefs.Count do
          rxHerramienta2.Fields.FieldByNumber(Cta).AsVariant := rxHerramienta.Fields.FieldByNumber(Cta).AsVariant;
        rxHerramienta2.Post;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;

end;

procedure TfrmAnexosCotemar.btnAsigna6Click(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxBasicos.GetBookmark;
  try

    begin
      for iGrid := 0 to dbgBasico.Controller.SelectedRowCount - 1 do
      begin
        rxBasicos.GotoBookmark(SavePlace);
        rxBasicos2.Append;
        for Cta := 1 to rxBasicos.FieldDefs.Count do
          rxBasicos2.Fields.FieldByNumber(Cta).AsVariant := rxBasicos.Fields.FieldByNumber(Cta).AsVariant;
        rxBasicos2.Post;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnAsignaClick(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: integer;
begin
  SavePlace := rxPersonal.GetBookmark ;
  try

    begin
      for iGrid := 0 to grDetalle.Controller.SelectedRowCount - 1 do

      begin
        rxPersonal.GotoBookMark(SavePlace) ;
        rxPersonal_2.Append;
        for Cta := 1 to rxPersonal.FieldDefs.Count do
          rxPersonal_2.Fields.FieldByNumber(Cta).AsVariant := rxPersonal.Fields.FieldByNumber(Cta).AsVariant;
        rxPersonal_2.Post;
      end;
    end;
  except
    messageDLG('Haga clic sobre un Registro!', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAnexosCotemar.btnExitClick(Sender: TObject);
begin
  close;
end;



procedure TfrmAnexosCotemar.btnOkClick(Sender: TObject);
var
  Q_Valida: TZReaDOnlyQuery;
  campos,
    valores: string;
  total, copiados, duplicados: integer;
  sWbs, sWbsAnterior, sNumeroActividad: string;
  lContinuar: boolean;
  sWbsBandera: string;
  iNivel : Integer;
  ini:string;
begin
  try

    Q_Valida := TZReadOnlyQuery.Create(self);
    Q_Valida.Connection := connection.zConnection;

    {Primero el personal seleccionadoo...}
    if pgCatalogos.ActivePageIndex = 0 then
    begin
        total := 0;
        copiados := 0;
        duplicados := 0;
        if rxPersonal_2.RecordCount > 0 then
        begin
          Q_Valida.Active := False;
          Q_Valida.SQL.Clear;
          Q_Valida.SQL.Add('Select * from personal where sContrato =:Contrato ');
          Q_Valida.ParamByName('Contrato').AsString := global_contrato;
          Q_Valida.Open;

             {Validamos si existen registross}
          if Q_Valida.RecordCount > 0 then
          begin
            if MessageDlg('Ya existe Personal en el Catalgo, Desea Continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              if MessageDlg('Desea Eliminar el Catalogo de Personal Existente ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                          {Reemplazamos registros existentes}
                Q_Valida.Active := False;
                Q_Valida.SQL.Clear;
                Q_Valida.SQL.Add('Delete from personal where sContrato =:Contrato ');
                Q_Valida.ParamByName('Contrato').AsString := global_contrato;
                Q_Valida.ExecSQL;
              end;
            end
            else
            begin
              Q_Valida.Destroy;
              exit;
            end;
          end;
             {insetamos datos nuevos..}
          Q_Insertar.FieldDefs.Clear;
          for Cta := 1 to rxPersonal_2.FieldDefs.Count - 1 do
            Q_Insertar.FieldDefs.Add(rxPersonal_2.FieldDefs.Items[Cta].Name, rxPersonal_2.FieldDefs.Items[Cta].DataType, rxPersonal_2.FieldDefs.Items[Cta].Size, rxPersonal_2.FieldDefs.Items[Cta].Required);

             {Copiamos las Especialidades de personal }
          Q_Insertar.Active := False;
          Q_Insertar.SQL.Clear;
          Q_Insertar.SQL.Add('select * from personal where sContrato =:Contrato');
          Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
          Q_Insertar.Open;

          rxPersonal_2.First;
          total := rxPersonal_2.RecordCount;
          while not rxPersonal_2.Eof do
          begin
            try
              Q_Insertar.Append;
              for Cta := 1 to rxPersonal_2.FieldDefs.Count - 1 do
              begin
                if Cta = 1 then
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := global_contrato
                else
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := rxPersonal_2.Fields.FieldByNumber(Cta).AsVariant;
              end;
              Q_Insertar.Post;
              Inc(copiados);
            except
              Inc(duplicados);
            end;
            rxPersonal_2.Next;
          end;
          MessageDlg('Proceso Terminado con Exito!' + #13
            + '  Total = ' + IntToStr(total) + '  Insertados = ' + IntToStr(copiados) +
            ' Duplicados = ' + IntToStr(duplicados), mtConfirmation, [mbOk], 0);
        end;
    end;


    {Ahora el equipo seleccionadoo...}
    if pgCatalogos.ActivePageIndex = 1 then
    begin
        total := 0;
        copiados := 0;
        duplicados := 0;
        if rxEquipo_2.RecordCount > 0 then
        begin
          Q_Valida.Active := False;
          Q_Valida.SQL.Clear;
          Q_Valida.SQL.Add('Select * from equipos where sContrato =:Contrato ');
          Q_Valida.ParamByName('Contrato').AsString := global_contrato;
          Q_Valida.Open;

             {Validamos si existen registross}
          if Q_Valida.RecordCount > 0 then
          begin
            if MessageDlg('Ya existe Equipo en el Catalgo, Desea Continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              if MessageDlg('Desea Eliminar el Catalogo de Equipo Existente ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                          {Reemplazamos registros existentes}
                Q_Valida.Active := False;
                Q_Valida.SQL.Clear;
                Q_Valida.SQL.Add('Delete from equipos where sContrato =:Contrato ');
                Q_Valida.ParamByName('Contrato').AsString := global_contrato;
                Q_Valida.ExecSQL;
              end;
            end
            else
            begin
              Q_Valida.Destroy;
              exit;
            end;
          end;
             {insetamos datos nuevos..}
          Q_Insertar.FieldDefs.Clear;
          for Cta := 1 to rxEquipo_2.FieldDefs.Count - 1 do
            Q_Insertar.FieldDefs.Add(rxEquipo_2.FieldDefs.Items[Cta].Name, rxEquipo_2.FieldDefs.Items[Cta].DataType, rxEquipo_2.FieldDefs.Items[Cta].Size, rxEquipo_2.FieldDefs.Items[Cta].Required);

          Q_Insertar.Active := False;
          Q_Insertar.SQL.Clear;
          Q_Insertar.SQL.Add('select * from equipos where sContrato =:Contrato');
          Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
          Q_Insertar.Open;

          rxEquipo_2.First;
          total := rxEquipo_2.RecordCount;
          while not rxEquipo_2.Eof do
          begin
            try
              Q_Insertar.Append;
              for Cta := 1 to rxEquipo_2.FieldDefs.Count - 1 do
              begin
                if Cta = 1 then
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := global_contrato
                else
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := rxEquipo_2.Fields.FieldByNumber(Cta).AsVariant;
              end;
              Q_Insertar.Post;
              Inc(copiados);
            except
              Inc(duplicados);
            end;
            rxEquipo_2.Next;
          end;
          MessageDlg('Proceso Terminado con Exito!' + #13
            + '  Total = ' + IntToStr(total) + '  Insertados = ' + IntToStr(copiados) +
            ' Duplicados = ' + IntToStr(duplicados), mtConfirmation, [mbOk], 0);
        end;
    end;

    {Ahora la herramienta seleccionada...}
    if pgCatalogos.ActivePageIndex = 4 then
    begin
        total := 0;
        copiados := 0;
        duplicados := 0;
        if rxHerramienta2.RecordCount > 0 then
        begin
          Q_Valida.Active := False;
          Q_Valida.SQL.Clear;
          Q_Valida.SQL.Add('Select * from herramientas where sContrato =:Contrato ');
          Q_Valida.ParamByName('Contrato').AsString := global_contrato;
          Q_Valida.Open;

             {Validamos si existen registross}
          if Q_Valida.RecordCount > 0 then
          begin
            if MessageDlg('Ya existe Herramienta en el Catalgo, Desea Continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              if MessageDlg('Desea Eliminar el Catalogo de Herramienta Existente ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                          {Reemplazamos registros existentes}
                Q_Valida.Active := False;
                Q_Valida.SQL.Clear;
                Q_Valida.SQL.Add('Delete from herramientas where sContrato =:Contrato ');
                Q_Valida.ParamByName('Contrato').AsString := global_contrato;
                Q_Valida.ExecSQL;
              end;
            end
            else
            begin
              Q_Valida.Destroy;
              exit;
            end;
          end;
             {insetamos datos nuevos..}
          Q_Insertar.FieldDefs.Clear;
          for Cta := 1 to rxHerramienta2.FieldDefs.Count - 1 do
            Q_Insertar.FieldDefs.Add(rxHerramienta2.FieldDefs.Items[Cta].Name, rxHerramienta2.FieldDefs.Items[Cta].DataType, rxHerramienta2.FieldDefs.Items[Cta].Size, rxHerramienta2.FieldDefs.Items[Cta].Required);

          Q_Insertar.Active := False;
          Q_Insertar.SQL.Clear;
          Q_Insertar.SQL.Add('select * from herramientas where sContrato =:Contrato');
          Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
          Q_Insertar.Open;

          rxHerramienta2.First;
          total := rxHerramienta2.RecordCount;
          while not rxHerramienta2.Eof do
          begin
            try
              Q_Insertar.Append;
              for Cta := 1 to rxHerramienta2.FieldDefs.Count - 1 do
              begin
                if Cta = 1 then
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := global_contrato
                else
                begin
                    Q_Insertar.Fields.FieldByName('fFecha').AsDateTime := date;
                    Q_Insertar.Fields.FieldByNumber(Cta).AsVariant     := rxHerramienta2.Fields.FieldByNumber(Cta).AsVariant;
                end;
              end;
              Q_Insertar.Post;
              Inc(copiados);
            except
              Inc(duplicados);
            end;
            rxHerramienta2.Next;
          end;
          MessageDlg('Proceso Terminado con Exito!' + #13
            + '  Total = ' + IntToStr(total) + '  Insertados = ' + IntToStr(copiados) +
            ' Duplicados = ' + IntToStr(duplicados), mtConfirmation, [mbOk], 0);
        end;
    end;


    {Ahora el basico seleccionada...}
    if pgCatalogos.ActivePageIndex = 5 then
    begin
        total := 0;
        copiados := 0;
        duplicados := 0;
        if rxBasicos2.RecordCount > 0 then
        begin
          Q_Valida.Active := False;
          Q_Valida.SQL.Clear;
          Q_Valida.SQL.Add('Select * from basicos where sContrato =:Contrato ');
          Q_Valida.ParamByName('Contrato').AsString := global_contrato;
          Q_Valida.Open;

             {Validamos si existen registross}
          if Q_Valida.RecordCount > 0 then
          begin
            if MessageDlg('Ya existe Basico en el Catalgo, Desea Continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              if MessageDlg('Desea Eliminar el Catalogo de Basicos Existente ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                          {Reemplazamos registros existentes}
                Q_Valida.Active := False;
                Q_Valida.SQL.Clear;
                Q_Valida.SQL.Add('Delete from basicos where sContrato =:Contrato ');
                Q_Valida.ParamByName('Contrato').AsString := global_contrato;
                Q_Valida.ExecSQL;
              end;
            end
            else
            begin
              Q_Valida.Destroy;
              exit;
            end;
          end;
             {insetamos datos nuevos..}
          Q_Insertar.FieldDefs.Clear;
          for Cta := 1 to rxBasicos2.FieldDefs.Count - 1 do
            Q_Insertar.FieldDefs.Add(rxBasicos2.FieldDefs.Items[Cta].Name, rxBasicos2.FieldDefs.Items[Cta].DataType, rxBasicos2.FieldDefs.Items[Cta].Size, rxBasicos2.FieldDefs.Items[Cta].Required);

          Q_Insertar.Active := False;
          Q_Insertar.SQL.Clear;
          Q_Insertar.SQL.Add('select * from basicos where sContrato =:Contrato');
          Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
          Q_Insertar.Open;

          rxBasicos2.First;
          total := rxBasicos2.RecordCount;
          while not rxBasicos2.Eof do
          begin
            try
              Q_Insertar.Append;
              for Cta := 1 to rxBasicos2.FieldDefs.Count  do
              begin
                if Cta = 1 then
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := global_contrato
                else
                    Q_Insertar.Fields.FieldByNumber(Cta).AsVariant     := rxBasicos2.Fields.FieldByNumber(Cta).AsVariant;
              end;
              Q_Insertar.Post;
              Inc(copiados);
            except
              Inc(duplicados);
            end;
            rxBasicos2.Next;
          end;
          MessageDlg('Proceso Terminado con Exito!' + #13
            + '  Total = ' + IntToStr(total) + '  Insertados = ' + IntToStr(copiados) +
            ' Duplicados = ' + IntToStr(duplicados), mtConfirmation, [mbOk], 0);
        end;
    end;


    {Ahora el material seleccionadoo...}
    if pgCatalogos.ActivePageIndex = 2 then
    begin
        total := 0;
        copiados := 0;
        duplicados := 0;
        if rxMaterial_2.RecordCount > 0 then
        begin
          Q_Valida.Active := False;
          Q_Valida.SQL.Clear;
          Q_Valida.SQL.Add('Select * from insumos where sContrato =:Contrato ');
          Q_Valida.ParamByName('Contrato').AsString := global_contrato;
          Q_Valida.Open;

             {Validamos si existen registross}
          if Q_Valida.RecordCount > 0 then
          begin
            if MessageDlg('Ya existen Materiales en el Catalgo, Desea Continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              if MessageDlg('Desea Eliminar el Catalogo de Materiales Existente ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                          {Reemplazamos registros existentes}
                Q_Valida.Active := False;
                Q_Valida.SQL.Clear;
                Q_Valida.SQL.Add('Delete from insumos where sContrato =:Contrato ');
                Q_Valida.ParamByName('Contrato').AsString := global_contrato;
                Q_Valida.ExecSQL;
              end;
            end
            else
            begin
              Q_Valida.Destroy;
              exit;
            end;
          end;
             {insetamos datos nuevos..}
          Q_Insertar.FieldDefs.Clear;
          for Cta := 1 to rxMaterial_2.FieldDefs.Count - 1 do
            Q_Insertar.FieldDefs.Add(rxMaterial_2.FieldDefs.Items[Cta].Name, rxMaterial_2.FieldDefs.Items[Cta].DataType, rxMaterial_2.FieldDefs.Items[Cta].Size, rxMaterial_2.FieldDefs.Items[Cta].Required);

          Q_Insertar.Active := False;
          Q_Insertar.SQL.Clear;
          Q_Insertar.SQL.Add('select * from insumos where sContrato =:Contrato');
          Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
          Q_Insertar.Open;

          rxMaterial_2.First;
          total := rxMaterial_2.RecordCount;
          while not rxMaterial_2.Eof do
          begin
            try
              Q_Insertar.Append;
              for Cta := 1 to rxMaterial_2.FieldDefs.Count - 1 do
              begin
                if Cta = 1 then
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := global_contrato
                else
                begin
                  if (rxMaterial_2.Fields.FieldByNumber(Cta).AsVariant = Null) and ((Cta <> 3) and (Cta <> 19)) then
                  begin
                     if rxMaterial_2.Fields.FieldByNumber(Cta).DataType = ftDate then
                        Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := date
                     else
                        if rxMaterial_2.Fields.FieldByNumber(Cta).DataType = ftFloat then
                           Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := 0
                        else
                           Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := '';
                  end
                  else
                    Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := rxMaterial_2.Fields.FieldByNumber(Cta).AsVariant;
                end;
              end;
              Q_Insertar.Post;
              Inc(copiados);
            except
              Inc(duplicados);
            end;
            rxMaterial_2.Next;
          end;

          MessageDlg('Proceso Terminado con Exito!' + #13
            + '  Total = ' + IntToStr(total) + '  Insertados = ' + IntToStr(copiados) +
            ' Duplicados = ' + IntToStr(duplicados), mtConfirmation, [mbOk], 0);
        end;
    end;


    {Ahora el Catalogo de Anexo seleccionado...}
    if pgCatalogos.ActivePageIndex = 3 then
    begin
        total := 0;
        copiados := 0;
        duplicados := 0;
        if rxAnexo_2.RecordCount > 0 then
        begin

          Q_Valida.Active := False;
          Q_Valida.SQL.Clear;
          Q_Valida.SQL.Add('Select * from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sAnexo =:Anexo ');
          Q_Valida.ParamByName('Contrato').AsString := global_contrato;
          Q_Valida.ParamByName('Convenio').AsString := global_convenio;
          Q_Valida.ParamByName('Anexo').AsString := fase;
          Q_Valida.Open;

             {Validamos si existen registross}
          if Q_Valida.RecordCount > 0 then
          begin
            if MessageDlg('Ya existe el Catalgo de Anexo, Desea Continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              if MessageDlg('Desea Eliminar el Catalogo de Anexo Existente ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                          {Reemplazamos registros existentes}
                Q_Valida.Active := False;
                Q_Valida.SQL.Clear;
                Q_Valida.SQL.Add('Delete from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sAnexo =:Anexo ');
                Q_Valida.ParamByName('Anexo').AsString := fase;
                Q_Valida.ParamByName('Convenio').AsString := global_convenio;
                Q_Valida.ParamByName('Contrato').AsString := global_contrato;
                Q_Valida.ExecSQL;
              end;
            end
            else
            begin
              Q_Valida.Destroy;
              exit;
            end;
          end;
             {Solicitar a que paquete se va a destinar la actividad, si al Paquete principal o uno personalizado
             , el personalizado va asobre el paquete Principal}
          iNivel := 0;
         // if MessageDlg('Desea Adicionar las partidas al paquete Principal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
         if true then
          begin
            Application.CreateForm(TfrmSeleccionarAnexoCotemar, frmSeleccionarAnexoCotemar);
            frmSeleccionarAnexoCotemar.Visible := false;
            frmSeleccionarAnexoCotemar.ShowModal;
            frmSeleccionarAnexoCotemar.Visible := true;

            if frmSeleccionarAnexoCotemar.chkSeleccionar.Checked then
            begin
              sWbs := frmSeleccionarAnexoCotemar.qryPaquetes.FieldValues['sWbs'];
              sNumeroActividad := frmSeleccionarAnexoCotemar.qryPaquetes.FieldValues['sNumeroActividad'];
              sWbsAnterior := frmSeleccionarAnexoCotemar.qryPaquetes.FieldValues['sWbsAnterior'];
              iNivel := 0;
            end
            else
            begin
              Q_Insertar.Active := False;
              Q_Insertar.SQL.Clear;
              Q_Insertar.SQL.Add('insert into actividadesxanexo set sContrato=:contrato, sIdConvenio=:Convenio,  ' +
                ' sTipoActividad="Paquete" , ' +
                ' sWbsAnterior = "A", ' +
                ' iNivel= 1, ' +
                ' sWbs = :actividad, ' +
                ' mDescripcion=:Descripcion, ' +
                ' lExtraordinario="No" ,  ' +
                ' sAnexo =:Anexo , ' +
                ' sNumeroActividad=:actividad , ' +
                ' sSimbolo ="-" , ' +
                ' sTipoAnexo="PU", ' +
                ' sEspecificacion="",' +
                ' sActividadAnterior="",' +
                ' iItemOrden="00000001",' +
                ' dFechaInicio=:dFechaInicio ,' +
                ' dDuracion=:duracion, ' +
                ' dFechaFinal=:dFechaFinal, ' +
                ' dPonderado=0, ' +
                ' dCostoMN=0,' +
                ' dCostoDll=0,' +
                ' dVentaMN=0,' +
                ' dVentaDLL=0,' +
                ' lCalculo="No",' +
                ' sMedida="", ' +
                ' dCantidadAnexo=0, ' +
                ' dCargado=0,' +
                ' dInstalado=0,' +
                ' dExcedente=0,' +
                ' iColor=0,' +
                ' sIdFase="", ' +
                ' sPred="",' +
                ' sSucesor="" ');

            Q_Insertar.ParamByName('Anexo').AsString := rxAnexo.FieldByName('sIdAnexo').AsString ;

            Q_Insertar.ParamByName('Convenio').AsString := global_convenio;
            Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
            Q_Insertar.ParamByName('Descripcion').AsString := frmSeleccionarAnexoCotemar.sDescripcion.Text;
            Q_Insertar.ParamByName('dFechaInicio').asDate := frmSeleccionarAnexoCotemar.dFechaInicio.Date;
            Q_Insertar.ParamByName('dFechaFinal').asDate := frmSeleccionarAnexoCotemar.dFechaFinal.Date;
            Q_Insertar.ParamByName('actividad').AsString := frmSeleccionarAnexoCotemar.sNumeroActividad.Text;
            Q_Insertar.ParamByName('duracion').AsFloat  := frmSeleccionarAnexoCotemar.Duracion.Value ;
            Q_Insertar.ExecSQL;

            sWbs := frmSeleccionarAnexoCotemar.sNumeroActividad.Text;
            sNumeroActividad := frmSeleccionarAnexoCotemar.sNumeroActividad.Text;
            sWbsAnterior := 'A.';
            iNivel := 1;

            end;
          end
          else
            sWbs := '<||>';

        {insetamos datos nuevos..}

        total := 0;
        copiados := 0;
        duplicados := 0;
        if rxAnexo_2.RecordCount > 0 then
        begin

          {insetamos datos nuevos..}
          Q_Insertar.FieldDefs.Clear;
          for Cta := 1 to rxAnexo_2.FieldDefs.Count - 1 do
            Q_Insertar.FieldDefs.Add(rxAnexo_2.FieldDefs.Items[Cta].Name, rxAnexo_2.FieldDefs.Items[Cta].DataType, rxAnexo_2.FieldDefs.Items[Cta].Size, rxAnexo_2.FieldDefs.Items[Cta].Required);

          Q_Insertar.Active := False;
          Q_Insertar.SQL.Clear;
          Q_Insertar.SQL.Add('select * from actividadesxanexo where sContrato =:Contrato limit 1');
          Q_Insertar.ParamByName('Contrato').AsString := global_contrato;
          Q_Insertar.Open;

          rxAnexo_2.First;
          total := rxAnexo_2.RecordCount;
          while not rxAnexo_2.Eof do
          begin
            //try
              Q_Insertar.Append;
              for Cta := 1 to rxAnexo_2.FieldDefs.Count - 1 do
              begin
                if Cta = 1 then
                  Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := global_contrato
                else
                    Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := rxAnexo_2.Fields.FieldByNumber(Cta).AsVariant;

                if Cta = 2 then
                   Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := global_convenio;

                if Cta = 3 then
                   iNivel := Q_Insertar.Fields.FieldByNumber(Cta).AsVariant;

                if Cta = 5 then
                   if iNivel = 0 then
                      Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := sWbs ;

                if Cta = 6 then
                   if iNivel = 2 then
                   Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := sWbs
                else
                   Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := rxAnexo_2.Fields.FieldByNumber(Cta).AsVariant ;

                if Cta = 9 then
                begin
                    if rxAnexo_2.Fields.FieldByNumber(Cta).AsVariant = Null then
                       Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := 'PU'
                end;

                if (Cta = 10) or (Cta = 11) or (Cta = 12) or (Cta = 23) or (Cta = 30)or (Cta = 31) then
                    if rxAnexo_2.Fields.FieldByNumber(Cta).AsVariant = Null then
                       Q_Insertar.Fields.FieldByNumber(Cta).AsVariant := ''

              end;
              Q_Insertar.Post;
              Inc(copiados);
            //except
              Inc(duplicados);
            //end;
            rxAnexo_2.Next;
          end;

          MessageDlg('Proceso Terminado con Exito!' + #13
            + '  Total = ' + IntToStr(total) + '  Insertados = ' + IntToStr(copiados) +
            ' Duplicados = ' + IntToStr(duplicados), mtConfirmation, [mbOk], 0);
        end;

        end;
    end;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogos Maestros', 'Al ejecutar proceso', 0);
    end;
  end;

  {Borramos obejtoss}
  Q_Valida.Destroy;
end;

procedure TfrmAnexosCotemar.btnTodo2Click(Sender: TObject);
begin
  rxEquipo_2.EmptyTable;
  rxEquipo.First;
  while not rxEquipo.Eof do
  begin
    rxEquipo_2.Append;
    for Cta := 1 to rxEquipo.FieldDefs.Count do
      rxEquipo_2.Fields.FieldByNumber(Cta).AsVariant := rxEquipo.Fields.FieldByNumber(Cta).AsVariant;
    rxEquipo_2.Post;
    rxEquipo.Next;
  end;
end;

procedure TfrmAnexosCotemar.btnTodo3Click(Sender: TObject);
begin
  rxMaterial_2.EmptyTable;
  rxMaterial.First;
  while not rxMaterial.Eof do
  begin
    rxMaterial_2.Append;
    for Cta := 1 to rxMaterial.FieldDefs.Count do
      rxMaterial_2.Fields.FieldByNumber(Cta).AsVariant := rxMaterial.Fields.FieldByNumber(Cta).AsVariant;
    rxMaterial_2.Post;
    rxMaterial.Next;
  end;
end;

procedure TfrmAnexosCotemar.btnTodo4Click(Sender: TObject);
begin
  try
    rxAnexo_2.EmptyTable;
    rxAnexo.First;
    while not rxAnexo.Eof do
    begin
      rxAnexo_2.Append;
      for Cta := 1 to rxAnexo.FieldDefs.Count do
        rxAnexo_2.Fields.FieldByNumber(Cta).AsVariant := rxAnexo.Fields.FieldByNumber(Cta).AsVariant;
      rxAnexo_2.Post;
      rxAnexo.Next;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogos Maestros', 'Al agregar todos', 0);
    end;
  end;
end;

procedure TfrmAnexosCotemar.btnTodo5Click(Sender: TObject);
begin
      rxHerramienta2.EmptyTable;
      rxHerramienta.First;
      while not rxHerramienta.Eof do
      begin
        rxHerramienta2.Append;
        for Cta := 1 to rxHerramienta.FieldDefs.Count do
          rxHerramienta2.Fields.FieldByNumber(Cta).AsVariant := rxHerramienta.Fields.FieldByNumber(Cta).AsVariant;
        rxHerramienta2.Post;
        rxHerramienta.Next;
      end;
end;

procedure TfrmAnexosCotemar.btnTodos6Click(Sender: TObject);
begin
    rxBasicos2.EmptyTable;
    rxBasicos.First;
    while not rxBasicos.Eof do
    begin
      rxBasicos2.Append;
      for Cta := 1 to rxBasicos.FieldDefs.Count do
        rxBasicos2.Fields.FieldByNumber(Cta).AsVariant := rxBasicos.Fields.FieldByNumber(Cta).AsVariant;
      rxBasicos2.Post;
      rxBasicos.Next;
    end;
end;

procedure TfrmAnexosCotemar.ds_Personal_2DataChange(Sender: TObject;
  Field: TField);
begin

end;

//Aqui van Materiales

procedure TfrmAnexosCotemar.pgCatalogosChange(Sender: TObject);
begin
  try
    if pgCatalogos.ActivePage.Name = 'pgMaterial' then
    begin
      cargarMaterial();
    end;

    if pgCatalogos.ActivePage.Name = 'pgAnexo' then
    begin
    //  cargarAnexo();
    end;

    if pgCatalogos.ActivePage.Name = 'pgHerramienta' then
    begin
      cargaHerramienta();
    end;

    if pgCatalogos.ActivePage.Name = 'pgBasicos' then
    begin
      cargarBasicos();
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogos Maestros', 'Al cambiar de pestaña', 0);
    end;
  end;
end;


procedure tFrmAnexosCotemar.equipoypersonal(Anexo: string);
var
  sContrato: string;
  iRecord: Byte;
begin

end;


procedure TfrmAnexosCotemar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAnexosCotemar.FormShow(Sender: TObject);
begin
  fase := '*';
  Q_Fases := TZReadOnlyQuery.Create(self);
  Q_Fases.Connection := connection.zConnection;

  Q_Recurso := TZReadOnlyQuery.Create(self);
  Q_Recurso.Connection := connection.zConnection;

    {PRIMERO EL PERSONAL..}
  Q_Recurso.Active := False;
  Q_Recurso.SQL.Clear;
  Q_Recurso.SQL.Add('select p.*, t.sDescripcion as Tipo from personal p ' +
    'left join tiposdepersonal t on (t.sIdTipoPersonal = p.sIdTipoPersonal) ' +
    'where p.sContrato =:Contrato order by p.iItemOrden');
  Q_Recurso.ParamByName('Contrato').AsString := global_contrato_barco;
  Q_Recurso.Open;

  rxPersonal.FieldDefs.Clear;
  rxPersonal_2.FieldDefs.Clear;

    {Personal Anexo}
  for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
    rxPersonal.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);

    {Personal Orden}
  for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
    rxPersonal_2.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);

  rxPersonal_2.Open;
  rxPersonal_2.EmptyTable;

  rxPersonal.Open;
  rxPersonal.EmptyTable;
  while not Q_Recurso.Eof do
  begin
    rxPersonal.Append;
    for Cta := 1 to rxPersonal.FieldDefs.Count do
      rxPersonal.Fields.FieldByNumber(Cta).AsVariant := Q_Recurso.Fields.FieldByNumber(Cta).AsVariant;
    rxPersonal.Post;
    Q_Recurso.next;
  end;

    {AHOR EL EQUIPO...}
  rxEquipo.FieldDefs.Clear;
  rxEquipo_2.FieldDefs.Clear;

  Q_Recurso.Active := False;
  Q_Recurso.SQL.Clear;
  Q_Recurso.SQL.Add('select e.*, t.sDescripcion as Tipo from equipos e ' +
    'left join tiposdeequipo t on (t.sIdTipoEquipo = e.sIdTipoEquipo) ' +
    'where e.sContrato =:Contrato order by e.iItemOrden');
  Q_Recurso.ParamByName('Contrato').AsString := global_contrato_barco;
  Q_Recurso.Open;

    {Equipo Anexo}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
      rxEquipo.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

    {Equipo Orden}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
      rxEquipo_2.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

  rxEquipo_2.Open;
  rxEquipo_2.EmptyTable;

  rxEquipo.Open;
  rxEquipo.EmptyTable;
  while not Q_Recurso.Eof do
  begin
    rxEquipo.Append;
    for Cta := 1 to rxEquipo.FieldDefs.Count do
      rxEquipo.Fields.FieldByNumber(Cta).AsVariant := Q_Recurso.Fields.FieldByNumber(Cta).AsVariant;
    rxEquipo.Post;
    Q_Recurso.next;
  end;


end;

procedure TfrmAnexosCotemar.Grid_AnexoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

    if rxAnexo.FieldByName('sTipoActividad').AsString = 'Paquete' then
    begin
     // Grid_Anexo.Canvas.Brush.Color := clGray;
      //Grid_Anexo.Canvas.Font.Color := clWhite;

  end;

 // Grid_Anexo.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmAnexosCotemar.mniProceso1Click(Sender: TObject);
begin
  btnOk.Click ;
end;

procedure TfrmAnexosCotemar.mniSalir1Click(Sender: TObject);
begin
  close ;
end;

procedure TfrmAnexosCotemar.cargaHerramienta;
begin
  {AHOR LA HERRAMIENTA...}
  rxHerramienta.FieldDefs.Clear;
  rxHerramienta2.FieldDefs.Clear;

  Q_Recurso.Active := False;
  Q_Recurso.SQL.Clear;
  Q_Recurso.SQL.Add('select * from herramientas where sContrato =:Contrato order by sIdHerramientas ');
  Q_Recurso.ParamByName('Contrato').AsString := global_contrato_barco;
  Q_Recurso.Open;

    {Herramienta Anexo}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
      rxHerramienta.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

    {Herramienta Orden}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
      rxHerramienta2.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

  rxHerramienta2.Open;
  rxHerramienta2.EmptyTable;

  rxHerramienta.Open;
  rxHerramienta.EmptyTable;
  while not Q_Recurso.Eof do
  begin
    rxHerramienta.Append;
    for Cta := 1 to rxHerramienta.FieldDefs.Count do
      rxHerramienta.Fields.FieldByNumber(Cta).AsVariant := Q_Recurso.Fields.FieldByNumber(Cta).AsVariant;
    rxHerramienta.Post;
    Q_Recurso.next;
  end;
end;

procedure TfrmAnexosCotemar.cargarBasicos;
begin
  {AHOR LOS BASICOS...}
  rxBasicos.FieldDefs.Clear;
  rxBasicos2.FieldDefs.Clear;

  Q_Recurso.Active := False;
  Q_Recurso.SQL.Clear;
  Q_Recurso.SQL.Add('select * from basicos where sContrato =:Contrato order by sIdBasico ');
  Q_Recurso.ParamByName('Contrato').AsString := global_contrato_barco;
  Q_Recurso.Open;

    {Basicos Anexo}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
      rxBasicos.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

    {Basicos Orden}
  try
    for Cta := 0 to Q_Recurso.FieldDefs.Count - 1 do
      rxBasicos2.FieldDefs.Add(Q_Recurso.FieldDefs.Items[Cta].Name, Q_Recurso.FieldDefs.Items[Cta].DataType, Q_Recurso.FieldDefs.Items[Cta].Size, Q_Recurso.FieldDefs.Items[Cta].Required);
  except

  end;

  rxBasicos2.Open;
  rxBasicos2.EmptyTable;

  rxBasicos.Open;
  rxBasicos.EmptyTable;
  while not Q_Recurso.Eof do
  begin
    rxBasicos.Append;
    for Cta := 1 to rxBasicos.FieldDefs.Count do
      rxBasicos.Fields.FieldByNumber(Cta).AsVariant := Q_Recurso.Fields.FieldByNumber(Cta).AsVariant;
    rxBasicos.Post;
    Q_Recurso.next;
  end;
end;

end.

