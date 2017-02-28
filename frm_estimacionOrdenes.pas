unit frm_estimacionOrdenes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math, unitEstimacion,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  Grids, DBGrids, rxToolEdit, RXDBCtrl, CheckLst, JvExControls, JvxCheckListBox,
  ZAbstractDataset, DBDateTimePicker;
  function keyFiltroTdbedit (tdb:tdbedit;tecla:char):boolean;
  function keyFiltroTedit (tdb:tedit;tecla:char):boolean;
type
  TfrmEstimacionOrdenes = class(TForm)
    pgOpciones: TsPageControl;
    pgPartidas: TsTabSheet;
    CmdCancel: TButton;
    GroupQuality: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    OrdenesAnexos: TZReadOnlyQuery;
    ds_OrdenesAnexos: TDataSource;
    Label2: TLabel;
    tsOrdenes: TDBLookupComboBox;
    DBGrid_Convenios: TDBGrid;
    Label5: TLabel;
    tTipoConvenio: TDBEdit;
    Label4: TLabel;
    tDescripcion: TDBEdit;
    Convenios: TZReadOnlyQuery;
    Label6: TLabel;
    Label7: TLabel;
    tMonedaMN: TDBEdit;
    tMonedaDLL: TDBEdit;
    Label8: TLabel;
    tmComentarios: TDBMemo;
    ds_convenios: TDataSource;
    CheckBox1: TCheckBox;
    ConveniossDescripcion: TStringField;
    ConveniosdFechaFinal: TDateField;
    ConveniosdMontoMN: TFloatField;
    ConveniosdMontoDLL: TFloatField;
    ConveniossIdTipoConvenio: TStringField;
    ConveniosmComentarios: TMemoField;
    ConveniossIdConvenio: TStringField;
    ConveniossContrato: TStringField;
    ConveniosdFechaInicio: TDateField;
    Conveniostipo: TStringField;
    CmdNext: TButton;
    GrupoEstimacion: TGroupBox;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lblTipo: TLabel;
    tFecha_I: TDBDateEdit;
    tFecha_F: TDBDateEdit;
    tNumeroEstimacion: TEdit;
    ds_Recursos: TDataSource;
    Recursos: TZQuery;
    RecursosdFechaVigencia: TDateField;
    RecursossAnexo: TStringField;
    RecursossNumeroActividad: TStringField;
    RecursosiItemOrden: TIntegerField;
    RecursosdCantidad: TIntegerField;
    RecursossContrato: TStringField;
    RecursossNumeroOrden: TStringField;
    RecursossDescripcion: TStringField;
    RecursosAnterior: TIntegerField;
    qryOrdenesgralfecha: TZReadOnlyQuery;
    qryOrdenesgralfechadFechaVigencia: TDateField;
    qryOrdenesGral: TZReadOnlyQuery;
    ds_ordenesdetrabajo: TDataSource;
    OrdenesAnexossContrato: TStringField;
    OrdenesAnexossTipoObra: TStringField;
    PopupConvenios: TPopupMenu;
    PTPersonal1: TMenuItem;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure tsOrdenesExit(Sender: TObject);
    procedure CmdNextClick(Sender: TObject);
    procedure InsertaAcumulados(dParamEstimacion, dParamEstimacionSub, dParamTipo : string; dParamConsecutivo : integer);
    procedure InsertaDatos(  paramAnexo, paramWbs, paramWbsAnt,
                             paramActividad,
                             paramItem,
                             paramDescripcion,
                             paramMedida : String ; paramiOrden : integer; paramCostoMN, paramCostoDLL,
                             paramVentaMN,
                             paramVentaDLL,
                             paramCantAnexo,paramCantidad : double);
    procedure PTPersonal1Click(Sender: TObject);
    procedure tFecha_FExit(Sender: TObject);
    procedure tFecha_FChange(Sender: TObject);
    procedure tFecha_IChange(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaInicioChange(Sender: TObject);
    procedure tNumeroEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure tNumeroEstimacionChange(Sender: TObject);
    procedure tMonedaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tMonedaMNChange(Sender: TObject);
    procedure tMonedaDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tMonedaDLLChange(Sender: TObject);
    procedure AvancesFisicos(paramContrato, paramConvenio: string; paramFecha : tDate);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionOrdenes: TfrmEstimacionOrdenes;
  Bandera, Fecha  : string;
  oper            : integer ;
  Consecutivo     : integer;
implementation

uses
    frm_EstimacionGeneral, frm_Recursos_personal, frm_estimacionRecursosPT;

{$R *.dfm}

procedure TfrmEstimacionOrdenes.CmdNextClick(Sender: TObject);
var
   Q_Ordenes,
   Q_Item,
   Q_Movimientos,
   Q_Recursos,
   Q_pt           : TZReadOnlyQuery;
   Numero, Indice : integer;
   Cantidad       : double;
   Mensaje        : string;
   lNuevoOrden    : boolean;
begin
   Q_Movimientos := TZReadOnlyQuery.Create(self);
   Q_Movimientos.Connection := connection.zConnection;

   Q_Recursos := TZReadOnlyQuery.Create(self);
   Q_Recursos.Connection := connection.zConnection;

   Q_pt := TZReadOnlyQuery.Create(self);
   Q_pt.Connection := connection.zConnection;

   qryOrdenesGralFecha.Active := False ;
   qryOrdenesGralfecha.Params.ParamByName('Contrato').DataType := ftString ;
   qryOrdenesGralfecha.Params.ParamByName('Contrato').Value    := tsOrdenes.Text;
   qryOrdenesGralfecha.Open ;

   Q_Ordenes := TZReadOnlyQuery.Create(self);
   Q_Ordenes.Connection := connection.zConnection;

   Q_Item := TZReadOnlyQuery.Create(self);
   Q_Item.Connection := connection.zConnection;

   lNuevoOrden := False;

   {P R I M E R  M E N S A J E   A L  U S U A R I O ..}
   {Si el usuario mete una orden en una estimacion desautorizada anterior y ya existen estimaciones con ordenes y montos.. enviamos el primer mensaje..}
   Q_Ordenes.Active := False;
   Q_Ordenes.SQL.Clear;
   Q_Ordenes.SQL.Add('select iNumeroEstimacion, sIdTipoEstimacion from estimacion_general where idConsecutivo >:Consecutivo ');
   Q_Ordenes.ParamByName('Consecutivo').AsInteger := frmEstimacionGeneral.EstimacionGeneral.FieldValues['idConsecutivo'];
   Q_Ordenes.Open;

   while not Q_Ordenes.Eof do
   begin
      {Ahora consultamos si hay Consecutivos mayores a la estimacions seleciconada si es asi, Avisamos al usuario que sus acumulados se veran afectados..}
      Q_Recursos.Active := False;
      Q_Recursos.SQL.Clear;
      Q_Recursos.SQL.Add('select iConsecutivo from estimacion_actividades where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo group by iNumeroEstimacion, sIdTipoEstimacion ');
      Q_Recursos.ParamByName('Estimacion').AsString := Q_Ordenes.FieldValues['iNumeroEstimacion'] ;
      Q_Recursos.ParamByName('Tipo').AsString       := Q_Ordenes.FieldValues['sIdTipoEstimacion'] ;
      Q_Recursos.Open;

      if Q_Recursos.RecordCount > 0 then
      begin
          MessageDLG('Existen Estimaciones con Ordenes / Anexos posteriores a la Estmacion No. '+tNumeroEstimacion.Text+'. Al insertar la Orden Actual cambiarán los Acumulados! ',mtInformation, [mbOk],0);
          lNuevoOrden := True;
          Q_Ordenes.Last;
      end;
      Q_Ordenes.Next;
   end;

   {Mensajes...}
   if (OrdenesAnexos.FieldValues['sTipoObra']) <> 'PROGRAMADA' then
   begin
       {Aqui verificamos si existen reportes diarios de la Orden/Anexo pendientes de Autorizar, para obtener las pernoctas del mes..}
       Q_Ordenes.Active := False;
       Q_Ordenes.SQL.Clear;
       Q_Ordenes.SQL.Add('select lStatus from reportediario where sContrato =:Contrato and dIdFecha >=:Fecha_I '+
                         'and dIdFecha <=:Fecha_F and lStatus <> "Autorizado" ');
       Q_Ordenes.ParamByName('Contrato').AsString := tsOrdenes.Text;
       Q_Ordenes.ParamByName('Fecha_I').AsDate    := tFecha_I.Date;
       Q_Ordenes.ParamByName('Fecha_F').AsDate    := tFecha_F.Date;
       Q_Ordenes.Open;

       if Q_Ordenes.RecordCount > 0 then
          Mensaje := '» Existen reportes diarios de la Orden '+ tsOrdenes.Text +' sin Autorizar.'+#13+'  Favor de Validar/Autorizar para Obtener información actulaizada de:'+#13+'  » Personal '+#13+'  » Equipo '+#13+'  » Pernoctas.';

       {Aqui verificamos si existen reportes diarios de Barco sin autorizar..}
       Q_Ordenes.Active := False;
       Q_Ordenes.SQL.Clear;
       Q_Ordenes.SQL.Add('select lStatus from reportediario where sContrato =:Contrato and dIdFecha >=:Fecha_I '+
                         'and dIdFecha <=:Fecha_F and lStatus <> "Autorizado" ');
       Q_Ordenes.ParamByName('Contrato').AsString := global_contrato_barco;
       Q_Ordenes.ParamByName('Fecha_I').AsDate    := tFecha_I.Date;
       Q_Ordenes.ParamByName('Fecha_F').AsDate    := tFecha_F.Date;
       Q_Ordenes.Open;

       if Q_Ordenes.RecordCount > 0 then
          Mensaje := Mensaje + #13 +'» Existen reportes diarios de Barco sin Autorizar.';
   end
   else
   begin
       {Aqui verificamos si existen Generadores de Obra sin autorizar..}
       Q_Ordenes.Active := False;
       Q_Ordenes.SQL.Clear;
       Q_Ordenes.SQL.Add('select lStatus from estimaciones where sContrato =:Contrato and dFechaInicio >=:Fecha_I '+
                         'and dFechaFinal <=:Fecha_F and lStatus <> "Autorizado" ');
       Q_Ordenes.ParamByName('Contrato').AsString := tsOrdenes.Text;
       Q_Ordenes.ParamByName('Fecha_I').AsDate    := tFecha_I.Date;
       Q_Ordenes.ParamByName('Fecha_F').AsDate    := tFecha_F.Date;
       Q_Ordenes.Open;

       if Q_Ordenes.RecordCount > 0 then
          Mensaje := Mensaje + #13 +'» Existen Generadores de Obra sin Autorizar.';
   end;

   if Mensaje <> '' then
      messageDLG(Mensaje,mtWarning,[mbOk],0);

   {Buscamos si existen recursos pendientes de Cobrar..}
   Q_Recursos.Active := False;
   Q_Recursos.SQL.Clear;
   Q_Recursos.SQL.Add('select e.iNumeroEstimacion, t.sDescripcion, o.dFechaInicio, o.dFechafinal '+
                      'from estimacion_actividades e '+
                      'inner join estimacion_orden o on (o.sContrato = e.sContrato and o.iNumeroEstimacion = e.iNumeroEstimacion and o.sIdtipoEstimacion = e.sIdTipoEstimacion) '+
                      'inner join tiposdeestimacion t on (e.sIdTipoEstimacion  = t.sIdTipoEstimacion) '+
                      'where e.sContrato =:Contrato and e.dCantidadRestante > 0 group by e.sContrato, e.iNumeroEstimacion, e.sIdTipoEstimacion');
   Q_Recursos.ParamByName('Contrato').AsString := tsOrdenes.Text;
   Q_Recursos.Open;

   Mensaje := '';
   if Q_Recursos.RecordCount > 0 then
      Mensaje := '» Existen Recursos de Estimacion Pendientes de Cobrar! ';

      Mensaje := Mensaje +'              Orden '+ tsOrdenes.Text;
   while not Q_Recursos.Eof do
   begin
       Mensaje := Mensaje + #13+'  » EST. '+ Q_Recursos.FieldValues['iNumeroEstimacion'] + ' ['+ Q_Recursos.FieldValues['sDescripcion'] + ' '+ DateToStr(Q_Recursos.FieldValues['dFechaInicio']) +' AL '+ DateToStr(Q_Recursos.FieldValues['dFechaFinal'])+ ']';
       Q_Recursos.Next;
   end;

   Mensaje := Mensaje +#13+ '  Ir a Módulo Estimaciones S/C';
   if Q_Recursos.RecordCount > 0 then
      messageDLG(Mensaje,mtWarning,[mbOk],0);    

   Q_Item.Active := False;
   Q_Item.SQL.Clear;
   Q_Item.SQL.Add('select MAX(iConsecutivo) as Consecutivo from estimacion_orden order by iConsecutivo ');
   Q_Item.Open;

   if Q_item.RecordCount > 0 then
   begin
      try
        Consecutivo := Q_Item.FieldValues['Consecutivo'] + 1
      Except
           Consecutivo := 1;
      end;
   end;

//   try
      {Primero Guardamos los Datos de la Orden / Anexo...}
      Q_Ordenes.Active := False;
      Q_Ordenes.SQL.Clear;
      Q_Ordenes.SQL.Add('select * from estimacion_orden where iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sContrato =:Contrato ');
      Q_Ordenes.ParamByName('Estimacion').AsString    := tNumeroEstimacion.Text;
      Q_Ordenes.ParamByName('EstimacionSub').AsString := '';
      Q_Ordenes.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
      Q_Ordenes.ParamByName('Contrato').AsString      := tsOrdenes.Text;
      Q_Ordenes.Open;

      if Q_Ordenes.RecordCount > 0 then
      begin
           messageDLG('La Estimacion '+tNumeroEstimacion.Text+' del Anexo/Orden '+tsOrdenes.Text+' ya Existe!', mtInformation, [mbOk], 0);
           exit;
      end;

      Q_Ordenes.Active := False;
      Q_Ordenes.SQL.Clear;
      Q_Ordenes.SQL.Add('insert into estimacion_orden (iNumeroEstimacion,iNumeroEstimacionSub,sIdTipoEstimacion,sContrato,iConsecutivo,sIdConvenio,dFechaInicio_Convenio,dFechaFinal_Convenio,dFechaInicio,dFechaFinal,lStatus,sIdUsuario,mComentarios) '+
                     'values(:Estimacion,"",:Tipo,:Contrato,:Id,:Convenio,:FIConvenio,:FFConvenio,:FI,:FF,:status,:usuario,"*")');
      Q_Ordenes.ParamByName('Estimacion').AsString := tNumeroEstimacion.Text;
      Q_Ordenes.ParamByName('Tipo').AsString       := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
      Q_Ordenes.ParamByName('Contrato').AsString   := tsOrdenes.Text;
      Q_Ordenes.ParamByName('Id').AsInteger        := Consecutivo;
      Q_Ordenes.ParamByName('Convenio').AsString   := convenios.FieldValues['sIdConvenio'];
      Q_Ordenes.ParamByName('FIConvenio').AsDate   := tFecha_I.Date;
      Q_Ordenes.ParamByName('FFConvenio').AsDate   := tFecha_F.Date;
      Q_Ordenes.ParamByName('FI').AsDate           := tFecha_I.Date;
      Q_Ordenes.ParamByName('FF').AsDate           := tFecha_F.Date;
      Q_Ordenes.ParamByName('status').AsString     := 'Pendiente';
      Q_Ordenes.ParamByName('usuario').AsString    := global_usuario;
      Q_Ordenes.ExecSQL;

      {Ahora vamos a obtener el consecutivo para los recuros..}
      Q_Item.Active := False;
      Q_Item.SQL.Clear;
      Q_Item.SQL.Add('select MAX(iConsecutivo) as Consecutivo from estimacion_actividades order by iConsecutivo ');
      Q_Item.Open;

      if Q_item.RecordCount > 0 then
      begin
        try
           Consecutivo := Q_Item.FieldValues['Consecutivo'] + 1
        Except
           Consecutivo := 1;
        end;
      end;

      {Ahora buscamos los recursos seleccionados.. Continuamos con personal, equipo y pernoctas...}
      if tsOrdenes.Text <> '' then
      begin
          {Definimos si es un Anexo u Orden ...}
          if (OrdenesAnexos.FieldValues['sTipoObra']) <> 'PROGRAMADA' then
          begin
              {Ahora buscamos los recursos seleccionados.. Iniciamos con Movimientos de Barco.}
              Q_Movimientos.Active := False;
              Q_Movimientos.SQL.Clear;
              Q_Movimientos.SQL.Add('Select * from tiposdemovimiento where sContrato =:Contrato and sClasificacion = "Movimiento de Barco" ');
              Q_Movimientos.ParamByName('Contrato').AsString := global_contrato_barco;
              Q_Movimientos.Open;

              Q_Item.Active := False;
              Q_Item.SQL.Clear;
              Q_Item.SQL.Add('select sAnexo from anexos where sTipo = "BARCO"');
              Q_Item.Open;

              Numero := 0;
              Indice := 0;
              while not Q_Movimientos.Eof do
              begin
                  {Ahora buscamos los recursos seleccionados.. Iniciamos con Movimientos de Barco.}
                  Q_Recursos.Active := False;
                  Q_Recursos.SQL.Clear;
                  Q_Recursos.SQL.Add('Select f.sContrato, f.dIdFecha, t.sIdTipoMovimiento, t.sDescripcion, sum(f.sFactor) as sFactor, t.sMedida, t.iOrden, t.dVentaMN, t.dVentaDLL '+
                                     'from fasesxorden f '+
                                     'Inner Join tiposdemovimiento t On (t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco" ) '+
                                     'where f.sContrato =:Contrato and f.dIdFecha >=:FechaInicio and f.dIdFecha <=:FechaFinal and f.sClasificacion =:Tipo '+
                                     'Group By f.sContrato, f.sClasificacion order By f.sContrato, f.sNumeroOrden, t.iOrden, f.dIdFecha ') ;
                  Q_Recursos.ParamByName('FechaInicio').AsDate := tFecha_I.Date ;
                  Q_Recursos.ParamByName('FechaFinal').AsDate  := tFecha_F.Date ;
                  Q_Recursos.ParamByName('Contrato').AsString  := tsOrdenes.Text;
                  Q_Recursos.ParamByName('Tipo').AsString      := Q_Movimientos.FieldValues['sIdTipoMovimiento'];
                  Q_Recursos.Open;

                  {Ahora buscamos el total de movimientos de acuerdo a la PT.}
                  Q_pt.Active := False;
                  Q_pt.SQL.Clear;
                  Q_pt.SQL.Add('select dCantidad from movimientos_contrato where sContrato =:Contrato and sIdConvenio =:Convenio and sIdTipoMovimiento =:Tipo ');
                  Q_pt.ParamByName('Contrato').AsString := tsOrdenes.Text ;
                  Q_pt.ParamByName('Convenio').AsString := convenios.FieldValues['sIdConvenio'] ;
                  Q_pt.ParamByName('Tipo').AsString     := Q_Movimientos.FieldValues['sIdTipoMovimiento'];
                  Q_pt.Open;

                  if Q_pt.RecordCount > 0 then
                     Cantidad := Q_pt.FieldValues['dCantidad']
                  else
                     Cantidad := 0;

                  if Q_Recursos.RecordCount > 0 then
                  begin
                      {Llamamos funcion para insertar datos...}
                      InsertaDatos( Q_Item.FieldValues['sAnexo'], '', '',
                                  Q_Recursos.FieldValues['sIdTipoMovimiento'],'',
                                  Q_Recursos.FieldValues['sDescripcion'],
                                  Q_Recursos.FieldValues['sMedida'],
                                  Q_Recursos.FieldValues['iOrden'],0,0,
                                  Q_Recursos.FieldValues['dVentaMN'],
                                  Q_Recursos.FieldValues['dVentaDLL'],
                                  Cantidad,
                                  Q_Recursos.FieldValues['sFactor']);
                  end;
                  Q_Movimientos.Next;
              end;

              {Iniciamos con el personal...}
              Q_Recursos.Active := False ;
              Q_Recursos.SQL.Clear ;
              Q_Recursos.SQL.Add('select bp.sContrato, bp.sIdPersonal,p.sDescripcion, p.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor, p.iItemOrden, p.dCostoMN, p.dCostoDLL, p.dVentaMN, p.dVentaDLL from bitacoradepersonal bp '+
                                 'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) '+
                                 'Inner Join personal p on (bp.sContrato = p.sContrato and  bp.sIdPersonal = p.sIdPersonal And p.lCobro = "Si" and p.sIdTipoPersonal <> "PU") '+
                                 'Inner Join grupospersonal gp on (p.sAgrupaPersonal = gp.sIdGrupo) '+
                                 'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") '+
                                 'where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaInicio '+
                                 'and bp.dIdFecha <=:FechaFinal '+
                                 'Group By bp.sContrato, p.sIdPersonal '+
                                 'order By bp.sContrato, p.iItemOrden, bp.dIdFecha') ;
              Q_Recursos.ParamByName('FechaInicio').AsDate := tFecha_I.Date ;
              Q_Recursos.ParamByName('FechaFinal').AsDate := tFecha_F.Date ;
              Q_Recursos.ParamByName('Contrato').AsString  := tsOrdenes.Text ;
              Q_Recursos.Open ;

              Q_Item.Active := False;
              Q_Item.SQL.Clear;
              Q_Item.SQL.Add('select sAnexo from anexos where sTipo = "PERSONAL"');
              Q_Item.Open;

              while not Q_Recursos.Eof do
              begin
                  {Ahora buscamos el total de personal de acuerdo a la PT.}
                  Q_pt.Active := False;
                  Q_pt.SQL.Clear;
                  Q_pt.SQL.Add('select dCantidad from personal_contrato where sContrato =:Contrato and sIdConvenio =:Convenio and sIdPersonal =:Personal ') ;
                  Q_pt.ParamByName('Contrato').AsString  := tsOrdenes.Text ;
                  Q_pt.ParamByName('Convenio').AsString  := convenios.FieldValues['sIdConvenio'] ;
                  Q_pt.ParamByName('Personal').AsString  := Q_Recursos.FieldValues['sIdPersonal'];
                  Q_pt.Open;

                  if Q_pt.RecordCount > 0 then
                    Cantidad := Q_pt.FieldValues['dCantidad']
                  else
                    Cantidad := 0;

                  {Llamamos funcion para insertar datos...}
                  InsertaDatos(Q_Item.FieldValues['sAnexo'],'', '',
                               Q_Recursos.FieldValues['sIdPersonal'],'',
                               Q_Recursos.FieldValues['sDescripcion'],
                               Q_Recursos.FieldValues['sMedida'],
                               Q_Recursos.FieldValues['iItemOrden'],
                               Q_Recursos.FieldValues['dCostoMN'],
                               Q_Recursos.FieldValues['dCostoDLL'],
                               Q_Recursos.FieldValues['dVentaMN'],
                               Q_Recursos.FieldValues['dVentaDLL'],
                               Cantidad,
                               Q_Recursos.FieldValues['sFactor']);
                  Q_Recursos.Next;
              end;

              {Continuamos con el Equipo...}
              Q_Recursos.Active := False ;
              Q_Recursos.SQL.Clear ;
              Q_Recursos.SQL.Add('select  bp.sContrato, bp.sIdEquipo, e.sDescripcion,e.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor, e.iItemOrden, e.dCostoMN, e.dCostoDLL, e.dVentaMN, dVentaDLL from bitacoradeequipos bp '+
                                 'Inner Join bitacoradeactividades ba On (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ba.iIdDiario = bp.iIdDiario) '+
                                 'Inner Join equipos e on (bp.sContrato = e.sContrato and  bp.sIdEquipo = e.sIdEquipo And e.lCobro = "Si" and e.sIdTipoEquipo <> "PU") '+
                                 'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") '+
                                 'where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaInicio '+
                                 'and bp.dIdFecha <=:FechaFinal '+
                                 'Group By bp.sContrato, e.sIdEquipo '+
                                 'order By bp.sContrato, e.iItemOrden, bp.dIdFecha ') ;
              Q_Recursos.ParamByName('FechaInicio').AsDate := tFecha_I.Date ;
              Q_Recursos.ParamByName('FechaFinal').AsDate  := tFecha_F.Date ;
              Q_Recursos.ParamByName('Contrato').AsString  := tsOrdenes.Text ;
              Q_Recursos.Open ;

              Q_Item.Active := False;
              Q_Item.SQL.Clear;
              Q_Item.SQL.Add('select sAnexo from anexos where sTipo = "EQUIPO"');
              Q_Item.Open;

              while not Q_Recursos.Eof do
              begin
                  {Ahora buscamos el total de equipos de acuerdo a la PT.}
                  Q_pt.Active := False;
                  Q_pt.SQL.Clear;
                  Q_pt.SQL.Add('select dCantidad from equipos_contrato where sContrato =:Contrato and sIdConvenio =:Convenio and sIdEquipo =:Equipo ') ;
                  Q_pt.ParamByName('Contrato').AsString  := tsOrdenes.Text ;
                  Q_pt.ParamByName('Convenio').AsString  := convenios.FieldValues['sIdConvenio'];
                  Q_pt.ParamByName('Equipo').AsString    := Q_Recursos.FieldValues['sIdEquipo'];
                  Q_pt.Open;

                  if Q_pt.RecordCount > 0 then
                    Cantidad := Q_pt.FieldValues['dCantidad']
                  else
                    Cantidad := 0;

                  {Llamamos funcion para insertar datos...}
                  InsertaDatos(Q_Item.FieldValues['sAnexo'],'', '',
                               Q_Recursos.FieldValues['sIdEquipo'],'',
                               Q_Recursos.FieldValues['sDescripcion'],
                               Q_Recursos.FieldValues['sMedida'],
                               Q_Recursos.FieldValues['iItemOrden'],
                               Q_Recursos.FieldValues['dCostoMN'],
                               Q_Recursos.FieldValues['dCostoDLL'],
                               Q_Recursos.FieldValues['dVentaMN'],
                               Q_Recursos.FieldValues['dVentaDLL'],
                               Cantidad,
                               Q_Recursos.FieldValues['sFactor']);
                  Q_Recursos.Next;
              end;

              {Luego las Pernoctas...}
              Q_Recursos.Active := False ;
              Q_Recursos.SQL.Clear ;
              Q_Recursos.SQL.Add('select  bp.sContrato, ct.sIdPernocta, ct.sIdCuenta, ct.sDescripcion, ct.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor, ct.dVentaMN, ct.dVentaDLL, ct.dCostoMN, ct.dCostoDLL from bitacoradepernocta bp '+
                                 'Inner Join cuentas ct on (bp.sIdCuenta = ct.sIdCuenta) '+
                                 'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") '+
                                 'where bp.sContrato =:Contrato and bp.dIdFecha >=:FechaInicio '+
                                 'and bp.dIdFecha <=:FechaFinal '+
                                 'Group By bp.sContrato, bp.sIdCuenta '+
                                 'order By bp.sContrato, bp.sIdCuenta, bp.dIdFecha ') ;
              Q_Recursos.ParamByName('FechaInicio').AsDate := tFecha_I.Date ;
              Q_Recursos.ParamByName('FechaFinal').AsDate  := tFecha_F.Date ;
              Q_Recursos.ParamByName('Contrato').AsString  := tsOrdenes.Text ;
              Q_Recursos.Open ;

              Q_Item.Active := False;
              Q_Item.SQL.Clear;
              Q_Item.SQL.Add('select sAnexo from anexos where sTipo = "PERNOCTA"');
              Q_Item.Open;

              while not Q_Recursos.Eof do
              begin
                  {Ahora buscamos el total de equipos de acuerdo a la PT.}
                  Q_pt.Active := False;
                  Q_pt.SQL.Clear;
                  Q_pt.SQL.Add('select dCantidad from cuentas_contrato where sContrato =:Contrato and sIdConvenio =:Convenio and sIdCuenta =:Pernocta ') ;
                  Q_pt.ParamByName('Contrato').AsString  := tsOrdenes.Text ;
                  Q_pt.ParamByName('Convenio').AsString  := convenios.FieldValues['sIdConvenio'];
                  Q_pt.ParamByName('Pernocta').AsString  := Q_Recursos.FieldValues['sIdCuenta'];
                  Q_pt.Open;

                  if Q_pt.RecordCount > 0 then
                    Cantidad := Q_pt.FieldValues['dCantidad']
                  else
                    Cantidad := 0;

                  {Llamamos funcion para insertar datos...}
                  InsertaDatos(Q_Item.FieldValues['sAnexo'], '', '',
                               Q_Recursos.FieldValues['sIdPernocta'],'',
                               Q_Recursos.FieldValues['sDescripcion'],
                               Q_Recursos.FieldValues['sMedida'],
                               StrToInt(Q_Recursos.FieldValues['sIdCuenta']),
                               Q_Recursos.FieldValues['dCostoMN'],
                               Q_Recursos.FieldValues['dCostoDLL'],
                               Q_Recursos.FieldValues['dVentaMN'],
                               Q_Recursos.FieldValues['dVentaDLL'],
                               Cantidad,
                               Q_Recursos.FieldValues['sFactor']);
                   Q_Recursos.Next;
              end;

              {Por ultimo entran los materiales de los anexos de Materiales...}
              Q_Recursos.Active := False ;
              Q_Recursos.SQL.Clear ;
              Q_Recursos.SQL.Add('select  bp.sContrato, a.sIdFase, bp.sIdMaterial, a.mDescripcion as sDescripcion, a.sMedida, bp.dIdFecha, sum(bp.dCantidad) as sFactor, a.dVentaMN, a.dVentaDLL, '+
                                 'a.dCantidadAnexo, a.iItemOrden, a.dCostoMN, a.dCostoDLL, a.sWbs from bitacorademateriales bp '+
                                 'Inner Join actividadesxanexo  a on (bp.sIdMaterial = a.sNumeroActividad) '+
                                 'Inner Join contratos c on (bp.sContrato = c.sContrato and c.sTipoObra <> "PROGRAMADA") '+
                                 'where bp.sContrato =:Contrato and bp.dIdFecha >= :FechaInicio '+
                                 'and bp.dIdFecha <= :FechaFinal '+
                                 'Group By bp.sContrato, a.sIdFase, bp.sIdMaterial '+
                                 'order By bp.sContrato, a.iItemOrden, bp.dIdFecha ') ;
              Q_Recursos.ParamByName('FechaInicio').AsDate := tFecha_I.Date ;
              Q_Recursos.ParamByName('FechaFinal').AsDate  := tFecha_F.Date ;
              Q_Recursos.ParamByName('Contrato').AsString  := tsOrdenes.Text ;
              Q_Recursos.Open ;

              while not Q_Recursos.Eof do
              begin
                  {Llamamos funcion para insertar datos...}
                  InsertaDatos(Q_Recursos.FieldValues['sIdFase'],
                               Q_Recursos.FieldValues['sWbs'],'',
                               Q_Recursos.FieldValues['sIdMaterial'],
                               Q_Recursos.FieldValues['iItemOrden'],
                               Q_Recursos.FieldValues['sDescripcion'],
                               Q_Recursos.FieldValues['sMedida'], 0,
                               Q_Recursos.FieldValues['dCostoMN'],
                               Q_Recursos.FieldValues['dCostoDLL'],
                               Q_Recursos.FieldValues['dVentaMN'],
                               Q_Recursos.FieldValues['dVentaDLL'],
                               Q_Recursos.FieldValues['dCantidadAnexo'],
                               Q_Recursos.FieldValues['sFactor']);
                   Q_Recursos.Next;
              end;

          end
          else
          begin
              {Ahora insertamos las partidas de obras progrmadas...}
              {-------------------------------------------------------------------------------}
              {Buscamos las partidas pertenecientes a los generadores del mes...}
              Q_Movimientos.Active := False;
              Q_Movimientos.SQL.Clear;
              Q_Movimientos.SQL.Add('select a.sWbs, a.sNumeroActividad, sum(p.dCantidad) as dCantidad, a.dCantidadAnexo, a.sWbsAnterior, a.mDescripcion, a.iItemOrden, a.sMedida, '+
                                    'a.dCostoMN, a.dCostoDLL, a.dVentaMN, a.dVentaDLL '+
                                    'from estimaciones e '+
                                    'inner join estimacionxpartida p on (e.sContrato = p.sContrato and p.sNumeroGenerador = e.sNumeroGenerador) '+
                                    'inner join actividadesxanexo a on (a.sContrato = e.sContrato and a.sIdConvenio =:Convenio and a.sWbs = p.sWbsContrato '+
                                    'and a.sNumeroActividad = p.sNumeroActividad = a.sTipoActividad = "Actividad") '+
                                    'where e.sContrato =:Contrato and e.dFechaInicio >=:Fecha_I and e.dFechaFinal <=:Fecha_F '+
                                    'group by a.sContrato, a.sWbs, a.sNumeroActividad order by a.iItemOrden');
              Q_Movimientos.ParamByName('Fecha_I').AsDate    := tFecha_I.Date ;
              Q_Movimientos.ParamByName('Fecha_F').AsDate    := tFecha_F.Date ;
              Q_Movimientos.ParamByName('Contrato').AsString := tsOrdenes.Text ;
              Q_Movimientos.ParamByName('Convenio').AsString := convenios.FieldValues['sIdConvenio'];
              Q_Movimientos.Open;

              Q_Item.Active := False;
              Q_Item.SQL.Clear;
              Q_Item.SQL.Add('select sIdAnexo from contratos where sContrato =:Contrato');
              Q_Item.ParamByName('Contrato').AsString := tsOrdenes.Text;
              Q_Item.Open;

              while not Q_Movimientos.Eof do
              begin
                  {Llamamos funcion para insertar datos...}
                  InsertaDatos(Q_Item.FieldValues['sIdAnexo'],
                               Q_Movimientos.FieldValues['sWbs'],
                               Q_Movimientos.FieldValues['sWbsAnterior'],
                               Q_Movimientos.FieldValues['sNumeroActividad'],
                               Q_Movimientos.FieldValues['iItemOrden'],
                               Q_Movimientos.FieldValues['mDescripcion'],
                               Q_Movimientos.FieldValues['sMedida'],0,
                               Q_Movimientos.FieldValues['dCostoMN'],
                               Q_Movimientos.FieldValues['dCostoDLL'],
                               Q_Movimientos.FieldValues['dVentaMN'],
                               Q_Movimientos.FieldValues['dVentaDLL'],
                               Q_Movimientos.FieldValues['dCantidadAnexo'],
                               Q_Movimientos.FieldValues['dCantidad']);
                  Q_Movimientos.Next;
              end;
          end;
      end;
      {Termina proceso de guardado de datos..}

      {Ahora llamamos el proceso de Avances Fisicos..}
      try
         AvancesFisicos(tsOrdenes.Text, convenios.FieldValues['sIdConvenio'], tFecha_f.Date);
      Except
      end;

      {Lamamos funcion de copiar datos no existentes en estimacion actual..}
      InsertaAcumulados(tNumeroEstimacion.Text, '', frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'], Consecutivo);

      if lNuevoOrden then
      {Esta solo aplicara en casos epciales que se requiera meter una estimacion dentro de un conjutno ya exsitente...}
          OrdenaEstimaciones(tNumeroEstimacion.Text, frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'], frmEstimacionGeneral.EstimacionGeneral.FieldValues['idConsecutivo']);

      MessageDLG('Los Datos se Guardaron Correctamente!', mtInformation, [mbOk], 0);

      frmEstimacionGeneral.EstimacionGeneral.Refresh;
//   Except
//      MessageDLG('Ocurrio un error al Guardar informacion!', mtWarning, [mbOk], 0);
//   end;

end;

function keyFiltroTdbedit (tdb:tdbedit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyfiltrotdbedit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyfiltrotdbedit:=false;
end;

function keyFiltroTedit (tdb:tedit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyfiltrotedit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyfiltrotedit:=false;
end;

procedure TfrmEstimacionOrdenes.FormShow(Sender: TObject);
begin
    OrdenesAnexos.Active;
    OrdenesAnexos.ParamByName('Contrato').AsString := global_contrato_barco;
    OrdenesAnexos.Open;

    if OrdenesAnexos.RecordCount = 0 then
       messageDLG('No existe un códogo principal para las Ordenes / Anexos registradas!', mtInformation, [mbOk], 0);

    tFecha_I.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaInicio'];
    tFecha_F.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaFinal'];
    tNumeroEstimacion.Text := frmEstimacionGeneral.EstimacionGeneral.FieldValues['iNumeroEstimacion'];
    lblTipo.Caption        := frmEstimacionGeneral.EstimacionGeneralsDescripcion.Text;
    tsOrdenes.SetFocus;
end;

procedure TfrmEstimacionOrdenes.tdFechaFinalChange(Sender: TObject);
begin
  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmEstimacionOrdenes.tdFechaFinalExit(Sender: TObject);
begin
  if tdFechaFinal.Date<tdFechaInicio.Date then
    tdFechaFinal.date:=tdFechainicio.Date;
end;

procedure TfrmEstimacionOrdenes.tdFechaInicioChange(Sender: TObject);
begin
    tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmEstimacionOrdenes.tFecha_FChange(Sender: TObject);
begin
  tFecha_F.MinDate:=tFecha_i.Date;
end;

procedure TfrmEstimacionOrdenes.tFecha_FExit(Sender: TObject);
begin
if tFecha_F.Date<tFecha_I.Date then
tFecha_F.date:=tFecha_i.Date;
end;

procedure TfrmEstimacionOrdenes.tFecha_IChange(Sender: TObject);
begin
    tFecha_F.Date:=tFecha_i.Date;
end;



procedure TfrmEstimacionOrdenes.tMonedaDLLChange(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(tMonedaDLL.Text) ))>0  then
        tMonedaDLL.Text:=intToStr((strToInt(tMonedaDLL.text))*-1);
end;

procedure TfrmEstimacionOrdenes.tMonedaDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tMonedaDLL,key) then
      key:=#0;
end;

procedure TfrmEstimacionOrdenes.tMonedaMNChange(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(tMonedaMN.Text) ))>0  then
        tMonedaMN.Text:=intToStr((strToInt(tMonedaMN.text))*-1);
end;

procedure TfrmEstimacionOrdenes.tMonedaMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tMonedaMN,key) then
      key:=#0;
end;

procedure TfrmEstimacionOrdenes.tNumeroEstimacionChange(Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(tNumeroEstimacion.Text) ))>0  then
        tNumeroEstimacion.Text:=intToStr((strToInt(tNumeroEstimacion.text))*-1);
