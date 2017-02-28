unit Frm_ImportacionDatosRH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, RxMemDS, Menus, ExcelXP, OleServer, ComCtrls,
  StdCtrls, Buttons, ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ComObj, StrUtils, Contnrs, frm_connection;

Type
  EValidaciones = class(Exception)
 end;


Type
  EAuxiliares = class(Exception)
 end;

Type
  TRelacionNCExcel = class
    NombreCampo : string;
    NombreColumna : String;
  end;

Type
    TCuadroErroresExcel = class
    Color: integer;
    TipodeError : String;
    Error : Boolean;
  end;

type
  TFrmImportacionDatosRH = class(TForm)
    OpenXLS: TOpenDialog;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelWorksheet1: TExcelWorksheet;
    PopupPrincipal: TPopupMenu;
    Salir1: TMenuItem;
    SaveDialog1: TSaveDialog;
    RxMDValida: TRxMemoryData;
    RxMDValidasNumeroActividad: TStringField;
    RxMDValidasWbs: TStringField;
    RxMDValidadCantidad: TStringField;
    RxMDValidasuma: TStringField;
    RxMDValidaaMN: TStringField;
    RxMDValidaaDLL: TStringField;
    RxMDValidabMN: TStringField;
    RxMDValidabDLL: TStringField;
    RxMDValidadCantidadAnexo: TStringField;
    RxMDValidadescripcion: TStringField;
    RxMDValidamensaje: TStringField;
    RxMDValidasNumeroOrden: TStringField;
    RxMDValidasWbs2: TStringField;
    frxDBValida: TfrxDBDataset;
    frxReporte: TfrxReport;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    chkBorrar: TCheckBox;
    Panel2: TPanel;
    Panel3: TPanel;
    btnSalir: TBitBtn;
    btnResumido: TBitBtn;
    btnFiles: TBitBtn;
    Label1: TLabel;
    tsArchivo: TEdit;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    RBPersonal: TRadioButton;
    RbInsumos: TRadioButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    ZQImp: TZQuery;
    RbProveedores: TRadioButton;
    procedure Salir1Click(Sender: TObject);
    procedure btnResumidoClick(Sender: TObject);
    procedure btnFilesClick(Sender: TObject);
    procedure RBPersonalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RbInsumosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure RbProveedoresClick(Sender: TObject);
  private
    CeldaObligatoria : TCuadroErroresExcel;
    CeldaValorIncorrecto : TCuadroErroresExcel;
    CeldaRelacionTabla : TCuadroErroresExcel;
    CeldaRepetida : TCuadroErroresExcel;    

    RelacionExcelbd : TObjectList;
    ZqDepartamentos, ZqPuestos, ZqSucursal, ZqSCuentaEmpresa, ZqProveedores, ZqCategorias : Tzquery;
    sentencia: string;
    RadioButtontag : Integer;
    function IsFileInUse(fName: string): boolean;
    procedure crearcriterio(NombreColumna, NombreCmp: string);
    procedure CObliGatorioZqInt(NombreCampo: TRelacionNCExcel;
      CeldaRelacionada: string; ZqAuxiliar: TZquery; HojaAux, EXcelAux: Variant;
      FilasErroneasAux: TStringList; iaux, jaux: integer);
    procedure CNoOBlInt(NombreCampo: TRelacionNCExcel; CeldaRelacionada: string;
      HojaAux, EXcelAux: Variant; FilasErroneasAux: TStringList; iaux,
      jaux: integer);
    procedure COBlInt(NombreCampo: TRelacionNCExcel; CeldaRelacionada: string;
      HojaAux, EXcelAux: Variant; FilasErroneasAux: TStringList; iaux,
      jaux: integer);
    procedure CObliGatorioZqStr(NombreCampo: TRelacionNCExcel;
      CeldaRelacionada: string; ZqAuxiliar: TZquery; HojaAux, EXcelAux: Variant;
      FilasErroneasAux: TStringList; iaux, jaux: integer);
    procedure CObliGatorioStr(NombreCampo: TRelacionNCExcel;
      CeldaRelacionada: string; HojaAux, EXcelAux: Variant;
      FilasErroneasAux: TStringList; iaux, jaux: integer);
    procedure CObliGatorioFloat(NombreCampo: TRelacionNCExcel;
      CeldaRelacionada: string; HojaAux, EXcelAux: Variant;
      FilasErroneasAux: TStringList; iaux, jaux: integer);
    procedure CObliGatorioDate(NombreCampo: TRelacionNCExcel;
      CeldaRelacionada: string; HojaAux, EXcelAux: Variant;
      FilasErroneasAux: TStringList; iaux, jaux: integer);
    procedure CNoOblDate(NombreCampo: TRelacionNCExcel;
      CeldaRelacionada: string; HojaAux, EXcelAux: Variant;
      FilasErroneasAux: TStringList; iaux, jaux: integer);
    procedure CuadroDeErrores(ExcelAux, HojaAux: Variant; cancolums: integer);
    procedure COblRepetidaStr(NombreCampo: TRelacionNCExcel;
      CeldaRelacionada: string; HojaAux, EXcelAux: Variant;
      FilasErroneasAux: TStringList; iaux, jaux: integer; Crepeat: TStringList);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportacionDatosRH: TFrmImportacionDatosRH;

implementation

{$R *.dfm}


procedure TFrmImportacionDatosRH.btnFilesClick(Sender: TObject);
begin
  OpenXLS.Title := 'Inserta Archivo de Consulta';
  if OpenXLS.Execute then
    tsArchivo.Text := OpenXLS.FileName;
end;

procedure TFrmImportacionDatosRH.btnResumidoClick(Sender: TObject);
var
 Excel, Pestaña, Hoja : Variant;
 i, j, canterrores : integer;
 Control : TComponent;
 validaRadios, EndExcel, Errores : boolean;
 ZqImportar : TZquery;
 ValidarVacios : string;
 FilasErroneas, CeldasRepetidas : TStringList;
 DAteAux : TDateTime;
 TipodeCampo : TFieldType;
