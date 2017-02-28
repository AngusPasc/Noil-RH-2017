unit frm_grupoperimetros;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, frm_barra, StdCtrls, DBCtrls,
  Mask, ExtCtrls, jpeg, ExtDlgs, DB, Global, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UdbGrid,
  UnitExcepciones, unittbotonespermisos, UnitValidaTexto, unitactivapop, UFunctionsGHH;

type
  Tfrmgrupoperimetros = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    gridgrupoperimetros: TDBGrid;
    frmBarra1: TfrmBarra;
    tsIdGrupo: TDBEdit;
    tsDescripcion: TDBEdit;
    dsgrupoperimetros: TDataSource;
    zgrupoperimetros: TZQuery;
    tsSimbolo: TDBEdit;
    zgrupoperimetrosiIdGrupo: TIntegerField;
    zgrupoperimetrossDescripcion: TStringField;
    zgrupoperimetrossSimbolo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsSimboloEnter(Sender: TObject);
    procedure tsSimboloExit(Sender: TObject);
    procedure tsSimboloKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdGrupoEnter(Sender: TObject);
    procedure tsIdGrupoExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure gridgrupoperimetrosCellClick(Column: TColumn);
  private
    sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgrupoperimetros: Tfrmgrupoperimetros;
  botonpermiso: tbotonespermisos;
  sOpcion: String;

implementation

{$R *.dfm}

procedure Tfrmgrupoperimetros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  zgrupoperimetros.Cancel;
  Action:=Cafree;
end;

procedure Tfrmgrupoperimetros.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  zgrupoperimetros.Close;

  zgrupoperimetros.Open;
end;

procedure Tfrmgrupoperimetros.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   zgrupoperimetros.Append ;
   tsIdGrupo.SetFocus ;
   gridgrupoperimetros.Enabled := False;
end;

procedure Tfrmgrupoperimetros.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   zgrupoperimetros.Cancel ;
   gridgrupoperimetros.Enabled := True;
   sOpcion := '';
end;

procedure Tfrmgrupoperimetros.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zgrupoperimetros.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zgrupoperimetros.Delete ;
      except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupo Perimetros', 'Al eliminar registro', 0);
       end;
      end
    end
end;

procedure Tfrmgrupoperimetros.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   sOpcion := 'Edit';
   try
     zgrupoperimetros.Edit ;
   except
     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupo Perimetros', 'Al agregar registro', 0);
     frmbarra1.btnCancel.Click ;
     end;
   end ;
   tsIdGrupo.SetFocus;
   gridgrupoperimetros.Enabled := False;
end;

procedure Tfrmgrupoperimetros.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   close
end;

procedure Tfrmgrupoperimetros.frmBarra1btnPostClick(Sender: TObject);
var cadenas, nombres: TStringList;
begin
    {Validaciones de campos}
    nombres:=TStringList.Create; cadenas:=TStringList.Create;

    nombres.Add('Descripción');      cadenas.Add(tsDescripcion.Text);
    nombres.Add('Simbolo');      cadenas.Add(tsSimbolo.Text);

    if not validaTexto(nombres, cadenas, 'Id Grupo',tsIdGrupo.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
  try
      zgrupoperimetros.Post ;
      frmBarra1.btnPostClick(Sender) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Grupo Perimetros', 'Al salvar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
  end;
  if sOpcion = 'Edit' then
  begin
      gridgrupoperimetros.Enabled := True;
      sOpcion := '';
  end;

end;

procedure Tfrmgrupoperimetros.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zgrupoperimetros.Refresh;
end;

procedure Tfrmgrupoperimetros.gridgrupoperimetrosCellClick(Column: TColumn);
begin
  if frmbarra1.btnCancel.Enabled = True then
  frmbarra1.btnCancel.Click ;
end;

procedure Tfrmgrupoperimetros.tsDescripcionEnter(Sender: TObject);
begin
   tsDescripcion.Color:=global_color_entradaERP
end;

procedure Tfrmgrupoperimetros.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color:=global_color_salidaPU
end;

procedure Tfrmgrupoperimetros.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13then
  tsSimbolo.SetFocus;
end;

procedure Tfrmgrupoperimetros.tsIdGrupoEnter(Sender: TObject);
begin
  tsIdGrupo.Color:=global_color_entradaERP
end;

procedure Tfrmgrupoperimetros.tsIdGrupoExit(Sender: TObject);
begin
   tsIdGrupo.Color:=global_color_salidaPU
end;

procedure Tfrmgrupoperimetros.tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  tsDescripcion.SetFocus;
end;

procedure Tfrmgrupoperimetros.tsSimboloEnter(Sender: TObject);
begin
  tsSimbolo.Color:=global_color_entradaERP
end;

procedure Tfrmgrupoperimetros.tsSimboloExit(Sender: TObject);
begin
  tsSimbolo.Color:=global_color_salidaPU
end;

procedure Tfrmgrupoperimetros.tsSimboloKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  tsIdGrupo.SetFocus;  
  
end;

end.
