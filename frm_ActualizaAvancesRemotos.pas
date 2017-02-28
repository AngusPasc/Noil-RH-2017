unit frm_ActualizaAvancesRemotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, AdvGlowButton, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  NxToolBox, NxEdit, NxCollection, NxPageControl, ExtCtrls, AdvPanel, JvgListBox,
  ZDataset, DB, ZAbstractRODataset, ZAbstractDataset, ZConnection, JvExControls,
  JvxCheckListBox, AdvProgressBar, Menus,grids;

type
  TfrmActualizacionRemota = class(TForm)
    PpMGrid: TPopupMenu;
    Eliminar1: TMenuItem;
    NxGridSinc: TNextGrid;
    NxTreeColumn1: TNxTreeColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxCheckBoxColumn1: TNxProgressColumn;
    NxProgressColumn1: TNxCheckBoxColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxFlipPanel1: TNxFlipPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure NxGridSincMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NxGridSincMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Eliminar1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Iniciar(Var Grid:TNextGrid;Renglon,Padre:Integer;Total:Integer;Conex:TzConnection);

    var
      Conn:tzconnection;
      ContInicializados:TstringList;
  public
    { Public declarations }
      procedure CargarNxGrid(Grid: TNextGrid);

  end;

var
  frmActualizacionRemota: TfrmActualizacionRemota;
  avanceBd,avanceServer:Integer;
  Gpos:Tpoint;
implementation

uses UFunctionsGHH, frm_connection, Utilerias, global,frm_servidor;

{$R *.dfm}

procedure TfrmActualizacionRemota.CargarNxGrid(Grid: TNextGrid);
var
   QrServers,QrFrentes,QrContratos:tzreadonlyquery;
   lugar:tbookmark;
   error:boolean;
   sServidor:string;
   ServerRow,DataBaseRow,ContratoRow:Integer;
