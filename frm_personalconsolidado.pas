unit frm_personalconsolidado;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, ComCtrls, DateUtils, frxClass,
  frxDBSet,  RXDBCtrl, ImgList, Buttons, Math, utilerias,UnitTBotonesPermisos,
  ZAbstractRODataset, ZDataset, UFunctionsGHH ;

type
  TfrmPersonalConsolidado = class(TForm)
    btnExit: TBitBtn;
    btnPrinter: TBitBtn;
    gpPeriodo: TGroupBox;
    dsPersonalPernocta: TfrxDBDataset;
    dsPersonalPlataforma: TfrxDBDataset;
    Label1: TLabel;
    Label2: TLabel;
    tdFechaInicial: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    dsPlataforma: TfrxDBDataset;
    dsPernocta: TfrxDBDataset;
    frxPersonal: TfrxReport;
    frxPersonal2: TfrxReport;
    chkContrato: TCheckBox;
    chkPernocta: TCheckBox;
    chkPlataforma: TCheckBox;
    QryPernocta: TZReadOnlyQuery;
    QryPlataforma: TZReadOnlyQuery;
    QryPersonalPernocta: TZReadOnlyQuery;
    QryPersonalPlataforma: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
    procedure tdFechaInicialEnter(Sender: TObject);
    procedure tdFechaInicialExit(Sender: TObject);
    procedure tdFechaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalChange(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPersonalConsolidado: TfrmPersonalConsolidado;
  sFechaInicio : String ;
  Mes : Integer ;
  dProgramado, dReal : Real ;
  sContrato, sPernocta : String ;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}


procedure TfrmPersonalConsolidado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  botonpermiso.free;
  action := cafree ;
end;

procedure TfrmPersonalConsolidado.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'gePersonalProg');
  if not BotonPermiso.imprimir then
   Begin
     BtnPrinter.Enabled:=False;
   End;
  sMenuP:=stMenu;
  tdFechaInicial.Date := Date ;
  tdFechaFinal.Date := Date ;
end;