end;

procedure TfrmEstimacionOrdenes.tNumeroEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTedit(tNumeroEstimacion,key) then
      key:=#0;
end;

procedure TfrmEstimacionOrdenes.tsOrdenesExit(Sender: TObject);
begin
    if tsOrdenes.KeyValue = Null then
        messageDLG('Seleccione un Anexo / Orden !', mtInformation, [mbOk], 0)
    else
    begin
        Convenios.Active;
        Convenios.SQL.Clear;
        Convenios.SQL.Add('select c.*, t.sDescripcion as tipo from convenios c '+
                      'inner join tiposdeconvenio t on (t.sIdTipoConvenio = c.sIdTipoConvenio) '+
                      'where sContrato =:Contrato order by dFechaFinal ');
        Convenios.ParamByName('Contrato').AsString := tsOrdenes.KeyValue;
        Convenios.Open;
        DBGrid_convenios.SetFocus;
    end;
end;

procedure TfrmEstimacionOrdenes.InsertaDatos(paramAnexo: string; paramWbs: string; paramWbsAnt: string; paramActividad: string; paramItem: string; paramDescripcion: string; paramMedida: string; paramiOrden: Integer; paramCostoMN: Double; paramCostoDLL: Double; paramVentaMN: Double; paramVentaDLL: Double; paramCantAnexo: Double; paramCantidad: Double);
var
    cadena     : string;
    Q_Insertar : TZReadOnlyQuery;
