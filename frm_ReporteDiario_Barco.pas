unit frm_ReporteDiario_Barco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask, frm_connection, Buttons, Utilerias, Global,
  Menus, OleCtrls, ExtCtrls, ShellApi, strUtils, frm_barra, Math, frxClass,
  frxDBSet, Jpeg, RxMemDS, RXDBCtrl, RXCtrls,
  ExtDlgs,  ZDataset, rxSpeedbar, ZAbstractRODataset, unittbotonespermisos;
type
  TfrmDiarioBarco = class(TForm)
    SpeedBar1: TSpeedBar;
    SpeedbarSection2: TSpeedbarSection;
    btMovimientos: TSpeedItem;
    btTripulacion: TSpeedItem;
    btProrrateo: TSpeedItem;
    btPernocta: TSpeedItem;
    btnReportesDiarios: TSpeedItem;
    btnPernocta: TSpeedItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnGeneradores: TSpeedItem;
    Label6: TLabel;
    Label7: TLabel;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btTripulacionClick(Sender: TObject);
    procedure btMovimientosClick(Sender: TObject);
    procedure btProrrateoClick(Sender: TObject);
    procedure btnReportesDiariosClick(Sender: TObject);
    procedure btnGeneradoresClick(Sender: TObject);
    procedure btPernoctaClick(Sender: TObject);
    procedure btnPernoctaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiarioBarco: TfrmDiarioBarco;
  sReporte : String ;
  iReporte : Integer ;
  lNuevoDia : Boolean ;
  dAvanceAnterior, dCantidadAnterior : Double ;
  dAvanceDiario, dAvanceAcumulado    : Double ;
  dPAnterior, dPDiario, dPAcumulado,
  dRAnterior, dRDiario, dRAcumulado : Real ;
  sArchivo     : String ;
  sOpcion      : String ;
  lIniciado    : Boolean ;
  SavePlace    : TBookmark;
implementation

uses frm_inteligent, frm_BitacoraPernocta,
  frm_tripulacion_diaria, frm_AdmonyTiempos,
  frm_prorrateoPernocta, frm_PrintReportesDiarios,
  frm_Generadores_Barco, frm_cuadredepersonal, frm_lista_personal;


{$R *.dfm}


procedure TfrmDiarioBarco.FormShow(Sender: TObject);
begin
  lIniciado := False ;

End;

procedure TfrmDiarioBarco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmDiarioBarco.btTripulacionClick(Sender: TObject);
begin
     Application.CreateForm(TfrmTripulacionDiaria, frmTripulacionDiaria);
     frmTripulacionDiaria.Show;
end;

procedure TfrmDiarioBarco.btMovimientosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmAdmonyTiempos, frmAdmonyTiempos);
    frmAdmonyTiempos.Show;
end;

procedure TfrmDiarioBarco.btPernoctaClick(Sender: TObject);
begin
    Application.CreateForm(TfrmCuadredePersonal, frmCuadredePersonal);
    frmCuadredePersonal.ShowModal
end;

procedure TfrmDiarioBarco.btProrrateoClick(Sender: TObject);
begin
    Application.CreateForm(TfrmProrrateoPernocta, frmProrrateoPernocta);
    frmProrrateoPernocta.ShowModal
end;

procedure TfrmDiarioBarco.btnGeneradoresClick(Sender: TObject);
begin
    Application.CreateForm(TfrmGeneradoresBarco, frmGeneradoresBarco);
    frmGeneradoresBarco.show;
end;

procedure TfrmDiarioBarco.btnPernoctaClick(Sender: TObject);
begin
     Application.CreateForm(TfrmLista_personal, frmLista_personal);
    frmLista_personal.show;
end;

procedure TfrmDiarioBarco.btnReportesDiariosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmPrintReportesDiarios, frmPrintReportesDiarios);
    frmPrintReportesDiarios.show;
end;

end.


