unit frm_registrodequejas;

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
  cxNavigator, DB, cxDBData, cxContainer, frm_barra, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  cxLabel, cxCalendar, ZAbstractRODataset, ZAbstractDataset, ZDataset, global,
  DBCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus, CxGridExportLink, ShellAPI ;

type
  Tfrmregistrodequejas = class(TForm)
    pnl1: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_registroquejas: TcxGrid;
    frmBarra1: TfrmBarra;
    dbfechainicio: TcxDBDateEdit;
    dbfechafinal: TcxDBDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    erespuesta: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    zclientes: TZQuery;
    dsclientes: TDataSource;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    zbitacoraaclaracion: TZQuery;
    dsaclaracion: TDataSource;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    dsempleados: TDataSource;
    zEmpleados: TZReadOnlyQuery;
    zPuestos: TZReadOnlyQuery;
    dsPuestos: TDataSource;
    zconsultagrid: TZQuery;
    dsconsultagrid: TDataSource;
    cxLabel8: TcxLabel;
    zAclaracion: TZReadOnlyQuery;
    dsBitacoraAclaracion: TDataSource;
    snombrecompleto3: TcxGridDBColumn;
    dbClientes: TDBLookupComboBox;
    dbEmpCoordinador: TDBLookupComboBox;
    dbAclaracion: TDBLookupComboBox;
    dbEmpleadoAtiende: TDBLookupComboBox;
    dbPuestos: TDBLookupComboBox;
    dbEmpleadoSolicita: TDBLookupComboBox;
    zconsultagrididbitacoraaclaracion: TIntegerField;
    zconsultagriddfechainicio: TDateField;
    zconsultagriddfechafinal: TDateField;
    zconsultagridsIdcompania: TStringField;
    zconsultagridsIdempleado1: TStringField;
    zconsultagridsIdempleado2: TStringField;
    zconsultagridsIdempleado3: TStringField;
    zconsultagrididaclaracion: TIntegerField;
    zconsultagridsRespuesta: TStringField;
    zconsultagridnombrecompleto1: TStringField;
    zconsultagridnombrecompleto2: TStringField;
    zconsultagridnombrecompleto3: TStringField;
    zbitacoraaclaracionidBitacoraAclaracion: TIntegerField;
    zbitacoraaclaraciondFechaInicio: TDateField;
    zbitacoraaclaraciondFechaFinal: TDateField;
    zbitacoraaclaracionsIdCompania: TStringField;
    zbitacoraaclaracionsIdEmpleado1: TStringField;
    zbitacoraaclaracionsIdEmpleado2: TStringField;
    zbitacoraaclaracionsIdEmpleado3: TStringField;
    zbitacoraaclaracionidAclaracion: TIntegerField;
    zbitacoraaclaracionIdCargo: TIntegerField;
    zbitacoraaclaracionsRespuesta: TStringField;
    zclientessRazonSocial: TStringField;
    zclientessIdCompania: TStringField;
    zconsultagrididcargo: TIntegerField;
    zPuestosidCargo: TIntegerField;
    zPuestostitulocargo: TStringField;
    zAclaracionIdAclaracion: TIntegerField;
    zAclaracionsDescripcion: TStringField;
    zconsultagridsDescripcion: TStringField;
    zconsultagridtituloCargo: TStringField;
    zconsultagridsRazonSocial: TStringField;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    ExportarExcel1: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    dlgSave1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure zconsultagridAfterOpen(DataSet: TDataSet);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmregistrodequejas: Tfrmregistrodequejas;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure Tfrmregistrodequejas.btnAddClick(Sender: TObject);
begin
 frmBarra1.btnAddClick(Sender);

  zconsultagrid.Append ;
  zconsultagrid.FieldValues['dfechainicio'] := Date();
  zconsultagrid.FieldValues['dfechafinal']  := Date() + 30 ;
  zconsultagrid.FieldValues['sRespuesta']   := '' ;

  dbfechainicio.SetFocus ;

end;

procedure Tfrmregistrodequejas.btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zconsultagrid.Cancel ;
  dsBitacoraAclaracion.DataSet := zConsultaGrid ;
end;

procedure Tfrmregistrodequejas.btnDeleteClick(Sender: TObject);
begin

