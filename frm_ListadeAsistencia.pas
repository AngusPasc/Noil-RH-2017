unit frm_ListadeAsistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_barra, ComCtrls, AdvGlowButton, NxColumnClasses, frm_connection, NxGrid,
  frxClass, frxDBSet, Menus, UFunctionsGHH, utilerias, global, unittbotonespermisos,
  unitValidacion, unitactivapop, ExtCtrls, RxMemDS, DateUtils, Mask, rxToolEdit,
  JvExMask, JvToolEdit, DBCtrls, JvSpin, JvExControls, JvLabel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

Type
  EValidaciones = class(Exception)
  end;

type
  TfrmListadeAsistencia = class(TForm)
    zqLista: TZQuery;
    ds_Lista: TDataSource;
    zAsistencia: TZQuery;
    ds_Asistencia: TDataSource;
    lbmuestranombre: TLabel;
    PopupMenu1: TPopupMenu;
    ImprimirLista1: TMenuItem;
    dsLista: TfrxDBDataset;
    rDiario: TfrxReport;
    zAsistenciaiIdListaAsistencia: TIntegerField;
    zAsistenciasIdEmpleado: TStringField;
    zAsistenciadFecha: TDateField;
    zAsistenciasAsistencia: TStringField;
    zAsistenciasEntrada: TStringField;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    rbgOpciones: TRadioGroup;
    rbGenAsistencia: TRadioButton;
    rbAsistencia: TRadioButton;
    btnImprimir: TAdvGlowButton;
    Label5: TLabel;
    ds_ListaXRango: TfrxDBDataset;
    zQListaXRango: TRxMemoryData;
    zQListaXRangoIdEmpleado: TStringField;
    zQListaXRangoNombre: TStringField;
    zQListaXRangomes: TIntegerField;
    zQListaXRangoanio: TIntegerField;
    tdFechaI: TJvDateEdit;
    tdFechaF: TJvDateEdit;
    zAsistenciasSalida: TStringField;
    zAsistenciaiIdEstatusDiario: TIntegerField;
    frxEstDiarioEmp: TfrxDBDataset;
    ZQEstDiarioEmp: TZQuery;
    ZQEstDiarioEmpiIdEstatusDiario: TIntegerField;
    ZQEstDiarioEmpsDescripcion: TStringField;
    ZQEstDiarioEmpiColor: TIntegerField;
    zQListaXRangodiaest1: TVariantField;
    zQListaXRangodiaest2: TVariantField;
    zQListaXRangodiaest3: TVariantField;
    zQListaXRangodiaest4: TVariantField;
    zQListaXRangodiaest5: TVariantField;
    zQListaXRangodiaest6: TVariantField;
    zQListaXRangodiaest7: TVariantField;
    zQListaXRangodiaest8: TVariantField;
    zQListaXRangodiaest9: TVariantField;
    zQListaXRangodiaest11: TVariantField;
    zQListaXRangodiaest12: TVariantField;
    zQListaXRangodiaest13: TVariantField;
    zQListaXRangodiaest14: TVariantField;
    zQListaXRangodiaest15: TVariantField;
    zQListaXRangodiaest16: TVariantField;
    zQListaXRangodiaest17: TVariantField;
    zQListaXRangodiaest18: TVariantField;
    zQListaXRangodiaest19: TVariantField;
    zQListaXRangodiaest20: TVariantField;
    zQListaXRangodiaest21: TVariantField;
    zQListaXRangodiaest22: TVariantField;
    zQListaXRangodiaest23: TVariantField;
    zQListaXRangodiaest24: TVariantField;
    zQListaXRangodiaest26: TVariantField;
    zQListaXRangodiaest28: TVariantField;
    zQListaXRangodiaest29: TVariantField;
    zQListaXRangodiaest30: TVariantField;
    zQListaXRangodiaest31: TVariantField;
    zQListaXRangodiaest10: TVariantField;
    zQListaXRangodiaest25: TVariantField;
    zQListaXRangodiaest27: TVariantField;
    Panel2: TPanel;
    Panel3: TPanel;
    label1: TLabel;
    Label2: TLabel;
    tdFecha: TDateTimePicker;
    Panel4: TPanel;
    btGuardar: TAdvGlowButton;
    btGuardar2: TAdvGlowButton;
    Panel5: TPanel;
    NXLista: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxNombre: TNxTextColumn;
    NxEstatus: TNxListColumn;
    NxAsistencia: TNxCheckBoxColumn;
    NxFecha: TNxTextColumn;
    NxEntrada: TNxTextColumn;
    NxSalida: TNxTextColumn;
    Splitter1: TSplitter;
    DsEstDiarioEmp: TDataSource;
    zQListaXRangoasistencias: TIntegerField;
    zQListaXRangofaltas: TIntegerField;
    zQListaXRangoaux1: TStringField;
    zQListaXRangoaux2: TStringField;
    zQListaXRangoaux3: TStringField;
    zQListaXRangoaux4: TStringField;
    zQListaXRangoaux5: TStringField;
    zQListaXRangoaux6: TStringField;
    zQListaXRangoaux7: TStringField;
    zQListaXRangoaux8: TStringField;
    zQListaXRangoaux9: TStringField;
    zQListaXRangoaux10: TStringField;
    zQListaXRangoaux11: TStringField;
    zQListaXRangoaux12: TStringField;
    zQListaXRangoaux13: TStringField;
    zQListaXRangoaux14: TStringField;
    zQListaXRangoaux15: TStringField;
    zQListaXRangoaux16: TStringField;
    zQListaXRangoaux17: TStringField;
    zQListaXRangoaux18: TStringField;
    zQListaXRangoaux19: TStringField;
    zQListaXRangoaux20: TStringField;
    zQListaXRangoaux21: TStringField;
    zQListaXRangoaux22: TStringField;
    zQListaXRangoaux23: TStringField;
    zQListaXRangoaux24: TStringField;
    zQListaXRangoaux25: TStringField;
    zQListaXRangoaux26: TStringField;
    zQListaXRangoaux27: TStringField;
    zQListaXRangoaux28: TStringField;
    zQListaXRangoaux29: TStringField;
    zQListaXRangoaux30: TStringField;
    zQListaXRangoaux31: TStringField;
    Panel6: TPanel;
    CkEstatus: TCheckBox;
    cbestatus: TDBLookupComboBox;
    CkEntrada: TCheckBox;
    HEntrada: TJvTimeEdit;
    HSalida: TJvTimeEdit;
    CkSalida: TCheckBox;
    CbAsistencia: TComboBox;
    JvLabel1: TJvLabel;
    CkAsistencia: TCheckBox;
    BtnFiltrar: TAdvGlowButton;
    ImportarDatosdelDiaAnterior1: TMenuItem;
    ZQImpDatosAnt: TZQuery;
    zQListaXRangodiact1: TVariantField;
    zQListaXRangodiact2: TVariantField;
    zQListaXRangodiact3: TVariantField;
    zQListaXRangodiact4: TVariantField;
    zQListaXRangodiact5: TVariantField;
    zQListaXRangodiact6: TVariantField;
    zQListaXRangodiact7: TVariantField;
    zQListaXRangodiact8: TVariantField;
    zQListaXRangodiact9: TVariantField;
    zQListaXRangodiact10: TVariantField;
    zQListaXRangodiact11: TVariantField;
    zQListaXRangodiact12: TVariantField;
    zQListaXRangodiact13: TVariantField;
    zQListaXRangodiact14: TVariantField;
    zQListaXRangodiact15: TVariantField;
    zQListaXRangodiact16: TVariantField;
    zQListaXRangodiact17: TVariantField;
    zQListaXRangodiact18: TVariantField;
    zQListaXRangodiact19: TVariantField;
    zQListaXRangodiact20: TVariantField;
    zQListaXRangodaict21: TVariantField;
    zQListaXRangodiact22: TVariantField;
    zQListaXRangodiact23: TVariantField;
    zQListaXRangodiact24: TVariantField;
    zQListaXRangodiact25: TVariantField;
    zQListaXRangodiact26: TVariantField;
    zQListaXRangodiact27: TVariantField;
    zQListaXRangodiact28: TVariantField;
    zQListaXRangodiact29: TVariantField;
    zQListaXRangodiact30: TVariantField;
    zQListaXRangodiact31: TVariantField;
    CkCodigo: TCheckBox;
    CkNombreCompleto: TCheckBox;
    edtcodigo: TEdit;
    edtnomnrecompleto: TEdit;
    zqzQListaXRangoApellido: TStringField;
    btnTodos: TcxButton;
    zqZQImpDatosAntsIdEmpleado: TStringField;
    zqZQImpDatosAntsNombreCompleto: TStringField;
    zqZQImpDatosAntsIdEmpleado_1: TStringField;
    intgrfldZQImpDatosAntiIdListaAsistencia: TIntegerField;
    zqZQImpDatosAntsIdEmpleado_2: TStringField;
    dtfldZQImpDatosAntdFecha: TDateField;
    zqZQImpDatosAntsAsistencia: TStringField;
    zqZQImpDatosAntsEntrada: TStringField;
    zqZQImpDatosAntsSalida: TStringField;
    intgrfldZQImpDatosAntiIdEstatusDiario: TIntegerField;
    zqZQImpDatosAntExiste: TStringField;
    zqZQImpDatosAntsApellidoPaterno: TStringField;
    zqZQImpDatosAntsApellidoMaterno: TStringField;
    nxCategoria: TNxTextColumn;
    nxSalario: TNxTextColumn;
    zqrReporte: TZQuery;
    zq1: TStringField;
    zq2: TStringField;
    dtfld1: TDateField;
    zq3: TStringField;
    intgrfld1: TIntegerField;
    zq4: TStringField;
    zq5: TStringField;
    zq6: TStringField;
    zq7: TStringField;
    intgrfld2: TIntegerField;
    zq8: TStringField;
    zq9: TStringField;
    zq10: TStringField;
    fltfldzqrReportesumtotal: TFloatField;
    mniImprimirListadeldia1: TMenuItem;
    frxlista2: TfrxDBDataset;
    zqzQListaXRangocategoria: TStringField;
    fltfldzQListaXRangodia1: TFloatField;
    fltfldzQListaXRangodia2: TFloatField;
    fltfldzQListaXRangodia3: TFloatField;
    fltfldzQListaXRangodia4: TFloatField;
    fltfldzQListaXRangodia5: TFloatField;
    fltfldzQListaXRangodia6: TFloatField;
    fltfldzQListaXRangodia7: TFloatField;
    fltfldzQListaXRangodia8: TFloatField;
    fltfldzQListaXRangodia9: TFloatField;
    fltfldzQListaXRangodia10: TFloatField;
    fltfldzQListaXRangodia11: TFloatField;
    fltfldzQListaXRangodia12: TFloatField;
    fltfldzQListaXRangodia13: TFloatField;
    fltfldzQListaXRangodia14: TFloatField;
    fltfldzQListaXRangodia15: TFloatField;
    fltfldzQListaXRangodia16: TFloatField;
    fltfldzQListaXRangodia17: TFloatField;
    fltfldzQListaXRangodia18: TFloatField;
    fltfldzQListaXRangodia19: TFloatField;
    fltfldzQListaXRangodia20: TFloatField;
    fltfldzQListaXRangodia21: TFloatField;
    fltfldzQListaXRangodia22: TFloatField;
    fltfldzQListaXRangodia23: TFloatField;
    fltfldzQListaXRangodia24: TFloatField;
    fltfldzQListaXRangodia25: TFloatField;
    fltfldzQListaXRangodia26: TFloatField;
    fltfldzQListaXRangodia27: TFloatField;
    fltfldzQListaXRangodia28: TFloatField;
    fltfldzQListaXRangodia29: TFloatField;
    fltfldzQListaXRangodia30: TFloatField;
    fltfldzQListaXRangodia31: TFloatField;
    zqListasIdEmpleado: TStringField;
    zqListasNombreCompleto: TStringField;
    zqListasApellidoPaterno: TStringField;
    zqListasApellidoMaterno: TStringField;
    fltfldzqListasalario: TFloatField;
    zqListatitulosalario: TStringField;
    intgrfldzqListaiIdListaAsistencia: TIntegerField;
    zqListasIdEmpleado_1: TStringField;
    dtfldzqListadFecha: TDateField;
    zqListasAsistencia: TStringField;
    zqListasEntrada: TStringField;
    zqListasSalida: TStringField;
    intgrfldzqListaiIdEstatusDiario: TIntegerField;
    zqListaExiste: TStringField;
    fltfldZQImpDatosAntsalario: TFloatField;
    zqZQImpDatosAnttitulosalario: TStringField;
    InsertarListadePersonal1: TMenuItem;
    zQListaXRangotitulocargo: TStringField;
    zQListaXRangotitulodepartamento: TStringField;
    zQListaXRangoFecha1: TDateField;
    zQListaXRangoFecha2: TDateField;
    zQListaXRangoFecha3: TDateField;
    zQListaXRangoFecha4: TDateField;
    zQListaXRangoFecha5: TDateField;
    zQListaXRangoFecha6: TDateField;
    zQListaXRangoFecha7: TDateField;
    zQListaXRangoFecha8: TDateField;
    zQListaXRangoFecha9: TDateField;
    zQListaXRangoFecha10: TDateField;
    zQListaXRangoFecha11: TDateField;
    zQListaXRangoFecha12: TDateField;
    zQListaXRangoFecha13: TDateField;
    zQListaXRangoFecha14: TDateField;
    zQListaXRangoFecha15: TDateField;
    zQListaXRangoFecha16: TDateField;
    procedure FormShow(Sender: TObject);
    procedure tdFechaChange(Sender: TObject);
    procedure NXListaSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure btGuardarClick(Sender: TObject);
    procedure ImprimirLista1Click(Sender: TObject);
    procedure NXListaBeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure NXListaEditExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    function Imprime_Reporte_Listas_X_Rango() : Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure llenaGrid (Zaux : Tzquery);
    procedure NXListaHeaderClick(Sender: TObject; ACol: Integer);
    procedure NxEstatusCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btGuardar2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure ImportarDatosdelDiaAnterior1Click(Sender: TObject);

    procedure mniImprimirListadeldia1Click(Sender: TObject);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure InsertarListadePersonal1Click(Sender: TObject);
    procedure CkAsistenciaClick(Sender: TObject);
    procedure CbAsistenciaChange(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
  private
    { Private declarations }
     sMenuP: String;
     Sentencia: string;
  public
    { Public declarations }
  end;

var
  frmListadeAsistencia: TfrmListadeAsistencia;
  todos : Boolean;

implementation
  
{$R *.dfm}

procedure TfrmListadeAsistencia.btGuardarClick(Sender: TObject);
var
  I, x, asistencia : Integer;
  Efecha: tdatetime;
begin
        //ShortDateFormat := 'yyyy-mm-dd';
        NXLista.EndUpdate;
        Efecha := tdFecha.Date;
        //try
        zAsistencia.Open;
        if zAsistencia.RecordCount>0 then begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          //connection.zCommand.SQL.Add ('delete from rh_asistencia where dfecha=:fecha ' ) ;
          connection.zCommand.SQL.Add ('delete '+
          'from '+
          'rh_asistencia '+
          'where '+
          'dfecha=:fecha and '+
          '(:iIdEstatusDiario = -1 or ( :iIdEstatusDiario <> -1 and iIdEstatusDiario = :iIdEstatusDiario)) and '+
          '(:sAsistencia = -1 or ( :sAsistencia <> -1 and sAsistencia Like :sAsistencia)) and '+
          '(:sSalida = -1 or ( :sSalida <> -1 and time(sSalida) <= time(:sSalida))) and '+
          '(:sEntrada = -1 or ( :sEntrada <> -1 and time(sEntrada) >= time(:sEntrada)))') ;
          connection.zcommand.Params.ParamByName('fecha').AsDate := Efecha ;

          if (CkEstatus.Checked) and (length(trim(cbestatus.Text))>0) then
            connection.zcommand.Params.ParamByName('iIdEstatusDiario').AsInteger:= ZQEstDiarioEmp.FieldByName('iIdEstatusDiario').AsInteger
          else
            connection.zcommand.Params.ParamByName('iIdEstatusDiario').AsInteger:= -1;

          if CkAsistencia.Checked and (length(trim(CbAsistencia.Text))>0) then
            connection.zcommand.Params.ParamByName('sAsistencia').AsString:= CbAsistencia.Text
          else
            connection.zcommand.Params.ParamByName('sAsistencia').AsString:= '-1';

          if CkSalida.Checked and (length(trim(HSalida.EditText))>0) then
            connection.zcommand.Params.ParamByName('sSalida').AsString:= HSalida.EditText
          else
            connection.zcommand.Params.ParamByName('sSalida').AsString:= '-1';

          if CkEntrada.Checked and (length(trim(HEntrada.EditText))>0) then
            connection.zcommand.Params.ParamByName('sEntrada').AsString:= HEntrada.EditText
          else
            connection.zcommand.Params.ParamByName('sEntrada').AsString:= '-1';

          connection.zcommand.ExecSQL ;

        end;
        x := NXLista.RowCount;

        for i := 0 to x-1 do begin
          zAsistencia.Append;
          zAsistencia.FieldValues['sIdEmpleado'] := NXLista.Cells[0, i];

          connection.QryBusca.First;
          while not connection.QryBusca.Eof do
          begin
              //Integer(NxEstatus.Items.Objects[strtoint(NXLista.Cells[2, i])]);
              //if NXLista.Cells[2, i] = connection.QryBusca.FieldByName('sDescripcion').AsString then
              if Integer(NxEstatus.Items.Objects[strtoint(NXLista.Cells[2, i])]) = connection.QryBusca.FieldByName('iIdEstatusDiario').AsInteger then
                zAsistencia.FieldValues['iIdEstatusDiario'] := connection.QryBusca.FieldByName('iIdEstatusDiario').AsInteger;
              connection.QryBusca.Next;
          end;

          if NXLista.Cells[3, i] = 'True' then
             zAsistencia.FieldValues['sAsistencia'] := 'Si'
          else
             zAsistencia.FieldValues['sAsistencia'] := 'No';

          zAsistencia.FieldValues['sEntrada'] := NXLista.Cells[5, i];
          zAsistencia.FieldValues['sSalida'] := NXLista.Cells[6, i];
          zAsistencia.FieldValues['dFecha']   := Efecha;
          zAsistencia.Post;
        end;
        Showmessage('La Lista de Asistencia se ha Actualizado Correctamente');
        zqLista.Refresh;
        NXLista.SelectedRow:=0;
        NXLista.setfocus;

end;

procedure TfrmListadeAsistencia.btGuardar2Click(Sender: TObject);
begin
  btGuardar2.SetFocus;
  btGuardar.Click;
end;

procedure TfrmListadeAsistencia.BtnFiltrarClick(Sender: TObject);
var
Efecha : tdatetime;
begin
  try
    ShortDateFormat := 'yyyy-mm-dd';
    Efecha := tdFecha.Date;

    zqLista.Active:=false;
    zqLista.ParamByName('fecha').AsDate  :=Efecha;

    if (CkEstatus.Checked) and (length(trim(cbestatus.Text))>0) then
      zqLista.ParamByName('iIdEstatusDiario').AsInteger:= ZQEstDiarioEmp.FieldByName('iIdEstatusDiario').AsInteger
    else
      zqLista.ParamByName('iIdEstatusDiario').AsInteger:= -1;
    if CkAsistencia.Checked and (length(trim(CbAsistencia.Text))>0) then
      zqLista.ParamByName('sAsistencia').AsString:= CbAsistencia.Text
    else
      zqLista.ParamByName('sAsistencia').AsString:= '-1';
    if CkSalida.Checked and (length(trim(HSalida.EditText))>0) then
      zqLista.ParamByName('sSalida').AsString:= HSalida.EditText
    else
      zqLista.ParamByName('sSalida').AsString:= '-1';

    if CkEntrada.Checked and (length(trim(HEntrada.EditText))>0) then
      zqLista.ParamByName('sEntrada').AsString:= HEntrada.EditText
    else
      zqLista.ParamByName('sEntrada').AsString:= '-1';

    if CkCodigo.Checked and (length(trim(edtcodigo.text))>0) then
      zqLista.ParamByName('sIdEmpleado').AsString:= edtcodigo.text
    else
      zqLista.ParamByName('sIdEmpleado').AsString:= '-1';

    if CkNombreCompleto.Checked and (length(trim(edtnomnrecompleto.text))>0) then
      zqLista.ParamByName('sNombreCompleto').AsString:= edtnomnrecompleto.text
    else
      zqLista.ParamByName('sNombreCompleto').AsString:= '-1';

    zqLista.Open;

    llenaGrid(zqLista);
  except
    on e:exception do
    begin
      NxLista.ClearRows;
      ZqLista.Active := false;
      MessageDlg('ha ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

procedure TfrmListadeAsistencia.btnImprimirClick(Sender: TObject);
begin
  if Imprime_Reporte_Listas_X_Rango() then begin
    rDiario.PreviewOptions.MDIChild := False ;
    rDiario.PreviewOptions.Modal := True ;
    rDiario.PreviewOptions.Maximized := lCheckMaximized () ;
    rDiario.PreviewOptions.ShowCaptions := False ;
    rDiario.Previewoptions.ZoomMode := zmPageWidth ;

    if rbGenAsistencia.Checked then
    begin
         if not FileExists(Global_Files + global_miReporte +'_Lista_AsistenciaXRango.fr3') then
         begin
           showmessage('El archivo de reporte '+global_Mireporte+'_Lista_AsistenciaXRango.fr3 no existe, notifique al administrador del sistema');
           exit;
         end
         else
         begin
           rDiario.LoadFromFile(Global_Files+global_miReporte +'_Lista_AsistenciaXRango.fr3');
           rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
         end;
    end;

    if rbAsistencia.Checked then
    begin
         if not FileExists(Global_Files + global_miReporte +'_Lista_AsistenciaXRangoAsiste.fr3') then
         begin
           showmessage('El archivo de reporte '+global_Mireporte+'_Lista_AsistenciaXRangoAsiste.fr3 no existe, notifique al administrador del sistema');
           exit;
         end
         else
         begin
           rDiario.LoadFromFile(Global_Files+global_miReporte +'_Lista_AsistenciaXRangoAsiste.fr3');
           rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
         end;
    end;

    if connection.QryBusca.SQL.Text <> sentencia then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add(sentencia);
      connection.QryBusca.Open;
    end;
  end;
end;

procedure TfrmListadeAsistencia.btnTodosClick(Sender: TObject);
var
   i : integer;
begin
    zqLista.First;
    i:= 0;
    while not zqLista.Eof do
    begin
        NXLista.Cells[3, i] := 'True';
        inc(i);
        zqLista.Next;
    end;
    zqLista.First;
end;

procedure TfrmListadeAsistencia.Button1Click(Sender: TObject);
begin
  //showmessage(inttostr(NxLista.SelectedRow));
  //button2.SetFocus;
end;



procedure TfrmListadeAsistencia.CbAsistenciaChange(Sender: TObject);
begin
    btnFiltrar.Click;
end;

procedure TfrmListadeAsistencia.CkAsistenciaClick(Sender: TObject);
begin
   if ckAsistencia.Checked then
      cbAsistencia.ItemIndex := 0;

   btnFiltrar.Click;
end;

procedure TfrmListadeAsistencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmListadeAsistencia.FormCreate(Sender: TObject);
begin
 Sentencia := '';
 Sentencia :='select * from rh_estatusdiarioempleados';
end;

procedure TfrmListadeAsistencia.FormShow(Sender: TObject);
var
  Efecha: tdatetime;
  mes, dia, año :Word;
  primerdia : tdate;
begin

  //ShortDateFormat := 'yyyy-mm-dd';
  Efecha:=date;
  tdFecha.date:=date;

  tdFechaI.Date := now;
  decodedate(tdFechaI.Date, año, mes, dia);
  primerdia := encodeDate(año, mes, 1);
  tdFechaI.Date := primerdia;
  tdFechaF.Date := now;

  //Aqui llenamos el combo con estatus diario de los empleados,
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  //connection.QryBusca.SQL.Add('select * from rh_estatusdiarioempleados');
  connection.QryBusca.SQL.Add(sentencia);
  connection.QryBusca.Open;

  ZQEstDiarioEmp.Active := false;
  ZQEstDiarioEmp.Open;
  ZQEstDiarioEmp.First;

  while not connection.QryBusca.Eof do
  begin
      //NxEstatus.Items.Add(connection.QryBusca.FieldValues['sDescripcion']);
      NxEstatus.Items.AddObject(connection.QryBusca.FieldByName('sDescripcion').AsString, TObject(connection.QryBusca.FieldByName('iIdEstatusDiario').AsInteger));
      connection.QryBusca.Next;
  end;
  BtnFiltrar.Click;

  
end;

procedure TfrmListadeAsistencia.ImprimirLista1Click(Sender: TObject);
var
Efecha, fechaf: tdatetime;
begin
  try
    ShortDateFormat := 'yyyy-mm-dd';
    Efecha := tdFechaI.Date;
    fechaf := tdFechaf.Date ;
    zqrReporte.Active:=false;
    zqrReporte.ParamByName('fecha').AsDate  :=Efecha;
    zqrReporte.ParamByName('fecha2').AsDate :=fechaf;
    if (CkEstatus.Checked) and (length(trim(cbestatus.Text))>0) then
      zqrReporte.ParamByName('iIdEstatusDiario').AsInteger:= ZQEstDiarioEmp.FieldByName('iIdEstatusDiario').AsInteger
    else
      zqrReporte.ParamByName('iIdEstatusDiario').AsInteger:= -1;
    if CkAsistencia.Checked and (length(trim(CbAsistencia.Text))>0) then
      zqrReporte.ParamByName('sAsistencia').AsString:= CbAsistencia.Text
    else
      zqrReporte.ParamByName('sAsistencia').AsString:= '-1';
    if CkSalida.Checked and (length(trim(HSalida.EditText))>0) then
      zqrReporte.ParamByName('sSalida').AsString:= HSalida.EditText
    else
      zqrReporte.ParamByName('sSalida').AsString:= '-1';

    if CkEntrada.Checked and (length(trim(HEntrada.EditText))>0) then
      zqrReporte.ParamByName('sEntrada').AsString:= HEntrada.EditText
    else
      zqrReporte.ParamByName('sEntrada').AsString:= '-1';

    if CkCodigo.Checked and (length(trim(edtcodigo.text))>0) then
      zqrReporte.ParamByName('sIdEmpleado').AsString:= edtcodigo.text
    else
      zqrReporte.ParamByName('sIdEmpleado').AsString:= '-1';

    if CkNombreCompleto.Checked and (length(trim(edtnomnrecompleto.text))>0) then
      zqrReporte.ParamByName('sNombreCompleto').AsString:= edtnomnrecompleto.text
    else
      zqrReporte.ParamByName('sNombreCompleto').AsString:= '-1';

    zqrReporte.Open;

    rDiario.PreviewOptions.MDIChild := False ;
    rDiario.PreviewOptions.Modal := True ;
    rDiario.PreviewOptions.Maximized := lCheckMaximized () ;
    rDiario.PreviewOptions.ShowCaptions := False ;
    rDiario.Previewoptions.ZoomMode := zmPageWidth ;

    if not FileExists(Global_Files + global_miReporte +'_repcategorias.fr3') then
     begin
       showmessage('El archivo de reporte '+global_Mireporte+'_repcategorias.fr3 no existe, notifique al administrador del sistema');
       exit;
     end
     else
     begin
       rDiario.LoadFromFile(Global_Files + global_miReporte +'_repcategorias.fr3') ;
       rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
     end;

  except
  on e:exception do
    begin
      MessageDlg('ha ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;

end;

procedure TfrmListadeAsistencia.InsertarListadePersonal1Click(Sender: TObject);
begin                
    ZQImpDatosAnt.Active:=false;
    ZQImpDatosAnt.ParamByName('fecha').AsDate  :=-1;
    ZQImpDatosAnt.ParamByName('iIdEstatusDiario').AsInteger:= -1;
    ZQImpDatosAnt.ParamByName('sAsistencia').AsString:= '-1';
    ZQImpDatosAnt.ParamByName('sSalida').AsString:= '-1';
    ZQImpDatosAnt.ParamByName('sEntrada').AsString:= '-1';
    ZQImpDatosAnt.ParamByName('sIdEmpleado').AsString:= '-1';
    ZQImpDatosAnt.ParamByName('sNombreCompleto').AsString:= '-1';
    ZQImpDatosAnt.Open;

    llenaGrid(ZQImpDatosAnt);
end;

procedure TfrmListadeAsistencia.NxEstatusCloseUp(Sender: TObject);
begin
//showmessage(inttostr(Integer(NxEstatus.Items.Objects[strtoint(NXLista.Cells[Nxlista.SelectedColumn, Nxlista.SelectedRow])])));


//    NXLista.Update;
//    NXLista.Repaint;
//    NXLista.EndEditing;
end;

procedure TfrmListadeAsistencia.NXListaBeforeEdit(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
//ShortDateFormat := 'HH:mm';
end;

procedure TfrmListadeAsistencia.NXListaEditExit(Sender: TObject);
var
formattedDate: string;
begin
    DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[5, NXLista.SelectedRow], StrToTime( '00:00' ) ));
    NXLista.Cells[5, NXLista.SelectedRow]:= formattedDate;

    DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[6, NXLista.SelectedRow], StrToTime( '00:00' ) ));
    NXLista.Cells[6, NXLista.SelectedRow]:= formattedDate;
