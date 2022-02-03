unit U_LivroCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, Mask, Grids, DBGrids, StdCtrls, Buttons,
  ComCtrls, ToolWin, ImgList, FMTBcd, SqlExpr, DBClient, Provider;

type
  TFrm_livrocaixa = class(TForm)
    Panel1: TPanel;
    il1: TImageList;
    tlb1: TToolBar;
    btnnovo: TToolButton;
    btnalterar: TToolButton;
    btnexcluir: TToolButton;
    btnlocaliza: TToolButton;
    btnimprimi: TToolButton;
    btn6: TToolButton;
    btncancelar: TToolButton;
    btnsalvar: TToolButton;
    btn7: TToolButton;
    btnfechar: TToolButton;
    btn1: TToolButton;
    btnprimeiro: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btnultimo: TToolButton;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel2: TPanel;
    btn5: TBitBtn;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    pnl1: TPanel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl1: TLabel;
    lbl4: TLabel;
    dbedtDATA: TDBEdit;
    lbl5: TLabel;
    dbedtDESCRICAO: TDBEdit;
    lbl6: TLabel;
    dbedtVALOR: TDBEdit;
    lbl7: TLabel;
    dbedtSALDO: TDBEdit;
    lbl10: TLabel;
    dbedtTOTAL: TDBEdit;
    lbl11: TLabel;
    dbedtSTATUS: TDBEdit;
    dbedtID_CAIXA: TDBEdit;
    dbtxtSoma: TDBText;
    rg1: TRadioGroup;
    edt1: TEdit;
    edt2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure dbedtDESCRICAOKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnimprimiClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Frm_livrocaixa: TFrm_livrocaixa;

implementation

uses U_Modulo, U_RelCaixa;

{$R *.dfm}

procedure TFrm_livrocaixa.btn3Click(Sender: TObject);
begin
DM.cdscaixa.First;

end;

procedure TFrm_livrocaixa.btn4Click(Sender: TObject);
begin
  DM.cdscaixa.Next;
end;

procedure TFrm_livrocaixa.btn5Click(Sender: TObject);
var
D1,D2: TDateTime;
begin
    with DM.cdscaixa do
    begin
    if rg1.ItemIndex = 0 then
    begin
      close;
      CommandText:='select * from caixa';
      Open;
    end;
    end;
       with DM.cdscaixa do
    begin
    if rg1.ItemIndex = 1 then
    begin
      close;
      CommandText:= 'select * from caixa where status like '+QuotedStr(
        edt1.Text+'%');
      Open;
    end;
       with DM.cdscaixa do
    begin
    if rg1.ItemIndex = 2 then
   begin
      close;
      CommandText:= 'select * from caixa where status like '+QuotedStr(
        edt1.Text+'%');
      Open;
    end;

   if rg1.ItemIndex = 3 then
      with DM.cdscaixa do
     begin
      D1 := dtp1.DateTime; //datapicket1
      D2 := dtp2.DateTime; //datapicket2

      Close;
      CommandText := 'Select * from caixa Where DATA >= :D1 and DATA <= :D2' ;//
      //clausula de busca entre data
      Params.ParamByName('D1').AsDate := (D1);//parametro da primeira data
      Params.ParamByName('D2').AsDate := (D2);//paramentro da segunda data
      Open;



   end;
    end;

end;
    end;


procedure TFrm_livrocaixa.btncancelarClick(Sender: TObject);
begin
DM.cdscaixa.Cancel;
end;

procedure TFrm_livrocaixa.btnexcluirClick(Sender: TObject);
begin
if
  MessageBox(0, 'Deseja realmente apagar o registro corrente?', 'Pagar Registro',
  MB_ICONQUESTION or MB_OKCANCEL)= mrOk then
  DM.cdscaixa.Delete;
  DM.cdscaixa.ApplyUpdates(-1);
  DM.cdscaixa.Close;
  DM.cdscaixa.Open;
end;

procedure TFrm_livrocaixa.btnfecharClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_livrocaixa.btnimprimiClick(Sender: TObject);
begin
    frm_relCaixa.QuickRep1.Preview;
   end;

procedure TFrm_livrocaixa.btnlocalizaClick(Sender: TObject);
begin
  IF pgc1.ActivePage = ts1 THEN
    pgc1.ActivePage:=ts2
    ELSE
    pgc1.ActivePage:=ts1;

end;

procedure TFrm_livrocaixa.btnnovoClick(Sender: TObject);
begin
  DM.cdscaixa.Insert;
 dbedtDESCRICAO.SetFocus;

end;

procedure TFrm_livrocaixa.btnprimeiroClick(Sender: TObject);
begin
  DM.cdscaixa.Prior;
end;

procedure TFrm_livrocaixa.btnsalvarClick(Sender: TObject);
begin
  begin
  DM.cdscaixa.ApplyUpdates(0);
  DM.cdscaixa.Close;
  DM.cdscaixa.Open;

end;
end;

procedure TFrm_livrocaixa.btnultimoClick(Sender: TObject);
begin
    DM.cdscaixa.Last;
end;

procedure TFrm_livrocaixa.dbedtDESCRICAOKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
    begin
      SelectNext(ActiveControl,true,true);
      Key:=#0;
    end;

end;

procedure TFrm_livrocaixa.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not odd(dm.cdscaixa.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd1.Canvas.Brush.Color := clMoneyGreen;
      dbgrd1.Canvas.FillRect(Rect);
      dbgrd1.DefaultDrawDataCell(rect,Column.Field,state);

end;
end;

procedure TFrm_livrocaixa.dbgrd1TitleClick(Column: TColumn);
begin
  DM.cdscaixa.IndexFieldNames:=Column.FieldName;
end;

procedure TFrm_livrocaixa.dbgrd2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{  if not odd(dm.cdscaixa.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd2.Canvas.Brush.Color := clMoneyGreen;
      dbgrd2.Canvas.FillRect(Rect);
      dbgrd2.DefaultDrawDataCell(rect,Column.Field,state);}

end;

procedure TFrm_livrocaixa.ds1StateChange(Sender: TObject);
begin
    btnnovo.Enabled:=ds1.State in [dsBrowse];
    btnsalvar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnexcluir.Enabled:=ds1.State in [dsbrowse];
    btncancelar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnalterar.Enabled:=ds1.State in [dsbrowse];
    btnlocaliza.Enabled:=ds1.State in [dsbrowse];
    btnimprimi.Enabled:=ds1.State in [dsbrowse];
end;

procedure TFrm_livrocaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
            if dm.cdscaixa.State in [dsinsert,dsedit] then
            begin
      ShowMessage('Salve ou cancele as operações antes de sair');
       Action:=caNone;
       Exit;
  DM.cdscaixa.Close;
end;
end;



procedure TFrm_livrocaixa.FormCreate(Sender: TObject);
begin
      DM.cdscaixa.AggregatesActive:=True;
      DM.cdscaixa.Close;
      DM.cdscaixa.Open;

end;


procedure TFrm_livrocaixa.FormShow(Sender: TObject);
begin
  DM.cdscaixa.close;
  DM.cdscaixa.Open;

  dtp1.Date:=Now -2;
  dtp2.Date:=Now;
end;

procedure TFrm_livrocaixa.rg1Click(Sender: TObject);
begin
  if  rg1.ItemIndex = 1 then
  edt1.Text:='P';

  if  rg1.ItemIndex = 2 then
  edt1.Text:='R';

end;

end.
