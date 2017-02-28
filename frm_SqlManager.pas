unit frm_SqlManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  ADODB, Mask, Grids, DBGrids, global, Buttons, RXCtrls, StrUtils,UnitTBotonesPermisos,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, unitexcepciones, udbgrid,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  cxTextEdit, cxMemo, cxClasses;

type
  TfrmSqlManager = class(TForm)
    GridActividades: TDBGrid;
    ds_Sql: TDataSource;
    btnExit: TBitBtn;
    btnExport: TBitBtn;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    OpenSql: TOpenDialog;
    btnExecute: TBitBtn;
    SaveSql: TSaveDialog;
    btnFiles: TBitBtn;
    Sql: TZReadOnlyQuery;
    btAnexoc: TBitBtn;
    qryActividades: TZQuery;
    Popupprincipal: TPopupMenu;
    Copiar1: TMenuItem;
    tmSql: TcxMemo;
    cxEditStyleController1: TcxEditStyleController;
    tsArchivo: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFilesClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btAnexocClick(Sender: TObject);
    procedure tsArchivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsArchivoEnter(Sender: TObject);
    procedure tsArchivoExit(Sender: TObject);
    procedure GridActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridActividadesTitleClick(Column: TColumn);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure cxmSqlKeyPress(Sender: TObject; var Key: Char);
    procedure cxmSqlEnter(Sender: TObject);
    procedure cxmSqlExit(Sender: TObject);
    procedure tmSqlExit(Sender: TObject);
    procedure tmSqlEnter(Sender: TObject);
    procedure tmSqlKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSqlManager: TfrmSqlManager;
  utgrid:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_anexosCotemar;

{$R *.dfm}

procedure TfrmSqlManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree ;
  utgrid.Destroy;
end;

procedure TfrmSqlManager.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adSql');
  BotonPermiso.permisosBotones(nil);
  if not BotonPermiso.agregar then
  begin
    btnFiles.Enabled:=False;
    btnExecute.Enabled:=False;
    btAnexoc.Enabled:=False;
  end;
  if not BotonPermiso.imprimir then
    btnExport.Enabled:=False;

  UtGrid:=TicdbGrid.create(gridactividades);
  Sql.Active := False ;
  tmSql.SetFocus
end;

procedure TfrmSqlManager.GridActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if gridactividades.FieldCount>0 then
 UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmSqlManager.GridActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if gridactividades.FieldCount>0 then
 UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmSqlManager.GridActividadesTitleClick(Column: TColumn);
begin
if gridactividades.FieldCount>0 then
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmSqlManager.Pegar1Click(Sender: TObject);
begin
  UtGrid.AddRowsFromClip;
end;

procedure TfrmSqlManager.tmSqlEnter(Sender: TObject);
begin
 tmsql.Style.Color := global_color_entrada;
end;

procedure TfrmSqlManager.tmSqlExit(Sender: TObject);
begin
  tmsql.Style.Color := global_color_salida
end;

procedure TfrmSqlManager.tmSqlKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    tsArchivo.SetFocus ;
end;

procedure TfrmSqlManager.tsArchivoEnter(Sender: TObject);
begin
      tsarchivo.Style.Color := global_color_Entrada
end;

procedure TfrmSqlManager.tsArchivoExit(Sender: TObject);
begin
      tsarchivo.Style.Color := global_color_salida;
end;

procedure TfrmSqlManager.tsArchivoKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
        tmsql.SetFocus;   
end;

procedure TfrmSqlManager.btnFilesClick(Sender: TObject);
begin
  try
    tmSql.Text := '' ;
    OpenSql.Title := 'Inserta Archivo de Consulta';
    If OpenSql.Execute then
       tsArchivo.Text := OpenSql.FileName;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sql Inteligent', 'Al seleccionar archivo', 0);
    end;
  end;
end;

procedure TfrmSqlManager.Copiar1Click(Sender: TObject);
begin

if (gridactividades.DataSource.DataSet.IsEmpty=true)OR (gridactividades.DataSource.DataSet.RecordCount<=0) then
begin
  showmessage('No hay registros de resultados');
  exit
end;
 UtGrid.CopyRowsToClip;
end;

procedure TfrmSqlManager.cxmSqlEnter(Sender: TObject);
begin
tmsql.Style.Color := global_color_Entrada;
end;

