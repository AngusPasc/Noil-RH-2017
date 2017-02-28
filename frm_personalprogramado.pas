unit frm_personalprogramado;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ComCtrls, ADODB, DateUtils, frxClass,
  frxDBSet, RXDBCtrl, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, rxToolEdit, UnitExcepciones,UdbGrid,
   unittbotonespermisos, UnitValidaTexto, unitactivapop, UnitValidacion,
  FormAutoScaler, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
    TfrmPersonalProgramado = class(TForm)
    frmBarra1: TfrmBarra;
    Label3: TLabel;
    tdCantidad: TDBEdit;
    ds_programacion: TDataSource;
    Label1: TLabel;
    tdIdFecha: TDBDateEdit;
    Programacion: TZQuery;
    PresupuestoMensual: TZReadOnlyQuery;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    PropuestaMensual1: TMenuItem;
    N4: TMenuItem;
    Cut2: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    ProgramacionsContrato: TStringField;
    ProgramaciondIdFecha: TDateField;
    ProgramaciondCantidad: TFloatField;
    frmtsclr1: TFormAutoScaler;
    dbgcxGrid1DBTableView1: TcxGridDBTableView;
    dbgcxGrid1Level1: TcxGridLevel;
    Grid_personalprogramado: TcxGrid;
    Col_dbgcxGrid1DBTableView1Column1: TcxGridDBColumn;
    Col_dbgcxGrid1DBTableView1Column2: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_personalprogramadoCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_personalprogramadoEnter(Sender: TObject);
    procedure grid_personalprogramadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_personalprogramadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure PropuestaMensual1Click(Sender: TObject);
    procedure grid_personalprogramadoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_personalprogramadoMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_personalprogramadoTitleClick(Column: TColumn);
    procedure Cut2Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tdCantidadChange(Sender: TObject);
    procedure ProgramaciondCantidadSetText(Sender: TField; const Text: string);
    procedure dbgcxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPersonalProgramado: TfrmPersonalProgramado;
  UtGrid:TicDbGrid;
  botonpermiso: tbotonespermisos;
  banderaagregar:boolean;
implementation

{$R *.dfm}


procedure TfrmPersonalProgramado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Programacion.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmPersonalProgramado.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opProgramacion', PopupPrincipal);
 // UtGrid:=TicdbGrid.create(grid_personalprogramado);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  Programacion.Active := False ;
  Programacion.Params.ParamByName('Contrato').DataType := ftString ;
  Programacion.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Programacion.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmPersonalProgramado.grid_personalprogramadoCellClick(Column: TColumn);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPersonalProgramado.frmBarra1btnAddClick(Sender: TObject);
begin
 try
   activapop(frmPersonalProgramado, popupprincipal);
   banderaAgregar:=true;
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Programacion.Append ;
   Programacion.FieldValues [ 'sContrato' ]  := Global_Contrato ;
   Programacion.FieldValues [ 'dIdFecha'  ]  := Date ;
   tdIdFecha.Date := Date ;
   tdIdFecha.SetFocus ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programación de Categorias Personal', 'Al agregar registro', 0);
  end;
 end;
   BotonPermiso.permisosBotones(frmBarra1);
     frmbarra1.btnPrinter.Enabled:=false;
     grid_personalprogramado.Enabled:=false;
end;

procedure TfrmPersonalProgramado.frmBarra1btnEditClick(Sender: TObject);
begin
   banderaAgregar:=false;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
      activapop(frmPersonalProgramado, popupprincipal);
      Programacion.Edit ;
   except
      on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programación de Categorias Personal', 'Al editar registro', 0);
         frmBarra1.btnCancel.Click ;
      end;
   end ;
   tdIdFecha.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_personalprogramado.Enabled:=false;
end;

procedure TfrmPersonalProgramado.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
//*****verificar campos
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Cantidad');cadenas.Add(tdCantidad.Text);
  if not validaTexto(nombres, cadenas, 'Fecha','tdIdFecha.text') then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
  if tdIdFecha.Date = 0 then
  begin
    MessageDlg('Fecha inválida', mtInformation, [mbOk], 0);
    exit;
  end;

  if tdIdFecha.Date = 0 then
  begin
       MessageDlg('Favor de Ingresar una Fecha!', mtInformation, [mbOk], 0);
       exit;
  end;

  //******continua el post

  try
      Programacion.FieldValues [ 'dIdFecha' ]  := tdIdFecha.Date ;
      Programacion.Post ;
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarra1.btnPostClick(Sender);
  except
      on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programación de Categorias Personal', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
      end;
  end;
desactivapop(popupprincipal);
BotonPermiso.permisosBotones(frmBarra1);
frmbarra1.btnPrinter.Enabled:=false;
grid_personalprogramado.Enabled:=true;
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmPersonalProgramado.frmBarra1btnCancelClick(Sender: TObject);
begin
  desactivapop(popupprincipal);
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Programacion.Cancel ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
  grid_personalprogramado.Enabled:=true;
end;

procedure TfrmPersonalProgramado.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Programacion.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        Programacion.Delete ;
      except
         on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programación de Categorias Personal', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmPersonalProgramado.frmBarra1btnRefreshClick(Sender: TObject);
begin
  try
   Programacion.Active := False ;
   Programacion.Open
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programación de Categorias Personal', 'Al actualizar registro', 0);
    end;
  end;
end;

procedure TfrmPersonalProgramado.frmBarra1btnExitClick(Sender: TObject);
begin
{   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;      }
   Close
end;
procedure TfrmPersonalProgramado.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdCantidad,key) then
   key:=#0;
  if key = #13 then
    tdIdFecha.SetFocus