end;

procedure TfrmListadeAsistencia.NXListaHeaderClick(Sender: TObject;
  ACol: Integer);
Var
  i, o: Integer;
begin
  o:=TNextGrid(Sender).RowCount;
  if ACol = 3 then begin
    if todos then begin//si esta habilitado
      for i := 0 to o - 1 do begin///checkea los check
        TNextGrid(Sender).Cells[3,i] := 'False';
      end;
      todos := False;
    end else begin//si no estan habilitados
      for I := 0 to o - 1 do begin//deschekea los check
        TNextGrid(Sender).Cells[3,i] := 'True';
      end;
      todos := True;
    end;
  end;
end;

procedure TfrmListadeAsistencia.NXListaSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
//ShortDateFormat := 'hh:nn:ss';
lbmuestranombre.Caption:=NXLista.Cells[1, NXLista.SelectedRow];

end;

procedure TfrmListadeAsistencia.rDiarioGetValue(const VarName: string;
  var Value: Variant);
  var
  campo1, campo2 : string ;
begin

  DateTimeToString(campo1, 'dd/mm/yy', tdfechai.Date) ;
  DateTimeToString(campo2, 'dd/mm/yy', tdFechaf.Date) ;
 if CompareText( VarName, 'TITULO' ) = 0 then
     Value := 'LISTADO DE CATEGORIAS DE LA FECHA   ' + campo1 + '  AL DIA   ' + campo2 ;    
  
  If CompareText(VarName, 'FECHAI') = 0 then
      Value := tdFechaI.Date ;

  If CompareText(VarName, 'FECHAF') = 0 then
      Value := tdFechaF.Date ;
