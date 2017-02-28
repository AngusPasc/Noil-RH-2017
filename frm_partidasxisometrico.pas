unit frm_partidasxisometrico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, Buttons, ZAbstractRODataset, ZDataset, UFunctionsGHH;

type
    TfrmPartidasxIsometrico = class(TForm)
    dbReporte: TfrxDBDataset;
    Label1: TLabel;
    tsIsometrico: TDBLookupComboBox;
    ds_Isometricos: TDataSource;
    btnResumido: TBitBtn;
    btnDetallado: TBitBtn;
    btnSalir: TBitBtn;
    chkTodos: TCheckBox;
    frxImpresion: TfrxReport;
    BitacoraxIsometrico: TZReadOnlyQuery;
    Isometricos: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIsometricoEnter(Sender: TObject);
    procedure tsIsometricoExit(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnResumidoClick(Sender: TObject);
    procedure btnDetalladoClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure tsIsometricoKeyPress(Sender: TObject; var Key: Char);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPartidasxIsometrico : TfrmPartidasxIsometrico;
implementation

{$R *.dfm}

procedure TfrmPartidasxIsometrico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmPartidasxIsometrico.tsIsometricoEnter(Sender: TObject);
begin
    tsIsometrico.Color := global_color_entrada
end;

procedure TfrmPartidasxIsometrico.tsIsometricoExit(Sender: TObject);
begin
  tsIsometrico.Color := global_color_salida
end;

procedure TfrmPartidasxIsometrico.btnPrinterClick(Sender: TObject);
begin
      BitacoraxIsometrico.Active := False ;
      BitacoraxIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
      BitacoraxIsometrico.Params.ParamByName('Contrato').value := global_contrato ;
      BitacoraxIsometrico.Params.ParamByName('Referencia').DataType := ftString ;
      BitacoraxIsometrico.Params.ParamByName('Referencia').value := tsIsometrico.KeyValue ;
      BitacoraxIsometrico.Open ;
//      Reporte.ShowReport
end;

procedure TfrmPartidasxIsometrico.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  Isometricos.Active := False ;
  Isometricos.Params.ParamByName('Contrato').DataType := ftString ;
  Isometricos.Params.ParamByName('Contrato').Value := Global_Contrato ;
  Isometricos.Open ;
  tsIsometrico.SetFocus
end;


procedure TfrmPartidasxIsometrico.btnExitClick(Sender: TObject);
begin
    Close
end;


procedure TfrmPartidasxIsometrico.btnResumidoClick(Sender: TObject);
begin
      BitacoraxIsometrico.Active := False ;
      BitacoraxIsometrico.SQL.Clear ;
      If chkTodos.State = cbUnchecked Then
      Begin
          BitacoraxIsometrico.SQL.Add('Select i.*, sum(e.dCantidad) as dGenerado, a.* , p.sDescripcion, g.sDescripcion as sGrupo From isometricos i ' +
                                      'INNER JOIN plataformas p ON (i.sIdPlataforma = p.sIdPlataforma) ' +
                                      'INNER JOIN gruposisometrico g ON (g.sContrato = i.sContrato And g.sIdGrupo = i.sIdGrupo) ' +
                                      'INNER JOIN estimacionxpartida e ON (i.sContrato = e.sContrato And i.sIsometrico = e.sIsometricoReferencia and e.lEstima = "Si") INNER JOIN actividadesxanexo a ON ' +
                                      '(e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio) ' +
                                      'Where i.sContrato = :Contrato And i.sIsometrico = :Isometrico ' +
                                      'Group By i.sIsometrico, e.sNumeroActividad Order By i.sIsometrico,  a.iItemOrden') ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').value := global_contrato ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').value := global_convenio ;
          BitacoraxIsometrico.Params.ParamByName('Isometrico').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Isometrico').value := tsIsometrico.Text ;
          DBReporte.FieldAliases.Clear ;
          DBReporte.DataSet := BitacoraxIsometrico ;
          BitacoraxIsometrico.Open ;
          {
          frxImpresion.PreviewOptions.MDIChild := False ;
          frxImpresion.PreviewOptions.Modal := True ;
          frxImpresion.PreviewOptions.ShowCaptions := False ;
          frxImpresion.Previewoptions.ZoomMode := zmPageWidth ;
          frxImpresion.LoadFromFile(Global_Files+'ResumidoInstalacionporplano.fr3') ;
          frxImpresion.ShowReport ;}
      End
      Else
      Begin
          BitacoraxIsometrico.SQL.Add('Select i.*, sum(e.dCantidad) as dGenerado, a.* , p.sDescripcion, g.sDescripcion as sGrupo From isometricos i ' +
                                      'INNER JOIN plataformas p ON (i.sIdPlataforma = p.sIdPlataforma) ' +
                                      'INNER JOIN gruposisometrico g ON (g.sContrato = i.sContrato And g.sIdGrupo = i.sIdGrupo) ' +
                                      'INNER JOIN estimacionxpartida e ON (i.sContrato = e.sContrato And i.sIsometrico = e.sIsometricoReferencia and e.lEstima = "Si") INNER JOIN actividadesxanexo a ON ' +
                                      '(e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio) ' +
                                      'Where i.sContrato = :Contrato Group By i.sIsometrico, e.sNumeroActividad Order By i.sIsometrico,  a.iItemOrden') ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').value := global_contrato ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').value := global_convenio ;
          DBReporte.FieldAliases.Clear ;
          DBReporte.DataSet := BitacoraxIsometrico ;
          BitacoraxIsometrico.Open ;
      End;
      if BitacoraxIsometrico.RecordCount > 0 then
      begin
          frxImpresion.PreviewOptions.MDIChild := False ;
          frxImpresion.PreviewOptions.Modal := True ;
          frxImpresion.PreviewOptions.ShowCaptions := False ;
          frxImpresion.Previewoptions.ZoomMode := zmPageWidth ;
          frxImpresion.LoadFromFile(Global_Files+ global_miReporte + '_ResumidoInstalacionporplano.fr3') ;
          frxImpresion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
          if not FileExists(global_files + global_miReporte +'_ResumidoInstalacionporplano.fr3') then
              showmessage('El archivo de reporte ResumidoInstalacionporplano.fr3 no existe, notifique al administrador del sistema');
      end
      else begin
          showmessage('No hay datos para imprimir');
      end;