if zbitacoraaclaracion .Locate('idBitacoraAclaracion', zconsultagrid.FieldByName('idBitacoraAclaracion').AsInteger,[]) then
 if InteliDialog.ShowModal('Aviso', '¿Desea Eliminar el Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       zbitacoraaclaracion.Delete ;
 zconsultagrid.Refresh ;
end;

procedure Tfrmregistrodequejas.btnEditClick(Sender: TObject);
begin
          frmBarra1.btnEditClick(Sender);
         // dsBitacoraAclaracion.DataSet := zbitacoraaclaracion ;
          zbitacoraaclaracion.Locate('idBitacoraAclaracion', zconsultagrid.FieldByName('idBitacoraAclaracion').AsInteger,[]) ;
          zconsultagrid.Edit ;
end;

procedure Tfrmregistrodequejas.btnExitClick(Sender: TObject);
begin
  close ;
end;

procedure Tfrmregistrodequejas.btnPostClick(Sender: TObject);
var
  sCampo:string;
  i:Integer;
  Posa : TBookmark;

begin

  frmBarra1.btnPostClick(Sender);

 // aqui pongo la bandera
 if zconsultagrid.State = dsInsert Then
      zbitacoraaclaracion.Append ;

 if zconsultagrid.State = dsEdit Then
   begin
      zbitacoraaclaracion.Edit ;
      Posa := zconsultagrid.GetBookmark  ;
   end;
     if zbitacoraaclaracion.State in[dsInsert, dsEdit] Then
       begin

            for I := 0 to zbitacoraaclaracion.Fields.Count-1 do
              begin
                sCampo:=zbitacoraaclaracion.Fields[I].DisplayName;
                if zConsultaGrid.FieldDefs.IndexOf(sCampo)>=0 then
                zbitacoraaclaracion.FieldByName(sCampo).Value := zconsultagrid.FieldByName(sCampo).Value;
              end;
            zbitacoraaclaracion.Post ;
            zconsultagrid.Cancel ;

            zconsultagrid.Refresh ;
            if  Posa <> Nil Then
              zconsultagrid.GotoBookmark(Posa)
            else
              zconsultagrid.Last ;

       end;

end;

procedure Tfrmregistrodequejas.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.click ;
end;

procedure Tfrmregistrodequejas.ExportarExcel1Click(Sender: TObject);
Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, grid_registroquejas);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;

end;

procedure Tfrmregistrodequejas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmregistrodequejas.FormShow(Sender: TObject);
begin
  zbitacoraaclaracion.Active := False ;
  zbitacoraaclaracion.Open ;

  zconsultagrid.Active := False;
  zconsultagrid.Open;

  zclientes.Active := False;
  zclientes.Params.ParamByName('Contrato').AsString := global_Contrato;
  zclientes.Open;
  if zclientes.RecordCount <= 0  Then
     InteliDialog.ShowModal('Warning', 'NO HAY CATALOGO DE CLIENTES', mtInformation, [mbOk], 0);


  zaclaracion.Active:= False;
  zaclaracion.Open;
  if zAclaracion.RecordCount <= 0 Then
       InteliDialog.ShowModal('Warning', 'NO HAY CATALOGO DE ACLARACIONES ', mtInformation, [mbOk], 0);

  zempleados.Active := False;
  zempleados.Open;
  if zEmpleados.RecordCount <= 0 Then
     InteliDialog.ShowModal('Warning', 'NO HAY CATALOGO DE EMPLEADOS ', mtInformation, [mbOk], 0);

  zPuestos.Active := False ;
  zPuestos.Open;
  if zPuestos.RecordCount <= 0 Then
     InteliDialog.ShowModal('Warning', 'NO HAY CATALOGO DE PUESTOS ', mtInformation, [mbOk], 0);


end;

procedure Tfrmregistrodequejas.Insertar1Click(Sender: TObject);
begin
 frmbarra1.btnAdd.Click ;
end;

procedure Tfrmregistrodequejas.Salir1Click(Sender: TObject);
begin
  close ;
end;

procedure Tfrmregistrodequejas.zconsultagridAfterOpen(DataSet: TDataSet);
begin

//   dsBitacoraAclaracion.DataSet := zConsultaGrid ;

end;

end.