procedure TfrmPersonalConsolidado.btnPrinterClick(Sender: TObject);
begin
      //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicial.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdFechaFinal.SetFocus;
   exit;
   end;

    qrypersonalpernocta.active := false ;
    qrypersonalpernocta.sql.clear ;
    qrypernocta.active := false ;
    qrypernocta.sql.clear ;

    QryPersonalPlataforma.Active := False ;
    QryPersonalPlataforma.SQL.Clear ;
    qryplataforma.active := false ;
    qryplataforma.sql.clear ;

    If MessageDlg('Desea visualizar la informacion de todos los contratos activos?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
        If chkPernocta.Checked Then
        Begin
            qrypernocta.sql.add('select b.sidpernocta, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.sidpernocta ') ;

            if chkcontrato.checked then
                qrypersonalpernocta.sql.add('select b.scontrato, c2.snombrecorto, b.sidpernocta,  b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                            'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                            'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                            'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                            'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                            'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                            'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                            'inner join configuracion c2 on (b.scontrato = c2.scontrato) ' +
                                            'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.scontrato, b.sidpernocta ' +
                                            'order by b.didfecha, b.scontrato, b.sidpernocta ')
            else
                qrypersonalpernocta.sql.add('select b.scontrato, c2.snombrecorto, b.sidpernocta,  b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                            'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                            'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                            'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                            'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                            'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                            'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                            'inner join configuracion c2 on (b.scontrato = c2.scontrato) ' +
                                            'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.sidpernocta, b.scontrato ' +
                                            'order by b.didfecha, b.sidpernocta, b.scontrato') ;
        End ;


        If chkPlataforma.Checked Then
        Begin
            qryplataforma.sql.add('select b.sidplataforma, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                  'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                  'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                  'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                  'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                  'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                  'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                  'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.sidplataforma') ;

            if chkcontrato.checked then
                qrypersonalplataforma.sql.add('select b.scontrato, c2.snombrecorto, b.sidplataforma, b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                              'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                              'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                              'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                              'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                              'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                              'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                              'inner join configuracion c2 on (b.scontrato = c2.scontrato) '  +
                                              'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.scontrato, b.sidpernocta ' +
                                              'order by b.didfecha, b.scontrato, b.sidplataforma ')
            else
                qrypersonalplataforma.sql.add('select b.scontrato, c2.snombrecorto, b.sidplataforma, b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                              'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                              'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                              'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                              'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                              'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                              'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                              'inner join configuracion c2 on (b.scontrato = c2.scontrato) '  +
                                              'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.sidpernocta, b.scontrato ' +
                                              'order by b.didfecha, b.sidplataforma, b.scontrato') ;
        End ;
    End
    Else
    Begin
        If chkPernocta.Checked Then
        Begin
            qrypernocta.sql.add('select b.sidpernocta, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sContrato = :contrato and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.sidpernocta ') ;
            QryPernocta.Params.ParamByName('contrato').DataType := ftString ;
            QryPernocta.Params.ParamByName('contrato').Value := global_contrato ;

            if chkcontrato.checked then
                qrypersonalpernocta.sql.add('select b.scontrato, c2.snombrecorto, b.sidpernocta,  b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                            'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                            'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                            'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                            'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                            'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                            'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                            'inner join configuracion c2 on (b.scontrato = c2.scontrato) ' +
                                            'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sContrato = :contrato and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.scontrato, b.sidpernocta ' +
                                            'order by b.didfecha, b.scontrato, b.sidpernocta ')
            else
                qrypersonalpernocta.sql.add('select b.scontrato, c2.snombrecorto, b.sidpernocta,  b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                            'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                            'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                            'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                            'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                            'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                            'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                            'inner join configuracion c2 on (b.scontrato = c2.scontrato) ' +
                                            'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sContrato = :contrato and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.sidpernocta, b.scontrato ' +
                                            'order by b.didfecha, b.sidpernocta, b.scontrato') ;
            QryPersonalPernocta.Params.ParamByName('contrato').DataType := ftString ;
            QryPersonalPernocta.Params.ParamByName('contrato').Value := global_contrato ;
        End ;

        If chkPlataforma.Checked Then
        Begin

            // Grafica de Plataforma
            qryplataforma.active := false ;
            qryplataforma.sql.clear ;
            qryplataforma.sql.add('select b.sidplataforma, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                  'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                  'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                  'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                  'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                  'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                  'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                  'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sContrato = :contrato and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.sidplataforma') ;
            QryPlataforma.Params.ParamByName('contrato').DataType := ftString ;
            QryPlataforma.Params.ParamByName('contrato').Value := global_contrato ;

            if chkcontrato.checked then
                qrypersonalplataforma.sql.add('select b.scontrato, c2.snombrecorto, b.sidplataforma, b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                              'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                              'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                              'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                              'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                              'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                              'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                              'inner join configuracion c2 on (b.scontrato = c2.scontrato) '  +
                                              'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sContrato = :contrato and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.scontrato, b.sidpernocta ' +
                                              'order by b.didfecha, b.scontrato, b.sidplataforma ')
            else
                qrypersonalplataforma.sql.add('select b.scontrato, c2.snombrecorto, b.sidplataforma, b.didfecha, sum(b.dcantidad) as dreal from bitacoradepersonal b ' +
                                              'inner join bitacoradeactividades b2 on (b.scontrato = b2.scontrato and b.didfecha = b2.didfecha and b.iiddiario = b2.iiddiario) ' +
                                              'inner join reportediario r on (b2.scontrato = r.scontrato and b2.didfecha = r.didfecha and b2.snumeroorden = r.snumeroorden) ' +
                                              'inner join contratos c on (b2.scontrato = c.scontrato and c.lstatus = "Activo") ' +
                                              'inner join ordenesdetrabajo t on (b2.scontrato = t.scontrato and b2.snumeroorden = t.snumeroorden and t.sidtipoorden <> :tipo) ' +
                                              'inner join personal p2 on (b.scontrato = p2.scontrato and b.sidpersonal = p2.sidpersonal) ' +
                                              'inner join pernoctan p3 on (b.sidpernocta = p3.sidpernocta) ' +
                                              'inner join configuracion c2 on (b.scontrato = c2.scontrato) '  +
                                              'where b.didfecha >= :fechai and b.didfecha <= :fechaf and b.sContrato = :contrato and b.sDescripcion not like "%TIEMPO%EXTRA%" group by b.didfecha, b.sidpernocta, b.scontrato ' +
                                              'order by b.didfecha, b.sidplataforma, b.scontrato') ;
            QryPersonalPlataforma.Params.ParamByName('contrato').DataType := ftString ;
            QryPersonalPlataforma.Params.ParamByName('contrato').Value := global_contrato ;
        End
    End ;

    If chkPernocta.Checked then begin
        // Query de la grafica ...
        QryPernocta.Params.ParamByName('FechaI').DataType := ftDate ;
        QryPernocta.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
        QryPernocta.Params.ParamByName('FechaF').DataType := ftDate ;
        QryPernocta.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        QryPernocta.Params.ParamByName('Tipo').DataType := ftString ;
        QryPernocta.Params.ParamByName('Tipo').Value := 'E' ;
    end
    else begin
        QryPernocta.active := false ;
        QryPernocta.sql.clear ;
        QryPernocta.sql.Add('select sidplataforma from bitacoradepersonal where 1 = 2');//mandar una query que no devuelva registros
    end;
    dsPernocta.FieldAliases.Clear ;
    dsPernocta.DataSet := QryPernocta ;
    QryPernocta.Open ;

    If chkPernocta.Checked then begin
        // Query del grid ...
        QryPersonalPernocta.Params.ParamByName('FechaI').DataType := ftDate ;
        QryPersonalPernocta.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
        QryPersonalPernocta.Params.ParamByName('FechaF').DataType := ftDate ;
        QryPersonalPernocta.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        QryPersonalPernocta.Params.ParamByName('Tipo').DataType := ftString ;
        QryPersonalPernocta.Params.ParamByName('Tipo').Value := 'E' ;
    end
    else begin
        QryPersonalPernocta.active := false ;
        QryPersonalPernocta.sql.clear ;
        QryPersonalPernocta.sql.Add('select sidplataforma from bitacoradepersonal where 1 = 2');//mandar una query que no devuelva registros
    end;
    dsPersonalPernocta.FieldAliases.Clear ;
    dsPersonalPernocta.DataSet := QryPersonalPernocta ;
    QryPersonalPernocta.Open ;

    if chkPlataforma.Checked then begin
        // Query de la Grafica
        QryPlataforma.Params.ParamByName('FechaI').DataType := ftDate ;
        QryPlataforma.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
        QryPlataforma.Params.ParamByName('FechaF').DataType := ftDate ;
        QryPlataforma.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        QryPlataforma.Params.ParamByName('Tipo').DataType := ftString ;
        QryPlataforma.Params.ParamByName('Tipo').Value := 'E' ;
    end
    else begin
        qryplataforma.active := false ;
        qryplataforma.sql.clear ;
        qryplataforma.sql.Add('select sidplataforma from bitacoradepersonal where 1 = 2');//mandar una query que no devuelva registros
    end;
    dsPlataforma.FieldAliases.Clear ;
    dsPlataforma.DataSet := QryPlataforma ;
    QryPlataforma.Open ;

    if chkPlataforma.Checked then begin
        // Query del grid
        QryPersonalPlataforma.Params.ParamByName('FechaI').DataType := ftDate ;
        QryPersonalPlataforma.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
        QryPersonalPlataforma.Params.ParamByName('FechaF').DataType := ftDate ;
        QryPersonalPlataforma.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        QryPersonalPlataforma.Params.ParamByName('Tipo').DataType := ftString ;
        QryPersonalPlataforma.Params.ParamByName('Tipo').Value := 'E' ;
    end
    else begin
        QryPersonalPlataforma.active := false ;
        QryPersonalPlataforma.sql.clear ;
        QryPersonalPlataforma.sql.Add('select sidplataforma from bitacoradepersonal where 1 = 2');//mandar una query que no devuelva registros
    end;
    dsPersonalPlataforma.FieldAliases.Clear ;
    dsPersonalPlataforma.DataSet := QryPersonalPlataforma ;
    QryPersonalPlataforma.Open ;


    If chkContrato.Checked Then
    //<ROJAS>
        frxPersonal.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    Else
        frxPersonal2.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    //
end;

procedure TfrmPersonalConsolidado.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.MinDate:=tdFechainicial.Date;
end;

procedure TfrmPersonalConsolidado.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_Color_entrada
end;

procedure TfrmPersonalConsolidado.tdFechaFinalExit(Sender: TObject);
begin
   tdFechaFinal.Color := global_Color_salida
end;

procedure TfrmPersonalConsolidado.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnPrinter.SetFocus
end;

procedure TfrmPersonalConsolidado.btnExitClick(Sender: TObject);
begin
    close
end;

procedure TfrmPersonalConsolidado.tdFechaInicialEnter(Sender: TObject);
begin
    tdFechaInicial.Color := global_Color_entrada
end;

procedure TfrmPersonalConsolidado.tdFechaInicialExit(Sender: TObject);
begin
    tdFechaInicial.Color := global_Color_salida
end;

procedure TfrmPersonalConsolidado.tdFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus     
end;

end.
