unit frm_Propiedades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxInspector, NxPropertyItemClasses, NxPropertyItems,
  StdCtrls, ExtCtrls;

type
  TFrmPropiedades = class(TForm)
    NextInspector1: TNextInspector;
    NxToolbarItem1: TNxToolbarItem;
    NxSpinItem1: TNxSpinItem;
    NxCheckBoxItem1: TNxCheckBoxItem;
    NxCheckBoxItem2: TNxCheckBoxItem;
    NxCheckBoxItem3: TNxCheckBoxItem;
    NxToolbarItem2: TNxToolbarItem;
    NxComboBoxItem1: TNxComboBoxItem;
    NxToolbarItem3: TNxToolbarItem;
    NxComboBoxItem2: TNxComboBoxItem;
    NxColorItem1: TNxColorItem;
    NxSpinItem2: TNxSpinItem;
    NxComboBoxItem4: TNxComboBoxItem;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    NxColorItem2: TNxColorItem;
    NxColorItem3: TNxColorItem;
    NxDateItem1: TNxDateItem;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
    pTipoGrafica: Byte;
    pHorizontal, pVertical: Boolean;
    pColorFondo, pColorActividad, pColorPaquete: Integer;
    pDegradado: Byte;
    pInicioSemana: Byte;
    pSelCal: Byte;
    pEspecifico: Boolean;
    pMargenFecha: Integer;
    pFormato: Array [1..14] Of String;
    cSalida: Boolean;
  end;

var
  FrmPropiedades: TFrmPropiedades;

implementation

{$R *.dfm}

procedure TFrmPropiedades.WMNCHitTest(var Message: TWMNCHitTest);
begin
  inherited;

  if ((GetAsyncKeyState(VK_RBUTTON) and $F000) = 0) and (Message.Result = htClient) then
    Message.Result := htCaption;
end;

procedure TFrmPropiedades.Button1Click(Sender: TObject);
var
  x: Integer;
begin
  // Devolver los valores modificados
  pTipoGrafica := (Self.NextInspector1.Items.ItemByName['NxComboboxItem1'] as TNxComboboxItem).ItemIndex;
  pHorizontal := (Self.NextInspector1.Items.ItemByName['NxCheckboxItem2'] as TNxCheckboxItem).Value = 'true';
  pVertical := (Self.NextInspector1.Items.ItemByName['NxCheckboxItem3'] as TNxCheckboxItem).Value = 'true';
  pColorFondo := (Self.NextInspector1.Items.ItemByName['NxColorItem1'] as TNxColoritem).AsInteger;
  pColorActividad := (Self.NextInspector1.Items.ItemByName['NxColorItem2'] as TNxColorItem).AsInteger;
  pColorPaquete := (Self.NextInspector1.Items.ItemByName['NxColorItem3'] as TNxColorItem).AsInteger;
  pDegradado := Trunc(StrToInt((Self.NextInspector1.Items.ItemByName['NxSpinItem1'] as TNxSpinItem).Value) * 2.55);
  pEspecifico := (Self.NextInspector1.Items.ItemByName['NxCheckBoxItem1'] as TNxCheckBoxItem).AsBoolean;
  pMargenFecha := (Self.NextInspector1.Items.ItemByName['NxSpinItem2'] as TNxSpinItem).AsInteger;
  pInicioSemana := (Self.NextInspector1.Items.ItemByName['NxComboboxItem2'] as TNxComboBoxItem).ItemIndex + 1;
  pSelCal := (Self.NextInspector1.Items.ItemByName['NxComboBoxItem4'] as TNxComboboxItem).ItemIndex;


  cSalida := True;
  Close;
end;

procedure TFrmPropiedades.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPropiedades.FormCreate(Sender: TObject);
begin
  cSalida := False;
end;

procedure TFrmPropiedades.FormShow(Sender: TObject);
Var
  X: Byte;
begin
  (Self.NextInspector1.Items.ItemByName['NxComboboxItem1'] as TNxComboboxItem).ItemIndex := pTipoGrafica;
  if pHorizontal then
    (Self.NextInspector1.Items.ItemByName['NxCheckboxItem2'] as TNxCheckboxItem).Value := 'true'
  else
    (Self.NextInspector1.Items.ItemByName['NxCheckboxItem2'] as TNxCheckboxItem).Value := 'false';
  if pVertical then
    (Self.NextInspector1.Items.ItemByName['NxCheckboxItem3'] as TNxCheckboxItem).Value := 'true'
  else
    (Self.NextInspector1.Items.ItemByName['NxCheckboxItem3'] as TNxCheckboxItem).Value := 'false';
  (Self.NextInspector1.Items.ItemByName['NxColorItem1'] as TNxColoritem).AsInteger := pColorFondo;
  (Self.NextInspector1.Items.ItemByName['NxColorItem2'] as TNxColorItem).AsInteger := pColorActividad;
  (Self.NextInspector1.Items.ItemByName['NxColorItem3'] as TNxColorItem).AsInteger := pColorPaquete;
  (Self.NextInspector1.Items.ItemByName['NxSpinItem1'] as TNxSpinItem).Value := IntToStr(Round(pDegradado / 2.55));
  (Self.NextInspector1.Items.ItemByName['NxComboBoxItem4'] as TNxComboboxItem).Clear;
  (Self.NextInspector1.Items.ItemByName['NxComboboxItem2'] as TNxComboBoxItem).ItemIndex := pInicioSemana - 1;
  (Self.NextInspector1.Items.ItemByName['NxCheckBoxItem1'] as TNxCheckBoxItem).AsBoolean := pEspecifico;
  (Self.NextInspector1.Items.ItemByName['NxSpinItem2'] as TNxSpinItem).AsInteger := pMargenFecha;
  for x := 1 to 14 do
    (Self.NextInspector1.Items.ItemByName['NxComboBoxItem4'] as TNxComboboxItem).Lines.Add(pFormato[x]);
  (Self.NextInspector1.Items.ItemByName['NxComboBoxItem4'] as TNxComboboxItem).ItemIndex := pSelCal;
end;

end.
