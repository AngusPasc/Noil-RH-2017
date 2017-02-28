unit frmGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ComCtrls,
  dxCore, cxDateUtils, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxProgressBar, StdCtrls, cxButtons, cxCalc, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox, ExtCtrls, ComObj, UnitExcel, global,
  ImgList, cxCheckBox, DateUtils, frm_PopUpManodeObra;

type
  Tfrm_Gerencial = class(TForm)
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxProgressBar1: TcxProgressBar;
    zq_Ingresos: TZQuery;
    DatoImagen: TZQuery;
    zq_OtrosIngresos: TZQuery;
    zq_OtrosIngEng: TZQuery;
    zq_EdoCuenta: TZQuery;
    zq_IngresosD: TZQuery;
    zq_EdoCtaD: TZQuery;
    zq_NumCta: TZQuery;
    zq_Egresos: TZQuery;
    zq_EgresosD: TZQuery;
    cxProgressBar2: TcxProgressBar;
    zq_OtrosEgresos: TZQuery;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    zq_Facturado: TZQuery;
    img: TcxImageList;
    zq_Pendiente: TZQuery;
    zq_PendientesD: TZQuery;
    cxGroupBox3: TcxGroupBox;
    chOingresos: TcxCheckBox;
    chOegresos: TcxCheckBox;
    chOcomp: TcxCheckBox;
    chgrafica: TcxCheckBox;
    chdetalles: TcxCheckBox;
    chotros: TcxCheckBox;
    chtodo: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxdeFechaI: TcxDateEdit;
    cxdeFechaF: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxMonto: TcxCalcEdit;
    cxbtnGerencial: TcxButton;
    zq_IngGral: TZQuery;
    zq_FacGral: TZQuery;
    zq_statusfacturas: TZQuery;
    zq_statusfacturasiId: TIntegerField;
    zq_statusfacturassNombre: TStringField;
    zq_Graficas: TZQuery;
    chkFlujoEfectivo: TCheckBox;
    cxAlmCont: TcxComboBox;
    cxLabel3: TcxLabel;
    procedure cxbtnGerencialClick(Sender: TObject);
    procedure chtodoPropertiesChange(Sender: TObject);
    procedure chotrosPropertiesChange(Sender: TObject);
    procedure chOingresosPropertiesChange(Sender: TObject);
    procedure chOegresosPropertiesChange(Sender: TObject);
    procedure chOcompPropertiesChange(Sender: TObject);
    procedure chgraficaPropertiesChange(Sender: TObject);
    procedure chdetallesPropertiesChange(Sender: TObject);

    procedure formatoEncabezado(const Datos : array of string);
    procedure AnchoColumnas(const Ancho : array of string);
    procedure TextoColumnasColorFondo(const Datos : array of string);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Gerencial: Tfrm_Gerencial;
  columnas : array[1..260] of String ;
  Excel, Workbook, Worksheet: Variant;
  function LetraColumna (x:integer):string;

implementation

uses
  frm_connection;

{$R *.dfm}

procedure Tfrm_Gerencial.chdetallesPropertiesChange(Sender: TObject);
begin
  if chdetalles.Checked=False then
  begin
    chtodo.Checked:=False;
  end
end;

procedure Tfrm_Gerencial.chgraficaPropertiesChange(Sender: TObject);
begin
  if chgrafica.Checked=False then
  begin
    chtodo.Checked:=False;
  end
end;

procedure Tfrm_Gerencial.chOcompPropertiesChange(Sender: TObject);
begin
  if chOcomp.Checked=False then
  begin
    chotros.Checked:=False;
    chtodo.Checked:=False;
  end
end;

procedure Tfrm_Gerencial.chOegresosPropertiesChange(Sender: TObject);
begin
  if chOegresos.Checked=False then
  begin
    chotros.Checked:=False;
    chtodo.Checked:=False;
  end
end;

procedure Tfrm_Gerencial.chOingresosPropertiesChange(Sender: TObject);
begin
  if chOingresos.Checked=False then
  begin
    chotros.Checked:=False;
    chtodo.Checked:=False;
  end
end;

procedure Tfrm_Gerencial.chotrosPropertiesChange(Sender: TObject);
begin
  if chotros.Checked then
  begin
    chOingresos.Checked:=True;
    chOegresos.Checked:=True;
    chOcomp.Checked:=True;
  end
  else
  begin
    chtodo.Checked:=False;
    chOingresos.Checked:=False;
    chOegresos.Checked:=False;
    chOcomp.Checked:=False;
  end;
end;

procedure Tfrm_Gerencial.chtodoPropertiesChange(Sender: TObject);
begin
  if chtodo.Checked then
  begin
    chotros.Checked:=True;
    chOingresos.Checked:=True;
    chOegresos.Checked:=True;
    chOcomp.Checked:=True;
    chgrafica.Checked:=True;
    chdetalles.Checked:=True;
  end
  else
  begin
    chotros.Checked:=False;
    chOingresos.Checked:=False;
    chOegresos.Checked:=False;
    chOcomp.Checked:=False;
    chgrafica.Checked:=False;
    chdetalles.Checked:=False;
  end;
end;

procedure Tfrm_Gerencial.cxbtnGerencialClick(Sender: TObject);
var
  X, columx, rowx, idx, idx2, idx3, idx4, idx5, idx6, colx, NumCheked, ColIni, RowIni, RowIni2, RowIni3, RowIni4, RowIni5, RowIni6, ColMaxExc,
  columna, co, i, linea, ccel, graf, dfp: integer;
  avalorStr, valorStr: string;
  TempPath: String;
  LogoFile: String;
  ngrafico: string;
  bingegr: string;
  xlToRight : Integer;
  montog: Double;
  Qry: TZQuery;
  hoja, tabla, AlmacenPrincipal : string;
  dMiFecha : tDateTime;
  meses : TStringList;
  lLista, lBitacora : boolean;
const
   //hoja
   xlWBATWorksheet = -4167;

   xlCenter = -4108;
   xlBottom =-4107;
   xlNone = -4142;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;
   xlDiagonalDown = 5;
   xlDiagonalUp = 6;
   xlInsideVertical = 11;
   xlInsideHorizontal = 12;
   xlEdgeRight = 10;
   xlEdgeTop = 8;

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo
   xl_CL_Gris_Claro = $16445675;
   xlThemeColorDark1=1;

   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;
   Xl_Blanco = clWhite;