begin
  Grid.ClearRows;
  QrServers:=TzReadOnlyQUery.Create(nil);
  QrFrentes:=TzReadOnlyQUery.Create(nil);
  QrContratos:=TzReadOnlyQUery.Create(nil);
  error:=false;
  sServidor:='';
  try
    QrServers.Connection:=connection.zConnection;
    QrServers.SQL.Text:='select * from sincavances where stipo="Servidor" order by sip,sdescripcion';
    try
      QrServers.Open;
    except
      error:=true;
    end;

    if not error then
    begin
      with grid do
      begin
        while not QrServers.Eof do
        begin
          if QrServers.FieldByName('sip').AsString<>sServidor then
          begin
            sServidor:=QrServers.FieldByName('sip').AsString;
            AddRow();
            Cell[1,LastAddedRow].AsString:=espaces(QrServers.FieldByName('inivel').AsInteger) + 'Servidor';
            Cell[2,LastAddedRow].AsString:=espaces(QrServers.FieldByName('inivel').AsInteger) +QrServers.FieldByName('sip').AsString;
            Cell[3,LastAddedRow].AsFLoat:=0;
            Cell[4,LastAddedRow].AsBoolean:=false;

            Cell[5,LastAddedRow].AsString:=inttostr(QrServers.FieldByName('iIdsinc').AsInteger + 99999);
            Cell[6,LastAddedRow].AsString:=QrServers.FieldByName('sip').AsString;
            Cell[7,LastAddedRow].AsString:=QrServers.FieldByName('sdescripcion').AsString;
            Cell[8,LastAddedRow].AsString:=QrServers.FieldByName('stipo').AsString;
            Cell[9,LastAddedRow].AsString:=QrServers.FieldByName('iIdsincPadre').AsString;

            Cell[10,LastAddedRow].AsString:=QrServers.FieldByName('suser').AsString;
            Cell[11,LastAddedRow].AsString:=QrServers.FieldByName('spassword').AsString;
            Cell[12,LastAddedRow].AsInteger:=QrServers.FieldByName('iport').AsInteger;





            ServerRow:=LastAddedRow;//SelectLastRow;
          end;

          AddChildRow(ServerRow,crlast);
          Cell[1,LastAddedRow].AsString:=espaces(QrServers.FieldByName('inivel').AsInteger + 1) + 'Base Datos';
          Cell[2,LastAddedRow].AsString:=espaces(QrServers.FieldByName('inivel').AsInteger + 1 ) +QrServers.FieldByName('sdescripcion').AsString;
          Cell[3,LastAddedRow].AsFLoat:=0;
          Cell[4,LastAddedRow].AsBoolean:=false;

          Cell[5,LastAddedRow].AsString:=QrServers.FieldByName('iIdsinc').AsString;
          Cell[6,LastAddedRow].AsString:=QrServers.FieldByName('sdescripcion').AsString;
          Cell[7,LastAddedRow].AsString:=QrServers.FieldByName('sip').AsString;
          Cell[8,LastAddedRow].AsString:=QrServers.FieldByName('stipo').AsString;
          Cell[9,LastAddedRow].AsString:=Cell[5,LastAddedRow-1].AsString;



          DataBaseRow:=LastAddedRow;

          QrContratos.Active:=false;
          QrContratos.Connection:=connection.zConnection;
          QrContratos.SQL.Text:='select * from sincavances where iidSincPadre=' + Qrservers.FieldByName('iIdSinc').AsString+
                                ' and stipo="Contrato" order by sdescripcion';

          try
            QrContratos.Open;
            Error:=false;
          except
            error:=true;
          end;

          if not error then
          begin
            while not QRContratos.Eof do
            begin
              AddChildRow(DataBaseRow,crlast);
              Cell[1,LastAddedRow].AsString:=espaces(QrContratos.FieldByName('inivel').AsInteger + 1) + 'Contrato';
              Cell[2,LastAddedRow].AsString:=espaces(QrContratos.FieldByName('inivel').AsInteger + 1 ) +QrContratos.FieldByName('sdescripcion').AsString;
              Cell[3,LastAddedRow].AsFLoat:=0;
              Cell[4,LastAddedRow].AsBoolean:=false;

              Cell[5,LastAddedRow].AsString:=QrContratos.FieldByName('iIdsinc').AsString;
              Cell[6,LastAddedRow].AsString:=QrContratos.FieldByName('sdescripcion').AsString;
              Cell[7,LastAddedRow].AsString:=QrContratos.FieldByName('sip').AsString;
              Cell[8,LastAddedRow].AsString:=QrContratos.FieldByName('stipo').AsString;
              Cell[9,LastAddedRow].AsString:=QrContratos.FieldByName('iIdsincPadre').AsString;
              ContratoRow:=LastAddedRow;

              QrFrentes.Active:=false;
              QrFrentes.Connection:=connection.zConnection;
              QrFrentes.SQL.Text:='select * from sincavances where iidSincPadre=' + QrContratos.FieldByName('iIdSinc').AsString+
                                ' and stipo="Frente" order by sdescripcion';

              try
                QrFrentes.Open;
                error:=false;
              except
                error:=true;
              end;

              if not error then
              begin
                while not QrFrentes.Eof do
                begin
                  AddChildRow(ContratoRow,crlast);
                  Cell[1,LastAddedRow].AsString:=espaces(QrFrentes.FieldByName('inivel').AsInteger + 1) + 'Frente de Trabajo';
                  Cell[2,LastAddedRow].AsString:=espaces(QrFrentes.FieldByName('inivel').AsInteger + 1 ) +QrFrentes.FieldByName('sdescripcion').AsString;
                  Cell[3,LastAddedRow].AsFLoat:=0;
                  Cell[4,LastAddedRow].AsBoolean:=false;
                  Cell[5,LastAddedRow].AsString:=QrFrentes.FieldByName('iIdsinc').AsString;
                  Cell[6,LastAddedRow].AsString:=QrFrentes.FieldByName('sdescripcion').AsString;
                  Cell[7,LastAddedRow].AsString:=QrFrentes.FieldByName('sip').AsString;
                  Cell[8,LastAddedRow].AsString:=QrFrentes.FieldByName('stipo').AsString;
                  Cell[9,LastAddedRow].AsString:=QrFrentes.FieldByName('iIdsincPadre').AsString;

                  selectLastRow;

                  QrFrentes.Next;
                end;
              end;

              QrContratos.Next;
            end;
          end;

          QrServers.Next;
        end;
      end;
    end;

  finally
    Freeandnil(QrServers);
    Freeandnil(QrFrentes);
    Freeandnil(QrContratos);
  end;