begin
      Q_Insertar := TZReadOnlyQuery.Create(self);
      Q_Insertar.Connection := connection.zConnection;

      {Aqui se Guardan los datos de los recursos seleccionados...}
      Q_Insertar.Active := False;
      Q_Insertar.SQL.Clear;
      Q_Insertar.SQL.Add('insert into estimacion_actividades (sContrato,iNumeroEstimacion,iNumeroEstimacionSub,sIdTipoEstimacion,iConsecutivo,sAnexo,iOrden,sWbs,sWbsAnterior,sNumeroActividad,iItemOrden,mDescripcion,dCostoMN,'+
                         'dCostoDLL,dVentaMN,dVentaDLL,dCantidadAnexo,sMedida,dCantidad,dCantidadPT) '+
                         'values(:Contrato,:Estimacion,"",:Tipo,:Consecutivo,:Anexo,:Orden,:Wbs,:WbsA,:Actividad,:Item,:Descripcion,:CostoMN,:CostoDLL,:VentaMN,:VentaDLL,'+
                         ':Cantidad_A,:Medida,:Cantidad,:Cantidad)');
      Q_Insertar.ParamByName('Contrato').AsString     := tsOrdenes.Text;
      Q_Insertar.ParamByName('Estimacion').AsString   := tNumeroEstimacion.Text;
      Q_Insertar.ParamByName('Tipo').AsString         := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
      Q_Insertar.ParamByName('Consecutivo').AsInteger := Consecutivo;
      Q_Insertar.ParamByName('Anexo').AsString        := paramAnexo;
      Q_Insertar.ParamByName('Wbs').AsString          := paramWbs;
      Q_Insertar.ParamByName('WbsA').AsString         := paramWbsAnt;
      Q_Insertar.ParamByName('Actividad').AsString    := paramActividad;
      Q_Insertar.ParamByName('Item').AsString         := paramItem;
      Q_Insertar.ParamByName('Orden').AsInteger       := paramiOrden;
      Q_Insertar.ParamByName('Descripcion').AsString  := paramDescripcion;
      Q_Insertar.ParamByName('CostoMN').AsFloat       := paramCostoMN;
      Q_Insertar.ParamByName('CostoDLL').AsFloat      := paramCostoDLL;
      Q_Insertar.ParamByName('VentaMN').Asfloat       := paramVentaMN;
      Q_Insertar.ParamByName('VentaDLL').AsFloat      := paramVentaDLL;
      Q_Insertar.ParamByName('Cantidad_A').AsFloat    := paramCantAnexo;
      Q_Insertar.ParamByName('Medida').AsString       := paramMedida;
      Q_Insertar.ParamByName('Cantidad').AsFloat      := paramCantidad;
      Q_Insertar.ParamByName('Cantidad').AsFloat      := paramCantidad;
      Q_Insertar.ExecSQL;
