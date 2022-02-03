unit U_Agendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, PlannerMonthView, DBPlannerMonthView,
  Planner, DBPlanner, TodoList, DBTodoList, PlannerCal, DBPlannerCal, Menus,
  ImgList;

type
  TFrm_agendamento = class(TForm)
    Panel1: TPanel;
    lbl1: TLabel;
    dbedtID_AGENDAMENTO: TDBEdit;
    ds1: TDataSource;
    ds2: TDataSource;
    Panel2: TPanel;
    dbgrd1: TDBGrid;
    Panel3: TPanel;
    btnnovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnapagar: TBitBtn;
    btncancela: TBitBtn;
    btnsalva: TBitBtn;
    pnl1: TPanel;
    calendario: TDBPlannerCalendar;
    pm1: TPopupMenu;
    ExcluirAgendamento1: TMenuItem;
    dbcbbMES: TDBComboBox;
    lbl3: TLabel;
    dbedtANO: TDBEdit;
    lbl4: TLabel;
    dbgrd2: TDBGrid;
    lbl2: TLabel;
    pnl2: TPanel;
    btn2: TBitBtn;
    btnfechar: TBitBtn;
    il1: TImageList;
    pnl3: TPanel;
    btn1: TBitBtn;
    procedure btnnovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btncancelaClick(Sender: TObject);
    procedure btnsalvaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure ExcluirAgendamento1Click(Sender: TObject);
    procedure dbcbbMESChange(Sender: TObject);
    procedure dbgrd2CellClick(Column: TColumn);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds1StateChange(Sender: TObject);
    procedure Excluiragendamento2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_agendamento: TFrm_agendamento;

implementation

uses U_Modulo, U_RelAgendamento;

{$R *.dfm}

procedure TFrm_agendamento.btnnovoClick(Sender: TObject);
begin
dm.cdsagendamento.Insert;
dbcbbMES.SetFocus;
end;

procedure TFrm_agendamento.btn1Click(Sender: TObject);
begin
  Frm_RelAgendamento.QuickRep1.Preview;
end;

procedure TFrm_agendamento.btn2Click(Sender: TObject);
begin
DM.cdsitemagenda.ApplyUpdates(0);
//DM.cdsitemagenda.Close;
//DM.cdsitemagenda.Open;

//calendario.Active:=False;
//calendario.Active:=True;

end;

procedure TFrm_agendamento.btncancelaClick(Sender: TObject);
begin
dm.cdsagendamento.Cancel;
end;

procedure TFrm_agendamento.btnsalvaClick(Sender: TObject);
begin
dm.cdsagendamento.Post;
dm.cdsagendamento.ApplyUpdates(0);
dm.cdsagendamento.Refresh;
dbgrd1.SetFocus;
end;

procedure TFrm_agendamento.btnfecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_agendamento.btnAlterarClick(Sender: TObject);
begin
dm.cdsagendamento.Edit;

end;

procedure TFrm_agendamento.dbcbbMESChange(Sender: TObject);
begin
if dbcbbMES.ItemIndex = 0 then
   calendario.Month:=1;

if dbcbbMES.ItemIndex = 1 then
   calendario.Month:=2;

end;

procedure TFrm_agendamento.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not odd(dm.cdsitemagenda.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd1.Canvas.Brush.Color := clMoneyGreen;
      dbgrd1.Canvas.FillRect(Rect);
      dbgrd1.DefaultDrawDataCell(rect,Column.Field,state);

end;
end;

procedure TFrm_agendamento.dbgrd2CellClick(Column: TColumn);
begin
  if dbcbbMES.ItemIndex = 0 then
   calendario.Month:=1;

  if dbcbbMES.ItemIndex = 1 then
   calendario.Month:=2;

  if dbcbbMES.ItemIndex = 2 then
   calendario.Month:=3;

  if dbcbbMES.ItemIndex = 3 then
   calendario.Month:=4;

   if dbcbbMES.ItemIndex = 4 then
   calendario.Month:=5;

  if dbcbbMES.ItemIndex = 5 then
   calendario.Month:=6;

  if dbcbbMES.ItemIndex = 6 then
   calendario.Month:=7;

   if dbcbbMES.ItemIndex = 7 then
   calendario.Month:=8;

  if dbcbbMES.ItemIndex = 8 then
   calendario.Month:=9;

  if dbcbbMES.ItemIndex = 9 then
   calendario.Month:=10;

   if dbcbbMES.ItemIndex = 10 then
   calendario.Month:=11;

end;

procedure TFrm_agendamento.dbgrd2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not odd(dm.cdsagendamento.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd2.Canvas.Brush.Color := clAqua;
      dbgrd2.Canvas.FillRect(Rect);
      dbgrd2.DefaultDrawDataCell(rect,Column.Field,state);

end;
end;

procedure TFrm_agendamento.ds1StateChange(Sender: TObject);
begin
        btnnovo.Enabled:=ds1.State in [dsBrowse];
        btnsalva.Enabled:=ds1.State in [dsinsert,dsedit];
        btnapagar.Enabled:=ds1.State in [dsbrowse];
        btncancela.Enabled:=ds1.State in [dsinsert,dsedit];
        btnAlterar.Enabled:=ds1.State in [dsbrowse];
        //btnsair.Enabled:=ds1.State in [dsBrowse];
end;

procedure TFrm_agendamento.ExcluirAgendamento1Click(Sender: TObject);
begin
DM.cdsitemagenda.Delete;
DM.cdsagendamento.ApplyUpdates(0);
end;

procedure TFrm_agendamento.Excluiragendamento2Click(Sender: TObject);
begin
    DM.cdsagendamento.Delete;
    DM.cdsagendamento.Refresh;

end;

procedure TFrm_agendamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dm.cdsagendamento.State in [dsinsert,dsedit] then
    begin
      ShowMessage('Salve ou cancele as operações antes de sair');
      Action:=caNone;
      Exit;

    dm.cdsagendamento.close;
    dm.cdsitemagenda.close;;
    DM.cdstransporte.close;
    DM.cdscliente.close;
    DM.cdscategoria.close;

end;
end;

procedure TFrm_agendamento.FormCreate(Sender: TObject);
begin
dm.cdsagendamento.Open;
dm.cdsitemagenda.Open;
DM.cdstransporte.Open;
DM.cdscliente.Open;
DM.cdscategoria.Open;
Calendario.Date:=Now;

end;

end.