begin
  try
    if (tsArchivo.Text = '') or ((tsArchivo.Text <> '') and not FileExists(tsArchivo.Text)) then
      raise EValidaciones.create('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.');

   if IsFileInUse(TsArchivo.text) then
      raise EValidaciones.create('El archivo seleccionado se encuentra abierto o en uso por otro programa, por favor cierrelo para poder utilizarlo');

    try
      Control := TComponent.Create(nil);
      ValidaRadios := false;
      for i := 0 to self.ComponentCount-1 do
      begin
        control :=  self.Components[i];
        if (control is TRadioButton) and (TRadiobutton(control).Checked = true) then
          ValidaRadios := True;
      end;
    finally
     Control.Free;
    end;
    if ValidaRadios = false then
      raise EValidaciones.Create('No ha seleccionado ningun opcion de que tipo de excel va a subir, pro favor seleccione alguna');

    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.Workbooks.Open(tsArchivo.Text);
    Hoja := Excel.Worksheets.item[1];

    for i := 1 to RelacionExcelbd.Count do
    begin
     if Hoja.cells[1, i].text <> TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreColumna then
      raise EAuxiliares.Create('La estructura del excel de titulos no corresponde con la del excel a importar, verifiquelo pro favor.');
    end;

    EndExcel := false;
    j:=2;
    FilasErroneas := TStringList.Create;
    CeldasRepetidas := TStringList.Create;
    CeldaRepetida.Error := false;
    CeldaObligatoria.Error := false;
    CeldaValorIncorrecto.Error := false;
    CeldaRelacionTabla.Error := false;

    //Importacion de personal
    if RadioButtonTag = 1 then
    begin
        if ZqDepartamentos.Active then
          ZqDepartamentos.Refresh
        else
          ZqDepartamentos.Open;

        if ZqPuestos.Active then
          ZqPuestos.Refresh
        else
          ZqPuestos.Open;

        if ZqSucursal.Active then
          ZqSucursal.Refresh
        else
          ZqSucursal.Open;

        if ZqSCuentaEmpresa.Active then
          ZqSCuentaEmpresa.Refresh
        else
          ZqSCuentaEmpresa.Open;

        while EndExcel = false do
        begin
          ValidarVacios:='';
          for i := 1 to RelacionExcelbd.Count do
          begin
             ValidarVacios := ValidarVacios + Hoja.cells[j, i].text;
             CNoOBlInt(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sPeriodo', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioZqInt(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'Iid_NumeroDeCuenta', ZqSCuentaEmpresa, Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioZqStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sIdArea', ZqDepartamentos, Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioZqInt(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'iId_Puesto', ZqPuestos, Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioZqInt(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'idorganizacion', ZqSucursal, Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sNombreCompleto', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sIdEmpleado', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sCuenta', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sBanco', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioFloat(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'dSueldo', Hoja, Excel, FilasErroneas, i, j);
             COBlInt(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sNumeroCuenta', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sCurp', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sImss', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sRfc', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sNacionalidad', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioDate(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'dFechaNacimiento', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioDate(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'dFechaInicioLabores', Hoja, Excel, FilasErroneas, i, j);
             CNoOblDate(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'dFechaTerminoLabores', Hoja, Excel, FilasErroneas, i, j);

            try
              if (TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreCampo = 'iIdEstatus') and (strtoint(Hoja.cells[j, i].text) < 0) and (strtoint(Hoja.cells[j, i].text) > 5) then
              begin
                Hoja.cells[j, i].select;
                Excel.Selection.Interior.ColorIndex :=CeldaObligatoria.Color;
                if FilasErroneas.IndexOf(inttostr(j))=-1 then
                  FilasErroneas.Add(inttostr(j));
                CeldaObligatoria.Error:= true;
              end;
            except
              Hoja.cells[j, i].select;
              Excel.Selection.Interior.ColorIndex := CeldaValorIncorrecto.Color;
              if FilasErroneas.IndexOf(inttostr(j))=-1 then
                FilasErroneas.Add(inttostr(j));
              CeldaValorIncorrecto.Error:= true;
            end;

            if (TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreCampo = 'lSexo') and (Hoja.cells[j, i].text <> 'MASCULINO') and (Hoja.cells[j, i].text <> 'FEMENINO') then
            begin
              Hoja.cells[j, i].select;
              Excel.Selection.Interior.ColorIndex := CeldaObligatoria.Color;
              if FilasErroneas.IndexOf(inttostr(j))=-1 then
                FilasErroneas.Add(inttostr(j));
              CeldaObligatoria.Error:= true;
            end;

            try
              if (TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreCampo = 'iEdad') and (strtoint(Hoja.cells[j, i].text) <= 0) then
              begin
                Hoja.cells[j, i].select;
                Excel.Selection.Interior.ColorIndex :=CeldaObligatoria.Color;
                if FilasErroneas.IndexOf(inttostr(j))=-1 then
                  FilasErroneas.Add(inttostr(j));
                CeldaObligatoria.Error:= true;
              end;
            except
              Hoja.cells[j, i].select;
              Excel.Selection.Interior.ColorIndex :=CeldaValorIncorrecto.Color;
              if FilasErroneas.IndexOf(inttostr(j))=-1 then
                FilasErroneas.Add(inttostr(j));
              CeldaValorIncorrecto.Error:= true;
            end;

            try
              if (TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreCampo = 'iIdhorario') and (strtoint(Hoja.cells[j, i].text) <= 0) then
              begin
                Hoja.cells[j, i].select;
                Excel.Selection.Interior.ColorIndex :=CeldaObligatoria.Color;
                if FilasErroneas.IndexOf(inttostr(j))=-1 then
                  FilasErroneas.Add(inttostr(j));
                CeldaObligatoria.Error:= true;
              end;
            except
              Hoja.cells[j, i].select;
              Excel.Selection.Interior.ColorIndex :=CeldaValorIncorrecto.Color;
              if FilasErroneas.IndexOf(inttostr(j))=-1 then
                FilasErroneas.Add(inttostr(j));
              CeldaValorIncorrecto.Error:= true;
            end;

          end;
          if (Length(Trim(ValidarVacios)) = 0) then
          begin
            EndExcel := true;
          end;
          j:=j+1;
        end;

        for i := 1 to RelacionExcelbd.Count do
        begin
          Hoja.cells[j-1, i].select;
          Excel.Selection.Interior.ColorIndex:= 0;
        end;

        if (FilasErroneas.Count > 0) and (FilasErroneas[0]<>inttostr(j-1)) then
        begin
          CuadroDeErrores (excel, Hoja, RelacionExcelbd.Count);
          Excel.Save;
          raise EAuxiliares.Create('El Archivo Excel Tiene Errores, por favor verifiquelo');
        end;
    end;

    //Importacion de equipos
    if RadioButtonTag = 2 then
    begin
      if ZqProveedores.Active then
        ZqProveedores.Refresh
      else
        ZqProveedores.Open;

      if ZqCategorias.Active then
        ZqCategorias.Refresh
      else
        ZqCategorias.Open;

        while EndExcel = false do
        begin
          ValidarVacios:='';        
          for i := 1 to RelacionExcelbd.Count do
          begin
             ValidarVacios := ValidarVacios + Hoja.cells[j, i].text;
             CObliGatorioZqInt(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'iId_Categoria', ZqCategorias, Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sClave', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sNombre', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sModelo', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sNumeroSerie', Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioZqStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sIdProveedor', ZqProveedores, Hoja, Excel, FilasErroneas, i, j);
             CObliGatorioDate(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'dFechaCompra', Hoja, Excel, FilasErroneas, i, j);
          end;
          if (Length(Trim(ValidarVacios)) = 0) then
          begin
            EndExcel := true;
          end;
          j:=j+1;
        end;

        for i := 1 to RelacionExcelbd.Count do
        begin
          Hoja.cells[j-1, i].select;
          Excel.Selection.Interior.ColorIndex:= 0;
        end;

        if (FilasErroneas.Count > 0) and (FilasErroneas[0]<>inttostr(j-1)) then
        begin
          CuadroDeErrores (excel, Hoja, RelacionExcelbd.Count);
          Excel.Save;
          raise EAuxiliares.Create('El Archivo Excel Tiene Errores, por favor verifiquelo');
        end;
    end;

    if RadioButtonTag = 3 then
    begin
      while EndExcel = false do
      begin
        ValidarVacios:='';
        for i := 1 to RelacionExcelbd.Count do
        begin
          ValidarVacios := ValidarVacios + Hoja.cells[j, i].text;
          COblRepetidaStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sIdProveedor', Hoja, Excel, FilasErroneas, i, j, CeldasRepetidas);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sRazon', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sDomicilio', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sCiudad', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sTelefono', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sCP', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sRfc', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sEstado', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sCuenta', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sBanco', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sSucursal', Hoja, Excel, FilasErroneas, i, j);
          COBlInt(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sClaveBan', Hoja, Excel, FilasErroneas, i, j);
          CObliGatorioStr(TRelacionNCExcel(RelacionExcelbd.Items[i-1]), 'sNombreCuenta', Hoja, Excel, FilasErroneas, i, j);                                                  
        end;
        if (Length(Trim(ValidarVacios)) = 0) then
        begin
          EndExcel := true;
        end;
        j:=j+1;
      end;
      for i := 1 to RelacionExcelbd.Count do
      begin
        Hoja.cells[j-1, i].select;
        Excel.Selection.Interior.ColorIndex:= 0;
      end;
      if (FilasErroneas.Count > 0) and (FilasErroneas[0]<>inttostr(j-1)) then
      begin
        CuadroDeErrores (excel, Hoja, RelacionExcelbd.Count);
        Excel.Save;
        raise EAuxiliares.Create('El Archivo Excel Tiene Errores, por favor verifiquelo');
      end;
    end;    


      try
        connection.zConnection.StartTransaction;
        ZqImportar := TZquery.Create(nil);
        ZqImportar.Connection := Connection.zConnection;
        ZqImportar.Active:=false;
        ZqImportar.SQL.Clear;
        ZqImportar.SQL.Add(sentencia);
        ZqImportar.Open;
        for j := 2 to (j-2) do
        begin
          ZqImportar.Append;
          case  RadioButtonTag of
           1: begin
              ZqImportar.fieldbyname('IdPersonal').AsInteger:= 0;
           end;

           2: begin
              ZqImportar.fieldbyname('iId').AsInteger:= 0;
           end;

           3: begin
              ZqImportar.fieldbyname('lStatus').AsString:= 'Activo';
           end;
          end;

          for i  := 0 to RelacionExcelbd.Count-1 do
          begin
            TipodeCampo:= ZqImportar.FieldDefs.Items[ZqImportar.FieldDefs.IndexOf(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo)].DataType;
            case TipodeCampo of
               FtInteger: begin
                  if Hoja.cells[j, i+1].text = '' then
                    ZqImportar.fieldbyname(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).Clear
                  else
                    ZqImportar.fieldbyname(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).AsInteger:=strtoint(Hoja.cells[j, i+1].text);
               end;

               ftFloat: begin
                 if Hoja.cells[j, i+1].text = '' then
                    zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).Clear
                 else
                    zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).AsFloat := StrToFloat(Hoja.cells[j, i+1].text);
               end;

               ftDate: begin
                 if Hoja.cells[j, i+1].text = '' then
                    zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).Clear
                 else
                     zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).AsDatetime := StrtoDate(Hoja.cells[j, i+1].text);
               end;

               ftDateTime: begin
                 if Hoja.cells[j, i+1].text = '' then
                    zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).Clear
                 else
                   zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).AsDatetime := StrtoDate(Hoja.cells[j, i+1].text);
               end;

               ftString: begin
                   if Hoja.cells[j, i+1].text = '' then
                      zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).Clear
                   else
                     zqimportar.FieldByName(TRelacionNCExcel(RelacionExcelbd.Items[i]).NombreCampo).asstring := Hoja.cells[j, i+1].text;
               end;
            end;
          end;
          ZqImportar.Post;
        end;
        if connection.zConnection.InTransaction then
            connection.zConnection.Commit;
        showmessage('Se ha guardado la importacion correctamente');
      finally
        ZqImportar.Free;
      end;
  except
    on e:EValidaciones Do
    begin
        MessageDlg('Importante: '+#10+#10+e.Message, mtInformation, [mbok], 0);
    end;

    on e:EAuxiliares Do
    begin
      MessageDlg('Importante: '+#10+#10+e.Message, mtInformation, [mbok], 0);
      Excel.Quit;
    end;

    on e:exception do
    begin
      Messagedlg('Error: '+#10#10+'Ha Ocurrido un error desconocido del sistema, indorme de este error al administrador.'+#10+'Error: '+e.Message, MtError, [mbok], 0);
      Excel.Quit;
      if connection.zConnection.InTransaction then
        connection.zConnection.Rollback;
    end;
  end;
end;

procedure TFrmImportacionDatosRH.btnSalirClick(Sender: TObject);
begin
  try
     close;
  except

  end;
end;

procedure TFrmImportacionDatosRH.FormCreate(Sender: TObject);
begin
    RelacionExcelbd := TObjectList.Create;
    sentencia := '';

    CeldaObligatoria := TCuadroErroresExcel.Create;
    CeldaObligatoria.Color:= 6;
    CeldaObligatoria.TipodeError:= 'CELDA OBLIGATORIA, TEXTO VACIO O VALOR NUMERICO MENOR O IGUAL QUE CERO';
    CeldaObligatoria.Error := false;

    CeldaValorIncorrecto:= TCuadroErroresExcel.Create;
    CeldaValorIncorrecto.Color:= 3;
    CeldaValorIncorrecto.TipodeError:= 'CELDA CON UN VALOR INCORRECTO, POR EJEMPLO SE COLOCO TEXTO EN UAN CELDA NUMERICA O  TEXTO EN UNFORMATO DE FECHA, ECT.';
    CeldaValorIncorrecto.Error := false;

    CeldaRelacionTabla := TCuadroErroresExcel.Create;
    CeldaRelacionTabla.Color:= 5;
    CeldaRelacionTabla.TipodeError:= 'CELDA VALIDAD CON OTROS CATALOGOS DEL SISTEMA EN EL CUAL EL VALOR COLOCADO NO EXISTE EN ESTOS CATALOGOS';
    CeldaRelacionTabla.Error := false;

    CeldaRepetida := TCuadroErroresExcel.Create;
    CeldaRepetida.Color:= 4;
    CeldaRepetida.TipodeError:= 'CELDA CON VALOR REPETIDO';
    CeldaRepetida.Error := false;

end;

procedure TFrmImportacionDatosRH.FormShow(Sender: TObject);
begin
  try
    //Consultas de validacionde personal
    ZqDepartamentos := TZquery.Create(nil);
    ZqDepartamentos.Connection := Connection.zConnection;
    ZqDepartamentos.Active:=false;
    ZqDepartamentos.SQL.Clear;
    ZqDepartamentos.SQL.Add('select ca.sIdArea  from con_areas ca');

    ZqPuestos := TZquery.Create(nil);
    ZqPuestos.Connection := Connection.zConnection;
    ZqPuestos.Active:=false;
    ZqPuestos.SQL.Clear;
    ZqPuestos.SQL.Add('select iId_Puesto from con_catalogodepuestos c');

    ZqSucursal := TZquery.Create(nil);
    ZqSucursal.Connection := Connection.zConnection;
    ZqSucursal.Active:=false;
    ZqSucursal.SQL.Clear;
    ZqSucursal.SQL.Add('select norg.idorganizacion  from nuc_organizacion norg');

    ZqSCuentaEmpresa := TZquery.Create(nil);
    ZqSCuentaEmpresa.Connection := Connection.zConnection;
    ZqSCuentaEmpresa.Active:=false;
    ZqSCuentaEmpresa.SQL.Clear;
    ZqSCuentaEmpresa.SQL.Add('select cc.Iid_NumeroDeCuenta from con_catalogodecuentas cc');

    //Zquerys de Equipos
    ZqProveedores := TZquery.Create(nil);
    ZqProveedores.Connection := Connection.zConnection;
    ZqProveedores.Active:=false;
    ZqProveedores.SQL.Clear;
    ZqProveedores.SQL.Add('select pv.sIdProveedor from proveedores pv');

    ZqCategorias := TZquery.Create(nil);
    ZqCategorias.Connection := Connection.zConnection;
    ZqCategorias.Active:=false;
    ZqCategorias.SQL.Clear;
    ZqCategorias.SQL.Add('select cc.iId_Categoria from con_catalogodeequipos_categorias cc');

    RadioButtonTag :=0;
  except

  end;
end;

procedure TFrmImportacionDatosRH.Salir1Click(Sender: TObject);
  procedure ConfigurarCelda (ExcelAux : Variant);
  begin
    try
      ExcelAux.Selection.ColumnWidth := 30;
      ExcelAux.Selection.Font.Bold := True;
      ExcelAux.Selection.MergeCells := False;
      ExcelAux.Selection.HorizontalAlignment := xlCenter;
      ExcelAux.Selection.VerticalAlignment := xlCenter;
      ExcelAux.Selection.Font.Size := 12;
      ExcelAux.Selection.Font.Name := 'Calibri';
      ExcelAux.Selection.Font.Color := clWhite;
      ExcelAux.Selection.Interior.ColorIndex :=25;
    except
      raise;
    end;
  end;

var
  Excel, Libro, Hoja: Variant;
  archivo : string;
  i: integer;
begin
  try
      if not SaveDialog1.Execute then
        raise EAuxiliares.Create('');
      archivo := SaveDialog1.FileName;
      if (FileExists(archivo)) and (IsFileInUse(archivo)) then
        raise EValidaciones.Create('Esta intentando guardar una rchivo con el nombre de otro el cual se encuentra en uso, por favor intente colocando otro nombre');

      Excel := CreateOleObject('Excel.Application');

      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := True;
      Libro := Excel.Workbooks.Add;

      while Libro.Sheets.Count < 2 do
        Libro.Sheets.Add;

      Hoja := Excel.Worksheets.item[1];

      if RBPersonal.Checked then
      begin
        for i := 1 to RelacionExcelbd.Count do
        begin
          Hoja.cells[1, i].select;
          Hoja.cells[1, i] := TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreColumna;
          ConfigurarCelda(Excel);
        end;
      end;

      if RbInsumos.Checked then
      begin
        for i := 1 to RelacionExcelbd.Count do
        begin
          Hoja.cells[1, i].select;
          Hoja.cells[1, i] := TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreColumna;
          ConfigurarCelda(Excel);
        end;
      end;

      if RbProveedores.Checked then
      begin
        for i := 1 to RelacionExcelbd.Count do
        begin
          Hoja.cells[1, i].select;
          Hoja.cells[1, i] := TRelacionNCExcel(RelacionExcelbd.Items[i-1]).NombreColumna;
          ConfigurarCelda(Excel);
        end;
      end;

      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      Excel.DisplayAlerts := True;
  except
    on e:EAuxiliares do
    begin
      ;
    end;

    on e:evalidaciones do
    begin
      MessageDlg('Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;

    on e:exception do
    begin
      MessageDlg('Error: '+#10+#10+'Ha ocurrido un error al hacer la exportacion de la plantilla de datos, intentelo nuevamente, Error:'+#10#10+e.Message, mterror, [mbok], 0);
      Excel.Quit;
    end;
  end;

end;


procedure TFrmImportacionDatosRH.RbInsumosClick(Sender: TObject);
begin
  RelacionExcelbd.Clear;
  crearcriterio('CATEGORIAS', 'iId_Categoria');
  crearcriterio('CLAVE', 'sClave');
  crearcriterio('NOMBRE', 'sNombre');
  crearcriterio('MARCA', 'sMarca');
  crearcriterio('MODELO', 'sModelo');
  crearcriterio('NUM. SERIE', 'sNumeroSerie');
  crearcriterio('PROVEEDOR', 'sIdProveedor');
  crearcriterio('FECHA DE COMPRA', 'dFechaCompra');
  crearcriterio('DESCRIPCION', 'sDescripcion');
  sentencia:='select * from con_catalogodeequipos c where c.iId =-9';
  RadioButtonTag := RbInsumos.Tag;
end;

procedure TFrmImportacionDatosRH.RBPersonalClick(Sender: TObject);
begin
  RelacionExcelbd.Clear;
  crearcriterio('DEPARTAMENTO', 'sIdArea');
  crearcriterio('ID EMPLEADO', 'sIdEmpleado');
  crearcriterio('NOMBRE', 'sNombreCompleto');
  crearcriterio('DOMICILIO', 'sDomicilio');
  crearcriterio('CIUDAD', 'sCiudad');
  crearcriterio('PUESTO', 'iId_Puesto');
  crearcriterio('CUENTA', 'sCuenta');
  crearcriterio('CUENTA CONTABLE', 'Iid_NumeroDeCuenta');
  crearcriterio('BANCO', 'sBanco');
  crearcriterio('CTA. INTERBANCARIA', 'sCuentaInterbancaria');
  crearcriterio('SUELDO MENSUAL', 'dSueldo');
  crearcriterio('LABORA', 'iIdEstatus');
  crearcriterio('LUGAR DE NACIMIENTO', 'sLugarNacimiento');
  crearcriterio('CARRERA PROFESIONAL', 'sCarrera');
  crearcriterio('TELEFONO', 'sTelefono');
  crearcriterio('E-MAIL', 'seMail');
  crearcriterio('CURP', 'sCurp');
  crearcriterio('IMSS', 'sImss');
  crearcriterio('RFC', 'sRfc');
  crearcriterio('NACIONALIDAD', 'sNacionalidad');
  crearcriterio('ESTADO CIVIL', 'sEstadoCivil');
  crearcriterio('NACIMIENTO', 'dFechaNacimiento');
  crearcriterio('INICIO LABORES', 'dFechaInicioLabores');
  crearcriterio('TERMINO LABORES', 'dFechaTerminoLabores');
  crearcriterio('LIBRETA DE MAR', 'sLibretaMar');
  crearcriterio('CARTILLA MILITAR', 'sCartilla');
  crearcriterio('CRDULA PROFESIONAL', 'sCedulaProfesional');
  crearcriterio('SEXO', 'lSexo');
  crearcriterio('EDAD', 'iEdad');
  crearcriterio('HORARIO DE LABORES', 'iIdhorario');
  crearcriterio('PERIODO DE PAGO', 'sPeriodo');
  crearcriterio('DIAS DESCANSO', 'sDescanso');
  crearcriterio('SUCURSAL', 'idorganizacion');
  sentencia:='select * from  empleados e WHERE e.IdPersonal = -9';
  RadioButtonTag := RBPersonal.Tag;
end;

procedure TFrmImportacionDatosRH.RbProveedoresClick(Sender: TObject);
begin
  RelacionExcelbd.Clear;
  crearcriterio('CODIGO PROVEEDOR', 'sIdProveedor');
  crearcriterio('RAZON SOCIAL', 'sRazon');
  crearcriterio('DOMICILIO', 'sDomicilio');
  crearcriterio('CIUDAD', 'sCiudad');
  crearcriterio('TELEFONO', 'sTelefono');
  crearcriterio('CODIGO POSTAL', 'sCP');
  crearcriterio('RFC', 'sRfc');
  crearcriterio('ESTADO', 'sEstado');
  crearcriterio('CUENTA BANCO', 'sCuenta');
  crearcriterio('BANCO', 'sBanco');
  crearcriterio('SUCURSAL BANCO', 'sSucursal');
  crearcriterio('CLAVE DEL BANCO', 'sClaveBan');
  crearcriterio('NOMBRE DE LA CUENTA', 'sNombreCuenta');
  crearcriterio('VENDEDOR', 'sVendedor');
  crearcriterio('EMAIL', 'sEmail');
  crearcriterio('PROPIETARIO', 'sPropietario');
  crearcriterio('MONTO DE CREDITO', 'dMontoCredito');
  crearcriterio('COMENTARIOS', 'mComentarios');
  //crearcriterio('ESTADO', 'lStatus');
  sentencia:='SELECT * from proveedores p where p.sIdProveedor = -9';
  RadioButtonTag := RbProveedores.Tag;
end;

procedure TFrmImportacionDatosRH.crearcriterio (NombreColumna : string; NombreCmp : string );
var
  Camposxcolumnas : TRelacionNCExcel;
begin
  try
    Camposxcolumnas := TRelacionNCExcel.Create;
    Camposxcolumnas.NombreCampo:= NombreCmp;
    Camposxcolumnas.NombreColumna:= NombreColumna;
    RelacionExcelbd.Add(Camposxcolumnas);
  except
    raise;
  end;
end;

  //##########CELDA NO OBLIGATORIA DE TIPO ENTERO VALIDADO CON OTRA TABLA
Procedure TFrmImportacionDatosRH.CObliGatorioZqInt (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; ZqAuxiliar: TZquery; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
begin
      try
        if NombreCampo.NombreCampo = CeldaRelacionada then
        begin
          if ZqAuxiliar.Locate(NombreCampo.NombreCampo, strtoint(HojaAux.cells[jaux, iaux].text), []) = false then
          begin
            HojaAux.cells[jaux, iaux].select;
            ExcelAux.Selection.Interior.ColorIndex:= CeldaRelacionTabla.Color;
            if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
              FilasErroneasAux.Add(inttostr(jAux));
            CeldaRelacionTabla.Error := true;
          end
          else
          begin
            HojaAux.cells[jaux, iaux].select;
            ExcelAux.Selection.Interior.ColorIndex:= 0;
          end;
        end;
      except
        HojaAux.cells[jaux, iaux].select;
        ExcelAux.Selection.Interior.ColorIndex:= CeldaValorIncorrecto.Color;
        if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
          FilasErroneasAux.Add(inttostr(jAux));
        CeldaRelacionTabla.Error := true;
      end;
end;

  //##########CELDA NO OBLIGATORIA DE TIPO FLOTANTE
  Procedure TFrmImportacionDatosRH.CNoOBlInt (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
  begin
    try
      if NombreCampo.NombreCampo = CeldaRelacionada then
      begin
        if HojaAux.cells[jaux, iaux].text <>'' then
        begin
          strtoint(HojaAux.cells[jaux, iaux].text);
          HojaAux.cells[jaux, iaux].select;
          ExcelAux.Selection.Interior.ColorIndex := 2;
        end
        else
        begin
          HojaAux.cells[jaux, iaux].select;
          ExcelAux.Selection.Interior.ColorIndex := 0;
        end;
      end;
    except
      HojaAux.cells[jaux, iaux].select;
      ExcelAux.Selection.Interior.ColorIndex := CeldaValorIncorrecto.Color;
      if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
        FilasErroneasAux.Add(inttostr(jAux));
      CeldaValorIncorrecto.Error:= true;
    end;
  end;

  //##########CELDA OBLIGATORIA DE TIPO INTEGER
  Procedure TFrmImportacionDatosRH.COBlInt (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
  begin
       try
        if NombreCampo.NombreCampo = CeldaRelacionada  then
        begin
          if Hojaaux.cells[jaux, iaux].text = '' then
          begin
            Hojaaux.cells[jaux, iaux].select;
            Excelaux.Selection.Interior.ColorIndex :=CeldaObligatoria.Color;
            if FilasErroneasaux.IndexOf(inttostr(jaux))=-1 then
              FilasErroneasaux.Add(inttostr(jaux));
            CeldaObligatoria.Error:= true;
          end
          else
          begin
            strtoint(Hojaaux.cells[jaux, iaux].text);
            Hojaaux.cells[jaux, iaux].select;
            Excelaux.Selection.Interior.ColorIndex :=0;
          end;
        end;
       except
          Hojaaux.cells[jaux, iaux].select;
          Excelaux.Selection.Interior.ColorIndex:= CeldaValorIncorrecto.Color;
          if FilasErroneasaux.IndexOf(inttostr(jaux))=-1 then
            FilasErroneasaux.Add(inttostr(jaux));
          CeldaValorIncorrecto.Error:= true;
       end;
  end;

  //Celda obligatoria validad con otra tabla de tipo String
  Procedure TFrmImportacionDatosRH.CObliGatorioZqStr (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; ZqAuxiliar: TZquery; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
  begin

        try
          if NombreCampo.NombreCampo = CeldaRelacionada then
          begin
             if ZqAuxiliar.Locate(NombreCampo.NombreCampo, HojaAux.cells[jaux, iaux].text, []) = false then
             begin
               HojaAux.cells[jaux, iaux].select;
               ExcelAux.Selection.Interior.ColorIndex :=CeldaRelacionTabla.Color;
               if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
                  FilasErroneasAux.Add(inttostr(jAux));
               CeldaRelacionTabla.Error:= true;
             end
             else
             begin
               HojaAux.cells[jaux, iaux].select;
               ExcelAux.Selection.Interior.ColorIndex:= 0;
             end;
          end;
        except
          HojaAux.cells[jaux, iaux].select;
          ExcelAux.Selection.Interior.ColorIndex := CeldaRelacionTabla.Color;
          if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
            FilasErroneasAux.Add(inttostr(jAux));
          CeldaRelacionTabla.Error:= true;
        end;
  end;

  //##########CELDA NO OBLIGATORIA DE TIPO STRING
  Procedure TFrmImportacionDatosRH.CObliGatorioStr (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
  begin
     if (NombreCampo.NombreCampo = CeldaRelacionada) and (HojaAux.cells[jaux, iaux].text = '') then
     begin
        HojaAux.cells[jaux, iaux].select;
        ExcelAux.Selection.Interior.ColorIndex :=CeldaObligatoria.Color;
        if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
          FilasErroneasAux.Add(inttostr(jAux));
       CeldaObligatoria.Error:= true;
     end
     else
     begin
       if (NombreCampo.NombreCampo = CeldaRelacionada) then
       begin
          HojaAux.cells[jaux, iaux].select;
          ExcelAux.Selection.Interior.ColorIndex:= 0;
       end;
     end;
  end;

  //##########CELDA NO OBLIGATORIA DE TIPO STRING REPETIDA
  Procedure TFrmImportacionDatosRH.COblRepetidaStr (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer; Crepeat : TStringList);
  begin
     if (NombreCampo.NombreCampo = CeldaRelacionada) and (HojaAux.cells[jaux, iaux].text = '') then
     begin
        HojaAux.cells[jaux, iaux].select;
        ExcelAux.Selection.Interior.ColorIndex :=CeldaObligatoria.Color;
        if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
          FilasErroneasAux.Add(inttostr(jAux));
       CeldaObligatoria.Error:= true;
     end
     else
     begin
        if (NombreCampo.NombreCampo = CeldaRelacionada) and (Crepeat.IndexOf(HojaAux.cells[jaux, iaux].text) > -1) then
        begin
          HojaAux.cells[jaux, iaux].select;
          ExcelAux.Selection.Interior.ColorIndex :=Celdarepetida.Color;
          if FilasErroneasAux.IndexOf(inttostr(jaux))=-1 then
            FilasErroneasAux.Add(inttostr(jAux));
          Celdarepetida.Error:= true;
        end
        else
        begin
          Crepeat.add(HojaAux.cells[jaux, iaux].text);
          HojaAux.cells[jaux, iaux].select;
          ExcelAux.Selection.Interior.ColorIndex :=0;          
        end;
     end;
  end;

  //##########CELDA NO OBLIGATORIA DE TIPO FLOTANTE
  Procedure TFrmImportacionDatosRH.CObliGatorioFloat (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
  begin
    try
       if (NombreCampo.NombreCampo = CeldaRelacionada) and (strtofloat(Hojaaux.cells[jaux, iaux].text)=0) then
       begin
         Hojaaux.cells[jaux, iaux].select;
         Excelaux.Selection.Interior.ColorIndex :=CeldaObligatoria.Color;
         if FilasErroneasaux.IndexOf(inttostr(jaux))=-1 then
           FilasErroneasaux.Add(inttostr(jaux));
         CeldaObligatoria.Error:= true;
       end
       else
       begin
         if (NombreCampo.NombreCampo = CeldaRelacionada) then
         begin
           Hojaaux.cells[jaux, iaux].select;
           Excelaux.Selection.Interior.ColorIndex:= 0;
         end;
       end;
    except
      Hojaaux.cells[jaux, iaux].select;
      Excelaux.Selection.Interior.ColorIndex :=CeldaValorIncorrecto.Color;
      if FilasErroneasaux.IndexOf(inttostr(jaux))=-1 then
        FilasErroneasaux.Add(inttostr(jaux));
      CeldaValorIncorrecto.Error:= true;
    end;
  end;

  //##########CELDA OBLIGATORIA DE TIPO FECHA
  Procedure TFrmImportacionDatosRH.CObliGatorioDate (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
  var
     DAteAux : TDateTime;
  begin
     try
       if NombreCampo.NombreCampo = CeldaRelacionada  then
       begin
         if Hojaaux.cells[jaux, iaux].text = '' then
         begin
          Hojaaux.cells[jaux, iaux].select;
          Excelaux.Selection.Interior.ColorIndex := CeldaObligatoria.Color;
          if FilasErroneasaux.IndexOf(inttostr(jaux))=-1 then
           FilasErroneasaux.Add(inttostr(jaux));
          CeldaObligatoria.Error:= true;
        end
        else
        begin
           DAteAux := Strtodate(Hojaaux.cells[jaux, iaux].text);
           Hojaaux.cells[jaux, iaux].select;
           Excelaux.Selection.Interior.ColorIndex := 0;
        end;
      end;
     except
        Hojaaux.cells[jaux, iaux].select;
        Excelaux.Selection.Interior.ColorIndex := CeldaValorIncorrecto.Color;
        if FilasErroneasaux.IndexOf(inttostr(jaux))=-1 then
          FilasErroneasaux.Add(inttostr(jaux));
        CeldaValorIncorrecto.Error:= true;
     end;
  end;

  //##########CELDA NO OBLIGATORIA DE TIPO FECHA
  Procedure TFrmImportacionDatosRH.CNoOblDate (NombreCampo: TRelacionNCExcel; CeldaRelacionada: string; HojaAux: Variant; EXcelAux: Variant; FilasErroneasAux: TStringList; iaux: integer; jaux: integer);
  var
     DAteAux : TDateTime;
  begin
     try
       if NombreCampo.NombreCampo = CeldaRelacionada  then
       begin
         if Hojaaux.cells[jaux, iaux].text <> '' then
         begin
           DAteAux := Strtodate(Hojaaux.cells[jaux, iaux].text);
           Hojaaux.cells[jaux, iaux].select;
           Excelaux.Selection.Interior.ColorIndex := 0;
         end
         else
         begin
           Hojaaux.cells[jaux, iaux].select;
           Excelaux.Selection.Interior.ColorIndex := 0;
         end;
       end;
     except
        Hojaaux.cells[jaux, iaux].select;
        Excelaux.Selection.Interior.ColorIndex :=CeldaValorIncorrecto.Color;
        if FilasErroneasaux.IndexOf(inttostr(jaux))=-1 then
          FilasErroneasaux.Add(inttostr(jaux));
        CeldaValorIncorrecto.Error:= true;
     end;
  end;

  Procedure TFrmImportacionDatosRH.CuadroDeErrores (ExcelAux: Variant; HojaAux: Variant; cancolums: integer);
  var
    k : integer;
  begin
    try
       k:=0;

       //Borrar contenido
       Hojaaux.cells[3, cancolums+2].select;
       Hojaaux.cells[3, cancolums+2]:= '';
       Excelaux.Selection.borders.LineStyle := 0;

       Hojaaux.cells[3, cancolums+3].select;
       Hojaaux.cells[3, cancolums+3]:= '';
       Excelaux.Selection.borders.LineStyle := 0;

       Hojaaux.cells[4, cancolums+2].select;
       Hojaaux.cells[4, cancolums+2]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;

       Hojaaux.cells[4, cancolums+3].select;
       Hojaaux.cells[4, cancolums+3]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;

       Hojaaux.cells[5, cancolums+2].select;
       Hojaaux.cells[5, cancolums+2]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;

       Hojaaux.cells[5, cancolums+3].select;
       Hojaaux.cells[5, cancolums+3]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;

       Hojaaux.cells[6, cancolums+2].select;
       Hojaaux.cells[6, cancolums+2]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;

       Hojaaux.cells[6, cancolums+3].select;
       Hojaaux.cells[6, cancolums+3]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;

       Hojaaux.cells[7, cancolums+2].select;
       Hojaaux.cells[7, cancolums+2]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;

       Hojaaux.cells[7, cancolums+3].select;
       Hojaaux.cells[7, cancolums+3]:= '';
       Excelaux.Selection.borders.LineStyle := 0;
       Excelaux.Selection.Interior.ColorIndex:= 0;


       //Crear cuadro de rrores y colores
       Hojaaux.cells[3, cancolums+2].select;
       Hojaaux.cells[3, cancolums+2]:='CODIGO COLORES';
       Excelaux.Selection.ColumnWidth := 30;
       Excelaux.Selection.Font.Bold := True;
       Excelaux.Selection.Font.Size := 12;
       Excelaux.Selection.Font.Name := 'Calibri';
       Excelaux.Selection.borders.LineStyle := 1;

       Hojaaux.cells[3, cancolums+3].select;
       Hojaaux.cells[3, cancolums+3]:='ERROR';
       Excelaux.Selection.ColumnWidth := 30;
       Excelaux.Selection.Font.Bold := True;
       Excelaux.Selection.Font.Size := 12;
       Excelaux.Selection.Font.Name := 'Calibri';
       Excelaux.Selection.borders.LineStyle := 1;

       if CeldaObligatoria.Error then
       begin
         k := k+1;
         Hojaaux.cells[3+k, cancolums+2].select;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.ColumnWidth := 30;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.Font.Color := clWhite;
         Excelaux.Selection.Interior.ColorIndex := CeldaObligatoria.Color;
         Excelaux.Selection.borders.LineStyle := 1;

         Hojaaux.cells[3+k, cancolums+3].select;
         Hojaaux.cells[3+k, cancolums+3] := CeldaObligatoria.TipodeError;
         Excelaux.Selection.ColumnWidth := 100;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.borders.LineStyle := 1;
         Excelaux.Selection.Interior.ColorIndex := 15;
         Excelaux.Selection.Font.Color := clBlack;
       end;

       if CeldaValorIncorrecto.Error then
       begin
         k := k+1;
         Hojaaux.cells[3+k, cancolums+2].select;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.ColumnWidth := 30;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.Font.Color := clWhite;
         Excelaux.Selection.Interior.ColorIndex := CeldaValorIncorrecto.Color;
         Excelaux.Selection.borders.LineStyle := 1;

         Hojaaux.cells[3+k, cancolums+3].select;
         Hojaaux.cells[3+k, cancolums+3] := CeldaValorIncorrecto.TipodeError;
         Excelaux.Selection.ColumnWidth := 100;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.borders.LineStyle := 1;
         Excelaux.Selection.Interior.ColorIndex := 15;
         Excelaux.Selection.Font.Color := clBlack;
       end;

       if CeldaRelacionTabla.Error then
       begin
         k := k+1;
         Hojaaux.cells[3+k, cancolums+2].select;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.ColumnWidth := 30;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.Font.Color := clWhite;
         Excelaux.Selection.Interior.ColorIndex := CeldaRelacionTabla.Color;
         Excelaux.Selection.borders.LineStyle := 1;

         Hojaaux.cells[3+k, cancolums+3].select;
         Hojaaux.cells[3+k, cancolums+3] := CeldaRelacionTabla.TipodeError;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.ColumnWidth := 100;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.borders.LineStyle := 1;
         Excelaux.Selection.Interior.ColorIndex := 15;
         Excelaux.Selection.Font.Color := clBlack;
       end;

       if CeldaRepetida.Error then
       begin
         k := k+1;
         Hojaaux.cells[3+k, cancolums+2].select;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.ColumnWidth := 30;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.Font.Color := clWhite;
         Excelaux.Selection.Interior.ColorIndex := CeldaRepetida.Color;
         Excelaux.Selection.borders.LineStyle := 1;

         Hojaaux.cells[3+k, cancolums+3].select;
         Hojaaux.cells[3+k, cancolums+3] := CeldaRepetida.TipodeError;
         Excelaux.Selection.WrapText := True;
         Excelaux.Selection.ColumnWidth := 100;
         Excelaux.Selection.RowHeight := 50;
         Excelaux.Selection.VerticalAlignment := xlHAlignCenter;
         Excelaux.Selection.HorizontalAlignment := xlHAlignCenter;
         Excelaux.Selection.Font.Bold := True;
         Excelaux.Selection.MergeCells := True;
         Excelaux.Selection.HorizontalAlignment := xlCenter;
         Excelaux.Selection.VerticalAlignment := xlCenter;
         Excelaux.Selection.Font.Size := 12;
         Excelaux.Selection.Font.Name := 'Calibri';
         Excelaux.Selection.borders.LineStyle := 1;
         Excelaux.Selection.Interior.ColorIndex := 15;
         Excelaux.Selection.Font.Color := clBlack;         
       end;
    except
      raise;
    end;
  end;

function TFrmImportacionDatosRH.IsFileInUse(fName: string): boolean;
begin
  try
    with TFileStream.Create(fname, fmOpenRead or fmShareExclusive) do free;
      Result := False;
  except
    Result := True;
  end;
end;  


end.