end;


procedure TfrmActualizacionRemota.Eliminar1Click(Sender: TObject);
var
  QEliminar:TzQuery;
begin
  QEliminar:=TzQuery.Create(nil);
  QEliminar.Connection:=connection.zConnection;
  QEliminar.SQL.Text:='delete from sincavances where iIdSinc=' + NxGridSinc.Cell[5,NxGridSinc.GetRowAtPos(gpos.x,gpos.y)].AsString ;
  QELiminar.ExecSQL;
  CargarNxGrid(NxGridSinc);
  NxGridSinc.Repaint;
  NxGridSinc.Refresh;
end;

procedure TfrmActualizacionRemota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrmActualizacionRemota.FormCreate(Sender: TObject);
begin
  ContInicializados:=TstringList.Create;
end;

procedure TfrmActualizacionRemota.FormShow(Sender: TObject);
begin
  CargarNxGrid(NxGridSinc);
  NxGridSinc.Repaint;
  NxGridSinc.Refresh;
end;



procedure TfrmActualizacionRemota.AdvGlowButton2Click(Sender: TObject);
begin
  application.CreateForm(Tfrmdatos,frmdatos);
  try
    frmdatos.ShowModal;
  finally
    freeandnil(frmdatos);
  end;
end;

procedure TfrmActualizacionRemota.Iniciar(Var Grid:TNextGrid;Renglon,Padre:Integer;Total:Integer;Conex:TzConnection);
var
  posPadre,PosHijo:Integer;
  QAvancesLocales,QAvancesRemotos:TzQuery;
  error:boolean;