end;

procedure TfrmListadeAsistencia.tdFechaChange(Sender: TObject);
var
Efecha: tdatetime;
begin

    ShortDateFormat := 'yyyy-mm-dd';
    Efecha:=tdFecha.Date;
    zqLista.Active:=false;
    zqLista.ParamByName('fecha').AsDate:=Efecha;
    zqLista.ParamByName('iIdEstatusDiario').AsInteger:= -1;
    zqLista.ParamByName('sAsistencia').AsString:= '-1';
    zqLista.Open;

    llenaGrid(zqLista);

end;

procedure TfrmListadeAsistencia.ImportarDatosdelDiaAnterior1Click(
  Sender: TObject);
  var
  Efecha: tdatetime;
begin
  try
    BtnFiltrar.Click;
    ShortDateFormat := 'yyyy-mm-dd';
    Efecha:=IncDay(tdFecha.Date, -1);
    ZQImpDatosAnt.Active:=false;
    ZQImpDatosAnt.ParamByName('fecha').AsDate:=Efecha;
    ZQImpDatosAnt.ParamByName('fecha').AsDate:=Efecha;
    ZQImpDatosAnt.ParamByName('iIdEstatusDiario').AsInteger:= ZqLista.ParamByName('iIdEstatusDiario').AsInteger;
    ZQImpDatosAnt.ParamByName('sAsistencia').AsString:= zqlista.ParamByName('sAsistencia').AsString;
    ZQImpDatosAnt.ParamByName('sSalida').AsString:= ZqLista.ParamByName('sSalida').AsString;
    ZQImpDatosAnt.ParamByName('sEntrada').AsString:= zqLista.ParamByName('sEntrada').AsString;
    ZQImpDatosAnt.ParamByName('sIdEmpleado').AsString:= zqLista.ParamByName('sIdEmpleado').AsString;
    ZQImpDatosAnt.ParamByName('sNombreCompleto').AsString:= zqLista.ParamByName('sNombreCompleto').AsString;
    ZQImpDatosAnt.Open;

    llenaGrid(ZQImpDatosAnt);
  except
    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error en el sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

