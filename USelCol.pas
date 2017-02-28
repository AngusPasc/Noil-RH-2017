unit USelCol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, treelist, JvExForms, JvClipboardViewer, StdCtrls,
  JvExStdCtrls, JvListBox, NxCollection, AdvPanel, ExtCtrls, AdvGlowButton,
  JvListComb, AdvOfficeButtons, ImgList,db;

type
  TfrmColumnas = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    NxHeaderPanel1: TNxHeaderPanel;
    NxHeaderPanel2: TNxHeaderPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    NxHeaderPanel3: TNxHeaderPanel;
    Link: TJvListBox;
    ListPortapapeles: TJvImageListBox;
    ListDataset: TJvImageListBox;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    OfCPrimer: TAdvOfficeCheckBox;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    Procedure CargarCampos(list1,list2:TjVimageListbox);
  private
    { Private declarations }
  public
    var
      ListaDatos:TStrings;
      MyDataset: TDataset;
      OrdenInsert:TstringList;

    { Public declarations }
  end;

var
  frmColumnas: TfrmColumnas;

implementation

uses UDbGrid;

{$R *.dfm}

procedure TfrmColumnas.CargarCampos(list1,list2:TjVimageListbox);
var
  i,j:integer;
begin
  for I := 0 to List1.Items.Count - 1 do
  begin
    for j := 0 to List2.Items.Count - 1 do
    begin
      if uppercase(list1.Items.Items[i].Text)=uppercase(list2.Items.Items[j].Text) then
      begin
       if Link.Items.IndexOf(List1.Items.Items[i].Text + ' = ' + list2.Items.Items[j].Text)=-1 then
       begin
        link.Items.Add(List1.Items.Items[i].Text + ' = ' + list2.Items.Items[j].Text);
        //showmessage(listDataset.Items.Items[ListDataset.ItemIndex].Text);
        Ordeninsert.Add(inttostr(i)+':'+inttostr(j)+'='+listDataset.Items.Items[j].Text);
       end;
       break;
      end;
    end;
  end;
end;

procedure TfrmColumnas.AdvGlowButton1Click(Sender: TObject);
var
  i:integer;
begin

  if Link.Items.IndexOf(ListPortapapeles.Items.Items[ListPortaPapeles.ItemIndex].Text + ' = ' + listDataset.Items.Items[ListDataset.ItemIndex].Text)=-1 then
  begin
    link.Items.Add(ListPortapapeles.Items.Items[ListPortaPapeles.ItemIndex].Text + ' = ' + listDataset.Items.Items[ListDataset.ItemIndex].Text);
    //showmessage(listDataset.Items.Items[ListDataset.ItemIndex].Text);
    Ordeninsert.Add(inttostr(ListPortaPapeles.ItemIndex)+':'+inttostr(ListDataset.ItemIndex)+'='+listDataset.Items.Items[ListDataset.ItemIndex].Text);
  end;

end;

procedure TfrmColumnas.AdvGlowButton2Click(Sender: TObject);
begin
  CargarCampos(ListPortapapeles,listDataset);
end;

procedure TfrmColumnas.AdvGlowButton3Click(Sender: TObject);
begin
  if Link.Items.Count>0 then
  begin
    ordenInsert.Delete(Link.ItemIndex);
    Link.DeleteSelected;
  end;
end;

procedure TfrmColumnas.AdvGlowButton4Click(Sender: TObject);
begin
   if Link.Items.Count>0 then
   begin
    OrdenInsert.Clear;
    Link.Clear;
   end;
end;

procedure TfrmColumnas.AdvGlowButton5Click(Sender: TObject);
var
  i:integer;
begin
  if Link.Items.Count>0 then
  begin
    //OrdenInsert.AddStrings(Link.Items);
   ModalResult:=mrok;
  end;
end;

procedure TfrmColumnas.FormCreate(Sender: TObject);
begin
  ListaDatos:=TstringList.Create;
  OrdenInsert:=TstringList.Create;
end;

procedure TfrmColumnas.FormShow(Sender: TObject);
var
  i,x,total:Integer;
begin

  for I := 0 to 0 do
  begin
    total:=NumItems(listaDatos[i],#9);
    for x := 1 to NumItems(listaDatos[i],#9) do
    begin
      ListPortapapeles.Items.AddText(traerItem(listadatos[i],#9,x));
      ListPortapapeles.Items.Items[ListPortapapeles.Items.Count-1].ImageIndex:=0;
    end;

  end;
  if MyDataset.FieldDefList.Count=MyDataset.FieldList.Count then
  begin
    for i := 0 to MyDataset.fieldcount-1  do
    begin
      ListDataset.Items.AddText(MyDataset.FieldDefList.FieldDefs[i].Name);
      ListDataset.Items.Items[ListDataset.Items.Count-1].ImageIndex:=0;
    end;
  end
  else
  begin
    for i := 0 to MyDataset.FieldList.Count-1  do
    begin
      ListDataset.Items.AddText(MyDataset.FieldList.Fields[i].FieldName);
      ListDataset.Items.Items[ListDataset.Items.Count-1].ImageIndex:=0;
    end;
  end;
end;

end.