end;

procedure TfrmPartidasxIsometrico.btnDetalladoClick(Sender: TObject);
begin
      BitacoraxIsometrico.Active := False ;
      BitacoraxIsometrico.SQL.Clear ;
      If chkTodos.State = cbUnchecked Then
      Begin
          BitacoraxIsometrico.SQL.Add('Select i.*, e2.*, e.*, a.* , p.sDescripcion, g.sDescripcion as sGrupo From isometricos i ' +
                                      'INNER JOIN plataformas p ON (i.sIdPlataforma = p.sIdPlataforma) ' +
                                      'INNER JOIN gruposisometrico g ON (g.sContrato = i.sContrato And g.sIdGrupo = i.sIdGrupo) ' +
                                      'INNER JOIN estimacionxpartida e ON (i.sContrato = e.sContrato And i.sIsometrico = e.sIsometricoReferencia and e.lEstima = "Si") ' +
                                      'INNER JOIN estimaciones e2 ON (e2.sContrato = e.sContrato And e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador) ' +
                                      'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio) ' +
                                      'Where i.sContrato = :Contrato And i.sIsometrico = :Isometrico Order By i.sIsometrico, e2.iNumeroEstimacion, e2.iConsecutivo, e.sNumeroActividad') ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').value := global_contrato ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').value := global_convenio ;
          BitacoraxIsometrico.Params.ParamByName('Isometrico').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Isometrico').value := tsIsometrico.Text ;
          DBReporte.FieldAliases.Clear ;
          DBReporte.DataSet := BitacoraxIsometrico ;
          BitacoraxIsometrico.Open ;
          {
          frxImpresion.PreviewOptions.MDIChild := False ;
          frxImpresion.PreviewOptions.Modal := True ;
          frxImpresion.PreviewOptions.ShowCaptions := False ;
          frxImpresion.Previewoptions.ZoomMode := zmPageWidth ;
          frxImpresion.LoadFromFile(Global_Files+'DetalleInstalacionporplano.fr3') ;
          frxImpresion.ShowReport ;}
      End
      Else
      Begin
          BitacoraxIsometrico.SQL.Add('Select i.*, e2.*, e.*, a.* , p.sDescripcion, g.sDescripcion as sGrupo From isometricos i ' +
                                      'INNER JOIN plataformas p ON (i.sIdPlataforma = p.sIdPlataforma) ' +
                                      'INNER JOIN gruposisometrico g ON (g.sContrato = i.sContrato And g.sIdGrupo = i.sIdGrupo) ' +
                                      'INNER JOIN estimacionxpartida e ON (i.sContrato = e.sContrato And i.sIsometrico = e.sIsometricoReferencia and e.lEstima = "Si") ' +
                                      'INNER JOIN estimaciones e2 ON (e2.sContrato = e.sContrato And e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador) ' +
                                      'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio) ' +
                                      'Where i.sContrato = :Contrato Order By i.sIsometrico, e2.iNumeroEstimacion, e2.iConsecutivo, e.sNumeroActividad') ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Contrato').value := global_contrato ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').DataType := ftString ;
          BitacoraxIsometrico.Params.ParamByName('Convenio').value := global_convenio ;
          DBReporte.FieldAliases.Clear ;
          DBReporte.DataSet := BitacoraxIsometrico ;
          BitacoraxIsometrico.Open ;
      End;
      if BitacoraxIsometrico.RecordCount > 0 then
      begin
          frxImpresion.PreviewOptions.MDIChild := False ;
          frxImpresion.PreviewOptions.Modal := True ;
          //frxImpresion.PreviewOptions.Maximized := lCheckMaximized () ;
          frxImpresion.PreviewOptions.ShowCaptions := False ;
          frxImpresion.Previewoptions.ZoomMode := zmPageWidth ;
          frxImpresion.LoadFromFile(Global_Files+ global_miReporte + '_DetalleInstalacionporplano.fr3') ;
          frxImpresion.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
          if not FileExists(global_files + global_miReporte + '_DetalleInstalacionporplano.fr3') then
              showmessage('El archivo de reporte DetalleInstalacionporplano.fr3 no existe, notifique al administrador del sistema');
      end
      else begin
          showmessage('No hay datos para imprimir');
      end;
end;

procedure TfrmPartidasxIsometrico.btnSalirClick(Sender: TObject);
begin
    Close
end;

procedure TfrmPartidasxIsometrico.tsIsometricoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnResumido.SetFocus
end;

end.