end;


procedure TfrmEstimacionOrdenes.PTPersonal1Click(Sender: TObject);
begin
     if OrdenesAnexos.FieldValues['sTipoObra'] <> 'PROGRAMADA' then
     begin
         Application.CreateForm(TfrmEstimacionRecursosPT, frmEstimacionRecursosPT);
         frmEstimacionRecursosPT.Show;
     end
     else
         messageDLG('No existen recuros para el Anexo '+ tsOrdenes.Text, mtInformation, [mbOk],0);
end;

procedure TfrmEstimacionOrdenes.InsertaAcumulados(dParamEstimacion: string; dParamEstimacionSub: string; dParamTipo: string; dParamConsecutivo: Integer);
var
     Q_Buscar,
     Q_Item,
     Q_Actualizar  : TZReadOnlyQuery;
     Consecutivo   : integer;
begin
     Q_Buscar := TZReadOnlyQuery.Create(self);
     Q_Buscar.Connection := connection.zConnection;

     Q_Item := TZReadOnlyQuery.Create(self);
     Q_Item.Connection := connection.zConnection;

     Q_Actualizar := TZReadOnlyQuery.Create(self);
     Q_Actualizar.Connection := connection.zConnection;

     {Primero sacamos el ultimo consecutivo anterior}
     Q_Item.Active := False;
     Q_Item.SQL.Clear;
     Q_Item.SQL.Add('select MAX(iConsecutivo) as Consecutivo from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacionSub = "" and iConsecutivo < :Consecutivo group by sContrato ');
     Q_Item.ParamByName('Contrato').AsString     := tsOrdenes.Text;
     Q_Item.ParamByName('Consecutivo').AsInteger := dParamConsecutivo;
     Q_Item.Open;

     if Q_item.RecordCount > 0 then
        Consecutivo := Q_Item.FieldValues['Consecutivo']
     else
        Consecutivo := 0;

     {Iniciamos buscando la estimación anterior}
     Q_Buscar.Active;
     Q_Buscar.SQL.Clear;
     Q_Buscar.SQL.Add('select * from estimacion_actividades where sContrato =:Contrato and iConsecutivo = :Consecutivo');
     Q_Buscar.ParamByName('Contrato').AsString     := tsOrdenes.Text;
     Q_Buscar.ParamByName('Consecutivo').AsInteger := Consecutivo;
     Q_Buscar.Open;

     while not Q_Buscar.Eof do
     begin
         {Buscamos los recursos de la estimacion, sino existen se insertan..}
         Q_Actualizar.Active;
         Q_Actualizar.SQL.Clear;
         Q_Actualizar.SQL.Add('select * from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacion =:Estimacion '+
                              'and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sAnexo =:Anexo and sWbs =:Wbs '+
                              'and sNumeroActividad =:Actividad and sTipoActividad =:TipoActividad and dAcumuladoActual > 0 ');
         Q_Actualizar.ParamByName('Contrato').AsString      := tsOrdenes.Text;
         Q_Actualizar.ParamByName('Estimacion').AsString    := dParamEstimacion;
         Q_Actualizar.ParamByName('EstimacionSub').AsString := dParamEstimacionSub;
         Q_Actualizar.ParamByName('Tipo').AsString          := dParamTipo;
         Q_Actualizar.ParamByName('Anexo').AsString         := Q_Buscar.FieldValues['sAnexo'];
         Q_Actualizar.ParamByName('Wbs').AsString           := Q_Buscar.FieldValues['sWbs'];
         Q_Actualizar.ParamByName('Actividad').AsString     := Q_Buscar.FieldValues['sNumeroActividad'];
         Q_Actualizar.ParamByName('TipoActividad').AsString := Q_Buscar.FieldValues['sTipoActividad'];
         Q_Actualizar.Open;

         if Q_Actualizar.RecordCount = 0 then
         begin
              try
              {Llamamos funcion para insertar datos...}
              InsertaDatos(Q_Buscar.FieldValues['sAnexo'],
                           Q_Buscar.FieldValues['sWbs'],
                           Q_Buscar.FieldValues['sWbsAnterior'],
                           Q_Buscar.FieldValues['sNumeroActividad'],
                           Q_Buscar.FieldValues['iItemOrden'],
                           Q_Buscar.FieldValues['mDescripcion'],
                           Q_Buscar.FieldValues['sMedida'],
                           Q_Buscar.FieldValues['iOrden'],
                           Q_Buscar.FieldValues['dCostoMN'],
                           Q_Buscar.FieldValues['dCostoDLL'],
                           Q_Buscar.FieldValues['dVentaMN'],
                           Q_Buscar.FieldValues['dVentaDLL'],
                           Q_Buscar.FieldValues['dCantidadAnexo'],
                           0);
              Except
                    //No se hace nada.. continua insertando datos..
              end;

         end;
         Q_Buscar.Next;
     end;

