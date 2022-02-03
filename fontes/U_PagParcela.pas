unit U_PagParcela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, DBCtrls;

type
  TFrm_pagParcelas = class(TForm)
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    dsparcelas: TDataSource;
    pnl2: TPanel;
    dspagparcelas: TDataSource;
    pnl3: TPanel;
    edtbusca: TEdit;
    pnl4: TPanel;
    dbgrd2: TDBGrid;
    btnPAGAMENTO: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TBitBtn;
    pnl5: TPanel;
    lbl3: TLabel;
    pnl6: TPanel;
    dbtxtSoma: TDBText;
    pnl7: TPanel;
    pnl8: TPanel;
    lbl4: TLabel;
    pnl9: TPanel;
    lbl5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure edtbuscaChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnPAGAMENTOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
  procedure VERIFICASALDODEVEDOR;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pagParcelas: TFrm_pagParcelas;

implementation

uses U_Modulo, U_RelPagamento;

{$R *.dfm}

procedure TFrm_pagParcelas.btn3Click(Sender: TObject);
begin
      Frm_relpagamento.QuickRep1.Preview;
end;


procedure TFrm_pagParcelas.btnPAGAMENTOClick(Sender: TObject);
begin

  DM.CDSpagparcela.Edit;
  DM.CDSpagparcela.Insert;

  DM.CDSpagparcela.FieldByName('id_cliente').AsInteger:=
    DM.CDSparcela.FieldByName('id_cliente').AsInteger;
  DM.CDSpagparcela.FieldByName('data').AsDateTime:=DM.CDSparcela.FieldByName(
    'data').AsDateTime;
  DM.CDSpagparcela.FieldByName('num_parcela').AsInteger:=
    DM.CDSparcela.FieldByName('num_parcela').AsInteger;
  DM.CDSpagparcela.FieldByName('valor').AsFloat:=  DM.CDSparcela.FieldByName(
    'valor').AsFloat;
  DM.CDSpagparcela.FieldByName('data_pagamento').AsDateTime:=date;

  DM.CDSpagparcela.FieldByName('status').AsString:='P';

  DM.CDSpagparcela.Post;
  DM.CDSpagparcela.ApplyUpdates(0);
  DM.CDSpagparcela.Close;
  DM.CDSpagparcela.Open;

  DM.CDSparcela.Delete;
  DM.CDSparcela.ApplyUpdates(0);
  DM.CDSparcela.Close;
  DM.CDSparcela.Open;
end;


procedure TFrm_pagParcelas.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If DM.CDSparcelaDATA.Value < DATE then // condição
  begin
    dbgrd1.Canvas.Font.Color:= clFuchsia; // coloque aqui a cor desejada
    dbgrd1.DefaultDrawDataCell(Rect, dbgrd1.columns[datacol].field, State);
    dbgrd1.DefaultDrawDataCell(rect,Column.Field,state);

end;
end;


procedure TFrm_pagParcelas.dbgrd2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not odd(dm.CDSpagparcela.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd2.Canvas.Brush.Color := clMoneyGreen;
      dbgrd2.Canvas.FillRect(Rect);
      dbgrd2.DefaultDrawDataCell(rect,Column.Field,state);

end;
end;

procedure TFrm_pagParcelas.btn1Click(Sender: TObject);
var
  d1,d2:TDateTime;
begin
  with DM.CDSpagparcela do
  begin
  d1:=dtp1.DateTime;
  d2:=dtp2.DateTime;

  close;
  CommandText:='select * from pagparcelas where data >= :d1 and data <= :d2';
  Params.ParamByName('d1').AsDate:=(d1);
  Params.ParamByName('d2').AsDate:=(d2);
  Open;


  end;

end;

procedure TFrm_pagParcelas.btn2Click(Sender: TObject);
begin
DM.cdscliente.Close;
DM.CDSparcela.Close;
DM.CDSpagparcela.Close;
Close;
end;

procedure TFrm_pagParcelas.edtbuscaChange(Sender: TObject);
begin
with DM.cdscliente do
  begin
  Close;
  CommandText:='select * from cliente where cliente like'+QuotedStr(edtbusca.Text+
    '%');
  Open;

end;
end;

procedure TFrm_pagParcelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DM.cdscliente do
  begin
  close;
  CommandText:='select * from cliente';
  Open;
  end;
  DM.CDSparcela.Close;
  DM.CDSpagparcela.close;

end;

procedure TFrm_pagParcelas.FormCreate(Sender: TObject);
begin
  DM.cdscliente.Open;
  DM.CDSparcela.Open;
  DM.CDSpagparcela.Open;
  dtp1.DateTime:=Now -2;
  dtp2.DateTime:= Now;
end;

procedure TFrm_pagParcelas.FormShow(Sender: TObject);
begin
    DM.cdscliente.Open;
    DM.CDSpagparcela.Open;
end;

procedure TFrm_pagParcelas.VERIFICASALDODEVEDOR;
var  //Crio uma variavel para verificar o resultado
result:string;
begin
if dm.CDSparcela.Fields.Fields[0].AsString <>'' then  //Aqui verifico se a coluna em que esta a parcela esta vazia
begin
dm.cdsgerar.Open; //Abro o ClientDataset de verificação de contagem dos campos
begin
result:=dm.cdsgerarCOUNT.AsString; //result vai receber a quantidade de parcelas em aberto
Showmessage('Você possui '+ result +' parcelas pendentes' + #13
+ 'Nao é possivel efetuar pagamento'); //envio uma mesagem para o usuario falando que tem a quantidade que retornar em aberto
abort; //aborto a operação e fecho o ClientDataSet referente a contagem dos campos
dm.cdsgerar.Close;
end;
end;
end;

end.