begin
  xlToRight := -4161;

  montog:=cxMonto.Value*(-1);
  cxLabel1.Caption := 'Calculando Registros ...';

  if chkFlujoEfectivo.Checked  then
  begin
      if cxalmcont.Text = '' then
      begin
          messageDLG('Seleccione el origen de los materiales!', mtInformation, [mbOk], 0);
          exit;
      end;

      if cxAlmCont.Text  = 'CONTRATOS' then
         AlmacenPrincipal := ' i.sContrato=:contrato '
      else
      begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select sIdAlmacen from almacenes where lPrincipal ="Si"');
          connection.zCommand.Open;

          if connection.zCommand.RecordCount > 0 then
             AlmacenPrincipal := '  i.sIdAlmacen =  "'+connection.zCommand.FieldByName('sIdAlmacen').AsString+'"  '
          else
          begin
              messageDLg('No existe un almacén principal', mtInformation,[mbOk], 0);
              exit;
          end;
      end;

      Application.CreateForm(TFrmPopUpManodeObra, FrmPopUpManodeObra);
      FrmPopUpManodeObra.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpManodeObra.Width)/2);
      FrmPopUpManodeObra.Top := trunc((screen.Height)/2)-trunc((FrmPopUpManodeObra.Height)/2);
      FrmPopUpManodeObra.Caption  := 'Reporte de Excel';

      if FrmPopUpManodeObra.ShowModal = mrOk then
      begin
        lLista    := FrmPopUpManodeObra.chkExcel.Checked;
        lBitacora := FrmPopUpManodeObra.chkInteligent.Checked;
      end
      else
        Raise Exception.Create('Proceso cancelado por el usuario.');
  end;

  //HOja
  Excel := CreateOleObject('Excel.Application');
  // Mostrar el excel
  Excel.Visible:= True;
  // evitar que nos pregunte si deseamos sobreescribir el archivo
  Excel.DisplayAlerts := false;
  // agregar libro de trabajo
  Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

  if chkFlujoEfectivo.Checked then
  begin
      //COLOCAR LOGO
      TempPath := GetEnvironmentVariable('TEMP');
      LogoFile := TempPath + '\Temp.bmp';
      TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);

      WorkSheet := WorkBook.WorkSheets[1];
      cxProgressBar1.Properties.Max:=100;
      cxProgressBar1.Position:=0;

      cxProgressBar2.Properties.Max:=100;
      cxProgressBar2.Position:=0;

      {$REGION 'Imprime Informacion pestañas'}
      //Materiales
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select sIdFamilia, sDescripcion from familias where iAplicaConcentrado = "Si" order by sIdFamilia DESC ');
      connection.QryBusca2.Open;

      if connection.QryBusca2.RecordCount > 0 then
      begin
        try
           WorkSheet.Name := connection.QryBusca2.FieldByName('sDescripcion').AsString;
        Except
           WorkSheet.Name := connection.QryBusca2.FieldByName('sDescripcion').AsString + '(1)';
        end;
      end;
      i := 1;
      while not connection.QryBusca2.Eof do
      begin
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('  select oc.sMoneda, oc.sReferencia, tm.sDescripcionCorta, DATE_FORMAT(oc.dIdFecha,"%d/%m/%Y") as dIdFecha, ocp.sIdInsumo, ocp.mDescripcion, ocp.sMedida, '+
                    '       i.sIdGrupo, sum(ocp.dCantidad) as dCantidad, ocp.dCosto, sum(ocp.dCosto * ocp.dCantidad) as Monto '+
                    'from anexo_pedidos oc '+
                    'inner join tiposdemoneda tm '+
                    '  on(tm.sIdMoneda = oc.sMoneda ) '+
                    'inner join anexo_ppedido ocp '+
                    '  on (ocp.sContrato = oc.sContrato and ocp.iFolioPedido = oc.iFolioPedido) '+
                    'inner join insumos i '+
                    '  on ('+AlmacenPrincipal+' and i.sIdAlmacen = ocp.sIdAlmacen and i.sIdInsumo = ocp.sIdInsumo) '+
                    'where oc.sContrato =:Contrato '+
                    'and (tm.sDescripcionCorta = "M.N." or tm.sDescripcionCorta = "MX" or tm.sDescripcionCorta = "MN" or '+
                    '     tm.sDescripcionCorta = "USD" or tm.sDescripcionCorta = "DLL") '+
                    'and oc.dIdFecha >=:FechaI and oc.dIdFecha <=:FechaF and i.sIdGrupo =:Grupo '+
                    'group by i.sIdGrupo, oc.dIdFecha, ocp.sIdInsumo order by i.sIdGrupo,oc.dIdFecha');
          connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
          connection.QryBusca.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
          connection.QryBusca.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
          connection.QryBusca.ParamByName('Grupo').AsString    := connection.QryBusca2.FieldByName('sIdFamilia').AsString;
          connection.QryBusca.Open;

          if connection.QryBusca.RecordCount > 0 then
          begin
              if i > 1 then
              begin
                  Excel.Sheets.add;
                  WorkSheet := WorkBook.WorkSheets[1];
                  try
                     WorkSheet.Name := connection.QryBusca2.FieldByName('sDescripcion').AsString;
                  Except
                     WorkSheet.Name := connection.QryBusca2.FieldByName('sDescripcion').AsString + '('+IntTostr(connection.QryBusca2.RecNo)+')';
                  end;
              end;
              inc(i);

              RowIni := 1;
              ColIni := 1;
              WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
              WorkSheet.Cells[RowIni+1,ColIni+2] := connection.configuracionCont.FieldByName('sNombre').AsString;
              WorkSheet.Cells[RowIni+2,ColIni+2] := connection.configuracionCont.FieldByName('sRfc').AsString;
              WorkSheet.Cells[RowIni+3,ColIni+2] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
              WorkSheet.Cells[RowIni+4,ColIni+2] := 'CONCENTRADO DE COSTOS REALES Y PROG. DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;
              //TextoColumnas[Columna, Fila, Texto, Formato, AnchoFila, Fuente, Tamaño, Neg, Cur, Sub, ColorFuente, ColorFondo]
              TextoColumnasColorFondo(['A','7:7','No.','', '','','','','','','','']);
              TextoColumnasColorFondo(['B','7:7','Referencia','', '','','','','','','','']);
              TextoColumnasColorFondo(['C','7:7','Fecha','', '','','','','','','','']);
              TextoColumnasColorFondo(['D','7:7','Concepto','', '','','','','','','','']);
              TextoColumnasColorFondo(['E','7:7','Cantidad','', '','','','','','','','']);
              TextoColumnasColorFondo(['F','7:7','Monto','', '','','','','','','','']);

              AnchoColumnas(['A','7.0','B','18.43','C','10.71','D','50.0','E','11.0','F','14.75']);
              FormatoEncabezado(['A:F','7:7','','','','','','','','','$00595959','$00E2B48D','']);
              TextoColumnasColorFondo(['A:F','7:7','','', '15','Calibri','11','1','','','','']);

              linea := 8;
              while not connection.QryBusca.Eof do
              begin
                  TextoColumnasColorFondo(['A',IntTostr(linea),IntToStr(linea),'', '','','','','','','','']);
                  TextoColumnasColorFondo(['B',IntTostr(linea),connection.QryBusca.FieldByName('sReferencia').AsString,'', '','','','','','','','']);
                  TextoColumnasColorFondo(['C',IntTostr(linea),DateToStr(connection.QryBusca.FieldByName('dIdFecha').AsDateTime),'', '','','','','','','','']);
                  TextoColumnasColorFondo(['D',IntTostr(linea),connection.QryBusca.FieldByName('mDescripcion').AsString,'', '','','','','','','','']);
                  TextoColumnasColorFondo(['E',IntTostr(linea),FloatToStr(connection.QryBusca.FieldByName('dCantidad').AsFloat),'', '','','','','','','','']);
                  TextoColumnasColorFondo(['F',IntTostr(linea),FloatToSTr(connection.QryBusca.FieldByName('Monto').AsFloat),'', '','','','','','','','']);
                  inc(linea);
                  connection.QryBusca.Next;
              end;
              FormatoEncabezado(['C:C','8:'+IntToStr(linea-1),'','','','','','','','','','','mm/dd/aaaa']);
              FormatoEncabezado(['E:E','8:'+IntToStr(linea-1),'','','','','','','','','','','_( #,##0.00_);_( (#,##0.00);_(* "-"??_);_(@_)']);
              FormatoEncabezado(['F:F','8:'+IntToStr(linea-1),'','','','','','','','','','','_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)']);
              Excel.Range['A2:A2'].Select;
          end;

          connection.QryBusca2.Next;
      end;

      //Equipo
      Excel.Sheets.add;
      WorkSheet := WorkBook.WorkSheets[1];
      try
         WorkSheet.Name := 'EQUIPO';
      Except
         WorkSheet.Name := 'EQUIPO(1)';
      end;

      RowIni := 1;
      ColIni := 1;
      WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
      WorkSheet.Cells[RowIni+1,ColIni+3] := connection.configuracionCont.FieldByName('sNombre').AsString;
      WorkSheet.Cells[RowIni+2,ColIni+3] := connection.configuracionCont.FieldByName('sRfc').AsString;
      WorkSheet.Cells[RowIni+3,ColIni+3] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
      WorkSheet.Cells[RowIni+4,ColIni+3] := 'CONCENTRADO DE COSTOS REALES Y PROG. DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

      //TextoColumnas[Columna, Fila, Texto, Formato, AnchoFila, Fuente, Tamaño, Neg, Cur, Sub, ColorFuente, ColorFondo]
      TextoColumnasColorFondo(['A','7:7','No.','', '','','','','','','','']);
      TextoColumnasColorFondo(['B','7:7','Fecha','', '','','','','','','','']);
      TextoColumnasColorFondo(['C','7:7','Id','', '','','','','','','','']);
      TextoColumnasColorFondo(['D','7:7','Descripcion','', '','','','','','','','']);
      TextoColumnasColorFondo(['E','7:7','Cantidad','', '','','','','','','','']);
      TextoColumnasColorFondo(['F','7:7','Monto','', '','','','','','','','']);

      AnchoColumnas(['A','7.0','B','10.75','C','12.00','D','50.0','E','11.0','F','14.75']);
      FormatoEncabezado(['A:F','7:7','','','','','','','','','$00595959','$00E2B48D','']);
      TextoColumnasColorFondo(['A:F','7:7','','', '15','Calibri','11','1','','','','']);

      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select DATE_FORMAT(d.dIdFecha,"%d/%m/%Y") as dIdFecha, d.sIdEquipo, d.sDescripcion, sum(d.dCantidad) as Cantidad, sum(d.dCantidad * p.dVentaMN) as MN, sum(d.dCantidad * p.dVentadLL) as DLL '+
                'from bitacoradeequipos d '+
                'inner join equipos p '+
                'on (p.sContrato = d.sContrato and p.sIdEquipo  = d.sIdEquipo) '+
                'where p.sContrato =:Contrato and d.dIdFecha >=:FechaI and dIdFecha <=:FechaF group by p.sContrato, d.dIdFecha, d.sIdEquipo');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
      connection.QryBusca2.Open;

      linea :=8;
      while not connection.QryBusca2.Eof do
      begin
          TextoColumnasColorFondo(['A',IntTostr(linea),IntToStr(linea),'', '','','','','','','','']);
          TextoColumnasColorFondo(['B',IntTostr(linea),DateToStr(connection.QryBusca2.FieldByName('dIdFecha').AsDateTime),'', '','','','','','','','']);
          TextoColumnasColorFondo(['C',IntTostr(linea),connection.QryBusca2.FieldByName('sIdEquipo').AsString,'', '','','','','','','','']);
          TextoColumnasColorFondo(['D',IntTostr(linea),connection.QryBusca2.FieldByName('sDescripcion').AsString,'', '','','','','','','','']);
          TextoColumnasColorFondo(['E',IntTostr(linea),FloatToStr(connection.QryBusca2.FieldByName('Cantidad').AsFloat),'', '','','','','','','','']);
          TextoColumnasColorFondo(['F',IntTostr(linea),FloatToSTr(connection.QryBusca2.FieldByName('MN').AsFloat),'', '','','','','','','','']);
          inc(linea);
          connection.QryBusca2.Next;
      end;
      FormatoEncabezado(['C:C','8:'+IntToStr(linea-1),'','','','','','','','','','','mm/dd/aaaa']);
      FormatoEncabezado(['E:E','8:'+IntToStr(linea-1),'','','','','','','','','','','_( #,##0.00_);_( (#,##0.00);_(* "-"??_);_(@_)']);
      FormatoEncabezado(['F:F','8:'+IntToStr(linea-1),'','','','','','','','','','','_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)']);
      Excel.Range['A2:A2'].Select;

      //Personal
      Excel.Sheets.add;
      WorkSheet := WorkBook.WorkSheets[1];
      try
         WorkSheet.Name := 'MANO DE OBRA';
      Except
         WorkSheet.Name := 'MANO DE OBRA(1)';
      end;
      RowIni := 1;
      ColIni := 1;
      WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
      WorkSheet.Cells[RowIni+1,ColIni+3] := connection.configuracionCont.FieldByName('sNombre').AsString;
      WorkSheet.Cells[RowIni+2,ColIni+3] := connection.configuracionCont.FieldByName('sRfc').AsString;
      WorkSheet.Cells[RowIni+3,ColIni+3] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
      WorkSheet.Cells[RowIni+4,ColIni+3] := 'CONCENTRADO DE COSTOS REALES Y PROG. DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

      if lLista then
      begin
          //TextoColumnas[Columna, Fila, Texto, Formato, AnchoFila, Fuente, Tamaño, Neg, Cur, Sub, ColorFuente, ColorFondo]
          TextoColumnasColorFondo(['A','7:7','No.','','','','','','','','','']);
          TextoColumnasColorFondo(['B','7:7','Fecha','','','','','','','','','']);
          TextoColumnasColorFondo(['C','7:7','Id','','','','','','','','','']);
          TextoColumnasColorFondo(['D','7:7','Descripcion','','','','','','','','','']);
          TextoColumnasColorFondo(['E','7:7','Nombre','','','','','','','','','']);
          TextoColumnasColorFondo(['F','7:7','Monto','','','','','','','','','']);

          AnchoColumnas(['A','7.0','B','10.75','C','12.00','D','40.0','E','40.0','F','14.75']);
          FormatoEncabezado(['A:F','7:7','','','','','','','','','$00595959','$00E2B48D','']);
          TextoColumnasColorFondo(['A:F','7:7','','', '15','Calibri','11','1','','','','']);

          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('select DATE_FORMAT(ra.dFecha,"%d/%m/%Y") as dIdFecha, ra.sIdEmpleado, nc.titulocargo, '+
                    ' rs.Salario, concat(em.sNombreCompleto," ", em.sApellidoPaterno," ", em.sApellidoMaterno) as nombre from empleados AS em '+
                    'INNER JOIN nuc_cargo nc On (nc.IdCargo=em.iId_Puesto) '+
                    'INNER JOIN rhu_salario rs On (rs.idSalario=nc.IdSalario) '+
                    'inner join rh_asistencia ra on (ra.sIdEmpleado = em.sIdEmpleado and ra.dFecha >=:FechaI and ra.dFecha <=:FechaF and sAsistencia = "si") '+
                    'where em.idOrganizacion =:Organizacion group by em.idOrganizacion, ra.sIdEmpleado, ra.dFecha order by ra.dFecha, ra.sIdEmpleado');
          connection.QryBusca2.ParamByName('Organizacion').AsInteger := connection.contrato.FieldByName('idOrganizacion').AsInteger;
          connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
          connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
          connection.QryBusca2.Open;

          linea :=8;
          while not connection.QryBusca2.Eof do
          begin
              TextoColumnasColorFondo(['A',IntTostr(linea),IntToStr(linea-1),'', '','','','','','','','']);
              TextoColumnasColorFondo(['B',IntTostr(linea),DateToStr(connection.QryBusca2.FieldByName('dIdFecha').AsDateTime),'', '','','','','','','','']);
              TextoColumnasColorFondo(['C',IntTostr(linea),connection.QryBusca2.FieldByName('sIdEmpleado').AsString,'', '','','','','','','','']);
              TextoColumnasColorFondo(['D',IntTostr(linea),connection.QryBusca2.FieldByName('titulocargo').AsString,'', '','','','','','','','']);
              TextoColumnasColorFondo(['E',IntTostr(linea),connection.QryBusca2.FieldByName('nombre').AsString,'', '','','','','','','','']);
              TextoColumnasColorFondo(['F',IntTostr(linea),FloatToSTr(connection.QryBusca2.FieldByName('salario').AsFloat),'', '','','','','','','','']);
              inc(linea);
              connection.QryBusca2.Next;
          end;
          FormatoEncabezado(['B:B','8:'+IntToStr(linea-1),'','','','','','','','','','','mm/dd/aaaa']);
          FormatoEncabezado(['F:F','8:'+IntToStr(linea-1),'','','','','','','','','','','_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)']);
          Excel.Range['A2:A2'].Select;
      end;

      if lBitacora then
      begin
          //TextoColumnas[Columna, Fila, Texto, Formato, AnchoFila, Fuente, Tamaño, Neg, Cur, Sub, ColorFuente, ColorFondo]
          TextoColumnasColorFondo(['A','7:7','No.','', '','','','','','','','']);
          TextoColumnasColorFondo(['B','7:7','Fecha','', '','','','','','','','']);
          TextoColumnasColorFondo(['C','7:7','Id','', '','','','','','','','']);
          TextoColumnasColorFondo(['D','7:7','Descripcion','', '','','','','','','','']);
          TextoColumnasColorFondo(['E','7:7','Cantidad','', '','','','','','','','']);
          TextoColumnasColorFondo(['F','7:7','Monto','', '','','','','','','','']);

          AnchoColumnas(['A','7.0','B','10.75','C','12.00','D','50.0','E','11.0','F','14.75']);
          FormatoEncabezado(['A:F','7:7','','','','','','','','','$00595959','$00E2B48D','']);
          TextoColumnasColorFondo(['A:F','7:7','','', '15','Calibri','11','1','','','','']);

          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('select DATE_FORMAT(d.dIdFecha,"%d/%m/%Y") as dIdFecha, d.sIdPersonal, d.sDescripcion, sum(d.dCantidad) as Cantidad, sum(d.dCantidad * p.dVentaMN) as MN, sum(d.dCantidad * p.dVentadLL) as DLL '+
                    'from bitacoradepersonal d '+
                    'inner join personal p '+
                    'on (p.sContrato = d.sContrato and p.sIdPersonal  = d.sIdPersonal) '+
                    'where p.sContrato =:Contrato and d.dIdFecha >=:FechaI and dIdFecha <=:FechaF group by p.sContrato, d.dIdFecha, d.sIdPersonal');
          connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
          connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
          connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
          connection.QryBusca2.Open;

          linea :=8;
          while not connection.QryBusca2.Eof do
          begin
              TextoColumnasColorFondo(['A',IntTostr(linea),IntToStr(linea),'', '','','','','','','','']);
              TextoColumnasColorFondo(['B',IntTostr(linea),DateToStr(connection.QryBusca2.FieldByName('dIdFecha').AsDateTime),'', '','','','','','','','']);
              TextoColumnasColorFondo(['C',IntTostr(linea),connection.QryBusca2.FieldByName('sIdPersonal').AsString,'', '','','','','','','','']);
              TextoColumnasColorFondo(['D',IntTostr(linea),connection.QryBusca2.FieldByName('sDescripcion').AsString,'', '','','','','','','','']);
              TextoColumnasColorFondo(['E',IntTostr(linea),FloatToStr(connection.QryBusca2.FieldByName('Cantidad').AsFloat),'', '','','','','','','','']);
              TextoColumnasColorFondo(['F',IntTostr(linea),FloatToSTr(connection.QryBusca2.FieldByName('MN').AsFloat),'', '','','','','','','','']);
              inc(linea);
              connection.QryBusca2.Next;
          end;
          FormatoEncabezado(['C:C','8:'+IntToStr(linea-1),'','','','','','','','','','','mm/dd/aaaa']);
          FormatoEncabezado(['E:E','8:'+IntToStr(linea-1),'','','','','','','','','','','_( #,##0.00_);_( (#,##0.00);_(* "-"??_);_(@_)']);
          FormatoEncabezado(['F:F','8:'+IntToStr(linea-1),'','','','','','','','','','','_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)']);
          Excel.Range['A2:A2'].Select;
      end;

      {$ENDREGION}

      {$REGION 'Costo previsto'}
      // tomar una referencia a la hoja creada
      Excel.Sheets.add;
      WorkSheet := WorkBook.WorkSheets[1];
      WorkSheet.Name := 'Flujo';

      RowIni := 1;
      ColIni := 1;

      WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
      WorkSheet.Cells[RowIni+1,ColIni+2] := connection.configuracionCont.FieldByName('sNombre').AsString;
      WorkSheet.Cells[RowIni+2,ColIni+2] := connection.configuracionCont.FieldByName('sRfc').AsString;
      WorkSheet.Cells[RowIni+3,ColIni+2] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
      WorkSheet.Cells[RowIni+4,ColIni+2] := 'CONCENTRADO DE COSTOS REALES Y PROG. DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

      //TextoColumnas[Columna, Fila, Texto, Formato, AnchoFila, Fuente, Tamaño, Neg, Cur, Sub, ColorFuente, ColorFondo]
      TextoColumnasColorFondo(['B','9:9','Costo Previsto','', '15','Calibri','11','1','','','','']);

      ColIni := 3;
      linea  := 7;
      if cxdeFechaI.Text <> '' then
      begin
          dMiFecha := cxdeFechaI.Date;
          colx := 1;
          x := 1;
          for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
          begin
              TextoColumnasColorFondo([columnas[ColIni],IntTostr(linea),'Programado','', '','Calibri','11','1','','','$00404040','']);
              TextoColumnasColorFondo([columnas[ColIni +1],IntTostr(linea),'Real','', '','Calibri','11','1','','','$007D491F','']);
              TextoColumnasColorFondo([columnas[ColIni +1],IntTostr(linea +1),DateToStr(dMiFecha),'dd-aaaa', '','Calibri','11','','','','$000100FF','']);
              TextoColumnasColorFondo([columnas[ColIni +1],IntTostr(linea +2),'Mes '+ IntToStr(x),'', '','Calibri','11','1','','','','']);
              inc(ColIni,2);
              inc(x);
              dMiFecha := IncMonth(dMiFecha, 1);
          end;
      end;
      inc(linea,3);
      AnchoColumnas(['A','20.86','B:'+columnas[ColIni],'15']);

      //Mano de Obra
      TextoColumnasColorFondo(['A',IntTostr(linea),'MANO DE OBRA','', '','Calibri','11','','','','','']);
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select sum(p.dCantidad * dVentaMN) as MN, sum(p.dCantidad * dVentaDLL) as DLL  from personal p '+
                'where p.sContrato = :Contrato group by p.sContrato');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.Open;

      if connection.QryBusca2.RecordCount > 0 then
         TextoColumnasColorFondo(['B',IntTostr(linea),FloatToSTr(connection.QryBusca2.FieldByName('MN').AsFloat),'_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)', '','Calibri','11','','','','','']);

      inc(linea);
      //Equipo
      TextoColumnasColorFondo(['A',IntTostr(linea),'EQUIPO','', '','Calibri','11','','','','','']);
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select sum(p.dCantidad * dVentaMN) as MN, sum(p.dCantidad * dVentaDLL) as DLL  from equipos p '+
                'where p.sContrato = :Contrato group by p.sContrato');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.Open;

      if connection.QryBusca2.RecordCount > 0 then
         TextoColumnasColorFondo(['B',IntTostr(linea),FloatToSTr(connection.QryBusca2.FieldByName('MN').AsFloat),'_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)', '','Calibri','11','','','','','']);

      //Materiales
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select i.sIdGrupo, f.sDescripcion, sum(i.dCantidad * dVentaMN) as MN, sum(i.dCantidad * dVentaDLL) as DLL from insumos i '+
                  'inner join familias f on (f.sIdFamilia = i.sIdGrupo and f.iAplicaConcentrado = "Si") '+
                  'inner join anexo_pedidos p on (p.sContrato =:Contrato and p.dIdFecha >=:FechaI and p.dIdFecha <=:FechaF) '+
                  'inner join anexo_ppedido pp on (p.sContrato = pp.sContrato and p.iFolioPedido = pp.iFolioPedido and pp.sIdInsumo =i.sIdInsumo and pp.sIdAlmacen = i.sIdAlmacen) '+
                  'where '+AlmacenPrincipal+' group by i.sContrato, i.sIdGrupo ');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
      connection.QryBusca2.Open;

      inc(linea);
      while not connection.QryBusca2.Eof do
      begin
          TextoColumnasColorFondo(['A',IntTostr(linea),connection.QryBusca2.FieldByName('sDescripcion').AsString,'', '','Calibri','11','','','','','']);
          TextoColumnasColorFondo(['B',IntTostr(linea),FloatToSTr(connection.QryBusca2.FieldByName('MN').AsFloat),'_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)', '','Calibri','11','','','','','']);
          connection.QryBusca2.Next;
          inc(linea);
      end;

      TextoColumnasColorFondo(['B:'+columnas[ColIni-1],'9:9','','', '','','','','','','$00595959','$00E2B48D']);
      FormatoEncabezado(['B:'+columnas[ColIni-1],'7:7','','','','','','1','','','','','']);

      {$ENDREGION}

      {$REGION 'Programados'}
      //Mano de obra
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select MONTH(d.dIdFecha)as Mes, year(d.dIdFecha) as anio, sum(d.dCantidad * p.dVentaMN) as MN, sum(d.dCantidad * p.dVentadLL) as DLL '+
                 ' from distribuciondepersonal d '+
                 ' inner join personal p '+
                 ' on (p.sContrato = d.sContrato and p.sIdPersonal  = d.sIdPersonal) '+
                 ' where p.sContrato =:Contrato and d.dIdFecha >=:FechaI and d.dIdFecha <=:FechaF group by p.sContrato, month(d.dIdFecha)');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
      connection.QryBusca2.Open;

      colx := 1;
      dMiFecha := cxdeFechaI.Date;
      cCel   := 10;
      colIni := 3;
      for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
      begin
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
              if (connection.QryBusca2.FieldByName('mes').AsInteger = MonthOfTheYear(dMiFecha)) and (connection.QryBusca2.FieldByName('anio').AsInteger = YearOf(dMiFecha)) then
                 TextoColumnasColorFondo([columnas[ColIni],IntTostr(cCel),FloatToStr(connection.QryBusca2.FieldByName('MN').AsFloat),'', '','Calibri','11','','','','','']);
              connection.QryBusca2.Next;
          end;
          dMiFecha := incMonth(dMiFecha,1);
          inc(ColIni,2);
      end;

      //Equipo
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select MONTH(d.dIdFecha)as Mes, year(d.dIdFecha) as anio, sum(d.dCantidad * p.dVentaMN) as MN, sum(d.dCantidad * p.dVentadLL) as DLL '+
                 ' from distribuciondeequipos d '+
                 ' inner join equipos p '+
                 ' on (p.sContrato = d.sContrato and p.sIdEquipo  = d.sIdEquipo) '+
                 ' where p.sContrato =:Contrato and d.dIdFecha >=:FechaI and d.dIdFecha <:FechaF group by p.sContrato, month(d.dIdFecha)');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
      connection.QryBusca2.Open;

      colx := 1;
      dMiFecha := cxdeFechaI.Date;
      cCel   := 11;
      colIni := 3;
      for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
      begin
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
              if (connection.QryBusca2.FieldByName('mes').AsInteger = MonthOfTheYear(dMiFecha)) and (connection.QryBusca2.FieldByName('anio').AsInteger = YearOf(dMiFecha)) then
                 TextoColumnasColorFondo([columnas[ColIni],IntTostr(cCel),FloatToStr(connection.QryBusca2.FieldByName('MN').AsFloat),'', '','Calibri','11','','','','','']);
              connection.QryBusca2.Next;
          end;
          dMiFecha := incMonth(dMiFecha,1);
          inc(ColIni,2);
      end;

      //Materiales
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select i.sIdGrupo, MONTH(d.dIdFecha)as Mes, year(d.dIdFecha) as anio, sum(d.dCantidad * i.dVentaMN) as MN, sum(d.dCantidad * i.dVentadLL) as DLL '+
                 ' from distribuciondematerial d '+
                 ' inner join insumos i '+
                 ' on ('+AlmacenPrincipal+' and i.sIdInsumo  = d.sIdMaterial) '+
                 ' inner join familias f on (f.sIdFamilia = i.sIdGrupo and f.iAplicaConcentrado = "Si") '+
                 ' where d.dIdFecha >=:FechaI and d.dIdFecha <=:FechaF group by i.sIdGrupo, month(d.dIdFecha) order by i.sIdGrupo');
      if cxAlmCont.Text = 'CONTRATOS' then
         connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
      connection.QryBusca2.Open;

      colx := 1;
      dMiFecha := cxdeFechaI.Date;
      colIni := 3;
      valorStr := '';
      for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
      begin
          cCel   := 11;
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
              if valorStr <> connection.QryBusca2.FieldByName('sIdGrupo').AsString then
              begin
                 valorStr := connection.QryBusca2.FieldByName('sIdGrupo').AsString;
                 inc(cCel);
              end;
              if (connection.QryBusca2.FieldByName('mes').AsInteger = MonthOfTheYear(dMiFecha)) and (connection.QryBusca2.FieldByName('anio').AsInteger = YearOf(dMiFecha)) then
                 TextoColumnasColorFondo([columnas[ColIni],IntTostr(cCel),FloatToStr(connection.QryBusca2.FieldByName('MN').AsFloat),'', '','Calibri','11','','','','','']);
              connection.QryBusca2.Next;
          end;
          dMiFecha := incMonth(dMiFecha,1);
          inc(ColIni,2);
      end;

      {$ENDREGION}

      {$REGION 'Reales'}
      //Personal
      if lLista  then
      begin
          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('select DATE_FORMAT(ra.dFecha,"%d/%m/%Y") as dIdFecha, MONTH(ra.dFecha)as Mes, year(ra.dFecha) as anio, ra.sIdEmpleado, nc.titulocargo, '+
                    ' rs.Salario, sum(rs.Salario) as total, em.sNombreCompleto, em.sApellidoPaterno, em.sApellidoMaterno from empleados AS em '+
                    'INNER JOIN nuc_cargo nc On (nc.IdCargo=em.iId_Puesto) '+
                    'INNER JOIN rhu_salario rs On (rs.idSalario=nc.IdSalario) '+
                    'inner join rh_asistencia ra on (ra.sIdEmpleado = em.sIdEmpleado and dFecha >=:FechaI and dFecha <=:FechaF and sAsistencia = "si") '+
                    'where em.idOrganizacion =:Organizacion group by em.idOrganizacion, YEAR(ra.dFecha), month(ra.dFecha)');
          connection.QryBusca2.ParamByName('Organizacion').AsInteger := connection.contrato.FieldByName('idOrganizacion').AsInteger;
          connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
          connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
          connection.QryBusca2.Open;

          colx := 1;
          dMiFecha := cxdeFechaI.Date;
          cCel   := 10;
          colIni := 4;
          for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
          begin
              connection.QryBusca2.First;
              while not connection.QryBusca2.Eof do
              begin
                  if (connection.QryBusca2.FieldByName('mes').AsInteger = MonthOfTheYear(dMiFecha)) and (connection.QryBusca2.FieldByName('anio').AsInteger = YearOf(dMiFecha)) then
                     TextoColumnasColorFondo([columnas[ColIni],IntTostr(cCel),FloatToStr(connection.QryBusca2.FieldByName('total').AsFloat),'', '','Calibri','11','','','','','']);
                  connection.QryBusca2.Next;
              end;
              dMiFecha := incMonth(dMiFecha,1);
              inc(ColIni,2);
          end;

      end;

      if lBitacora then
      begin
          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('select MONTH(d.dIdFecha)as Mes, year(d.dIdFecha) as anio, sum(d.dCantidad * p.dVentaMN) as MN, sum(d.dCantidad * p.dVentadLL) as DLL '+
                     ' from bitacoradepersonal d '+
                     ' inner join personal p '+
                     ' on (p.sContrato = d.sContrato and p.sIdPersonal  = d.sIdPersonal) '+
                     ' where p.sContrato =:Contrato and d.dIdFecha >=:FechaI and d.dIdFecha <=:FechaF group by p.sContrato, month(d.dIdFecha)');
          connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
          connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
          connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
          connection.QryBusca2.Open;

          colx := 1;
          dMiFecha := cxdeFechaI.Date;
          cCel   := 10;
          colIni := 4;
          for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
          begin
              connection.QryBusca2.First;
              while not connection.QryBusca2.Eof do
              begin
                  if (connection.QryBusca2.FieldByName('mes').AsInteger = MonthOfTheYear(dMiFecha)) and (connection.QryBusca2.FieldByName('anio').AsInteger = YearOf(dMiFecha)) then
                     TextoColumnasColorFondo([columnas[ColIni],IntTostr(cCel),FloatToStr(connection.QryBusca2.FieldByName('MN').AsFloat),'', '','Calibri','11','','','','','']);
                  connection.QryBusca2.Next;
              end;
              dMiFecha := incMonth(dMiFecha,1);
              inc(ColIni,2);
          end;
      end;

      //Equipo
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select MONTH(d.dIdFecha)as Mes, year(d.dIdFecha) as anio, sum(d.dCantidad * p.dVentaMN) as MN, sum(d.dCantidad * p.dVentadLL) as DLL '+
                 ' from bitacoradeequipos d '+
                 ' inner join equipos p '+
                 ' on (p.sContrato = d.sContrato and p.sIdEquipo  = d.sIdEquipo) '+
                 ' where p.sContrato =:Contrato and d.dIdFecha >=:FechaI and d.dIdFecha <:FechaF group by p.sContrato, month(d.dIdFecha)');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
      connection.QryBusca2.Open;

      colx := 1;
      dMiFecha := cxdeFechaI.Date;
      cCel   := 11;
      colIni := 4;
      for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
      begin
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
              if (connection.QryBusca2.FieldByName('mes').AsInteger = MonthOfTheYear(dMiFecha)) and (connection.QryBusca2.FieldByName('anio').AsInteger = YearOf(dMiFecha)) then
                 TextoColumnasColorFondo([columnas[ColIni],IntTostr(cCel),FloatToStr(connection.QryBusca2.FieldByName('MN').AsFloat),'', '','Calibri','11','','','','','']);
              connection.QryBusca2.Next;
          end;
          dMiFecha := incMonth(dMiFecha,1);
          inc(ColIni,2);
      end;

      //Materiales
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select oc.sMoneda, tm.sDescripcionCorta, Month(oc.dIdFecha) as mes, year(oc.dIdFecha)as anio, '+
                        '       i.sIdGrupo, sum(ocp.dCosto * ocp.dCantidad) as Monto '+
                        'from anexo_pedidos oc '+
                        'inner join tiposdemoneda tm '+
                        '  on(tm.sIdMoneda = oc.sMoneda ) '+
                        'inner join anexo_ppedido ocp '+
                        '  on (ocp.sContrato = oc.sContrato and ocp.iFolioPedido = oc.iFolioPedido) '+
                        'inner join insumos i '+
                        '  on ('+AlmacenPrincipal+' and i.sIdAlmacen = ocp.sIdAlmacen and i.sIdInsumo = ocp.sIdInsumo) '+
                        ' inner join familias f on (f.sIdFamilia = i.sIdGrupo and f.iAplicaConcentrado = "Si") '+
                        'where oc.sContrato = :Contrato '+
                        'and (tm.sDescripcionCorta = "M.N." or tm.sDescripcionCorta = "MX" or tm.sDescripcionCorta = "MN" or '+
                        '     tm.sDescripcionCorta = "USD" or tm.sDescripcionCorta = "DLL") '+
                        'and oc.dIdFecha >=:FechaI and oc.dIdFecha <=:FechaF '+
                        'group by i.sIdGrupo, Month(oc.dIdFecha) order by i.sIdGrupo,oc.dIdFecha');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('FechaI').AsDate     := cxdeFechaI.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate     := cxdeFechaF.Date;
      connection.QryBusca2.Open;

      colx := 1;
      dMiFecha := cxdeFechaI.Date;
      colIni := 4;
      valorStr := '';
      for i := colx to MonthsBetween(cxdeFechaI.Date, cxdeFechaF.Date) do
      begin
          cCel   := 11;
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
              if valorStr <> connection.QryBusca2.FieldByName('sIdGrupo').AsString then
              begin
                 valorStr := connection.QryBusca2.FieldByName('sIdGrupo').AsString;
                 inc(cCel);
              end;
              if (connection.QryBusca2.FieldByName('mes').AsInteger = MonthOfTheYear(dMiFecha)) and (connection.QryBusca2.FieldByName('anio').AsInteger = YearOf(dMiFecha)) then
                 TextoColumnasColorFondo([columnas[ColIni],IntTostr(cCel),FloatToStr(connection.QryBusca2.FieldByName('Monto').AsFloat),'', '','Calibri','11','','','','','']);
              connection.QryBusca2.Next;
          end;
          dMiFecha := incMonth(dMiFecha,1);
          inc(ColIni,2);
      end;

      FormatoEncabezado(['C'+':'+columnas[ColIni-1],'10:'+IntToStr(linea-1),'','','','','','','','','','','_($ #,##0.00_);_($ (#,##0.00);_(* "-"??_);_(@_)']);
      Excel.Range['A2:A2'].Select;
      {$ENDREGION}

      Inc(idx);
      cxProgressBar2.Position:=idx;
       Inc(linea);
      cxProgressBar1.Position:=linea;
      cxLabel2.Caption:='Terminado';
      cxLabel1.Caption:='Terminado';
      messageDLG('El reporte se Imprimió correctamente!', mtInformation, [mbOk], 0);
     // Mostrar el excel
      Excel.Visible:= True;
      exit;
  end;

    zq_Ingresos.Close;
    zq_Ingresos.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_Ingresos.Params.ParamByName('tmov').AsString := 'DEPOSITO';
    zq_Ingresos.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_Ingresos.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_Ingresos.Open;

    zq_Pendiente.Close;
    zq_Pendiente.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_Pendiente.Params.ParamByName('tmov').AsString := 'DEPOSITO';
    zq_Pendiente.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_Pendiente.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_Pendiente.Open;

    zq_Facturado.Close;
    zq_Facturado.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_Facturado.Params.ParamByName('tmov').AsString := 'DEPOSITO';
    zq_Facturado.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_Facturado.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_Facturado.Open;

    zq_Egresos.Close;
    zq_Egresos.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_Egresos.Params.ParamByName('mon').AsFloat := montog;
    zq_Egresos.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_Egresos.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_Egresos.Open;

  (*if not DatoImagen.Active then
  begin
    DatoImagen.Params.ParamByName('sContrato').AsString := global_contrato;
    DatoImagen.Open;
  end
  else
    DatoImagen.Refresh;*)

    Connection.configuracionCont.Params.ParamByName('sNombreCorto').AsString := global_contrato;

  if chOcomp.Checked then
  begin
  if not zq_OtrosIngEng.Active then
  begin
    zq_OtrosIngEng.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_OtrosIngEng.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_OtrosIngEng.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_OtrosIngEng.Open;
  end
  else
    zq_OtrosIngEng.Refresh;
    zq_OtrosIngEng.First;
  end;

  if chOingresos.Checked then
  begin
    zq_OtrosIngresos.Close;
    zq_OtrosIngresos.Params.ParamByName('mov').AsString := 'Ingreso';
    zq_OtrosIngresos.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_OtrosIngresos.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_OtrosIngresos.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_OtrosIngresos.Open;
  end;

  if chOegresos.Checked then
  begin
    zq_OtrosEgresos.Close;
    zq_OtrosEgresos.Params.ParamByName('mov').AsString := 'Egreso';
    zq_OtrosEgresos.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_OtrosEgresos.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_OtrosEgresos.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_OtrosEgresos.Open;
  end;

  if not zq_EdoCuenta.Active then
  begin
    zq_EdoCuenta.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_EdoCuenta.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_EdoCuenta.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_EdoCuenta.Open;
  end
  else
    zq_EdoCuenta.Refresh;
    zq_EdoCuenta.First;

  rowx := 2;
  columx := 0;
  x := 0;
  idx := 0;
  colx := 1;

  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  ////////////////////////////
  zq_NumCta.Close;
  zq_NumCta.Params.ParamByName('sContrato').AsString := global_contrato;
  zq_NumCta.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
  zq_NumCta.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
  zq_NumCta.Open;

  cxProgressBar1.Properties.Max:=zq_Ingresos.RecordCount+zq_Egresos.RecordCount+zq_NumCta.RecordCount;
  cxProgressBar1.Position:=0;
  linea:=0;
  if chdetalles.Checked then
  begin
  {$REGION 'Detalle EdoCta'}
  
  cxLabel1.Caption:='Detalles del Estado de Cuenta ...';
  while not zq_NumCta.Eof do
  begin
    cxLabel2.Caption:='Registros de la Cuenta: '+zq_NumCta.FieldByName('sIdNumeroCuenta').AsString;
    zq_EdoCtaD.Close;
    zq_EdoCtaD.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_EdoCtaD.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_EdoCtaD.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_EdoCtaD.Params.ParamByName('numcta').AsString := zq_NumCta.FieldByName('sIdNumeroCuenta').AsString;
    zq_EdoCtaD.Open;

    cxProgressBar2.Properties.Max:=zq_EdoCtaD.RecordCount+1;
    cxProgressBar2.Position:=0;

    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    WorkSheet.Name := 'DETALLE EDOCTA '+zq_EdoCtaD.FieldByName('sIdNumeroCuenta').AsString;
    //COLOCAR LOGO
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);
    RowIni := 1;
    //ENCABEZADO DE REPORTE-DATOS DE LA EMPRESA
    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
    WorkSheet.Cells[RowIni+1,ColIni+4] := connection.configuracionCont.FieldByName('sNombre').AsString;
    WorkSheet.Cells[RowIni+2,ColIni+4] := connection.configuracionCont.FieldByName('sRfc').AsString;
    WorkSheet.Cells[RowIni+3,ColIni+4] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
    WorkSheet.Cells[RowIni+4,ColIni+4] := 'REPORTE GERENCIAL DE INGRESOS Y EGRESOS DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

    RowIni := 11;

    //ENCABEZADO CATEGORIA
    WorkSheet.Cells[RowIni-3, ColMaxExc+1] := 'Detalle del Estado de Cuentas';
    WorkSheet.Cells[RowIni-2, ColMaxExc+1] := zq_EdoCtaD.FieldByName('sNombreCuenta').AsString;

    WorkSheet.Cells[RowIni, ColMaxExc+1] := 'Exp. Fecha';
    WorkSheet.Cells[RowIni, ColMaxExc+2] := 'Folio';
    WorkSheet.Cells[RowIni, ColMaxExc+3] := 'Factura';
    WorkSheet.Cells[RowIni, ColMaxExc+4] := 'Movimiento';
    WorkSheet.Cells[RowIni, ColMaxExc+5] := 'Estatus';
    WorkSheet.Cells[RowIni, ColMaxExc+6] := 'Comprobado';
    WorkSheet.Cells[RowIni, ColMaxExc+7] := 'Referencia';
    WorkSheet.Cells[RowIni, ColMaxExc+8] := 'Numero Orden';
    WorkSheet.Cells[RowIni, ColMaxExc+9] := 'Razón Social';
    WorkSheet.Cells[RowIni, ColMaxExc+10] := 'Importe Total';
    WorkSheet.Cells[RowIni, ColMaxExc+11] := 'IVA';
    WorkSheet.Cells[RowIni, ColMaxExc+12] := 'Total';

    idx := 0;

    //REGISTROS INGRESOS
      columx := 1;
      colx := 0;
      co:=0;
      while not zq_EdoCtaD.Eof do
      begin
        WorkSheet.cells[idx+12,columx] := zq_EdoCtaD.FieldByName('dFechaFactura').AsString;
        WorkSheet.cells[idx+12,columx+1] := zq_EdoCtaD.FieldByName('iFolio').AsString;
        WorkSheet.cells[idx+12,columx+2] := zq_EdoCtaD.FieldByName('iIdFolio').AsString;
        WorkSheet.cells[idx+12,columx+3] := zq_EdoCtaD.FieldByName('sTipoMovimiento').AsString;
        WorkSheet.cells[idx+12,columx+4] := zq_EdoCtaD.FieldByName('sNombre').AsString;
        WorkSheet.cells[idx+12,columx+5] := zq_EdoCtaD.FieldByName('lComprobado').AsString;
        WorkSheet.cells[idx+12,columx+6] := zq_EdoCtaD.FieldByName('sReferencia').AsString;
        WorkSheet.cells[idx+12,columx+7] := zq_EdoCtaD.FieldByName('sNumeroOrden').AsString;
        WorkSheet.cells[idx+12,columx+8] := zq_EdoCtaD.FieldByName('sRazonSocial').AsString;
        WorkSheet.cells[idx+12,columx+9] := zq_EdoCtaD.FieldByName('dImporteTotal').AsFloat;
        WorkSheet.cells[idx+12,columx+10] := zq_EdoCtaD.FieldByName('dIva').AsFloat;
        WorkSheet.cells[idx+12,columx+11] := zq_EdoCtaD.FieldByName('dImporteTotal').AsFloat+zq_EdoCtaD.FieldByName('dIva').AsFloat;
        zq_EdoCtaD.Next;
        Inc(idx);
        cxProgressBar2.Position:=idx;
      end;
    cxLabel2.Caption:='Formato del Reporte - Detalles del Estado de Cuenta';
    //FORMATO
    //APLICAR BORDES DELGADOS Y AUTOAJUSTE

    //ENCABEZADO DE REPORTE
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+10)+inttostr(2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(3)+':'+LetraColumna(ColMaxExc+10)+inttostr(3)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(4)+':'+LetraColumna(ColMaxExc+10)+inttostr(4)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(5)+':'+LetraColumna(ColMaxExc+10)+inttostr(5)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+10)+inttostr(5)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+10)+inttostr(5)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+10)+inttostr(6)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+10)+inttostr(6)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+10)+inttostr(6)].Borders[xlEdgeRight].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+10)+inttostr(6)].Borders[xlEdgeTop].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+10)+inttostr(6)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+10)+inttostr(6)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    //Ingresos-depositos
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+10)+inttostr(8)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+10)+inttostr(8)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+10)+inttostr(8)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+10)+inttostr(8)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+10)+inttostr(8)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+10)+inttostr(8)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+10)+inttostr(8)].Interior.ColorIndex:=1;
    //Bancarios
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+10)+inttostr(9)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+10)+inttostr(9)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+10)+inttostr(9)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+10)+inttostr(9)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+10)+inttostr(9)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+10)+inttostr(9)].Interior.ColorIndex:=15;

    //Encabezado de la tabla
    columx:=0;

    while x < 2 do
    begin
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := true;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.colorIndex := 2;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.TintAndShade := 0;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.Weight := xlMedium;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.LineStyle := xlContinuous;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalDown].LineStyle := xlNone;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalUp].LineStyle := xlNone;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideVertical].LineStyle := xlNone;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideHorizontal].LineStyle := xlNone;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.ColorIndex:=15;
      inc(x);
    end;
    //Tabla
    Excel.Range[LetraColumna(9)+IntToStr(11)+':'+LetraColumna(11)+IntToStr(idx+11)].Style := 'Currency';
    {Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.Weight := xlThin;}
    Excel.Range[LetraColumna(0)+IntToStr(10)+':'+LetraColumna(11)+IntToStr(idx+11)].columns.autofit;

    Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(11)+IntToStr(idx+11)], , 1).Name := 'Tabla1';
    Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(10)+IntToStr(RowIni)].AutoFilter;
    cxProgressBar2.Position:=idx+1;
    zq_NumCta.Next;
    Inc(linea);
    cxProgressBar1.Position:=linea;
    Excel.Sheets.Add;
  end;

  {$ENDREGION}


  ///////////////////////////


  {$REGION 'Detalle IngBanPag'}
  cxLabel1.Caption:='Detalles de los Depositos ...';
  if zq_Ingresos.RecordCount>0 then
  begin
    cxLabel2.Caption:='Registros de las Facturas Pagadas';
    zq_IngresosD.Close;
    zq_IngresosD.Params.ParamByName('tmov').AsString := 'DEPOSITO';
    zq_IngresosD.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_IngresosD.Params.ParamByName('st').AsInteger := 4;
    zq_IngresosD.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_IngresosD.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_IngresosD.Open;

    cxProgressBar2.Properties.Max:=zq_IngresosD.RecordCount+1;
    cxProgressBar2.Position:=0;


    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    WorkSheet.Name := 'DETALLE DEPOSITO PAGADAS';
    //COLOCAR LOGO
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);
    RowIni := 1;
    //ENCABEZADO DE REPORTE-DATOS DE LA EMPRESA
    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
    WorkSheet.Cells[RowIni+1,ColIni+4] := connection.configuracionCont.FieldByName('sNombre').AsString;
    WorkSheet.Cells[RowIni+2,ColIni+4] := connection.configuracionCont.FieldByName('sRfc').AsString;
    WorkSheet.Cells[RowIni+3,ColIni+4] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
    WorkSheet.Cells[RowIni+4,ColIni+4] := 'REPORTE GERENCIAL DE INGRESOS Y EGRESOS DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

    RowIni := 11;

    //ENCABEZADO CATEGORIA
    WorkSheet.Cells[RowIni-3, ColMaxExc+1] := 'DEPOSITOS (Bancarios)';
    WorkSheet.Cells[RowIni-2, ColMaxExc+1] := 'PAGADAS';

    WorkSheet.Cells[RowIni, ColMaxExc+1] := 'Exp. Fecha';
    WorkSheet.Cells[RowIni, ColMaxExc+2] := 'Pago Fecha';
    WorkSheet.Cells[RowIni, ColMaxExc+3] := 'Factura';
    WorkSheet.Cells[RowIni, ColMaxExc+4] := 'Número Cuenta';
    WorkSheet.Cells[RowIni, ColMaxExc+5] := 'Subtotal';
    WorkSheet.Cells[RowIni, ColMaxExc+6] := 'IVA';
    WorkSheet.Cells[RowIni, ColMaxExc+7] := 'Total';
    WorkSheet.Cells[RowIni, ColMaxExc+8] := 'Estado';
    WorkSheet.Cells[RowIni, ColMaxExc+9] := 'Compañía';


    idx := 0;
    colx := 0;
    //rowx := 12;
    columx := 2;

    //REGISTROS INGRESOS
      columx := 1;
      colx := 0;
      co:=0;
      while not zq_IngresosD.Eof do
      begin
        WorkSheet.cells[idx+12,columx] := zq_IngresosD.FieldByName('dFechaFactura').AsString;
        WorkSheet.cells[idx+12,columx+1] := zq_IngresosD.FieldByName('dIdFecha').AsString;
        WorkSheet.cells[idx+12,columx+2] := zq_IngresosD.FieldByName('iFolio').AsInteger;
        WorkSheet.cells[idx+12,columx+3] := zq_IngresosD.FieldByName('sIdNumeroCuenta').AsString;
        WorkSheet.cells[idx+12,columx+4] := zq_IngresosD.FieldByName('dImporteTotal').AsFloat;
        WorkSheet.cells[idx+12,columx+5] := zq_IngresosD.FieldByName('dIva').AsFloat;
        WorkSheet.cells[idx+12,columx+6] := zq_IngresosD.FieldByName('dImporteTotal').AsFloat+zq_IngresosD.FieldByName('dIva').AsFloat;
        WorkSheet.cells[idx+12,columx+7] := zq_IngresosD.FieldByName('sStatus').AsString;
        WorkSheet.cells[idx+12,columx+8] := zq_IngresosD.FieldByName('Compania').AsString;
        zq_IngresosD.Next;
        Inc(idx);
        cxProgressBar2.Position:=idx;
      end;
    cxLabel2.Caption:='Formato del Reporte - Detalles de los Depositos';
    //FORMATO
    //APLICAR BORDES DELGADOS Y AUTOAJUSTE

    //ENCABEZADO DE REPORTE
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(3)+':'+LetraColumna(ColMaxExc+8)+inttostr(3)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(4)+':'+LetraColumna(ColMaxExc+8)+inttostr(4)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(5)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlEdgeRight].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlEdgeTop].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    //Ingresos-depositos
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Interior.ColorIndex:=1;
    //Bancarios
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Interior.ColorIndex:=15;

    //Encabezado de la tabla
    columx:=0;

    while x < 2 do
    begin
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := true;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.ColorIndex:=15;
      inc(x);
    end;
    //Tabla
    Excel.Range[LetraColumna(4)+IntToStr(11)+':'+LetraColumna(6)+IntToStr(idx+11)].Style := 'Currency';
    {Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.Weight := xlThin;}
    Excel.Range[LetraColumna(0)+IntToStr(10)+':'+LetraColumna(8)+IntToStr(idx+11)].columns.autofit;

    Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(8)+IntToStr(idx+11)], , 1).Name := 'Tabla1';
    Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(8)+IntToStr(RowIni)].AutoFilter;

    {//HACER GRAFICA
    //Bancarios
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].select;
    Excel.ActiveSheet.Shapes.AddChart.Select;
    Excel.ActiveChart.ChartType := -4102;
    Excel.ActiveChart.ClearToMatchStyle;
    Excel.ActiveChart.ChartStyle := 26;
    Excel.ActiveChart.ClearToMatchStyle;
    Excel.ActiveChart.ChartTitle.Select;
    Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
    Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
    Excel.ActiveChart.SetElement (205);
    Excel.ActiveChart.ChartTitle.Text := 'Grafica de Estatus de Factura';
    Excel.ActiveChart.ChartArea.Left:=80;
    Excel.ActiveChart.ChartArea.Top:=220;
    Excel.ActiveChart.ChartArea.Interior.Color := 15;}
    cxProgressBar2.Position:=idx+1;
    Inc(linea);
    cxProgressBar1.Position:=linea;
    Excel.Sheets.Add;
  end;

  {$ENDREGION}

  {$REGION 'Detalle IngBanPen'}
  cxLabel1.Caption:='Detalles de los Depositos ...';
  if zq_Pendiente.RecordCount>0 then
  begin
    cxLabel2.Caption:='Registros de las Facturas Pendientes';
    zq_PendientesD.Close;
    zq_PendientesD.Params.ParamByName('tmov').AsString := 'DEPOSITO';
    zq_PendientesD.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_PendientesD.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_PendientesD.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_PendientesD.Open;

    cxProgressBar2.Properties.Max:=zq_IngresosD.RecordCount+1;
    cxProgressBar2.Position:=0;


    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    WorkSheet.Name := 'DETALLE DEPOSITO PENDIENTES';
    //COLOCAR LOGO
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);
    RowIni := 1;
    //ENCABEZADO DE REPORTE-DATOS DE LA EMPRESA
    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
    WorkSheet.Cells[RowIni+1,ColIni+4] := connection.configuracionCont.FieldByName('sNombre').AsString;
    WorkSheet.Cells[RowIni+2,ColIni+4] := connection.configuracionCont.FieldByName('sRfc').AsString;
    WorkSheet.Cells[RowIni+3,ColIni+4] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
    WorkSheet.Cells[RowIni+4,ColIni+4] := 'REPORTE GERENCIAL DE INGRESOS Y EGRESOS DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

    RowIni := 11;

    //ENCABEZADO CATEGORIA
    WorkSheet.Cells[RowIni-3, ColMaxExc+1] := 'DEPOSITOS (Bancarios)';
    WorkSheet.Cells[RowIni-2, ColMaxExc+1] := 'PENDIENTES';

    WorkSheet.Cells[RowIni, ColMaxExc+1] := 'Exp. Fecha';
    WorkSheet.Cells[RowIni, ColMaxExc+2] := 'Pago Fecha';
    WorkSheet.Cells[RowIni, ColMaxExc+3] := 'Factura';
    WorkSheet.Cells[RowIni, ColMaxExc+4] := 'Número Cuenta';
    WorkSheet.Cells[RowIni, ColMaxExc+5] := 'Subtotal';
    WorkSheet.Cells[RowIni, ColMaxExc+6] := 'IVA';
    WorkSheet.Cells[RowIni, ColMaxExc+7] := 'Total';
    WorkSheet.Cells[RowIni, ColMaxExc+8] := 'Estado';
    WorkSheet.Cells[RowIni, ColMaxExc+9] := 'Compañía';


    idx := 0;
    colx := 0;
    //rowx := 12;
    columx := 2;

    //REGISTROS INGRESOS
      columx := 1;
      colx := 0;
      co:=0;
      while not zq_PendientesD.Eof do
      begin
        WorkSheet.cells[idx+12,columx] := zq_PendientesD.FieldByName('dFechaFactura').AsString;
        WorkSheet.cells[idx+12,columx+1] := zq_PendientesD.FieldByName('dIdFecha').AsString;
        WorkSheet.cells[idx+12,columx+2] := zq_PendientesD.FieldByName('iFolio').AsInteger;
        WorkSheet.cells[idx+12,columx+3] := zq_PendientesD.FieldByName('sIdNumeroCuenta').AsString;
        WorkSheet.cells[idx+12,columx+4] := zq_PendientesD.FieldByName('dImporteTotal').AsFloat;
        WorkSheet.cells[idx+12,columx+5] := zq_PendientesD.FieldByName('dIva').AsFloat;
        WorkSheet.cells[idx+12,columx+6] := zq_PendientesD.FieldByName('dImporteTotal').AsFloat+zq_PendientesD.FieldByName('dIva').AsFloat;
        WorkSheet.cells[idx+12,columx+7] := zq_PendientesD.FieldByName('sStatus').AsString;
        WorkSheet.cells[idx+12,columx+8] := zq_PendientesD.FieldByName('Compania').AsString;
        zq_PendientesD.Next;
        Inc(idx);
        cxProgressBar2.Position:=idx;
      end;
    cxLabel2.Caption:='Formato del Reporte - Detalles de los Depositos';
    //FORMATO
    //APLICAR BORDES DELGADOS Y AUTOAJUSTE

    //ENCABEZADO DE REPORTE
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(3)+':'+LetraColumna(ColMaxExc+8)+inttostr(3)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(4)+':'+LetraColumna(ColMaxExc+8)+inttostr(4)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(5)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlEdgeRight].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlEdgeTop].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    //Ingresos-depositos
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Interior.ColorIndex:=1;
    //Bancarios
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Interior.ColorIndex:=15;

    //Encabezado de la tabla
    columx:=0;

    while x < 2 do
    begin
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := true;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.ColorIndex:=15;
      inc(x);
    end;
    //Tabla
    Excel.Range[LetraColumna(4)+IntToStr(11)+':'+LetraColumna(6)+IntToStr(idx+11)].Style := 'Currency';
    {Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.Weight := xlThin;}
    Excel.Range[LetraColumna(0)+IntToStr(10)+':'+LetraColumna(8)+IntToStr(idx+11)].columns.autofit;

    Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(8)+IntToStr(idx+11)], , 1).Name := 'Tabla1';
    Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(8)+IntToStr(RowIni)].AutoFilter;

    {//HACER GRAFICA
    //Bancarios
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].select;
    Excel.ActiveSheet.Shapes.AddChart.Select;
    Excel.ActiveChart.ChartType := -4102;
    Excel.ActiveChart.ClearToMatchStyle;
    Excel.ActiveChart.ChartStyle := 26;
    Excel.ActiveChart.ClearToMatchStyle;
    Excel.ActiveChart.ChartTitle.Select;
    Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
    Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
    Excel.ActiveChart.SetElement (205);
    Excel.ActiveChart.ChartTitle.Text := 'Grafica de Estatus de Factura';
    Excel.ActiveChart.ChartArea.Left:=80;
    Excel.ActiveChart.ChartArea.Top:=220;
    Excel.ActiveChart.ChartArea.Interior.Color := 15;}
    cxProgressBar2.Position:=idx+1;
    Inc(linea);
    cxProgressBar1.Position:=linea;
    Excel.Sheets.Add;
  end;

  {$ENDREGION}

  {$REGION 'Detalle Egr'}
  cxLabel1.Caption:='Detalles de los Egresos ...';
  while not zq_Egresos.Eof do
  begin
    cxLabel2.Caption:='Registros de los Egresos '+zq_Egresos.FieldByName('lComprobado').AsString+' están Comprobados';
    zq_EgresosD.Close;
    zq_EgresosD.Params.ParamByName('comp').AsString := zq_Egresos.FieldByName('lComprobado').AsString;
    zq_EgresosD.Params.ParamByName('sContrato').AsString := global_contrato;
    zq_EgresosD.Params.ParamByName('mon').AsFloat := montog;
    zq_EgresosD.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_EgresosD.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_EgresosD.Open;

    cxProgressBar2.Properties.Max:=zq_EgresosD.RecordCount+1;
    cxProgressBar2.Position:=0;

    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    if zq_Egresos.FieldByName('lComprobado').AsString='Si' then
      WorkSheet.Name := 'DETALLE GASTOS COMPRADOS'
    else
      WorkSheet.Name := 'DETALLE GASTOS NO COMPRADOS';
    //COLOCAR LOGO
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);
    RowIni := 1;
    //ENCABEZADO DE REPORTE-DATOS DE LA EMPRESA
    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
    WorkSheet.Cells[RowIni+1,ColIni+4] := connection.configuracionCont.FieldByName('sNombre').AsString;
    WorkSheet.Cells[RowIni+2,ColIni+4] := connection.configuracionCont.FieldByName('sRfc').AsString;
    WorkSheet.Cells[RowIni+3,ColIni+4] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
    WorkSheet.Cells[RowIni+4,ColIni+4] := 'REPORTE GERENCIAL DE INGRESOS Y EGRESOS DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

    RowIni := 11;

    //ENCABEZADO CATEGORIA
    WorkSheet.Cells[RowIni-3, ColMaxExc+1] := 'GASTOS (Bancarios)';
    if zq_Egresos.FieldByName('lComprobado').AsString='Si' then
      WorkSheet.Cells[RowIni-2, ColMaxExc+1] := 'COMPROBADOS'
    else
      WorkSheet.Cells[RowIni-2, ColMaxExc+1] := 'NO COMPROBADOS';

    WorkSheet.Cells[RowIni, ColMaxExc+1] := 'Exp. Fecha';
    WorkSheet.Cells[RowIni, ColMaxExc+2] := 'Pago Fecha';
    WorkSheet.Cells[RowIni, ColMaxExc+3] := 'Número Cuenta';
    WorkSheet.Cells[RowIni, ColMaxExc+4] := 'Subtotal';
    WorkSheet.Cells[RowIni, ColMaxExc+5] := 'IVA';
    WorkSheet.Cells[RowIni, ColMaxExc+6] := 'Total';
    WorkSheet.Cells[RowIni, ColMaxExc+7] := 'Estado';
    WorkSheet.Cells[RowIni, ColMaxExc+8] := 'Razon Social';
    WorkSheet.Cells[RowIni, ColMaxExc+9] := 'Descripción';


    idx := 0;
    colx := 0;
    //rowx := 12;
    columx := 2;

    //REGISTROS INGRESOS
      columx := 1;
      colx := 0;
      co:=0;
      while not zq_EgresosD.Eof do
      begin
        WorkSheet.cells[idx+12,columx] := zq_EgresosD.FieldByName('dFechaFactura').AsString;
        WorkSheet.cells[idx+12,columx+1] := zq_EgresosD.FieldByName('dIdFecha').AsString;
        WorkSheet.cells[idx+12,columx+2] := zq_EgresosD.FieldByName('sIdNumeroCuenta').AsString;
        WorkSheet.cells[idx+12,columx+3] := zq_EgresosD.FieldByName('dImporteTotal').AsFloat;
        WorkSheet.cells[idx+12,columx+4] := zq_EgresosD.FieldByName('dIva').AsFloat;
        WorkSheet.cells[idx+12,columx+5] := zq_EgresosD.FieldByName('dImporteTotal').AsFloat+zq_EgresosD.FieldByName('dIva').AsFloat;
        WorkSheet.cells[idx+12,columx+6] := zq_EgresosD.FieldByName('sStatus').AsString;
        WorkSheet.cells[idx+12,columx+7] := zq_EgresosD.FieldByName('sRazonSocial').AsString;
        WorkSheet.cells[idx+12,columx+8] := '"'+zq_EgresosD.FieldByName('mDescripcion').AsString+'"';
        zq_EgresosD.Next;
        Inc(idx);
        cxProgressBar2.Position:=idx;
      end;
    cxLabel2.Caption:='Formato al Reporte - Detalles de los Egresos ...';
    //FORMATO
    //APLICAR BORDES DELGADOS Y AUTOAJUSTE

    //ENCABEZADO DE REPORTE
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(3)+':'+LetraColumna(ColMaxExc+8)+inttostr(3)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(4)+':'+LetraColumna(ColMaxExc+8)+inttostr(4)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(5)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+8)+inttostr(5)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlEdgeRight].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlEdgeTop].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+8)+inttostr(6)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    //Ingresos-depositos
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+8)+inttostr(8)].Interior.ColorIndex:=1;
    //Bancarios
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+8)+inttostr(9)].Interior.ColorIndex:=15;

    //Encabezado de la tabla
    columx:=0;

    while x < 2 do
    begin
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := true;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.colorIndex := 2;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.TintAndShade := 0;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.Weight := xlMedium;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.LineStyle := xlContinuous;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalDown].LineStyle := xlNone;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalUp].LineStyle := xlNone;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideVertical].LineStyle := xlNone;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideHorizontal].LineStyle := xlNone;
      Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
      //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.ColorIndex:=15;
      inc(x);
    end;
    //Tabla
    Excel.Range[LetraColumna(4)+IntToStr(11)+':'+LetraColumna(6)+IntToStr(idx+11)].Style := 'Currency';
    {Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.Weight := xlThin;}
    Excel.Range[LetraColumna(0)+IntToStr(10)+':'+LetraColumna(8)+IntToStr(idx+11)].columns.autofit;

    Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(8)+IntToStr(idx+11)], , 1).Name := 'Tabla1';
    Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(8)+IntToStr(RowIni)].AutoFilter;

    {//HACER GRAFICA
    //Bancarios
    Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].select;
    Excel.ActiveSheet.Shapes.AddChart.Select;
    Excel.ActiveChart.ChartType := -4102;
    Excel.ActiveChart.ClearToMatchStyle;
    Excel.ActiveChart.ChartStyle := 26;
    Excel.ActiveChart.ClearToMatchStyle;
    Excel.ActiveChart.ChartTitle.Select;
    Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
    Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
    Excel.ActiveChart.SetElement (205);
    Excel.ActiveChart.ChartTitle.Text := 'Grafica de Estatus de Factura';
    Excel.ActiveChart.ChartArea.Left:=80;
    Excel.ActiveChart.ChartArea.Top:=220;
    Excel.ActiveChart.ChartArea.Interior.Color := 15;}

    zq_Egresos.Next;
    cxProgressBar2.Position:=idx+1;
    inc(linea);
    cxProgressBar1.Position:=linea;
    Excel.Sheets.Add;
  end;
  {$ENDREGION}

  end;
  ///////////////////////////

  {$REGION 'Graficas de estatus de Factura'}
  zq_StatusFacturas.Active := False ;
  zq_StatusFacturas.Open;

  if zq_StatusFacturas.RecordCount>0 then
  begin
    RowIni := 1;
    ColIni := 1;
    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    WorkSheet.Name := 'Graficas de Estatus de Facturas';
    //COLOCAR LOGO
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);

    //ENCABEZADO DE REPORTE-DATOS DE LA EMPRESA
    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
    WorkSheet.Cells[RowIni+1,ColIni+4] := connection.configuracionCont.FieldByName('sNombre').AsString;
    WorkSheet.Cells[RowIni+2,ColIni+4] := connection.configuracionCont.FieldByName('sRfc').AsString;
    WorkSheet.Cells[RowIni+3,ColIni+4] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
    WorkSheet.Cells[RowIni+4,ColIni+4] := 'REPORTE GERENCIAL DE INGRESOS Y EGRESOS DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

    RowIni := RowIni+10;

    //ENCABEZADO CATEGORIA
    WorkSheet.Cells[RowIni-3, ColMaxExc+1] := 'Estatus de Facturas por Clientes';

    //ENCABEZADO DE REPORTE
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+7)+inttostr(2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(3)+':'+LetraColumna(ColMaxExc+7)+inttostr(3)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(4)+':'+LetraColumna(ColMaxExc+7)+inttostr(4)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(5)+':'+LetraColumna(ColMaxExc+7)+inttostr(5)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+7)+inttostr(5)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+7)+inttostr(5)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlEdgeRight].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlEdgeTop].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    //Ingresos-depositos
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.Bold := true;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.size := 12;
    Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Interior.ColorIndex:=1;

    co:=1;

    while not zq_StatusFacturas.Eof do
    begin
      zq_Graficas.Active:=False;
      zq_Graficas.ParamByName('sContrato').AsString:=global_contrato;
      zq_Graficas.ParamByName('estatus').AsInteger:=zq_StatusFacturas.FieldByName('iId').AsInteger;
      zq_Graficas.ParamByName('FechaI').AsDate:=cxdeFechaI.Date;
      zq_Graficas.ParamByName('FechaF').AsDate:=cxdeFechaF.Date;
      zq_Graficas.Open;

      if zq_Graficas.RecordCount>0 then
      begin
        WorkSheet.Cells[RowIni-2, ColMaxExc+1] := zq_Graficas.FieldByName('sNombre').AsString;
        WorkSheet.Cells[RowIni, ColMaxExc+1] := 'Cliente';
        WorkSheet.Cells[RowIni, ColMaxExc+2] := 'Monto';

        idx := 1;
        colx := 0;
        zq_Graficas.First;
        columx := 1;
        tabla:='Tabla'+inttostr(co);

        while not zq_Graficas.Eof do
        begin
          WorkSheet.cells[idx+RowIni,columx] := zq_Graficas.FieldByName('sRazonSocial').AsString;
          WorkSheet.cells[idx+RowIni,columx+1] := zq_Graficas.FieldByName('Monto').AsFloat;
          Inc(idx);
          zq_Graficas.Next;
        end;

        Excel.Range[LetraColumna(0)+inttostr(RowIni-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni-2)].Mergecells := True;
        Excel.Range[LetraColumna(0)+inttostr(RowIni-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni-2)].Font.Bold := true;
        Excel.Range[LetraColumna(0)+inttostr(RowIni-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni-2)].HorizontalAlignment := xlCenter;
        Excel.Range[LetraColumna(0)+inttostr(RowIni-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni-2)].Font.Name := 'Arial';
        Excel.Range[LetraColumna(0)+inttostr(RowIni-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni-2)].Font.size := 12;
        Excel.Range[LetraColumna(0)+inttostr(RowIni-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni-2)].Interior.ColorIndex:=15;

        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].select;
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].Font.Name := 'Arial';
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].Font.size := 12;
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].Font.Bold := true;
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].Columns.autofit;

        Excel.Range[LetraColumna(1)+IntToStr(RowIni+1)+':'+LetraColumna(1)+IntToStr(idx+RowIni)].Style := 'Currency';
        Excel.Range[LetraColumna(0)+IntToStr(RowIni+1)+':'+LetraColumna(1)+IntToStr(idx+RowIni)].columns.autofit;

        Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(idx+RowIni-1)], , 1).Name := tabla;
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].AutoFilter;

        //Graficas
        Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(idx+RowIni-1)].select;
        Excel.ActiveSheet.Shapes.AddChart.Select;
        Excel.ActiveChart.ChartType := -4102;
        Excel.ActiveChart.ClearToMatchStyle;
        Excel.ActiveChart.ChartStyle := 26;
        Excel.ActiveChart.ClearToMatchStyle;
        Excel.ActiveChart.ChartTitle.Select;
        Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
        Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
        Excel.ActiveChart.SetElement (205);
        Excel.ActiveChart.ChartTitle.Text := 'GRAFICA DE FACTURAS '+zq_Graficas.FieldByName('sNombre').AsString;
        Excel.ActiveChart.ChartArea.Left:=10;
        Excel.ActiveChart.ChartArea.Top:=(idx+RowIni+1)*15;
        Excel.ActiveChart.ChartArea.Width:=700;
        Excel.ActiveChart.ChartArea.Height:=200;

        RowIni := (idx+RowIni+20);
        Inc(co);
      end;
      zq_StatusFacturas.Next;
    end;

    //Diseño de pagina
    Excel.ActiveSheet.PageSetup.Zoom := 100;
    Excel.ActiveSheet.PageSetup.PaperSize := xlPaperLetter;
    Excel.ActiveSheet.PageSetup.CenterHorizontally := True;
    Excel.ActiveSheet.PageSetup.AlignMarginsHeaderFooter := False;
    Excel.ActiveSheet.PageSetup.TopMargin  := Excel.InchesToPoints(0.2);
    Excel.ActiveSheet.PageSetup.BottomMargin := Excel.InchesToPoints(1.521);
    Excel.ActiveSheet.PageSetup.FooterMargin := Excel.InchesToPoints(0.88);
    Excel.ActiveSheet.PageSetup.FitToPagesWide := 1;
    Excel.ActiveSheet.PageSetup.FitToPagesTall := 2;
    Excel.ActiveSheet.PageSetup.Orientation := xlLandscape;
    Excel.ActiveWindow.View := 2;
    Excel.ActiveWindow.DisplayGridlines := False;
    Excel.ActiveWindow.Zoom := 100;

    Excel.Sheets.Add;
  end;
  {$ENDREGION}

  {$REGION 'Gerencial'}
  cxLabel1.Caption:='Gerencial ...';
  RowIni := 1;

  // tomar una referencia a la hoja creada
  WorkSheet := WorkBook.WorkSheets[1];
  WorkSheet.Name := 'Gerencial';
  //COLOCAR LOGO
  TempPath := GetEnvironmentVariable('TEMP');
  LogoFile := TempPath + '\Temp.bmp';
  TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);

   //*********************************88
  //DatoImagen.FieldByName('bImagen')
  //***********************************8

  //ENCABEZADO DE REPORTE-DATOS DE LA EMPRESA
  WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
  WorkSheet.Cells[RowIni+1,ColIni+4] := connection.configuracionCont.FieldByName('sNombre').AsString;
  WorkSheet.Cells[RowIni+2,ColIni+4] := connection.configuracionCont.FieldByName('sRfc').AsString;
  WorkSheet.Cells[RowIni+3,ColIni+4] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
  WorkSheet.Cells[RowIni+4,ColIni+4] := 'REPORTE GERENCIAL DE INGRESOS Y EGRESOS DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;


  RowIni := RowIni+10;

  //ENCABEZADO CATEGORIA
  WorkSheet.Cells[RowIni-3, ColMaxExc+1] := 'Ingresos-Depositos';
  WorkSheet.Cells[RowIni-2, ColMaxExc+1] := 'Bancarios';

  WorkSheet.Cells[RowIni, ColMaxExc+1] := 'Factura';
  WorkSheet.Cells[RowIni, ColMaxExc+2] := 'Monto';

  WorkSheet.Cells[RowIni, ColMaxExc+4] := 'Facturado';
  WorkSheet.Cells[RowIni+1, ColMaxExc+4] := zq_Facturado.FieldByName('Monto').AsInteger;
  Excel.Range[LetraColumna(3)+IntToStr(12)+':'+LetraColumna(3)+IntToStr(12)].Style := 'Currency';
  Excel.Range[LetraColumna(3)+IntToStr(11)+':'+LetraColumna(3)+IntToStr(12)].columns.autofit;
  Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(3)+IntToStr(11)+':'+LetraColumna(3)+IntToStr(12)], , 1).Name := 'Tabla7';
  Excel.Range[LetraColumna(3)+IntToStr(11)+':'+LetraColumna(3)+IntToStr(11)].AutoFilter;

  idx := 0;
  colx := 0;
  //rowx := 12;
  columx := 2;
  zq_Ingresos.First;
  //REGISTROS INGRESOS
    columx := 1;
    colx := 0;
    co:=0;

    cxLabel2.Caption:='Depositos Bancarios ...';
    cxProgressBar2.Properties.Max:=zq_Ingresos.RecordCount;
    cxProgressBar2.Position:=0;

    if zq_Ingresos.RecordCount>0 then
    begin
      WorkSheet.cells[idx+12,columx] := 'Pagadas';
      WorkSheet.cells[idx+12,columx+1] := zq_Ingresos.FieldByName('Monto').AsFloat;
      Excel.ActiveSheet.Hyperlinks.Add(WorkSheet.cells[idx+12,columx+1],'',char(39)+'DETALLE DEPOSITO PAGADAS'+char(39)+'!A1:A1','Haga clic aquí para ver los detalles ...' , 'Detalles' );
      //WorkSheet.Hyperlinks.Add(WorkSheet.cells[idx+12,columx+1],'DETALLE GASTOS '+zq_Ingresos.FieldByName('sNombre').AsString+'!A1','Jump there');
      Inc(idx);
      cxProgressBar2.Position:=idx;
    end;

    Inc(linea);
    cxProgressBar1.Position:=linea;

    if zq_Pendiente.RecordCount>0 then
    begin
      WorkSheet.cells[idx+12,columx] := 'Pendientes';
      WorkSheet.cells[idx+12,columx+1] := zq_Pendiente.FieldByName('Monto').AsFloat;
      Excel.ActiveSheet.Hyperlinks.Add(WorkSheet.cells[idx+12,columx+1],'',char(39)+'DETALLE DEPOSITO PENDIENTES'+char(39)+'!A1:A1','Haga clic aquí para ver los detalles ...' , 'Detalles' );
      //WorkSheet.Hyperlinks.Add(WorkSheet.cells[idx+12,columx+1],'DETALLE GASTOS '+zq_Ingresos.FieldByName('sNombre').AsString+'!A1','Jump there');
      Inc(idx);
      cxProgressBar2.Position:=idx;
    end;

    Inc(linea);
    cxProgressBar1.Position:=linea;

  if chgrafica.Checked then
    ccel:=33
  else
   ccel:=17;

  if choingresos.Checked then
  begin
  RowIni2 := ccel;
  WorkSheet.Cells[RowIni2-2, ColMaxExc+1] := 'Otros';

  WorkSheet.Cells[RowIni2, ColMaxExc+1] := 'Tipo de Ingreso';
  WorkSheet.Cells[RowIni2, ColMaxExc+2] := 'Monto';

  cxLabel2.Caption:='Otros Ingresos ...';
  cxProgressBar2.Properties.Max:=zq_OtrosIngresos.RecordCount;
  cxProgressBar2.Position:=0;

  idx2 := 0;
    while not zq_OtrosIngresos.Eof do
    begin
      WorkSheet.cells[idx2+RowIni2+1,columx] := zq_OtrosIngresos.FieldByName('tipo').AsString;
      WorkSheet.cells[idx2+RowIni2+1,columx+1] := zq_OtrosIngresos.FieldByName('monto').AsFloat;
      zq_OtrosIngresos.Next;
      Inc(idx2);
      cxProgressBar2.Position:=idx2;
    end;

    Inc(linea);
    cxProgressBar1.Position:=linea;
  end
  else
    Inc(ccel);

    zq_Egresos.First;

  cxLabel2.Caption:='Gastos Bancarios ...';
  cxProgressBar2.Properties.Max:=zq_Egresos.RecordCount;
  cxProgressBar2.Position:=0;

  if (idx2<18) then
  begin
    if (chgrafica.Checked) and (choingresos.Checked) then
      ccel:=ccel+20
    else if (idx2>0) then
    begin
      ccel:=ccel+idx2+5;
    end;
  end
  else
    ccel:=ccel+idx2+3;

  RowIni3:=ccel;
  WorkSheet.Cells[RowIni3-3, ColMaxExc+1] := 'Gastos';
  WorkSheet.Cells[RowIni3-2, ColMaxExc+1] := 'Bancarios';

  WorkSheet.Cells[RowIni3, ColMaxExc+1] := 'Comprobado';
  WorkSheet.Cells[RowIni3, ColMaxExc+2] := 'Monto';

  idx3 := 0;
    while not zq_Egresos.Eof do
    begin
      WorkSheet.cells[idx3+RowIni3+1,columx] := zq_Egresos.FieldByName('lComprobado').AsString;
      WorkSheet.cells[idx3+RowIni3+1,columx+1] := zq_Egresos.FieldByName('Monto').AsInteger;
      zq_Egresos.Next;
      Inc(idx3);
      cxProgressBar2.Position:=idx3;
    end;

    Inc(linea);
    cxProgressBar1.Position:=linea;

  if chgrafica.Checked then
    ccel:=idx3+ccel+19
  else
    ccel:=idx3+ccel+4;

  if chOegresos.Checked then
  begin
  RowIni4:=ccel;
  WorkSheet.Cells[RowIni4-2, ColMaxExc+1] := 'Otros';

  WorkSheet.Cells[RowIni4, ColMaxExc+1] := 'Tipo de Ingreso';
  WorkSheet.Cells[RowIni4, ColMaxExc+2] := 'Monto';

  cxLabel2.Caption:='Otros Egresos ...';
  cxProgressBar2.Properties.Max:=zq_OtrosEgresos.RecordCount+1;
  cxProgressBar2.Position:=0;

  idx4 := 0;
    while not zq_OtrosEgresos.Eof do
    begin
      WorkSheet.cells[idx4+RowIni4+1,columx] := zq_OtrosEgresos.FieldByName('tipo').AsString;
      WorkSheet.cells[idx4+RowIni4+1,columx+1] := zq_OtrosEgresos.FieldByName('monto').AsFloat;
      zq_OtrosEgresos.Next;
      Inc(idx4);
      cxProgressBar2.Position:=idx4;
    end;

    Inc(linea);
    cxProgressBar1.Position:=linea;
  end;

  if (idx4<18) then
  begin
    if (chgrafica.Checked) and (choegresos.Checked) then
      ccel:=ccel+17
    else if (idx4>0) then
    begin
      ccel:=ccel+idx4+5;
    end;
  end
  else
    ccel:=ccel+idx4+17;

  if chocomp.Checked then
  begin

    if chgrafica.Checked then
    begin
      RowIni5:=ccel+17;
      WorkSheet.Cells[RowIni5-17, ColMaxExc+1] := 'Comparación Ingresos/Egresos';
    end
    else
    begin
      RowIni5:=ccel;
      WorkSheet.Cells[RowIni5-2, ColMaxExc+1] := 'Comparación Ingresos/Egresos';
    end;

  WorkSheet.Cells[RowIni5, ColMaxExc+1] := 'Tipo de Ingreso';
  WorkSheet.Cells[RowIni5, ColMaxExc+2] := 'Ingreso';
  WorkSheet.Cells[RowIni5, ColMaxExc+3] := 'Egreso';

  cxLabel2.Caption:='Comparacion de Otros Ingresos y Egresos ...';
  cxProgressBar2.Properties.Max:=zq_OtrosIngEng.RecordCount+1;
  cxProgressBar2.Position:=0;

  idx5 := 0;
    while not zq_OtrosIngEng.Eof do
    begin
      WorkSheet.cells[idx5+RowIni5+1,columx] := zq_OtrosIngEng.FieldByName('tipo').AsString;
      WorkSheet.cells[idx5+RowIni5+1,columx+1] := zq_OtrosIngEng.FieldByName('Ingreso').AsFloat;
      WorkSheet.cells[idx5+RowIni5+1,columx+2] := zq_OtrosIngEng.FieldByName('Egreso').AsFloat;
      zq_OtrosIngEng.Next;
      Inc(idx5);
      cxProgressBar2.Position:=idx5;
    end;

    Inc(linea);
    cxProgressBar1.Position:=linea;
  end;

  if (chgrafica.Checked) and (chocomp.Checked) then
    ccel:=idx5+ccel+19
  else if (idx5>0) then
    ccel:=idx5+ccel+5;

  if chgrafica.Checked then
  begin
    RowIni6:=ccel+17;
    WorkSheet.Cells[RowIni6-17, ColMaxExc+1] := 'Estado de Cuenta';
  end
  else
  begin
    RowIni6:=ccel;
    WorkSheet.Cells[RowIni6-2, ColMaxExc+1] := 'Estado de Cuenta';
  end;

  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-17)+':'+LetraColumna(ColMaxExc+2)+inttostr(RowIni6-17)].Mergecells := True;

  WorkSheet.Cells[RowIni6, ColMaxExc+1] := 'Nombre de la Cuenta';
  WorkSheet.Cells[RowIni6, ColMaxExc+4] := 'Ingresos';
  WorkSheet.Cells[RowIni6, ColMaxExc+5] := 'Egresos';
  WorkSheet.Cells[RowIni6, ColMaxExc+6] := 'Saldo Final';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6)+':'+LetraColumna(ColMaxExc+2)+inttostr(RowIni6)].Mergecells := True;

  cxLabel2.Caption:='Estado de Cuentas ...';
  cxProgressBar2.Properties.Max:=zq_EdoCuenta.RecordCount+1;
  cxProgressBar2.Position:=0;

  idx6 := 0;
    while not zq_EdoCuenta.Eof do
    begin
      WorkSheet.cells[idx6+RowIni6+1,columx] := zq_EdoCuenta.FieldByName('sNombreCuenta').AsString;
      WorkSheet.cells[idx6+RowIni6+1,columx+3] := zq_EdoCuenta.FieldByName('Ingresos').AsFloat;
      WorkSheet.cells[idx6+RowIni6+1,columx+4] := zq_EdoCuenta.FieldByName('Egresos').AsFloat;
      WorkSheet.cells[idx6+RowIni6+1,columx+5] := zq_EdoCuenta.FieldByName('Ingresos').AsFloat+zq_EdoCuenta.FieldByName('Egresos').AsFloat;
      zq_EdoCuenta.Next;
      Inc(idx6);
      cxProgressBar2.Position:=idx6;
      Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6+idx6)+':'+LetraColumna(ColMaxExc+2)+inttostr(RowIni6+idx6)].Mergecells := True;
    end;

    Inc(linea);
    cxProgressBar1.Position:=linea;

  cxLabel2.Caption:='Formato al Gerencial';

  if chgrafica.Checked then
    graf:=17
  else
    graf:=2;


  //FORMATO
  //APLICAR BORDES DELGADOS Y AUTOAJUSTE

  //ENCABEZADO DE REPORTE
  Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+7)+inttostr(2)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+1)+inttostr(3)+':'+LetraColumna(ColMaxExc+7)+inttostr(3)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+1)+inttostr(4)+':'+LetraColumna(ColMaxExc+7)+inttostr(4)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+1)+inttostr(5)+':'+LetraColumna(ColMaxExc+7)+inttostr(5)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+7)+inttostr(5)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni+1)+inttostr(2)+':'+LetraColumna(ColMaxExc+7)+inttostr(5)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders.Weight := xlMedium;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlEdgeRight].LineStyle := xlNone;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlEdgeTop].LineStyle := xlNone;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlInsideVertical].LineStyle := xlNone;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(ColMaxExc+7)+inttostr(6)].Borders[xlInsideHorizontal].LineStyle := xlNone;
  //Ingresos-depositos
  Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.Color := Xl_Blanco;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(8)+':'+LetraColumna(ColMaxExc+7)+inttostr(8)].Interior.ColorIndex:=1;
  //Bancarios
  Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+7)+inttostr(9)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+7)+inttostr(9)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+7)+inttostr(9)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+7)+inttostr(9)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+7)+inttostr(9)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(9)+':'+LetraColumna(ColMaxExc+7)+inttostr(9)].Interior.ColorIndex:=15;
  if choingresos.Checked then
  begin
  //Otros ingresos
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni2-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni2-2)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni2-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni2-2)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni2-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni2-2)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni2-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni2-2)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni2-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni2-2)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni2-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni2-2)].Interior.ColorIndex:=15;
  end;
  //Gastos
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-3)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-3)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-3)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-3)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-3)].Font.Color := Xl_Blanco;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-3)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-3)].Interior.ColorIndex:=1;
  //Bancarios
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-2)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-2)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-2)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-2)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-2)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni3-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni3-2)].Interior.ColorIndex:=15;
  if choegresos.Checked then
  begin
  //Otros egresos
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni4-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni4-2)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni4-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni4-2)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni4-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni4-2)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni4-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni4-2)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni4-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni4-2)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni4-2)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni4-2)].Interior.ColorIndex:=15;
  end;
  if chocomp.Checked then
  begin
  //Comparacion
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni5-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni5-graf)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni5-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni5-graf)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni5-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni5-graf)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni5-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni5-graf)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni5-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni5-graf)].Font.Color := Xl_Blanco;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni5-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni5-graf)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni5-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni5-graf)].Interior.ColorIndex:=1;
  end;
  //Edo Cuenta
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni6-graf)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni6-graf)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni6-graf)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni6-graf)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni6-graf)].Font.Color := Xl_Blanco;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni6-graf)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni6-graf)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni6-graf)].Interior.ColorIndex:=1;

  //Encabezado de la tabla
  columx:=0;
  
  while x < 2 do
  begin
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := true;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.colorIndex := 2;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.TintAndShade := 0;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.Weight := xlMedium;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.LineStyle := xlContinuous;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalDown].LineStyle := xlNone;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalUp].LineStyle := xlNone;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideVertical].LineStyle := xlNone;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
    //Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.ColorIndex:=15;
    inc(x);
  end;
  //Tabla
  Excel.Range[LetraColumna(1)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Style := 'Currency';
  {Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.colorIndex := 0;
  Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.TintAndShade := 0;
  Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].Borders.Weight := xlThin;}
  Excel.Range[LetraColumna(0)+IntToStr(10)+':'+LetraColumna(1)+IntToStr(idx+11)].columns.autofit;
  if (choingresos.Checked) then
  begin
  //Otros ingresos
  Excel.Range[LetraColumna(1)+IntToStr(RowIni2+1)+':'+LetraColumna(1)+IntToStr(idx2+RowIni2)].Style := 'Currency';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni2)+':'+LetraColumna(1)+IntToStr(idx2+RowIni2)].columns.autofit;
  end;
  //Gastos
  Excel.Range[LetraColumna(1)+IntToStr(RowIni3+1)+':'+LetraColumna(1)+IntToStr(idx3+RowIni3)].Style := 'Currency';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni3)+':'+LetraColumna(1)+IntToStr(idx3+RowIni3)].columns.autofit;
  if choegresos.Checked then
  begin
  //Otros gastos
  Excel.Range[LetraColumna(1)+IntToStr(RowIni4+1)+':'+LetraColumna(1)+IntToStr(idx4+RowIni4)].Style := 'Currency';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni4)+':'+LetraColumna(1)+IntToStr(idx4+RowIni4)].columns.autofit;
  end;
  if chocomp.Checked then
  begin
  //Comparacion
  Excel.Range[LetraColumna(1)+IntToStr(RowIni5+1)+':'+LetraColumna(2)+IntToStr(idx5+RowIni5)].Style := 'Currency';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni5)+':'+LetraColumna(2)+IntToStr(idx5+RowIni5)].columns.autofit;
  end;
  //Edo Cuenta
  Excel.Range[LetraColumna(4)+IntToStr(RowIni6+1)+':'+LetraColumna(6)+IntToStr(idx6+RowIni6)].Style := 'Currency';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni6+1)+':'+LetraColumna(2)+IntToStr(idx6+RowIni6)].columns.autofit;

  Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)], , 1).Name := 'Tabla1';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni)+':'+LetraColumna(1)+IntToStr(RowIni)].AutoFilter;

  if choingresos.Checked then
  begin
  Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(RowIni2)+':'+LetraColumna(1)+IntToStr(idx2+RowIni2)], , 1).Name := 'Tabla2';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni2)+':'+LetraColumna(1)+IntToStr(RowIni2)].AutoFilter;
  end;

  Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(RowIni3)+':'+LetraColumna(1)+IntToStr(idx3+RowIni3)], , 1).Name := 'Tabla3';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni3)+':'+LetraColumna(1)+IntToStr(RowIni3)].AutoFilter;

  if choegresos.Checked then
  begin
  Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(RowIni4)+':'+LetraColumna(1)+IntToStr(idx4+RowIni4)], , 1).Name := 'Tabla4';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni4)+':'+LetraColumna(1)+IntToStr(RowIni4)].AutoFilter;
  end;

  if chocomp.Checked then
  begin
  Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(RowIni5)+':'+LetraColumna(2)+IntToStr(idx5+RowIni5)], , 1).Name := 'Tabla5';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni5)+':'+LetraColumna(2)+IntToStr(RowIni5)].AutoFilter;
  end;

  Excel.ActiveSheet.ListObjects.Add(1, Excel.Range[LetraColumna(0)+IntToStr(RowIni6)+':'+LetraColumna(5)+IntToStr(idx6+RowIni6)], , 1).Name := 'Tabla6';
  Excel.Range[LetraColumna(0)+IntToStr(RowIni6)+':'+LetraColumna(2)+IntToStr(RowIni6)].AutoFilter;

  if chgrafica.Checked then
  begin
  //HACER GRAFICA
  //Bancarios
  Excel.Range[LetraColumna(0)+IntToStr(11)+':'+LetraColumna(1)+IntToStr(idx+11)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := -4102;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartTitle.Select;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
  Excel.ActiveChart.SetElement (205);
  Excel.ActiveChart.ChartTitle.Text := 'Grafica de Estatus de Factura';
  Excel.ActiveChart.ChartArea.Left:=80;
  Excel.ActiveChart.ChartArea.Top:=(idx+RowIni+1)*15;
  //Excel.ActiveChart.ChartArea.Interior.Color := 15;
  if choingresos.Checked then
  begin
  //Otros ingresos
  Excel.Range[LetraColumna(0)+IntToStr(33)+':'+LetraColumna(1)+IntToStr(idx2+33)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := -4102;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartTitle.Select;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
  Excel.ActiveChart.SetElement (210);
  Excel.ActiveChart.ChartTitle.Text := 'Grafica de Tipos de Ingresos';
  Excel.ActiveChart.ChartArea.Left:=200;
  Excel.ActiveChart.ChartArea.Top:=(RowIni2-1)*15;
  Excel.ActiveChart.ChartArea.Width:=300;
  end;
  //Gastos
  Excel.Range[LetraColumna(0)+IntToStr(RowIni3)+':'+LetraColumna(1)+IntToStr(idx3+RowIni3)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := -4102;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartTitle.Select;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
  Excel.ActiveChart.SetElement (210);
  Excel.ActiveChart.ChartTitle.Text := 'Grafica de Estatus de Factura';
  Excel.ActiveChart.ChartArea.Left:=80;
  Excel.ActiveChart.ChartArea.Top:=(idx3+RowIni3+1)*15;
  if choegresos.Checked then
  begin
  //Otros gastos
  Excel.Range[LetraColumna(0)+IntToStr(RowIni4)+':'+LetraColumna(1)+IntToStr(idx4+RowIni4)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := -4102;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartTitle.Select;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';
  Excel.ActiveChart.SetElement (210);
  Excel.ActiveChart.ChartTitle.Text := 'Grafica de Tipos de Egresos';
  Excel.ActiveChart.ChartArea.Left:=200;
  Excel.ActiveChart.ChartArea.Top:=(RowIni4-1)*15;
  Excel.ActiveChart.ChartArea.Width:=300;
  end;
  if chocomp.Checked then
  begin
  //Comparacion
  Excel.Range[LetraColumna(0)+IntToStr(RowIni5)+':'+LetraColumna(2)+IntToStr(idx5+RowIni5)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := 51;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.SetElement (335);
  Excel.ActiveChart.ChartArea.Left:=15;
  Excel.ActiveChart.ChartArea.Top:=(RowIni5-15)*15;
  Excel.ActiveChart.ChartArea.Width:=500;
  end;
   //Edo Cuenta
  Excel.Range[LetraColumna(0)+IntToStr(RowIni6)+':'+LetraColumna(0)+IntToStr(idx6+RowIni6)+','+LetraColumna(5)+IntToStr(RowIni6)+':'+LetraColumna(5)+IntToStr(idx6+RowIni6)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := -4102;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  Excel.ActiveChart.ClearToMatchStyle;
  {Excel.ActiveChart.ChartTitle.Select;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Size := 12;
  Excel.ActiveChart.ChartTitle.Format.TextFrame2.TextRange.Font.Name := 'Arial';}
  Excel.ActiveChart.SetElement (210);
  //Excel.ActiveChart.ChartTitle.Text := 'Grafica de Tipos de Egresos';
  Excel.ActiveChart.ChartArea.Left:=15;
  Excel.ActiveChart.ChartArea.Top:=(RowIni6-15)*15;
  Excel.ActiveChart.ChartArea.Width:=500;
  end;
  //Diseño de pagina
  Excel.ActiveSheet.PageSetup.Zoom := 100;
  Excel.ActiveSheet.PageSetup.PaperSize := xlPaperLetter;
  Excel.ActiveSheet.PageSetup.CenterHorizontally := True;
  Excel.ActiveSheet.PageSetup.AlignMarginsHeaderFooter := False;
  Excel.ActiveSheet.PageSetup.TopMargin  := Excel.InchesToPoints(0.2);
  Excel.ActiveSheet.PageSetup.BottomMargin := Excel.InchesToPoints(1.521);
  Excel.ActiveSheet.PageSetup.FooterMargin := Excel.InchesToPoints(0.88);
  Excel.ActiveSheet.PageSetup.FitToPagesWide := 1;
  Excel.ActiveSheet.PageSetup.FitToPagesTall := 2;
  Excel.ActiveSheet.PageSetup.Orientation := xlLandscape;
  Excel.ActiveWindow.View := 2;
  Excel.ActiveWindow.DisplayGridlines := False;
  Excel.ActiveWindow.Zoom := 100;
  //Excel.ActiveSheet.VPageBreaks[1].DragOff(xlToRight,1);

  Excel.Sheets.Add;
  {$ENDREGION}

  {$REGION 'General'}
  meses := TStringList.Create;
  meses.Delimiter := ' ';
  meses.QuoteChar := '|';
  meses.DelimitedText := '|Enero| |Febrero| |Marzo| |Abril| |Mayo| |Junio| |Julio| |Agosto| |Septiembre| |Octubre| |Noviembre| |Diciembre|';
  // tomar una referencia a la hoja creada
  WorkSheet := WorkBook.WorkSheets[1];
  WorkSheet.Name := 'General';
  //COLOCAR LOGO
  TempPath := GetEnvironmentVariable('TEMP');
  LogoFile := TempPath + '\Temp.bmp';
  TBlobField( Connection.configuracionCont.FieldByName('bImagen')).SaveToFile(LogoFile);

  RowIni := 1;
  //ENCABEZADO DE REPORTE-DATOS DE LA EMPRESA
  WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
  WorkSheet.Cells[RowIni+1,ColIni+4] := connection.configuracionCont.FieldByName('sNombre').AsString;
  WorkSheet.Cells[RowIni+2,ColIni+4] := connection.configuracionCont.FieldByName('sRfc').AsString;
  WorkSheet.Cells[RowIni+3,ColIni+4] := connection.configuracionCont.FieldByName('sDireccion1').AsString + ', '+connection.configuracionCont.FieldByName('sDireccion2').AsString;
  WorkSheet.Cells[RowIni+4,ColIni+4] := 'REPORTE GERENCIAL DE INGRESOS Y EGRESOS DEL '+cxdeFechaI.Text+' AL '+cxdeFechaF.Text;

  Qry := TZQuery.Create(Self);
  Qry.Connection := Connection.zConnection;
  Qry.SQL.Clear;
  Qry.SQL.Add('select co.sContrato from contratos co inner join con_cuentasbancarias cb on (co.sContrato=cb.sIdCompaniaConf) '+
              'where co.lStatus="Activo" group by co.sContrato');
  Qry.Open;



  while not Qry.Eof do
  begin
    i:=MonthOfTheYear(cxdeFechaI.Date);
    zq_IngGral.Close;
    zq_IngGral.Params.ParamByName('sContrato').AsString := Qry.FieldByName('sContrato').AsString;
    zq_IngGral.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_IngGral.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_IngGral.Open;

    zq_FacGral.Close;
    zq_FacGral.Params.ParamByName('sContrato').AsString := Qry.FieldByName('sContrato').AsString;
    zq_FacGral.Params.ParamByName('FechaI').AsDate := cxdeFechaI.Date;
    zq_FacGral.Params.ParamByName('FechaF').AsDate := cxdeFechaF.Date;
    zq_FacGral.Open;

    RowIni := 7;
    WorkSheet.Cells[RowIni+1, 1] := 'Mes(es)';
    WorkSheet.Cells[RowIni, columx+2] := Qry.FieldByName('sContrato').AsString;
    WorkSheet.Cells[RowIni+1, columx+2] := 'Facturado';
    WorkSheet.Cells[RowIni+1, columx+3] := 'Pagado';
    Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+2)+inttostr(RowIni)].Mergecells := True;

    idx:=RowIni+2;
    co:=i-1;
    while not zq_IngGral.Eof do
    begin
      WorkSheet.cells[idx,1] := meses[co];
      if i=zq_IngGral.FieldByName('mes').AsInteger then
      begin
        WorkSheet.cells[idx,columx+3] := zq_IngGral.FieldByName('Monto').AsFloat;
        zq_IngGral.Next;
      end;
      Inc(idx);
      Inc(i);
      co:=i-1;
    end;

    i:=MonthOfTheYear(cxdeFechaI.Date);
    co:=i-1;
    idx:=RowIni+2;
    while not zq_FacGral.Eof do
    begin
      WorkSheet.cells[idx,1] := meses[co];
      if i=zq_FacGral.FieldByName('mes').AsInteger then
      begin
        WorkSheet.cells[idx,columx+2] := zq_FacGral.FieldByName('Monto').AsFloat;
        zq_FacGral.Next;
      end;
      Inc(idx);
      Inc(i);
      co:=i-1;
    end;

    dfp:=(MonthOfTheYear(cxdeFechaF.Date)-MonthOfTheYear(cxdeFechaI.Date))+RowIni+2;
    WorkSheet.cells[dfp+1,columx+2] := '=SUM('+LetraColumna(columx+1)+inttostr(RowIni+2)+':'+LetraColumna(columx+1)+inttostr(dfp)+')';
    WorkSheet.cells[dfp+1,columx+3] := '=SUM('+LetraColumna(columx+2)+inttostr(RowIni+2)+':'+LetraColumna(columx+2)+inttostr(dfp)+')';
    columx:=columx+2;
    Qry.Next;
  end;

  //TOTALES
  WorkSheet.Cells[dfp+1, 1] := 'Totales';
  WorkSheet.Cells[RowIni, columx+2] := 'TOTALES';
  WorkSheet.Cells[RowIni+1, columx+2] := 'Facturado';
  WorkSheet.Cells[RowIni+1, columx+3] := 'Pagado';
  WorkSheet.Cells[RowIni+1, columx+4] := 'Diferencia';
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+3)+inttostr(RowIni)].Mergecells := True;

  for i := (RowIni+2) to dfp do
  begin
    WorkSheet.cells[i,columx+2] := '=SUMIF(B$8:'+LetraColumna(columx)+'$8,"Facturado",B'+inttostr(i)+':'+LetraColumna(columx)+inttostr(i)+')';
    WorkSheet.cells[i,columx+3] := '=SUMIF(B$8:'+LetraColumna(columx)+'$8,"Pagado",B'+inttostr(i)+':'+LetraColumna(columx)+inttostr(i)+')';
    WorkSheet.cells[i,columx+4] := '='+LetraColumna(columx+1)+inttostr(i)+'-'+LetraColumna(columx+2)+inttostr(i);
  end;

  WorkSheet.cells[dfp+1,columx+2] := '=SUM('+LetraColumna(columx+1)+inttostr(RowIni+2)+':'+LetraColumna(columx+1)+inttostr(dfp)+')';
  WorkSheet.cells[dfp+1,columx+3] := '=SUM('+LetraColumna(columx+2)+inttostr(RowIni+2)+':'+LetraColumna(columx+2)+inttostr(dfp)+')';
  WorkSheet.cells[dfp+1,columx+4] := '=SUM('+LetraColumna(columx+3)+inttostr(RowIni+2)+':'+LetraColumna(columx+3)+inttostr(dfp)+')';

  //FORMATO
  //Compañias
  Excel.Range[LetraColumna(ColIni)+inttostr(7)+':'+LetraColumna(columx+1)+inttostr(7)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni)+inttostr(7)+':'+LetraColumna(columx+1)+inttostr(7)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(ColIni)+inttostr(7)+':'+LetraColumna(columx+1)+inttostr(7)].Font.Name := 'Arial';
  Excel.Range[LetraColumna(ColIni)+inttostr(7)+':'+LetraColumna(columx+1)+inttostr(7)].Font.size := 12;
  Excel.Range[LetraColumna(ColIni)+inttostr(7)+':'+LetraColumna(columx+1)+inttostr(7)].Interior.ColorIndex:=15;
  Excel.Range[LetraColumna(ColIni)+inttostr(8)+':'+LetraColumna(columx+3)+inttostr(8)].HorizontalAlignment := xlCenter;

  //ENCABEZADO DE REPORTE
  Excel.Range[LetraColumna(ColIni+2)+inttostr(2)+':'+LetraColumna(columx+3)+inttostr(2)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+2)+inttostr(3)+':'+LetraColumna(columx+3)+inttostr(3)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+2)+inttostr(4)+':'+LetraColumna(columx+3)+inttostr(4)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+2)+inttostr(5)+':'+LetraColumna(columx+3)+inttostr(5)].Mergecells := True;
  Excel.Range[LetraColumna(ColIni+2)+inttostr(2)+':'+LetraColumna(columx+3)+inttostr(5)].Font.Bold := true;
  Excel.Range[LetraColumna(ColIni+2)+inttostr(2)+':'+LetraColumna(columx+3)+inttostr(5)].HorizontalAlignment := xlCenter;
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+1)+inttostr(dfp+1)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+1)+inttostr(dfp+1)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+1)+inttostr(dfp+1)].Borders[xlEdgeRight].LineStyle := xlNone;
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+1)+inttostr(dfp+1)].Borders[xlEdgeTop].LineStyle := xlNone;
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+1)+inttostr(dfp+1)].Borders[xlInsideVertical].LineStyle := xlNone;
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+1)+inttostr(dfp+1)].Borders[xlInsideHorizontal].LineStyle := xlNone;
  Excel.Range[LetraColumna(columx+1)+inttostr(RowIni)+':'+LetraColumna(columx+1)+inttostr(dfp+1)].Borders[xlEdgeBottom].LineStyle := xlNone;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(columx+3)+inttostr(6)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(columx+3)+inttostr(6)].Borders.Weight := xlMedium;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(columx+3)+inttostr(6)].Borders[xlEdgeRight].LineStyle := xlNone;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(columx+3)+inttostr(6)].Borders[xlEdgeTop].LineStyle := xlNone;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(columx+3)+inttostr(6)].Borders[xlInsideVertical].LineStyle := xlNone;
  Excel.Range[LetraColumna(ColIni-1)+inttostr(6)+':'+LetraColumna(columx+3)+inttostr(6)].Borders[xlInsideHorizontal].LineStyle := xlNone;
  //Encabezado
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx+3)+IntToStr(8)].select;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx+3)+IntToStr(8)].Style := 'Énfasis1';
  //Meses
  Excel.Range[LetraColumna(0)+IntToStr(9)+':'+LetraColumna(0)+IntToStr(dfp+1)].select;
  Excel.Range[LetraColumna(0)+IntToStr(9)+':'+LetraColumna(0)+IntToStr(dfp+1)].Style := '60% - Énfasis1';
  //Montos
  Excel.Range[LetraColumna(1)+IntToStr(9)+':'+LetraColumna(columx+3)+IntToStr(dfp)].select;
  Excel.Range[LetraColumna(1)+IntToStr(9)+':'+LetraColumna(columx+3)+IntToStr(dfp)].Style := '20% - Énfasis1';
  Excel.Range[LetraColumna(1)+IntToStr(9)+':'+LetraColumna(columx+3)+IntToStr(dfp+1)].Style := 'Currency';
  //Totales
  Excel.Range[LetraColumna(0)+IntToStr(dfp+1)+':'+LetraColumna(columx+3)+IntToStr(dfp+1)].select;
  Excel.Range[LetraColumna(0)+IntToStr(dfp+1)+':'+LetraColumna(columx+3)+IntToStr(dfp+1)].Style := 'Total';
  Excel.Range[LetraColumna(columx+3)+IntToStr(dfp+1)+':'+LetraColumna(columx+3)+IntToStr(dfp+1)].Style := '40% - Énfasis1';
  Excel.Range[LetraColumna(columx+3)+IntToStr(dfp+1)+':'+LetraColumna(columx+3)+IntToStr(dfp+1)].Font.Bold := true;

  //Grafica
  Excel.Range[LetraColumna(0)+IntToStr(9)+':'+LetraColumna(columx)+IntToStr(dfp)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := 51;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 26;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartArea.Left:=1;
  Excel.ActiveChart.ChartArea.Top:=((idx+2)*15);
  Excel.ActiveChart.ChartArea.Width:=600;
  {$ENDREGION}

  cxProgressBar2.Position:=idx6+1;
  Inc(linea);
  cxProgressBar1.Position:=linea;
  cxLabel2.Caption:='Terminado';
  cxLabel1.Caption:='Terminado';
  // Mostrar el excel
  Excel.Visible:= True;
end;

function LetraColumna (x:integer):string;
const letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
  Result := '';
  x := x+1;
  While x > 0 do begin
    Result := letras[1 + ((x - 1) Mod length(letras))] + Result;
    x := (x - 1) div length(letras);
  End;
end;

procedure Tfrm_Gerencial.formatoEncabezado(const Datos : array of string);
var
   i, conteo : integer;
   Letra, Fila, Columna, CFilaA, CFilaB :string;
   Num   :double;
begin
    conteo := 0;
    for i := Low(Datos) to High (Datos) do
    begin
       inc(conteo);
       if conteo = 1 then
          Columna := Datos[i];

       //Ahora a dar formato a los datos
       if conteo = 2 then
       begin
           Fila := Datos[i];
           if pos(':', Columna) > 0 then
           begin
               CFilaA := copy(Columna,1,pos(':',Columna)-1);
               CFilaB := copy(Columna,pos(':',columna)+ 1, length(Columna));
           end
           else
           begin
               CFilaA := Columna;
               CFIlaB := Columna;
           end;

           if pos(':', Fila) > 0 then
           begin
               CFilaA := CFilaA + copy(Fila,1,pos(':',Fila)-1);
               CFilaB := CFilaB + copy(Fila,pos(':',Fila) + 1, length(Fila) );
           end
           else
           begin
               CFilaA := CFilaA + Fila;
               CFilaB := CFilaB + Fila;
           end;

           Worksheet.Range[CFilaA+':'+CFilaB].Select;
           Excel.Selection.VerticalAlignment := xlCenter;
       end;

       if conteo = 3 then
          if trim(Datos[i])<> '' then
             Excel.Selection.MergeCells := StrToInt(Datos[i]);

        if conteo = 4 then
          if trim(Datos[i])<> '' then
          begin
              if Datos[i] = '1' then
                 Excel.Selection.HorizontalAlignment   := xlLeft;

              if Datos[i] = '2' then
                 Excel.Selection.HorizontalAlignment   := xlCenter;

              if Datos[i] = '3' then
                 Excel.Selection.HorizontalAlignment   := xlRight;
          end;

       if conteo = 5 then
          if trim(Datos[i])<> '' then
             Excel.Selection.WrapText := StrToInt(Datos[i]);

       if conteo = 6 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
              Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
          end;
       if conteo = 7 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
              Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
          end;

       if conteo = 8 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
              Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
          end;

       if conteo = 9 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
              Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
          end;

       if conteo = 10 then
          if (trim(Datos[i])<> '') and (Datos[i] = '1') then
          begin
              Excel.Selection.Borders[xlInsideVertical].LineStyle   := xlContinuous;
              Excel.Selection.Borders[xlInsideVertical].Weight      := xlThin;
              Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
              Excel.Selection.Borders[xlInsidehorizontal].Weight    := xlThin;
          end;

        if conteo = 11 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Color := StringToColor(Datos[i]);

       if conteo = 12 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Interior.Color := StringToColor(Datos[i]);

       if conteo = 13 then
          if trim(Datos[i])<> '' then
             Excel.Selection.NumberFormat := Datos[i];

    end;
end;
procedure Tfrm_Gerencial.FormShow(Sender: TObject);
var
   x,y,i : integer;
begin
   // soad - > Llenado del array..
    for x := 1 to 26 do
        columnas[x] := Chr(64 + x);

    i := 27;
    for x := 1 to 9 do
    begin
         for y := 1 to 26 do
         begin
             columnas[i] := Chr(64+ x) + Chr(64 + y);
             i := i + 1;
         end;
    end;
    cxAlmcont.ItemIndex := 0;
end;

procedure Tfrm_Gerencial.AnchoColumnas(const Ancho: array of string);
var
   i, conteo : integer;
   Letra :string;
   Num   :double;
begin
   conteo := 0;
   for i := Low(Ancho) to High (Ancho) do
   begin
      inc(conteo);
      if conteo = 1 then
         Letra := Ancho[i];

      //Ahora a dar formato a los encabezados
      if conteo = 2 then
      begin
          Num := StrToFloat(Ancho[i]);
          if pos(':', Letra) > 0 then
             Excel.Columns[Letra].ColumnWidth := Num
          else
             Excel.Columns[Letra+':'+Letra].ColumnWidth := Num;
          conteo := 0;
      end;
   end;
end;

procedure Tfrm_Gerencial.TextoColumnasColorFondo(const Datos: array of string);
var
   i, conteo : integer;
   Letra, Fila, Columna, CFilaA, CFilaB :string;
   Num   :double;
begin
    conteo := 0;
    for i := Low(Datos) to High (Datos) do
    begin
       inc(conteo);
       if conteo = 1 then
          Columna := Datos[i];

       //Ahora a dar formato a los datos
       if conteo = 2 then
       begin
           Fila := Datos[i];
           if pos(':', Columna) > 0 then
           begin
               CFilaA := copy(Columna,1,pos(':',Columna)-1);
               CFilaB := copy(Columna,pos(':',columna)+ 1, length(Columna));
           end
           else
           begin
               CFilaA := Columna;
               CFIlaB := Columna;
           end;

           if pos(':', Fila) > 0 then
           begin
               CFilaA := CFilaA + copy(Fila,1,pos(':',Fila)-1);
               CFilaB := CFilaB + copy(Fila,pos(':',Fila) + 1, length(Fila) );
           end
           else
           begin
               CFilaA := CFilaA + Fila;
               CFilaB := CFilaB + Fila;
           end;

           Worksheet.Range[CFilaA+':'+CFilaB].Select;
       end;

       if conteo = 3 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Value := Datos[i];

       if conteo = 4 then
          if trim(Datos[i])<> '' then
             Excel.Selection.NumberFormat := Datos[i];

       if conteo = 5 then
          if trim(Datos[i])<> '' then
             Excel.Selection.RowHeight := StrToFloat(Datos[i]);

       if conteo = 6 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Name := Datos[i];

       if conteo = 7 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Size := StrToInt(Datos[i]);

       if conteo = 8 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Bold := StrToInt(Datos[i]);

       if conteo = 9 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Italic := StrToInt(Datos[i]);

       if conteo = 10 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Underline := StrToInt(Datos[i]);

       if conteo = 11 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Font.Color := StringToColor(Datos[i]);

       if conteo = 12 then
          if trim(Datos[i])<> '' then
             Excel.Selection.Interior.Color := StringToColor(Datos[i]);

    end;
end;


end.
