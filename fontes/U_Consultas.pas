unit U_Consultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBCtrls, Grids, DBGrids;

type
  Tfrm_consultasparc = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    edt1: TEdit;
    pnl4: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    dbtxtENDERECO: TDBText;
    dbtxtNUMERO: TDBText;
    dbtxtUF: TDBText;
    dbtxtBAIRRO: TDBText;
    dbtxtCEP: TDBText;
    dbtxtCPF: TDBText;
    dbtxtFONE: TDBText;
    dbtxtCELULAR: TDBText;
    dbtxtID_CLIENTE: TDBText;
    dbtxtRG: TDBText;
    dscliente: TDataSource;
    dbtxtnome: TDBText;
    dbtxtcidade: TDBText;
    ds1: TDataSource;
    pnl5: TPanel;
    dbgrd1: TDBGrid;
    lbl13: TLabel;
    pnl6: TPanel;
    dbtxttotal: TDBText;
    lbl14: TLabel;
    dbtxtcontagem: TDBText;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_consultasparc: Tfrm_consultasparc;

implementation

uses U_Modulo;

{$R *.dfm}

procedure Tfrm_consultasparc.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_consultasparc.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if not odd(dm.CDSparcela.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd1.Canvas.Brush.Color := clMoneyGreen;
      dbgrd1.Canvas.FillRect(Rect);
      dbgrd1.DefaultDrawDataCell(rect,Column.Field,state);

end;
end;

procedure Tfrm_consultasparc.edt1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
  if not dm.CDScliente.Locate('id_cliente',edt1.Text,[loCaseInsensitive,loPartialKey]) then
    begin
    ShowMessage('Cliente não cadastrado');
    edt1.Text:='';
    Exit;


end;
end;
end;

procedure Tfrm_consultasparc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DM.cdscliente.Close;
    DM.CDSparcela.Close;
end;

procedure Tfrm_consultasparc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F4 then
   CLOSE;

end;

procedure Tfrm_consultasparc.FormShow(Sender: TObject);
begin
  DM.cdscliente.Open;
  DM.CDSparcela.Open;
  edt1.SetFocus;
end;

end.
