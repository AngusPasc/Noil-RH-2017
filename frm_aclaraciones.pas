unit frm_aclaraciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB,
  cxDBData, cxMemo, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,Menus, frxDBSet,global, frm_barra,UnitExcepciones,
  cxDBEdit,CxGridExportLink, ShellApi;

type
  Tfrmaclaraciones = class(TForm)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_aclaraciones: TcxGrid;
    pnl1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    zaclaraciones: TZQuery;
    dsaclaraciones: TDataSource;
    datasetaclaraciones: TfrxDBDataset;
    eaclaracion: TcxDBTextEdit;
    edescripcion: TcxDBTextEdit;
    memocomentarios: TcxDBMemo;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    intgrfldzaclaracionesidaclaracion: TIntegerField;
    strngfldzaclaracionessdescripcion: TStringField;
    strngfldzaclaracionesscomentario: TStringField;
    frmbarra1: TfrmBarra;
    popupPrincipal: TPopupMenu;
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

    procedure edescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure eaclaracionKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure limpiarcajas;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaclaraciones: Tfrmaclaraciones;
 

implementation

uses
  frm_inteligent, frm_connection, Func_Genericas,UInteliDialog;

{$R *.dfm}

procedure Tfrmaclaraciones.btnAddClick(Sender: TObject);
begin
  frmbarra1.btnAddClick(sender);
  limpiarcajas;
  eaclaracion.SetFocus;
  zaclaraciones.Append;
end;

procedure Tfrmaclaraciones.btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrmaclaraciones.btnDeleteClick(Sender: TObject);
begin
 // zaclaraciones.Delete;

  If zaclaraciones.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zaclaraciones.Delete;
      except
        on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Aclaraciones', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure Tfrmaclaraciones.btnEditClick(Sender: TObject);
begin
   zaclaraciones.Edit;
   frmBarra1.btnEditClick(Sender);
end;

procedure Tfrmaclaraciones.btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   frmaclaraciones.Close;
end;

procedure Tfrmaclaraciones.btnPostClick(Sender: TObject);
begin
   zaclaraciones.Post;
   frmBarra1.btnPostClick(Sender);
end;

procedure Tfrmaclaraciones.btnRefreshClick(Sender: TObject);
begin
  zaclaraciones.Refresh;
end;

procedure Tfrmaclaraciones.Can1Click(Sender: TObject);
begin
  frmbarra1.btnCancel.Click;
end;

procedure Tfrmaclaraciones.eaclaracionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  edescripcion.SetFocus;

end;

procedure Tfrmaclaraciones.edescripcionKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   memocomentarios.SetFocus;
end;

procedure Tfrmaclaraciones.Editar1Click(Sender: TObject);
begin
   frmbarra1.btnEdit.Click;
end;

procedure Tfrmaclaraciones.Eliminar1Click(Sender: TObject);
begin
  frmbarra1.btnDelete.Click;
end;

procedure Tfrmaclaraciones.ExportarExcel1Click(Sender: TObject);
Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, grid_aclaraciones);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure Tfrmaclaraciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmaclaraciones.FormShow(Sender: TObject);
begin
  zaclaraciones.Active  := False;
  zaclaraciones.Open;
end;

procedure Tfrmaclaraciones.Insertar1Click(Sender: TObject);
begin
  frmbarra1.btnAdd.Click;
end;

procedure Tfrmaclaraciones.limpiarcajas;
begin
   eaclaracion.Text := '';
   edescripcion.Text := '';
   memocomentarios.Text:= '';
end;

procedure Tfrmaclaraciones.Refresh1Click(Sender: TObject);
begin
  frmbarra1.btnRefresh.Click;
end;

procedure Tfrmaclaraciones.Registrar1Click(Sender: TObject);
begin
   frmbarra1.btnPost.Click;
end;

procedure Tfrmaclaraciones.Salir1Click(Sender: TObject);
begin
   frmbarra1.btnExit.Click;
end;

end.