end;

procedure TfrmPersonalProgramado.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdIdFecha.SetFocus 
end;

procedure TfrmPersonalProgramado.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmPersonalProgramado.Copy1Click(Sender: TObject);
begin
  try
    UtGrid.AddRowsFromClip;
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programación de Categorias Personal', 'Al pegar registro', 0);
   end;
  end;
end;

procedure TfrmPersonalProgramado.Cut2Click(Sender: TObject);
begin
    UtGrid.CopyRowsToClip;
end;

procedure TfrmPersonalProgramado.dbgcxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click
end;

procedure TfrmPersonalProgramado.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmPersonalProgramado.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmPersonalProgramado.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmPersonalProgramado.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmPersonalProgramado.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmPersonalProgramado.Salir1Click(Sender: TObject);
begin
    frmbarra1.btnExit.Click
end;

procedure TfrmPersonalProgramado.grid_personalprogramadoEnter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPersonalProgramado.grid_personalprogramadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPersonalProgramado.grid_personalprogramadoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If frmBarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPersonalProgramado.grid_personalprogramadoMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPersonalProgramado.grid_personalprogramadoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPersonalProgramado.grid_personalprogramadoTitleClick(
  Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmPersonalProgramado.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdCantidad.SetFocus
end;

procedure TfrmPersonalProgramado.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entradaPU;
end;

procedure TfrmPersonalProgramado.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salidaPU;
end;

procedure TfrmPersonalProgramado.tdCantidadChange(Sender: TObject);
begin
 tdbeditchangef(tdCantidad, 'Cantidad');
end;

procedure TfrmPersonalProgramado.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaPU;
end;

procedure TfrmPersonalProgramado.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaPU;
end;

procedure TfrmPersonalProgramado.ProgramaciondCantidadSetText(Sender: TField;
  const Text: string);
begin
 Sender.Value:=abs(strtoFloatdef(text,0));
end;

procedure TfrmPersonalProgramado.PropuestaMensual1Click(Sender: TObject);
Var
    sMes    : String ;
    sAno    : String ;
    sCantidad : String ;
    dCantidad : Real ;
    dMes    : String ;
    sFecha  : String ;
    dFecha  : TDateTime ;
begin
    If MessageDlg('Desea Generar la cantidad programada de personal diario apartir de una propuesta mensual?',
       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
        sMes := UPPERCASE(InputBox('Inteligent','Introduce el mes/Año que deseas generar [ej. Enero/2005]?', '')) ;
        If Pos ('ENERO|FEBRERO|MARZO|ABRIL|MAYO|JUNIO|JULIO|AGOSTO|SEPTIEMBRE|OCTUBRE|NOVIEMBRE|DICIEMBRE' , sMes ) = 0 Then
        Begin
            sAno := midstr( sMes , Pos ('/' , sMes ) + 1 , 4 ) ;
            sMes := midstr( sMes , 1 , Pos ('/' , sMes ) - 1 ) ;
            sCantidad := UPPERCASE(InputBox('Inteligent','Introduce la cantidad de personal diario para el mes de ' + sMes + '.' , '')) ;
            If ( sCantidad <> '' ) And ( sCantidad <> '0' ) Then
            Begin
                 dMes := '00' ;
                 If sMes = 'ENERO' Then dMes := '01' ;
                 If sMes = 'FEBRERO' Then dMes := '02' ;
                 If sMes = 'MARZO' Then dMes := '03' ;
                 If sMes = 'ABRIL' Then dMes := '04' ;
                 If sMes = 'MAYO' Then dMes := '05' ;
                 If sMes = 'JUNIO' Then dMes := '06' ;
                 If sMes = 'JULIO' Then dMes := '07' ;
                 If sMes = 'AGOSTO' Then dMes := '08' ;
                 If sMes = 'SEPTIEMBRE' Then dMes := '09' ;
                 If sMes = 'OCTUBRE' Then dMes := '10' ;
                 If sMes = 'NOVIEMBRE' Then dMes := '11' ;
                 If sMes = 'DICIEMBRE' Then dMes := '12' ;

                 If dMes <> '00' Then
                 Begin
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zCommand.SQL.Add ( 'Delete from personalprogramado where sContrato = :contrato and Month(dIdFecha) = :mes') ;
                     connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                     connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                     connection.zCommand.Params.ParamByName('mes').DataType := ftInteger ;
                     connection.zCommand.Params.ParamByName('mes').Value :=  dMes ;
                     connection.zCommand.ExecSQL ;
                     sFecha := '01/' + dMes + '/' + sAno ;
                     dFecha := StrtoDate( sFecha ) ;
                     dCantidad := strtofloat ( sCantidad ) ;
                     While MonthOf ( dFecha ) = StrtoInt ( dMes ) Do
                     Begin
                         Programacion.Append ;
                         Try
                             Programacion.FieldValues['sContrato'] := global_contrato ;
                             Programacion.FieldValues['dIdFecha'] := dFecha ;
                             Programacion.FieldValues['dCantidad'] := dCantidad ;
                             Programacion.Post ;
                         Except
                             on e : exception do begin
                                 Programacion.Cancel ;
                                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Programación de Categorias Personal', 'Al generar propuesta mensual registro', 0);
                             end;
                         End ;
                         dFecha :=  dFecha + 1 ;
                     End ;
                     Programacion.Active := False ;
                     Programacion.Open 
                End
            End
            Else
                MessageDlg('Formato de fecha invalido', mtInformation, [mbOk], 0);

        End
    End

end;



end.