begin
  with grid do
  begin
    PosHijo:=0;
    while renglon<rowcount do
    begin
      if Cell[9,renglon].AsInteger=Padre then
      begin

        if Cell[8,renglon].AsString='Contrato' then
        begin
          if ContInicializados.IndexOf(Cell[6,renglon].AsString)=-1 then
          begin
            connection.zCommand.Active:=false;
            connection.zCommand.SQL.Text:='delete from avancesglobalesxorden where scontrato=' + quotedstr(Cell[6,renglon].AsString) +
                                      ' and sidconvenio=' + quotedstr(global_convenio);
            connection.zCommand.ExecSQL;
            ContInicializados.Add(Cell[6,renglon].AsString);
          end;
        end;

        Iniciar(grid,renglon + 1,Cell[5,renglon].AsInteger,Grid.GetChildCount(Renglon,false),conex);
        posPadre:=Grid.GetParent(renglon);
        inc(PosHijo);

        if Cell[8,renglon].AsString='Frente' then
        begin
          QAvancesLocales:=TzQuery.Create(nil);
          QAvancesRemotos:=TzQuery.Create(nil);
          try
            QAvancesLocales.Connection:=connection.zConnection;
            QAvancesRemotos.Connection:=conex;

            QAvancesLocales.SQL.Text:='select * from avancesglobalesxorden where scontrato=' + quotedstr(Cell[6,posPadre].AsString) +
                                      ' and sidconvenio=' + quotedstr(global_convenio) + ' order by didfecha';

            QAvancesRemotos.SQL.Text:='select * from avancesglobalesxorden where scontrato=' + quotedstr(Cell[6,posPadre].AsString) +
                                      ' and sidconvenio=' + quotedstr(global_convenio) + ' and (snumeroorden="" '  +
                                      'or snumeroOrden=' +quotedstr(Cell[6,renglon].AsString)    +') order by didfecha' ;
            error:=false;

            try
              QAvancesLocales.Open;
              QAvancesRemotos.Open;
            except
              error:=true;
            end;

            if not error then
            begin
              if QAvancesRemotos.RecordCount>0 then
              begin
                while not qAvancesRemotos.Eof do
                begin
                  if not Qavanceslocales.Locate('snumeroorden,didfecha,sidturno',
                  vararrayof([QAvancesRemotos.FieldByName('snumeroorden').AsString,formatdatetime('yyyy-mm-dd',QAvancesRemotos.FieldByName('didfecha').AsDatetime),QAvancesRemotos.FieldByName('sidturno').AsString]),[loCaseInsensitive]) then
                  begin
                    QavancesLocales.Append;
                    QavancesLocales.FieldByName('scontrato').AsString:=QAvancesRemotos.FieldByName('scontrato').AsString;
                    QavancesLocales.FieldByName('sidconvenio').AsString:=QAvancesRemotos.FieldByName('sidconvenio').AsString;
                    QavancesLocales.FieldByName('didfecha').AsDateTime:=QAvancesRemotos.FieldByName('didfecha').AsDateTime;
                    QavancesLocales.FieldByName('snumeroorden').AsString:=QAvancesRemotos.FieldByName('snumeroorden').AsString;
                    QavancesLocales.FieldByName('sidturno').AsString:=QAvancesRemotos.FieldByName('sidturno').AsString;
                    QavancesLocales.FieldByName('davance').Asfloat:=QAvancesRemotos.FieldByName('davance').Asfloat;
                    QavancesLocales.FieldByName('davanceFinanciero').Asfloat:=QAvancesRemotos.FieldByName('davanceFinanciero').Asfloat;
                    QavancesLocales.Post;
                  end
                  else
                  begin
                    QavancesLocales.Edit;
                    QavancesLocales.FieldByName('davance').Asfloat:=QAvancesRemotos.FieldByName('davance').Asfloat + QavancesLocales.FieldByName('davance').Asfloat;
                    QavancesLocales.FieldByName('davanceFinanciero').Asfloat:=QAvancesRemotos.FieldByName('davanceFinanciero').Asfloat + QavancesLocales.FieldByName('davanceFinanciero').Asfloat;
                    QavancesLocales.Post;
                  end;

                  cell[3,posPadre].AsInteger:=trunc((((100/total)*QavancesRemotos.RecNo)/QavancesRemotos.RecordCount) + (((poshijo-1)*100)/total));           //trunc((PosHijo/total)*100 );
                  cell[3,renglon].AsInteger:=trunc((QavancesRemotos.RecNo*100)/QavancesRemotos.RecordCount);

                  if cell[3,posPadre].AsInteger>=100 then
                    cell[4,posPadre].AsInteger:=1;
                 // cell[3,posPadre].AsInteger:=trunc((((100/total)*QavancesRemotos.RecNo)/QavancesRemotos.RecordCount) + (((poshijo-1)*100)/total));           //trunc((PosHijo/total)*100 );

                  if cell[3,getparent(posPadre)].AsInteger=0 then
                    AvanceBd:=0;

                  cell[3,getparent(posPadre)].AsInteger:=avanceBd + trunc(((100/GetChildCount(getparent(posPadre),false)) * cell[3,posPadre].AsInteger)/100);

                  if trunc(100/GetChildCount(getparent(posPadre),false)) + AvanceBd=cell[3,getparent(posPadre)].AsInteger then
                    AvanceBd:=AvanceBd + trunc((100/GetChildCount(getparent(posPadre),false)));


                  if (cell[3,getparent(posPadre)].AsInteger>=100) or
                  (
                  (cell[3,getparent(posPadre)].AsInteger +
                                  round(

                  (frac(100/GetChildCount(getparent(posPadre),false))* GetChildCount(getparent(posPadre),false))

                  )


                  )>=100


                  ) then
                  begin
                    cell[4,getparent(posPadre)].AsInteger:=1;
                    cell[3,getparent(posPadre)].AsInteger:=100;
                  end;

                  if cell[3,getparent(getparent(posPadre))].AsInteger=0 then
                    avanceServer:=0;

                  cell[3,Getparent(getparent(posPadre))].AsInteger:=avanceServer + trunc(((100/GetChildCount(getParent(getparent(posPadre)),false)) * cell[3,getparent(posPadre)].AsInteger)/100);

                  if (trunc(100/GetChildCount(getparent(getparent(posPadre)),false)) + AvanceServer)=cell[3,Getparent(getparent(posPadre))].AsInteger then
                    AvanceServer:=AvanceServer + trunc((100/GetChildCount(Getparent(getparent(posPadre)),false)));


                  if cell[3,Getparent(getparent(posPadre))].AsInteger>=100 then
                    cell[4,Getparent(getparent(posPadre))].AsInteger:=1;



                  QAVancesRemotos.Next;
                  repaint;
                end;
              end
              else
              begin
                cell[3,posPadre].AsInteger:=trunc((((100/total)*1)/1) + (((poshijo-1)*100)/total)) ;           //trunc((PosHijo/total)*100 );
                cell[3,renglon].AsInteger:=trunc((1*100)/1);
                repaint;
              end;
              cell[4,renglon].AsInteger:=1;
              //RefreshRow(renglon);
              repaint;
              //sleep(200);
            end;

          finally
            freeandnil(QAvancesLocales);
            freeandnil(QAvancesRemotos);
          end;
        end;

        if Cell[8,renglon].AsString='Contrato' then
        begin
