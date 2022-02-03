unit U_Gastos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFrm_gastos = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    dbedtID_GASTO: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtDESTINO: TDBEdit;
    pnl2: TPanel;
    lbl5: TLabel;
    dbedtKMI: TDBEdit;
    lbl6: TLabel;
    dbedtKMF: TDBEdit;
    lbl7: TLabel;
    dbedtPCL: TDBEdit;
    lbl8: TLabel;
    dbedtM: TDBEdit;
    lbl9: TLabel;
    dbedtQLC: TDBEdit;
    lbl4: TLabel;
    dbedtVTA: TDBEdit;
    rg1: TRadioGroup;
    dblkcbbID_TRANSPORTE: TDBLookupComboBox;
    dstransporte: TDataSource;
    btn1: TBitBtn;
    pnl3: TPanel;
    pnl4: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    btn7: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbedtKMFKeyPress(Sender: TObject; var Key: Char);
    procedure rg1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_gastos: TFrm_gastos;

implementation

uses U_Modulo;

{$R *.dfm}

procedure TFrm_gastos.btn1Click(Sender: TObject);
begin
 if rg1.ItemIndex = 0 then
  begin
   DM.CDSgastoM.AsFloat:=(DM.CDSgastoKMF.AsFloat-DM.CDSgastoKMI.AsFloat)/(
   DM.CDSgastoVTA.AsFloat/DM.CDSgastoPCL.AsFloat);
 end;
 if rg1.ItemIndex = 1 then
  begin

   DM.CDSgastoM.AsFloat:=(DM.CDSgastoKMF.AsFloat-DM.CDSgastoKMI.AsFloat)/
   DM.CDSgastoQLC.AsFloat;

  end;

end;



procedure TFrm_gastos.btn2Click(Sender: TObject);
begin
  DM.CDSgasto.Insert;
  dblkcbbID_TRANSPORTE.SetFocus;
end;

procedure TFrm_gastos.btn3Click(Sender: TObject);
begin
DM.CDSgasto.Edit;
dblkcbbID_TRANSPORTE.SetFocus;
end;

procedure TFrm_gastos.btn5Click(Sender: TObject);
begin
DM.CDSgasto.Cancel;
end;

procedure TFrm_gastos.btn6Click(Sender: TObject);
begin
DM.CDSgasto.ApplyUpdates(0);
DM.CDSgasto.Close;
DM.CDSgasto.Open;
end;

procedure TFrm_gastos.btn7Click(Sender: TObject);
begin
close;
end;

procedure TFrm_gastos.dbedtKMFKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
  SelectNext(ActiveControl,true,true);
  Key:=#0;
end;

end;

procedure TFrm_gastos.FormShow(Sender: TObject);
begin
  DM.CDSgasto.Open;
  DM.cdstransporte.Open;
end;

procedure TFrm_gastos.rg1Click(Sender: TObject);
begin
 if rg1.ItemIndex = 0 then
  begin
  dbedtPCL.Enabled:=True;
  dbedtQLC.Enabled:=False;
  dbedtQLC.Text:='0,00';
end;
   if rg1.ItemIndex = 1 then
  begin
    dbedtPCL.Enabled:=False;
    dbedtQLC.Enabled:=True;
    dbedtPCL.Text:='0,00';
end;
end;

end.