function TfrmListadeAsistencia.Imprime_Reporte_Listas_X_Rango() : Boolean;
var
  fecha, fecharx, Fecha_Inicio, Fecha_Fin, FechaIniAs, FechaFinAs : TDate;
  Asistencia, hora : String;
  bandera, distinto_mes, flag : boolean;
  mes, anio, mesI, mesF, anioI, anioF, diarx, faltas, color : Integer;
  i: Integer;
  FechaDia : tDateTime;
begin
  zqLista.Active:=false;
  zqLista.ParamByName('fecha').AsDate  :=-1;
  zqLista.ParamByName('iIdEstatusDiario').AsInteger:= -1;
  zqLista.ParamByName('sAsistencia').AsString:= '-1';
  zqLista.ParamByName('sSalida').AsString:= '-1';
  zqLista.ParamByName('sEntrada').AsString:= '-1';
  zqLista.ParamByName('sIdEmpleado').AsString:= '-1';
  zqLista.ParamByName('sNombreCompleto').AsString:= '-1';
  zqLista.Open;


  if zqLista.RecordCount > 0 then
  begin
    if DaysBetween(tdFechaI.Date, tdFechaF.Date) > 31 then begin
      MessageDlg('El Número de Días del Rango de Fechas Seleccionado es Mayor a 31.',mtInformation,[mbOk],0);
      tdFechaF.SetFocus;
      Result := False;
      exit;
    end;

    mesI         := MonthOf(tdFechaI.Date);
    mesF         := MonthOf(tdFechaF.Date);
    anioI        := YearOf(tdFechaI.Date);
    anioF        := YearOf(tdFechaF.Date);
    distinto_mes := True;//bandera para controlar cuando los meses son distintos
    flag         := true;//bandera para controlar cuando los meses son distintos
    zQListaXRango.Open;

    zQListaXRango.EmptyTable;
    while distinto_mes do begin
      /////si los meses del rango de fechas son distintos deben aparecer 2 hojas, una hoja por mes
      if mesI <> mesF then begin
        ////corrobora que sean distintos los meses para que aga el recorrido por mes
        if flag then begin
          ////aki colocamos la fecha final con el ultimo dia del mes de tdFechaI.date
          ///hoja 1 con mesI
          Fecha_Inicio := tdFechaI.Date;
          Fecha_Fin    := EncodeDate(anioI, mesI, DaysInMonth(tdFechaI.Date));
          ////flag - para que solo entre una vez pues no puede haber mas de 2 meses distintos ya que solo son dos fechas
          flag := False;
        end
        else
        begin
          ////aki colocamos la fecha inicial con el primer dia del mes de tdFechaF.date para la hoja dos
          ///hoja 2 con mesF
          Fecha_Inicio := EncodeDate(anioF, mesF ,1);
          Fecha_Fin    := tdFechaF.Date;

          /////rompemos el while para que ya no aga otro recorrido pues esta seria la segunda hoja con la fecha del mes 2
          distinto_mes := False;
        end;
        mes  := MonthOf(Fecha_Inicio);
        anio := YearOf(Fecha_Inicio);
      end
      else
      begin
        ///estraria de forma normal pues los meses del rango de fechas son los mismos
        ///solo imprimiria una hoja
        Fecha_Inicio := tdFechaI.Date;
        Fecha_Fin    := tdFechaF.Date;
        distinto_mes := False;
        mes          := mesI;
        anio         := anioI;
      end;
      zqLista.First;
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT em.sIdEmpleado, '+
      'em.sNombreCompleto, em.sApellidoPaterno, rs.titulosalario,'+
      'ra.dFecha, dayofweek(ra.dFecha) as dia, ra.sAsistencia, rs.salario, ra.sEntrada, nc.titulocargo, dp.titulodepartamento, '+
      'ra.sSalida, ra.iIdEstatusDiario, re.iColor, re.iColorTexto, '+
      'DAY(ra.dFecha) AS dia, '+
      'MONTH(ra.dFecha) AS mes, '+
      'YEAR(ra.dFecha) AS anio '+
      'FROM '+
      'rh_asistencia AS ra '+
      'RIGHT JOIN empleados AS em ON (em.sIdEmpleado = ra.sIdEmpleado AND ra.dFecha BETWEEN :FechaI AND :FechaF ) '+
      'inner join rh_estatusdiarioempleados as re on (re.iIdEstatusDiario = ra.iIdEstatusDiario) '+
      'INNER JOIN nuc_cargo nc On (nc.IdCargo=em.iId_Puesto) ' +
      'INNER JOIN rhu_salario rs On (rs.idSalario=nc.IdSalario) ' +
      'inner join nuc_departamento dp on (dp.idDepartamento = em.idDepartamento) '+
      'WHERE '+
      'em.sIdEmpleado = :Empleado and sAsistencia="SI"'+
      'GROUP BY ra.dFecha '+
      'ORDER BY ra.dFecha ASC');
      while not zqLista.Eof do
      begin
          connection.QryBusca.Params.ParamByName('Empleado').AsString := zqLista.FieldByName('sIdEmpleado').AsString;
          connection.QryBusca.Params.ParamByName('FechaI').AsDate := Fecha_Inicio;
          connection.QryBusca.Params.ParamByName('FechaF').AsDate := Fecha_Fin;
          connection.QryBusca.Open;
          if connection.QryBusca.RecordCount > 0 then
          begin
            connection.QryBusca.First;
            FechaIniAs := connection.QryBusca.FieldByName('DFecha').AsDateTime;
            zQListaXRango.Append;
            zQListaXRango.FieldByName('IdEmpleado').AsString := connection.QryBusca.FieldByName('sIdEmpleado').AsString;
            zQListaXRango.FieldByName('Nombre').AsString     := connection.QryBusca.FieldByName('sNombreCompleto').AsString;
            zQListaXRango.FieldByName('Apellido').AsString   := connection.QryBusca.FieldByName('sApellidoPaterno').AsString;
            zQListaXRango.FieldByName('titulocargo').AsString        := connection.QryBusca.FieldByName('titulocargo').AsString;
            zQListaXRango.FieldByName('titulodepartamento').AsString := connection.QryBusca.FieldByName('titulodepartamento').AsString;

            zQListaXRango.FieldByName('mes').AsInteger       := mes;
            zQListaXRango.FieldByName('anio').AsInteger      := anio;
            zQListaXRango.FieldByName('asistencias').AsInteger    := connection.QryBusca.RecordCount;
            connection.QryBusca.First;
            while not connection.QryBusca.Eof do
            begin
              if connection.QryBusca.FieldByName('sAsistencia').AsString = 'No' then
                zQListaXRango.FieldByName('faltas').AsInteger := zQListaXRango.FieldByName('faltas').AsInteger-1;

              if RbGenAsistencia.Checked then
                 zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia').AsString).AsFloat := connection.QryBusca.FieldByName('salario').AsFloat
              else
                 zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia').AsString).AsString := '0' ;

              if RbAsistencia.Checked then
              begin
                 if connection.QryBusca.FieldByName('sAsistencia').AsString = 'No' then
                  zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia').AsString).AsString:= '0'
                 else
                  zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia').AsString).AsString:= '1';
              end;

              zQListaXRango.FieldByName('diaest'+connection.QryBusca.FieldByName('dia').AsString).AsVariant :=escolor(connection.QryBusca.FieldByName('IColor').asinteger);
              zQListaXRango.FieldByName('diact'+connection.QryBusca.FieldByName('dia').AsString).AsVariant :=escolor(connection.QryBusca.FieldByName('iColorTexto').asinteger);

              zQListaXRango.FieldByName('aux'+connection.QryBusca.FieldByName('dia').AsString).AsString := 'Registrado';
              zQListaXRango.FieldByName('categoria').AsString := connection.QryBusca.FieldByName('titulosalario').AsString ;

              connection.QryBusca.Next;
            end;
          FechaFinAs := connection.QryBusca.FieldByName('DFecha').AsDateTime;
          zQListaXRango.FieldByName('Faltas').AsInteger:= DaysBetween(FechaIniAs, FechaFinAs)+1;
          zQListaXRango.FieldByName('Faltas').AsInteger:= zQListaXRango.FieldByName('Faltas').AsInteger - zQListaXRango.FieldByName('asistencias').AsInteger;
          zQListaXRango.Post;

          FechaDia := tdFechaI.Date;
          for i := 1 to DaysBetween(tdFechaI.Date, tdFechaF.Date) + 1 do
          begin
              if i<= 16 then
              begin                  
                  zQListaXRango.Edit;
                  zQListaXRango.FieldByName('Fecha'+IntTostr(i)).AsDateTime := FechaDia;
                  zQListaXRango.Post;
              end;
              FechaDia := FechaDia + 1;
          end;

        end;
        zqLista.Next;
        connection.QryBusca.Active := False;
      end;///fin de while zqLista.Eof
    end;///fin de while distinto_mes
    zQListaXRango.First;
    Result := True;
  end////fin de if RecordCount
  else
  begin
    MessageDlg('No existen Registros para los Empleados en éste Rango de Fechas.',mtInformation, [mbOk],0);
    Result := False;
  end;