procedure TfrmSqlManager.cxmSqlExit(Sender: TObject);
begin
  tmsql.Style.Color := global_color_salida
end;

procedure TfrmSqlManager.cxmSqlKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
        tsarchivo.SetFocus
end;

procedure TfrmSqlManager.btnExitClick(Sender: TObject);
begin
    Close
end;

procedure TfrmSqlManager.btnExecuteClick(Sender: TObject);
var
  F: TextFile;
  S: string;
begin
  try
    If tmSql.Text <> '' Then
    Begin
      Sql.Active := False ;
      Sql.SQL.Clear ;
      Sql.SQL.Add(tmSql.Text) ;
      Sql.SQL.Text := AnsiReplaceText(Sql.SQL.Text , ':CONTRATO' , '"' + global_contrato + '"') ;
      Sql.SQL.Text := AnsiReplaceText(Sql.SQL.Text , ':CONVENIO' , '"' + global_convenio + '"') ;
      Sql.Open
    End
    Else
    Begin
      AssignFile(F, tsArchivo.Text ); { File selected in dialog }
      Reset(F);
      Sql.Active := False ;
      Sql.SQL.Clear ;
      while not Eof(F) do
      begin
          Readln(F, S);                        { Read first line of file }
          Sql.SQL.Add(S) ;
      end;
      CloseFile (F) ;
      Sql.Open ;
    end;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sql Inteligent', 'Al ejecutar', 0);
    end;
  end;
end;

procedure TfrmSqlManager.btnExportClick(Sender: TObject);
Var
   F1            : TextFile;
   Registro, Code, ValorTemporal  : Integer ;
   Cadena        : String ;
   ValorNumerico : String ;
   ValorFecha    : String ;
   valorCampo     : Variant ;
begin
if (gridactividades.DataSource.DataSet.IsEmpty=True)OR (gridactividades.DataSource.DataSet.RecordCount<=0) then
begin
  showmessage('No hay registros de resultados');
  exit
end;
  try
    SaveSql.Title := 'Guardar Consulta';
    If Sql.Active = True Then
        If SaveSql.Execute Then
        Begin
            AssignFile(F1, SaveSql.FileName);
            rewrite(F1) ;
            Sql.First ;
            While Sql.Eof <> True Do
            Begin
                Cadena := '' ;
                ValorCampo := '' ;
                for Registro := 0 to Sql.FieldCount - 1 do
                Begin
                      ValorCampo :=  Sql.Fields[Registro].Value ;
                      If VarIsnull(ValorCampo)  Then
                      Begin
                          ValorCampo :='' ;
                          Cadena := Cadena + '"' + ValorCampo + '"' + ',' ;
                      end
                      Else
                      Begin
                          If (Sql.Fields[Registro].DataType = ftString)	OR (Sql.Fields[Registro].DataType = ftMemo) Then
                          Begin
                              ValorCampo :=  AnsiReplaceText ( ValorCampo , '"' , '""' ) ;
                              If Length(ValorCampo) > 0 Then
                                   ValorCampo := '"' + ValorCampo + '"' ;
                              Cadena := Cadena + ValorCampo + ',' ;
                          End
                          Else
                              If Sql.Fields[Registro].DataType = ftDate	Then
                              Begin
                                  ValorFecha := '"' + DateToStr(ValorCampo) + '"'  ;
                                  Cadena := Trim(Cadena + ValorFecha + ',') ;
                              End
                              Else
                              If Sql.Fields[Registro].DataType <> ftBlob	Then
                              Begin
                                   ValorNumerico := '"' + Trim(ValorCampo) + '"' ;
                                  Cadena := Trim(Cadena + ValorNumerico +',') ;
                              End ;
                      End
                end ;
                WriteLn(F1, Cadena ) ;
                Sql.Next ;
            End ;
            closefile(F1) ;
        End;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sql Inteligent', 'Al exportar a excel', 0);
    end;
  end;
end;

procedure TfrmSqlManager.btAnexocClick(Sender: TObject);
begin
  tmSql.Text := 'Select sContrato, iItemOrden, sActividadAnterior, sNumeroActividad, sEspecificacion, mDescripcion, ' +
                'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, sIdFase, dFechaInicio,' +
                'dFechaFinal from actividadesxanexo where sContrato=:contrato And sTipoActividad="Actividad" ' +
                'And sIdConvenio=:Convenio order by iItemOrden ' ;
  btnExecute.Click ;
  btnExport.Click ;

end;

end.
