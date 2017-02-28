unit Frm_FiltroIsometricos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, AdvOfficeButtons, NxCollection,
  Mask, AdvSpin, AdvGroupBox,UFunctionsGHH;

type
  TFrmFiltroIsometricos = class(TForm)
    AdvGroupBox1: TAdvGroupBox;
    JcmbTipo: TJvComboBox;
    Label1: TLabel;
    Label2: TLabel;
    SenPaquetes: TAdvSpinEdit;
    AdvGroupBox2: TAdvGroupBox;
    NxBtnAceptar: TNxButton;
    NxBtnCancelar: TNxButton;
    cmbVfiltro2: TJvComboBox;
    CmbFiltro2: TJvComboBox;
    RdBtnO: TAdvOfficeRadioButton;
    RdBtnY: TAdvOfficeRadioButton;
    CmbFiltro1: TJvComboBox;
    cmbVfiltro1: TJvComboBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Function Valida:boolean;
  public
    { Public declarations }
  end;

var
  FrmFiltroIsometricos: TFrmFiltroIsometricos;
  Filtro1,Filtro2:TeFilter;
  vFiltro1,VFiltro2:real;
implementation



{$R *.dfm}

Function TFrmFiltroIsometricos.Valida:boolean;
var
  cadMensaje:string;
begin
  result:=true;
  Filtro1:=tefilter(cmbFiltro1.ItemIndex);
  Filtro2:=tefilter(cmbFiltro2.ItemIndex);
  cadMensaje:='';
  if (cmbfiltro1.itemindex<>0) then
  begin
    try
      Vfiltro1:=strtofloat(cmbVfiltro1.Text);
    except
      cadMensaje:='El Filtro 1 debe tener un valor Numerico. ';
      cmbVfiltro1.SetFocus;
    end;
  end;

  if cmbfiltro2.itemindex<>0 then
  begin
    try
      Vfiltro2:=strtofloat(cmbVfiltro2.Text);
    except
      cadMensaje:=cadMensaje + 'El Filtro 2 debe tener un valor Numerico.';
      cmbVfiltro2.SetFocus;
    end;
  end;

  if cadMensaje<>'' then
  begin
    messagedlg(cadMensaje,mtwarning,[mbok],0);
    Result:=false;
  end;

end;

procedure TFrmFiltroIsometricos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if modalResult=mrok then
    canclose:=Valida;
end;

end.
