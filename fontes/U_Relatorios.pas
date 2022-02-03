unit U_Relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons;

type
  TFrm_RelDiversos = class(TForm)
    rg1: TRadioGroup;
    img1: TImage;
    pnl1: TPanel;
    btn1: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelDiversos: TFrm_RelDiversos;

implementation

uses U_RelCliente, U_Modulo;

{$R *.dfm}

procedure TFrm_RelDiversos.btn1Click(Sender: TObject);
begin
   if rg1.ItemIndex = 0 then
   begin
   dm.cdscliente.Close;
   DM.cdscliente.Open;
   Frm_Relclientes.QuickRep1.Prepare;
   Frm_Relclientes.QuickRep1.Preview;
   end;

end;

procedure TFrm_RelDiversos.rg1Click(Sender: TObject);
begin
     if rg1.ItemIndex = 0 then
     begin
          pnl1.Caption:='Relatório de clientes';
     end;
       if rg1.ItemIndex = 1 then
       begin
     pnl1.Caption:='Relatório de Funcionário';
       end;
       if rg1.ItemIndex = 2 then
       begin
     pnl1.Caption:='Relatório de Veiculos';
       end;
      if rg1.ItemIndex = 3 then
       begin
     pnl1.Caption:='Relatório de Oficinas';
       end;
       if rg1.ItemIndex = 4 then
       begin
     pnl1.Caption:='Relatório de Despesas';
       end;
       if rg1.ItemIndex = 5 then
       begin
     pnl1.Caption:='Relatório de Combustiveis';
       end;
       if rg1.ItemIndex = 6 then
       begin
     pnl1.Caption:='Relatório de Patrimonios';
       end;

end;

end.
