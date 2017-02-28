unit frm_AsignarFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, global, Controls, Forms,
  Dialogs, ComCtrls, ZConnection, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ZAbstractRODataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, Buttons;

type
  TfrmAsignarFactura = class(TForm)
    tvCtasBancarias: TTreeView;
    dbgGrid1DBTableView1: TcxGridDBTableView;
    dbgGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    qryfacturaspend: TZReadOnlyQuery;
    dsfactpend: TDataSource;
    Grid_Factura: TcxGridDBColumn;
    Grid_Cliente: TcxGridDBColumn;
    Grid_Status: TcxGridDBColumn;
    Grid_Cuenta: TcxGridDBColumn;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    Grid_Nombrecuenta: TcxGridDBColumn;
    Grid__fecha: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDenegarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmAsignarFactura: TfrmAsignarFactura;
   MyTreeNode2: TTreeNode;

implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmAsignarFactura.btnAsignaClick(Sender: TObject);
begin
if tvCtasBancarias.Selected.Text <>'Listado de Ctas Bancarias :' then
 begin
  with connection.zCommand do
   begin
      Active := False ;
      SQL.Clear    ;
      sql.Add('Update con_tesoreriaegresos te ' +
              'Inner join con_cuentasbancarias c On (c.sIdNumeroCuenta=te.sIdNumeroCuenta) ' +
              'SET te.sIdNumeroCuenta =:CuentaN ' +
              'Where c.`sIdCompaniaConf` =:Empresa and  te.sIdNumeroCuenta =:CuentaA ' +
              'and te.iFolio=:Folio and sIdCompania =:Comp ' );
      Params.ParamByName('CuentaN').Value := tvCtasBancarias.Selected.Text  ;
      Params.ParamByName('CuentaA').Value := qryfacturaspend.FieldValues['sIdNumeroCuenta'] ;
      Params.ParamByName('Empresa').Value := global_contrato  ;
      Params.ParamByName('Folio').Value   := qryfacturaspend.FieldValues['iFolio'];
      Params.ParamByName('Comp').Value   := qryfacturaspend.FieldValues['sIdCompania'] ;

      ExecSQL ;
      MessageDlg('Registro Actualizado',mtInformation, [mbOK],0) ;
   end ;
  qryfacturaspend.Refresh ;
 end;
end;

procedure TfrmAsignarFactura.btnDenegarClick(Sender: TObject);
begin
  with connection.zCommand do
   begin
      Active := False ;
      SQL.Clear    ;
      sql.Add('Update con_tesoreriaegresos te ' +
              'Inner join con_cuentasbancarias c On (c.sIdNumeroCuenta=te.sIdNumeroCuenta) ' +
              'SET te.sIdNumeroCuenta =:CuentaN ' +
              'Where c.`sIdCompaniaConf` =:Empresa and  te.sIdNumeroCuenta =:CuentaA ' +
              'and te.iFolio=:Folio and sIdCompania =:Comp ' );
      Params.ParamByName('CuentaN').Value := 'SIN CUENTA'  ;
      Params.ParamByName('CuentaA').Value := qryfacturaspend.FieldValues['sIdNumeroCuenta'] ;
      Params.ParamByName('Empresa').Value := global_contrato  ;
      Params.ParamByName('Folio').Value   := qryfacturaspend.FieldValues['iFolio'];
      Params.ParamByName('Comp').Value   := qryfacturaspend.FieldValues['sIdCompania'] ;

      ExecSQL ;
      MessageDlg('Registro Actualizado',mtInformation, [mbOK],0) ;
   end ;
  qryfacturaspend.Refresh ;
end;

procedure TfrmAsignarFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmAsignarFactura.FormShow(Sender: TObject);
var

  QryCtasBancarias : tzReadOnlyQuery ;
begin

  QryCtasBancarias := tzReadOnlyQuery.Create(Self) ;
  QryCtasBancarias.Connection := Connection.zConnection ;

  qryFacturaspend.Active := False ;
  qryfacturaspend.Params.ParamByName('Empresa').DataType := ftString ;
  qryfacturaspend.Params.ParamByName('Empresa').Value := Global_Contrato ;
  qryfacturaspend.Open ;

  QryCtasBancarias.Active := False ;
  QryCtasBancarias.SQL.Clear ;
  QryCtasBancarias.SQL.Add('select sIdNumeroCuenta, sNombreCuenta from con_cuentasbancarias  where sIdCompaniaconf =:Empresa Order by sNombreCuenta ') ;
  QryCtasBancarias.Params.ParamByName('Empresa').Value := Global_Contrato ;
  QryCtasBancarias.Open ;
  with tvCtasBancarias.Items do
  begin
    Clear;
    MyTreeNode2 := Add(nil, 'Listado de Ctas Bancarias :' + ''  );
    While NOT QryCtasBancarias.Eof Do
    Begin
         AddChild(MyTreeNode2, QryCtasBancarias.FieldValues['sIdNumeroCuenta']);
         QryCtasBancarias.Next
     End
  End ;
  QryCtasBancarias.Destroy ;
  tvCtasBancarias.SetFocus ;
end;

end.