(*
            cell[3,posPadre].AsInteger:=trunc(((100/total)*poshijo));           //trunc((PosHijo/total)*100 );
            cell[4,renglon].AsInteger:=1;
            if cell[3,posPadre].AsInteger>=100 then
              cell[4,pospadre].AsInteger:=1;
*)




          Repaint
        end;
      end;
      inc(renglon);
    end;
  end;
end;
procedure TfrmActualizacionRemota.NxGridSincMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  gpos.x:=x;
  gpos.y:=y;
end;

procedure TfrmActualizacionRemota.NxGridSincMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  mPos: TPoint;
  reng:integer;
begin
  if  Button=mbRight then
  begin
    ppmgrid.Items.Items[0].Enabled:=false ;
    GetCursorPos(mPos);
    if  NxGridSinc.RowCount>0 then
    begin
      reng:=NxGridSinc.GetRowAtPos(gpos.x,gpos.y);
      if reng>0 then
        if NxGridSinc.GetChildCount(reng,true)=0 then
          ppmgrid.Items.Items[0].Enabled:=true;
    end;
    ppmgrid.Popup(mpos.X,mpos.y);
  end;
end;

procedure TfrmActualizacionRemota.AdvGlowButton3Click(Sender: TObject);
var
  i:Integer;
  Hijos:Integer;
begin
  i:=0;
  if Conn=nil then
    Conn:=TzConnection.Create(nil);
  ContInicializados.Clear;
  while i<NxGridSinc.RowCount do
  begin
    with NxGridSinc do
    begin
      DoubleBuffered:=true;
      if (Cell[8,i].AsString='Servidor') and (Cell[9,i].AsInteger=0) then
      begin
        conn.Disconnect;
        if conectar(conn,Cell[6,i].AsString,Cell[7,i].AsString,Cell[12,i].AsInteger) then
        begin
          Hijos:=NxGridSinc.GetChildCount(i,false);
          Iniciar(NxGridSinc,i+1,Cell[5,i].AsInteger,Hijos,conn);
          cell[3,i].AsInteger:=100;
          cell[4,i].AsInteger:=1;
          repaint;
        end;
      end;
      inc(i);
    end;
  end;
  NxGridSinc.DoubleBuffered:=false;
end;




end.