end;

procedure TfrmEstimacionOrdenes.AvancesFisicos(paramContrato, paramConvenio: string; paramFecha: TDate);
var
   Q_Avances : TZReadOnlyQuery;
   dProgramadoFisico,
   dRealFisico    : double;
begin
    Q_Avances := TZReadOnlyQuery.Create(self);
    Q_Avances.connection := connection.zConnection;

    Q_Avances.Active := False;
    Q_Avances.SQL.Clear;
    Q_Avances.SQL.Add('select dAvancePonderadoGlobal as ProgramadoOrden, '+
                      '(select dAvancePonderadoGlobal from avancesglobales where sContrato =:Contrato and sIdConvenio =:Convenio and dIdFecha =:Fecha and sNumeroOrden ="") as ProgramadoContrato, '+
                      '(select sum(dAvance) from avancesglobalesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and dIdFecha <=:Fecha and sNumeroOrden ="" group by sContrato) as AvanceFisicoContrato, '+
                      '(select sum(dAvance) from avancesglobalesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and dIdFecha <=:Fecha and sNumeroOrden <> "" group by sContrato) as AvanceFisicoOrden, '+
                      '(select count(sNumeroOrden) from ordenesdetrabajo where sContrato =:Contrato) as NumeroFrentes '+
                      'from avancesglobales where sContrato =:Contrato and sIdConvenio =:Convenio and dIdFecha =:Fecha and sNumeroOrden <> ""');
    Q_Avances.ParamByName('Contrato').AsString := paramContrato;
    Q_Avances.ParamByName('Convenio').AsString := paramConvenio;
    Q_Avances.ParamByName('Fecha').AsDate      := paramFecha;
    Q_Avances.Open;

    dProgramadoFisico := 0;
    dRealFisico       := 0;
    if Q_Avances.RecordCount > 0 then
    begin
        if Q_Avances.FieldValues['ProgramadoContrato'] = 0 then
           dProgramadoFisico := Q_Avances.FieldValues['ProgramadoOrden'];

        if Q_Avances.FieldValues['ProgramadoContrato'] > 0 then
           dProgramadoFisico := Q_Avances.FieldValues['ProgramadoContrato'];

        if Q_Avances.FieldValues['AvanceFisicoContrato'] = 0 then
           dRealFisico := Q_Avances.FieldValues['AvanceFisicoOrden'];

        if Q_Avances.FieldValues['AvanceFisicoContrato'] > 0 then
           dRealFisico := Q_Avances.FieldValues['AvanceFisicoContrato'];
    end;

    {Ahora insertamos el avance..}
    Q_Avances.Active := False;
    Q_Avances.SQL.Clear;
    Q_Avances.SQL.Add('insert into avances_estimaciones(sContrato, dIdFecha, dAvanceProgramadoFisico, dAvanceRealFisico, dAvanceProgramadoFinanciero, dAvanceFisicoFinanciero) '+
                      'values (:Contrato, :Fecha, :Programado, :Fisico, 0,0)');
    Q_Avances.ParamByName('Contrato').AsString  := paramContrato;
    Q_Avances.ParamByName('Fecha').AsDate       := paramFecha;
    Q_Avances.ParamByName('Programado').AsFloat := dProgramadoFisico;
    Q_Avances.ParamByName('Fisico').AsFloat     := dRealFisico;
    Q_Avances.ExecSQL;

    Q_Avances.Destroy;
end;

end.
