unit U_Empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB, ExtDlgs;

type
  TFrm_empresa = class(TForm)
    pnl1: TPanel;
    ds1: TDataSource;
    lbl2: TLabel;
    dbedtNOMEFANTAZIA: TDBEdit;
    lbl3: TLabel;
    dbedtRAZAOSOCIAL: TDBEdit;
    lbl4: TLabel;
    dbedtCNPJ: TDBEdit;
    lbl5: TLabel;
    dbedtIE: TDBEdit;
    lbl6: TLabel;
    dbedtENDERECO: TDBEdit;
    lbl7: TLabel;
    dbedtNUMERO: TDBEdit;
    lbl8: TLabel;
    dbedtCIDADE: TDBEdit;
    lbl9: TLabel;
    dbedtUF: TDBEdit;
    lbl10: TLabel;
    dbedtBAIRRO: TDBEdit;
    lbl11: TLabel;
    dbedtCEP: TDBEdit;
    lbl12: TLabel;
    dbedtFONE: TDBEdit;
    lbl13: TLabel;
    dbedtFAX: TDBEdit;
    lbl14: TLabel;
    dbedtEMAIL: TDBEdit;
    lbl15: TLabel;
    dbedtHP: TDBEdit;
    lbl16: TLabel;
    dbedtLOGO: TDBEdit;
    pnl2: TPanel;
    btn1: TBitBtn;
    img1: TImage;
    pnl3: TPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    dlgOpenPic1: TOpenPictureDialog;
    btn5: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbedtLOGOChange(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_empresa: TFrm_empresa;

implementation

uses U_Modulo;

{$R *.dfm}

procedure TFrm_empresa.btn1Click(Sender: TObject);
begin
if dlgOpenPic1.Execute then
dbedtLOGO.Text:=dlgOpenPic1.FileName;

end;

procedure TFrm_empresa.btn2Click(Sender: TObject);
begin
    dm.cdsempresa.ApplyUpdates(0);
    dm.cdsempresa.Close;
    DM.cdsempresa.Open;
end;

procedure TFrm_empresa.btn3Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_empresa.btn4Click(Sender: TObject);
begin

    DM.cdscliente.Append;
    dbedtNOMEFANTAZIA.SetFocus;
end;

procedure TFrm_empresa.btn5Click(Sender: TObject);
begin
DM.cdsempresa.Edit;
end;

procedure TFrm_empresa.dbedtLOGOChange(Sender: TObject);
begin
    IF NOT FileExists(dbedtLOGO.Text) THEN
  img1.Picture:=NIL
  else
    img1.Picture.LoadFromFile(dbedtLOGO.Text);

end;

procedure TFrm_empresa.FormCreate(Sender: TObject);
begin
    DM.cdsempresa.Open;
end;

end.
