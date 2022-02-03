unit U_Senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, DB, ExtCtrls, Buttons, Grids,
  DBGrids;

type
  Tfrm_senha = class(TForm)
    pnl1: TPanel;
    ds1: TDataSource;
    pgc1: TPageControl;
    ts1: TTabSheet;
    lbl1: TLabel;
    dbedtNOME: TDBEdit;
    lbl2: TLabel;
    dbedtUSUARIO: TDBEdit;
    lbl3: TLabel;
    dbedtSENHA: TDBEdit;
    lbl4: TLabel;
    dbedtNIVEL: TDBEdit;
    ts2: TTabSheet;
    lbl5: TLabel;
    pnl2: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_senha: Tfrm_senha;

implementation

uses U_Modulo;

{$R *.dfm}

procedure Tfrm_senha.btn1Click(Sender: TObject);
begin
  DM.CDSlogin.Insert;
  dbedtNOME.SetFocus;
end;

procedure Tfrm_senha.btn2Click(Sender: TObject);
begin
    DM.CDSlogin.ApplyUpdates(0);
    DM.CDSlogin.Close;
    DM.CDSlogin.Open;
end;

procedure Tfrm_senha.btn3Click(Sender: TObject);
begin
   if MessageBox(0, 'Deseja realmente excluir o registro corrente?', 'Excluir ' +
     'Registro', MB_ICONQUESTION or MB_OKCANCEL) = mrOk then
     begin
    DM.CDSlogin.Delete;
    DM.CDSlogin.ApplyUpdates(0);
    DM.CDSlogin.Close;
    DM.CDSlogin.Open;

end;
end;

procedure Tfrm_senha.btn4Click(Sender: TObject);
begin
DM.CDSlogin.Cancel;
end;

procedure Tfrm_senha.btn5Click(Sender: TObject);
begin
DM.CDSlogin.Edit;
dbedtNOME.SetFocus;
end;

end.
