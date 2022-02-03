unit U_ContasPagas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, Grids, DBGrids, DateUtils,
   Mask, DBCtrls, ExtCtrls;

type
  TFrm_pagamentodecontas = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    dbgrd1: TDBGrid;
    dscontapagar: TDataSource;
    pnl3: TPanel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TBitBtn;
    dbgrd2: TDBGrid;
    pnl4: TPanel;
    dscontaspagas: TDataSource;
    pnl5: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    dbedtDATAPAG: TDBEdit;
    dbedtDATAVENC: TDBEdit;
    pnl6: TPanel;
    pnl7: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    pnl8: TPanel;
    btn5: TBitBtn;
    btn6: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pagamentodecontas: TFrm_pagamentodecontas;

implementation

uses U_Modulo;

{$R *.dfm}

procedure TFrm_pagamentodecontas.btn1Click(Sender: TObject);
var
d1,d2:TDateTime;
begin
  with DM.CDScontaspagar do
  begin
  d1:=dtp1.DateTime;
  d2:=dtp2.DateTime;

  Close;
  CommandText := 'Select * from CONTASPAGAR Where PAGAR_DATAVENCIMENTO >= :D1 and PAGAR_DATAVENCIMENTO <= :D2';//clausula de busca entre data
  Params.ParamByName('D1').AsDate:=(D1);//parametro da primeira data
  Params.ParamByName('D2').AsDate:=(D2);//paramentro da segunda data
  Open;

  end;

  end;

procedure TFrm_pagamentodecontas.btn2Click(Sender: TObject);
begin
 //     DM.CDScontaspagas.Edit;
      DM.CDScontaspagas.Insert;

      DM.CDScontaspagas.FieldByName('datapag').AsDateTime:=
      DM.CDScontaspagar.FieldByName('PAGAR_DATAVENCIMENTO').AsDateTime;

      DM.CDScontaspagas.FieldByName('valor').AsFloat:=
        DM.CDScontaspagar.FieldByName('PAGAR_VALORCONTA').AsFloat;

       DM.CDScontaspagas.FieldByName('descricao').AsString:=
         DM.CDScontaspagar.FieldByName('PAGAR_REFERENTE').AsString;

       DM.CDScontaspagas.FieldByName('documento').AsString:=
         DM.CDScontaspagar.FieldByName('PAGAR_DOCUMENTO').AsString;

       DM.CDScontaspagar.Delete;
       DM.CDScontaspagar.ApplyUpdates(0);
       DM.CDScontaspagar.Close;
       DM.CDScontaspagar.Open;




end;


procedure TFrm_pagamentodecontas.btn3Click(Sender: TObject);
var
  x: integer;
begin
  x := DaysBetween(now, StrToDateTime(
    dbedtDATAPAG.Text));
  DM.CDScontaspagas.FieldByName('dias').AsString:=(IntToStr(x));

end;


procedure TFrm_pagamentodecontas.btn4Click(Sender: TObject);
begin
      //salvando dados na tabela caixa


      DM.cdscaixa.Insert;
     DM.cdscaixa.FieldByName('data').AsDateTime:=
      DM.CDScontaspagas.FieldByName('datavenc').AsDateTime;
     DM.cdscaixa.FieldByName('Descricao').AsString:=
      DM.CDScontaspagas.FieldByName('descricao').AsString;
     DM.cdscaixa.FieldByName('valor').AsFloat:=
      DM.CDScontaspagas.FieldByName('valor').AsFloat;
     DM.cdscaixa.FieldByName('status').AsString:='P';

     DM.CDScontaspagas.ApplyUpdates(0);
     DM.CDScontaspagas.Close;
     DM.CDScontaspagas.Open;

     //caixa
     DM.cdscaixa.ApplyUpdates(0);
     DM.cdscaixa.Close;
     DM.cdscaixa.Open;

end;

procedure TFrm_pagamentodecontas.btn6Click(Sender: TObject);
begin
close;
end;

procedure TFrm_pagamentodecontas.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    If DM.CDScontaspagarPAGAR_DATAVENCIMENTO.Value < DATE then // condição
    dbgrd1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
    dbgrd1.DefaultDrawDataCell(Rect, dbgrd1.columns[datacol].field, State);
End;


procedure TFrm_pagamentodecontas.FormShow(Sender: TObject);
begin

    DM.CDScontaspagar.Open;
    DM.CDScontaspagas.Open;
    DM.cdscaixa.Open;

    dtp1.Date:=Now -2;
    dtp2.Date:=Now;


end;

end.