end;

procedure TfrmListadeAsistencia.llenaGrid (Zaux : Tzquery);
var
    formattedDate: string;
begin
  NXLista.ClearRows;
  if Zaux.RecordCount>0 then begin
    todos := True;
    Zaux.First;
    while not Zaux.Eof do
    begin
      NXLista.AddRow;
      NXLista.Cells[0, NXLista.LastAddedRow] := Zaux.FieldByName('sIdEmpleado').AsString;
      NXLista.Cells[1, NXLista.LastAddedRow] := Zaux.FieldByName('sNombreCompleto').AsString + ' ' + Zaux.FieldByName('sApellidoPaterno').AsString + ' ' +  Zaux.FieldByName('sApellidoMaterno').AsString;

      connection.QryBusca.First;
      while not connection.QryBusca.Eof do
      begin
          if connection.QryBusca.FieldValues['iIdEstatusDiario'] = Zaux.FieldByName('iIdEstatusDiario').AsInteger then
             NXLista.Cells[2, NXLista.LastAddedRow] := inttostr(NxEstatus.Items.IndexOf(connection.QryBusca.FieldByName('sDescripcion').AsString));
             //NXLista.Cells[2, NXLista.LastAddedRow] := zqLista.FieldByName('sDescripcion').AsString;
             //NXEstatus.Index := NxEstatus.Items.IndexOf(connection.QryBusca.FieldByName('sDescripcion').AsString);
          connection.QryBusca.Next;
      end;

      if Zaux.FieldByName('sAsistencia').AsString = 'Si' then
         NXLista.Cells[3, NXLista.LastAddedRow] := 'True'
       else begin
          NXLista.Cells[3, NXLista.LastAddedRow] := 'False';
          todos := False;
      end;


      NXLista.Cells[4, NXLista.LastAddedRow] := Zaux.FieldByName('dFecha').AsString;

      if Zaux.FieldByName('sEntrada').AsString<>'' then
      begin
          NXLista.Cells[5, NXLista.LastAddedRow]:= Zaux.FieldByName('sEntrada').AsString;
          NXLista.Cells[6, NXLista.LastAddedRow]:= Zaux.FieldByName('sSalida').AsString;

          DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[5, NXLista.LastAddedRow], StrToTime( '00:00' ) ));
          NXLista.Cells[5, NXLista.LastAddedRow]:= formattedDate;

          DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[6, NXLista.LastAddedRow], StrToTime( '00:00' ) ));
          NXLista.Cells[6, NXLista.LastAddedRow]:= formattedDate;
      end
      else
      begin
        NXLista.Cells[5, NXLista.LastAddedRow] := '08:00 a.m.' ;
        NXLista.Cells[6, NXLista.LastAddedRow] := '07:00 p.m.' ;
      end;
        nxLista.Cells[7, NXLista.LastAddedRow] := zAux.FieldByName('titulosalario').asString ;
        nxLista.Cells[8, NxLista.LastAddedRow] := zAux.FieldByName('salario').AsString ;
      Zaux.Next;
    end;
  end;
  NXLista.SelectedRow:=0;
  NXLista.setfocus;
end;

procedure TfrmListadeAsistencia.mniImprimirListadeldia1Click(Sender: TObject);
begin
    rDiario.PreviewOptions.MDIChild := False ;
    rDiario.PreviewOptions.Modal := True ;
    rDiario.PreviewOptions.Maximized := lCheckMaximized () ;
    rDiario.PreviewOptions.ShowCaptions := False ;
    rDiario.Previewoptions.ZoomMode := zmPageWidth ;
    
    if not FileExists(Global_Files + global_miReporte +'_listadeasistencia.fr3') then
     begin
        showmessage('El archivo de reporte '+global_Mireporte+'_listadeasistencia.fr3 no existe, notifique al administrador del sistema');
        exit;
     end
     else
     begin
        rDiario.LoadFromFile(Global_Files+global_miReporte +'_listadeasistencia.fr3') ;
        rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
     end;

end;

end.
