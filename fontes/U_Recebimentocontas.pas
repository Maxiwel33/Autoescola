unit U_Recebimentocontas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, DateUtils,ComCtrls,
  ExtCtrls;

type
  Tfrm_Recebimentocontas = class(TForm)
    pnl8: TPanel;
    pnl1: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    btn1: TBitBtn;
    btn5: TBitBtn;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl5: TPanel;
    dbedtDATAVENC: TDBEdit;
    dbedtDATAPAG: TDBEdit;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    dbgrd2: TDBGrid;
    pnl4: TPanel;
    pnl2: TPanel;
    dbgrd1: TDBGrid;
    dscontasreceber: TDataSource;
    ds1: TDataSource;
    btn6: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Recebimentocontas: Tfrm_Recebimentocontas;

implementation

uses U_Modulo;

{$R *.dfm}

procedure Tfrm_Recebimentocontas.btn1Click(Sender: TObject);
    var
d1,d2:TDateTime;
begin
  with DM.CDScontasreceber do
  begin
  d1:=dtp1.DateTime;
  d2:=dtp2.DateTime;

  Close;
  CommandText := 'Select * from CONTASRECEBER Where REC_DATAVENCIMENTO >= :D1 and REC_DATAVENCIMENTO <= :D2';//clausula de busca entre data
  Params.ParamByName('D1').AsDate:=(D1);//parametro da primeira data
  Params.ParamByName('D2').AsDate:=(D2);//paramentro da segunda data
  Open;

  end;


end;

procedure Tfrm_Recebimentocontas.btn2Click(Sender: TObject);
begin
      DM.CDScontasrecebidas.Open;
     //     DM.CDScontaspagas.Edit;
      DM.CDScontasrecebidas.Insert;
      DM.CDScontasrecebidas.FieldByName('datapag').AsDateTime:=
      DM.CDScontasreceber.FieldByName('REC_DATACONTA').AsDateTime;

      DM.CDScontasrecebidas.FieldByName('valor').AsFloat:=
        DM.CDScontasreceber.FieldByName(
        'REC_VALORCONTA').AsFloat;

       DM.CDScontasrecebidas.FieldByName('descricao').AsString:=
         DM.CDScontasreceber.FieldByName('REC_REFERENTE').AsString;

       DM.CDScontasrecebidas.FieldByName('documento').AsString:=
         DM.CDScontasreceber.FieldByName('REC_DOCUMENTO').AsString;


       DM.CDScontasrecebidas.Post;

       DM.CDScontasreceber.Delete;
       DM.CDScontasreceber.ApplyUpdates(0);
       DM.CDScontasreceber.Close;
       DM.CDScontasreceber.Open;

end;

procedure Tfrm_Recebimentocontas.btn3Click(Sender: TObject);
var
  x: integer;
begin
  x := DaysBetween(now, StrToDateTime(
    dbedtDATAPAG.Text));
  DM.CDScontasrecebidas.FieldByName('dias').AsString:=(IntToStr(x));
end;

procedure Tfrm_Recebimentocontas.btn4Click(Sender: TObject);
begin

     DM.cdscaixa.Insert;
     DM.cdscaixa.FieldByName('data').AsDateTime:=
      DM.CDScontasrecebidas.FieldByName('datavenc').AsDateTime;
     DM.cdscaixa.FieldByName('Descricao').AsString:=
      DM.CDScontasrecebidas.FieldByName('descricao').AsString;
     DM.cdscaixa.FieldByName('valor').AsFloat:=
      DM.CDScontasrecebidas.FieldByName('valor').AsFloat;
     DM.cdscaixa.FieldByName('status').AsString:='R';


     //caixa
     DM.cdscaixa.ApplyUpdates(0);
     DM.cdscaixa.Close;
     DM.cdscaixa.Open;


      DM.CDScontasrecebidas.ApplyUpdates(-1);
      DM.CDScontasrecebidas.Close;
      DM.CDScontasrecebidas.Open;
end;

procedure Tfrm_Recebimentocontas.btn6Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_Recebimentocontas.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    If DM.CDScontasreceberREC_DATAVENCIMENTO.Value < DATE then // condição
    dbgrd1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
    dbgrd1.DefaultDrawDataCell(Rect, dbgrd1.columns[datacol].field, State);

end;


procedure Tfrm_Recebimentocontas.FormShow(Sender: TObject);
begin
  DM.CDScontasreceber.Open;

end;

end.
