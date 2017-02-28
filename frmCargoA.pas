unit frmCargoA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ZAbstractDataset, ZDataset, DB,
  ZAbstractRODataset, global, Buttons, UDbGrid, StdCtrls, ExtCtrls, frmEgresos, frmGastos,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  Tfrm_cargoa = class(TForm)
    ds_buscaobjeto: TDataSource;
    BuscaProveedor: TZReadOnlyQuery;
    BuscaObjeto: TZReadOnlyQuery;
    Panel1: TPanel;
    pgGasto: TPageControl;                                                 
    Proveedor: TTabSheet;
    Empleados: TTabSheet;
    Departamental: TTabSheet;
    Apoyos: TTabSheet;
    BuscaApoyos: TZReadOnlyQuery;
    BuscaEmpledos: TZReadOnlyQuery;
    GridReferencia: TcxGrid;
    GridReferenciaView: TcxGridDBTableView;
    GridReferenciaLevel1: TcxGridLevel;
    procedure pgGastoChange(Sender: TObject);
    procedure pgGastoChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscaProveedorAfterScroll(DataSet: TDataSet);
    procedure BuscaObjetoAfterScroll(DataSet: TDataSet);
    procedure GridReferenciaDblClick(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure GridReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaEmpledosAfterScroll(DataSet: TDataSet);
    procedure BuscaApoyosAfterScroll(DataSet: TDataSet);
    procedure GridReferenciaViewDblClick(Sender: TObject);
    procedure GridReferenciaViewKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cargoa: Tfrm_cargoa;
  //utgrid:ticdbgrid;
implementation

uses frmReferenciarCheque, frmBuscar, frmReferenciarChequeiva, frm_connection;

{$R *.dfm}

procedure Tfrm_cargoa.btnBuscaClick(Sender: TObject);
begin
  iIdUsuarioBusqueda := -1 ;
  Application.CreateForm(Tfrm_buscar, frm_buscar);
  frm_buscar.ShowModal ;
  BuscaObjeto.Locate('iIdUsuario', iIdUsuarioBusqueda, [loCaseInsensitive]) ;
end;

procedure Tfrm_cargoa.BuscaApoyosAfterScroll(DataSet: TDataSet);
begin
   if BuscaApoyos.RecordCount > 0 then
      begin
        if pgGasto.ActivePageIndex = 3 then
                begin
                 If connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then
                   begin
                     frm_ReferenciarCheque.zQPEgresos.FieldValues['sIdProveedor'] := BuscaApoyos.FieldByName('iIdUsuario').AsString ;
                     frm_ReferenciarCheque.zQPEgresos.FieldValues['sRazonSocial'] := BuscaApoyos.FieldValues[ 'sNombreCompleto' ] ;
                   end;
                 If connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' Then
                   begin
                     frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sIdProveedor'] := BuscaApoyos.FieldByName('iIdUsuario').AsString ;
                     frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sRazonSocial'] := BuscaApoyos.FieldValues[ 'sNombreCompleto' ] ;
                   end;
                end;
        end;
end;

procedure Tfrm_cargoa.BuscaEmpledosAfterScroll(DataSet: TDataSet);
begin
 if BuscaEmpledos.RecordCount > 0 then
    begin
        if pgGasto.ActivePageIndex = 1 then
        begin

          If connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then
           begin
             frm_ReferenciarCheque.zQPEgresos.FieldValues['sIdProveedor'] := BuscaEmpledos.FieldValues[ 'sIdEmpleado' ] ;
             frm_ReferenciarCheque.zQPEgresos.FieldValues['sRazonSocial'] := BuscaEmpledos.FieldValues[ 'sNombreCompleto' ];
           end;

           If connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' Then
           begin
             frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sIdProveedor'] := BuscaEmpledos.FieldValues[ 'sIdEmpleado' ] ;
             frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sRazonSocial'] := BuscaEmpledos.FieldValues[ 'sNombreCompleto' ];
           end;


        end;
    end;
end;

procedure Tfrm_cargoa.BuscaObjetoAfterScroll(DataSet: TDataSet);
begin
    if BuscaObjeto.RecordCount > 0 then
    begin
//        if pgGasto.ActivePageIndex = 1 then
//        begin
//
//          If connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then
//           begin
//             frm_ReferenciarCheque.zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldValues[ 'sIdEmpleado' ] ;
//             frm_ReferenciarCheque.zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sNombreCompleto' ] ;
//           end;
//
//           If connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' Then
//           begin
//             frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldValues[ 'sIdEmpleado' ] ;
//             frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sNombreCompleto' ] ;
//           end;
//
//
//        end
//        Else
            if pgGasto.ActivePageIndex = 2 then
            begin

               If connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then
                begin
                  frm_ReferenciarCheque.zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldValues[ 'sIdArea' ] ;
                  frm_ReferenciarCheque.zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sDescripcion' ] ;
                end;

                If connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' Then
                  begin
                   frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldValues[ 'sIdArea' ] ;
                   frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sDescripcion' ] ;
                  end;


            end;
//            else
//                if pgGasto.ActivePageIndex = 3 then
//                begin
//                 If connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then
//                   begin
//                     frm_ReferenciarCheque.zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldByName('iIdUsuario').AsString ;
//                     frm_ReferenciarCheque.zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sNombreCompleto' ] ;
//                   end;
//                 If connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' Then
//                   begin
//                     frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sIdProveedor'] := BuscaObjeto.FieldByName('iIdUsuario').AsString ;
//                     frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sRazonSocial'] := BuscaObjeto.FieldValues[ 'sNombreCompleto' ] ;
//                   end;
//
//                end
    end;
end;

procedure Tfrm_cargoa.BuscaProveedorAfterScroll(DataSet: TDataSet);
begin
    if BuscaProveedor.RecordCount > 0 then
        if pgGasto.ActivePageIndex = 0 then
          begin
             If connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then
              begin
                frm_ReferenciarCheque.zQPEgresos.FieldValues['sIdProveedor'] := BuscaProveedor.FieldValues[ 'sIdProveedor' ] ;
                frm_ReferenciarCheque.zQPEgresos.FieldValues['sRazonSocial'] := BuscaProveedor.FieldValues[ 'sRazonSocial' ] ;
              end ;
             If connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' Then
               begin
                 frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sIdProveedor'] := BuscaProveedor.FieldValues[ 'sIdProveedor' ] ;
                 frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sRazonSocial'] := BuscaProveedor.FieldValues[ 'sRazonSocial' ] ;
               end;
          end;
end;

procedure Tfrm_cargoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//    pgGasto.ActivePage.Highlighted := False ;
//    if pgGasto.ActivePageIndex = 0 then
//    begin
//        frm_ReferenciarCheque.GridConceptos.Columns[1].ReadOnly := False ;
//        frm_ReferenciarCheque.GridConceptos.Columns[2].ReadOnly := False ;
//        frm_ReferenciarCheque.GridConceptos.Columns[3].ReadOnly := False ;
//        frm_ReferenciarCheque.GridConceptos.Columns[4].ReadOnly := False ;
//    End
//    Else
//        If pgGasto.ActivePageIndex = 1 then
//        Begin
//            frm_ReferenciarCheque.GridConceptos.Columns[1].ReadOnly := False ;
//            frm_ReferenciarCheque.GridConceptos.Columns[2].ReadOnly := False ;
//            frm_ReferenciarCheque.GridConceptos.Columns[3].ReadOnly := False ;
//            frm_ReferenciarCheque.GridConceptos.Columns[4].ReadOnly := False ;
//        End
//        Else
//            If pgGasto.ActivePageIndex = 2 then
//            begin
//                frm_ReferenciarCheque.GridConceptos.Columns[1].ReadOnly := False ;
//                frm_ReferenciarCheque.GridConceptos.Columns[2].ReadOnly := False ;
//                frm_ReferenciarCheque.GridConceptos.Columns[3].ReadOnly := False ;
//                frm_ReferenciarCheque.GridConceptos.Columns[4].ReadOnly := False ;
//            End
//            Else
//            begin
//                frm_ReferenciarCheque.GridConceptos.Columns[1].ReadOnly := False ;
//                frm_ReferenciarCheque.GridConceptos.Columns[2].ReadOnly := False ;
//                frm_ReferenciarCheque.GridConceptos.Columns[3].ReadOnly := False ;
//                frm_ReferenciarCheque.GridConceptos.Columns[4].ReadOnly := False ;
//            End
//   utgrid.Destroy;
end;

procedure Tfrm_cargoa.FormShow(Sender: TObject);
begin
    //UtGrid:=TicdbGrid.create(GridReferencia);

    pgGasto.ActivePageIndex := 0 ;
    pgGasto.ActivePage.Highlighted := True ;
    GridReferencia.Parent := pgGasto.ActivePage ;
    GridReferencia.Align := alClient ;

    BuscaProveedor.Active := False ;
    ds_BuscaObjeto.DataSet := BuscaProveedor ;
    BuscaProveedor.SQL.Clear ;
    if connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' then
         frm_ReferenciarCheque.GridConceptos.Columns[1].ReadOnly := False ;
    if connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' then
         frm_ReferenciarChequeiva.GridConceptos.Columns[1].ReadOnly := False ;
    if sParamProveedor <> '' then
        begin
            //BuscaProveedor.SQL.Add('select sIdProveedor, sRazonSocial from proveedores Where sIdCompaniaConf =:Contrato order by sRazon ASC' ) ;
            //BuscaProveedor.SQL.Add('select sIdProveedor, sRazonSocial from proveedores Where sIdCompaniaConf =:Contrato and sIdProveedor = :sIdProveedor order by sRazon ASC' ) ;
            BuscaProveedor.SQL.Add('select sIdProveedor, sRazonSocial from proveedores order by sRazon ASC' ) ;
            //BuscaProveedor.Params.ParamByName('Contrato').DataType  := ftString ;
            //BuscaProveedor.Params.ParamByName('Contrato').Value     := Global_Contrato ;

//            if (Assigned(frm_Egresos)) and (frm_Egresos.abierto = True) then
//            begin
//              BuscaProveedor.Params.ParamByName('sIdProveedor').AsString := frm_Egresos.zQEgresos.FieldByName('sIdProveedor').AsString ;
//            end
//            else if (Assigned(frm_Gastos) and (frm_Gastos.abierto = True)) then
//            begin
//              BuscaProveedor.Params.ParamByName('sIdProveedor').AsString := frm_Gastos.zQEgresos.FieldByName('sIdProveedor').AsString ;
//            end;
                 


            BuscaProveedor.Open ;
            if (BuscaProveedor.RecordCount > 0)  Then
             begin
              GridReferenciaView.ClearItems ;
              GridReferenciaView.CreateColumn ;
              GridReferenciaView.Columns[0].DataBinding.FieldName := 'sIdProveedor' ;
              GridReferenciaView.Columns[0].Width := 100 ;
              GridReferenciaView.Columns[0].Caption := 'PROVEEDOR' ;
              GridReferenciaView.CreateColumn ;
              GridReferenciaView.Columns[1].DataBinding.FieldName := 'sRazonSocial' ;
              GridReferenciaView.Columns[1].Width := 380 ;
              GridReferenciaView.Columns[1].Caption := 'RAZON SOCIAL' ;
            end
        else
            begin
              BuscaProveedor.Active := False ;
              BuscaProveedor.SQL.Clear ;
              BuscaProveedor.SQL.Add('select t.* from con_tesoreriaegresos t ' +
                                    'inner join con_cuentasbancarias c on (t.sIdNumeroCuenta = c.sIdNumeroCuenta) ' +
                                    'where sIdCompaniaConf = :contrato ' +
                                    'And sTipoMovimiento = "GASTOS" ');

//              BuscaProveedor.SQL.Add('select t.* from con_tesoreriaegresos t ' +
//                                    'inner join con_cuentasbancarias c on (t.sIdNumeroCuenta = c.sIdNumeroCuenta) ' +
//                                    'where sIdCompaniaConf = :contrato ' +
//                                    'And sTipoMovimiento = "GASTOS" ' +
//                                    'and sIdProveedor = :sIdProveedor') ;
              BuscaProveedor.Params.ParamByName('Contrato').DataType  := ftString ;
              BuscaProveedor.Params.ParamByName('Contrato').Value     := Global_Contrato ;
//              if (Assigned(frm_Egresos)) and (frm_Egresos.abierto = True) then
//              begin
//                BuscaProveedor.Params.ParamByName('sIdProveedor').AsString := frm_Egresos.zQEgresos.FieldByName('sIdProveedor').AsString ;
//              end
//              else if (Assigned(frm_Gastos) and (frm_Gastos.abierto = True)) then
//              begin
//                BuscaProveedor.Params.ParamByName('sIdProveedor').AsString := frm_Gastos.zQEgresos.FieldByName('sIdProveedor').AsString ;
//              end;
              
              BuscaProveedor.Open ;
              GridReferenciaView.ClearItems ;
              GridReferenciaView.CreateColumn ;
              GridReferenciaView.Columns[0].DataBinding.FieldName := 'sIdProveedor' ;
              GridReferenciaView.Columns[0].Width := 100 ;
              GridReferenciaView.Columns[0].Caption := 'ID' ;
              GridReferenciaView.CreateColumn ;
              GridReferenciaView.Columns[1].DataBinding.FieldName := 'sRazonSocial' ;
              GridReferenciaView.Columns[1].Width := 380 ;
              GridReferenciaView.Columns[1].Caption := 'EMPLEADO' ;
           end;
      end  ;

    if connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' then
       frm_ReferenciarCheque.zQPEgresos.FieldValues['sTipoEgreso']     := 'Proveedor' ;
    if connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' then
       frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sTipoEgreso']  := 'Proveedor' ;

//    BuscaProveedor.Open ;
end;

procedure Tfrm_cargoa.GridReferenciaDblClick(Sender: TObject);
begin
    close
end;

procedure Tfrm_cargoa.GridReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        close
end;

procedure Tfrm_cargoa.GridReferenciaViewDblClick(Sender: TObject);
begin
  close
end;

procedure Tfrm_cargoa.GridReferenciaViewKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
        close
end;

procedure Tfrm_cargoa.pgGastoChange(Sender: TObject);
begin
    GridReferencia.Parent := pgGasto.ActivePage ;
    GridReferencia.Align := alClient ;

    pgGasto.ActivePage.Highlighted := True ;

    if pgGasto.ActivePageIndex = 0 then
     begin
       if connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' then
          frm_ReferenciarCheque.zQPEgresos.FieldValues['sTipoEgreso'] := 'Proveedor' ;

       if connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' then
          frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sTipoEgreso'] := 'Proveedor' ;

        BuscaProveedor.Active := False ;
        ds_BuscaObjeto.DataSet := BuscaProveedor ;
        BuscaProveedor.SQL.Clear ;

      //  if sParamProveedor <> connection.configuracion.fieldvalues['sTesoreria'] then7
      if sParamProveedor <> '' then
        begin
            //BuscaProveedor.SQL.Add('select sIdProveedor, sRazonSocial from proveedores Where sIdCompaniaConf = :Contrato order by sRazon ASC' ) ;
            //BuscaProveedor.SQL.Add('select sIdProveedor, sRazonSocial from proveedores Where sIdCompaniaConf =:Contrato and sIdProveedor = :sIdProveedor order by sRazon ASC' ) ;

            BuscaProveedor.SQL.Add('select sIdProveedor, sRazonSocial from proveedores order by sRazon ASC' ) ;

            //BuscaProveedor.Params.ParamByName('Contrato').DataType  := ftString ;
            //BuscaProveedor.Params.ParamByName('Contrato').Value     := Global_Contrato ;

//            if (Assigned(frm_Egresos)) and (frm_Egresos.abierto = True) then
//            begin
//              BuscaProveedor.Params.ParamByName('sIdProveedor').AsString := frm_Egresos.zQEgresos.FieldByName('sIdProveedor').AsString ;
//            end
//            else if (Assigned(frm_Gastos) and (frm_Gastos.abierto = True)) then
//            begin
//              BuscaProveedor.Params.ParamByName('sIdProveedor').AsString := frm_Gastos.zQEgresos.FieldByName('sIdProveedor').AsString ;
//            end;
            
            BuscaProveedor.Open ;
            if BuscaProveedor.RecordCount > 0 Then
              begin
//                BuscaProveedor.SQL.Add('select sIdProveedor, sRazonSocial from proveedores order by sRazonSocial' ) ;
//                BuscaProveedor.Open ;
                GridReferenciaView.ClearItems ;
                GridReferenciaView.CreateColumn ;
                GridReferenciaView.Columns[0].DataBinding.FieldName := 'sIdProveedor' ;
                GridReferenciaView.Columns[0].Width := 100 ;
                GridReferenciaView.Columns[0].Caption := 'PROVEEDOR' ;
                GridReferenciaView.CreateColumn ;
                GridReferenciaView.Columns[1].DataBinding.FieldName := 'sRazonSocial' ;
                GridReferenciaView.Columns[1].Width := 380 ;
                GridReferenciaView.Columns[1].Caption := 'RAZON SOCIAL' ;
              end;
        end
        else
          begin
            GridReferenciaView.ClearItems ;
            GridReferenciaView.CreateColumn ;
            GridReferenciaView.Columns[0].DataBinding.FieldName := 'sIdProveedor' ;
            GridReferenciaView.Columns[0].Width := 100 ;
            GridReferenciaView.Columns[0].Caption := 'PROVEEDOR' ;
            GridReferenciaView.CreateColumn ;
            GridReferenciaView.Columns[1].DataBinding.FieldName := 'sRazonSocial' ;
            GridReferenciaView.Columns[1].Width := 380 ;
            GridReferenciaView.Columns[1].Caption := 'RAZON SOCIAL' ;
           end;

    End





    Else
        if pgGasto.ActivePageIndex = 1 then
        Begin
             if connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' then
                frm_ReferenciarCheque.zQPEgresos.FieldValues['sTipoEgreso'] := 'Empleados' ;
             if connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' then
                frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sTipoEgreso'] := 'Empleados' ;

            BuscaEmpledos.Active := False ;
            ds_BuscaObjeto.DataSet := BuscaEmpledos ;
            BuscaEmpledos.SQL.Clear ;
            //BuscaEmpledos.SQL.Add('select e.sIdEmpleado,concat(e.sNombreCompleto," ", e.sApellidoPaterno," ", e.sApellidoMaterno) as sNombreCompleto, e.sDomicilio, e.sPuesto, a.sDescripcion ' +
            //                    'from empleados e inner join con_areas a on (a.sIdArea = e.sIdArea) order by e.sNombreCompleto' ) ;
            BuscaEmpledos.SQL.Add('select e.sIdEmpleado, concat(e.sNombreCompleto," ", e.sApellidoPaterno," ", e.sApellidoMaterno) as sNombreCompleto, e.sDomicilio, e.sPuesto ' +
                                'from empleados e Order by e.sNombreCompleto' ) ;
            //BuscaEmpledos.Params.ParamByName('idorganizacion').AsInteger := connection.contrato.fieldbyname('idorganizacion').AsInteger;

            BuscaEmpledos.Open ;

            GridReferenciaView.ClearItems ;
            GridReferenciaView.CreateColumn ;
            GridReferenciaView.Columns[0].DataBinding.FieldName := 'sNombreCompleto' ;
            GridReferenciaView.Columns[0].Width := 200 ;
            GridReferenciaView.Columns[0].Caption := 'NOMBRE COMPLETO' ;
            GridReferenciaView.CreateColumn ;
            GridReferenciaView.Columns[1].DataBinding.FieldName := 'sDomicilio' ;
            GridReferenciaView.Columns[1].Width := 250 ;
            GridReferenciaView.Columns[1].Caption := 'DOMICILIO' ;
            GridReferenciaView.CreateColumn ;
            GridReferenciaView.Columns[2].DataBinding.FieldName := 'sPuesto' ;
            GridReferenciaView.Columns[2].Width := 200 ;
            GridReferenciaView.Columns[2].Caption := 'PUESTO' ;
            GridReferenciaView.CreateColumn ;
            GridReferenciaView.Columns[3].DataBinding.FieldName := 'Descripcion' ;
            GridReferenciaView.Columns[3].Width := 200 ;
            GridReferenciaView.Columns[3].Caption := 'DEPARTAMENTO' ;

        End
        Else
            if pgGasto.ActivePageIndex = 2 then
            begin
               if connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' then
                   frm_ReferenciarCheque.zQPEgresos.FieldValues['sTipoEgreso'] := 'Departamental' ;
               if connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' then
                   frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sTipoEgreso'] := 'Departamental' ;

                BuscaObjeto.Active := False ;
                ds_BuscaObjeto.DataSet := BuscaObjeto ;
                BuscaObjeto.SQL.Clear ;
                BuscaObjeto.SQL.Add('select sIdArea, sDescripcion from con_areas order by sDescripcion' ) ;
                BuscaObjeto.Open ;
                BuscaObjeto.Locate('sIdArea', connection.ConfiguracionCont.fieldvalues['sTesoreria'], [loCaseInsensitive]) ;

                GridReferenciaView.ClearItems ;
                GridReferenciaView.CreateColumn ;
                GridReferenciaView.Columns[0].DataBinding.FieldName := 'sIdArea' ;
                GridReferenciaView.Columns[0].Width := 150 ;
                GridReferenciaView.Columns[0].Caption := 'ID' ;
                GridReferenciaView.CreateColumn ;
                GridReferenciaView.Columns[1].DataBinding.FieldName := 'sDescripcion' ;
                GridReferenciaView.Columns[1].Width := 400 ;
                GridReferenciaView.Columns[1].Caption := 'AREA/DEPTO' ;

           End
           Else
           begin
               if connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' then
                  frm_ReferenciarCheque.zQPEgresos.FieldValues['sTipoEgreso'] := 'Apoyos' ;
               if connection.ConfiguracionCont.FieldValues['eIva'] = 'Iva' then
                  frm_ReferenciarChequeiva.zQPEgresos.FieldValues['sTipoEgreso'] := 'Apoyos' ;


                BuscaApoyos.Active := False ;
                ds_BuscaObjeto.DataSet := BuscaApoyos ;
                BuscaApoyos.SQL.Clear ;
                BuscaApoyos.SQL.Add('select iIdUsuario, sNombreCompleto, sDomicilio  ' +
                                    'from con_catalogodeusuarios Order By sNombreCompleto' ) ;
                BuscaApoyos.Open ;
                GridReferenciaView.ClearItems ;
                GridReferenciaView.CreateColumn ;
                GridReferenciaView.Columns[0].DataBinding.FieldName := 'iIdUsuario' ;
                GridReferenciaView.Columns[0].Width := 150 ;
                GridReferenciaView.Columns[0].Caption := 'USUARIO' ;
                GridReferenciaView.CreateColumn ;
                GridReferenciaView.Columns[1].DataBinding.FieldName := 'sNombreCompleto' ;
                GridReferenciaView.Columns[1].Width := 400 ;
                GridReferenciaView.Columns[1].Caption := 'NOMBRE' ;
                GridReferenciaView.CreateColumn ;
                GridReferenciaView.Columns[2].DataBinding.FieldName := 'sDomicilio' ;
                GridReferenciaView.Columns[2].Width := 400 ;
                GridReferenciaView.Columns[2].Caption := 'DOMICILIO' ;
           End
end;

procedure Tfrm_cargoa.pgGastoChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    pgGasto.ActivePage.Highlighted := False
end;

end.
