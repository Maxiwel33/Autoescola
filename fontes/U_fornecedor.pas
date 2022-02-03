unit U_fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList,
  ToolWin, DB, Mask, DBCtrls;

type
  Tfrm_fornecedor = class(TForm)
    tlb1: TToolBar;
    btnnovo: TToolButton;
    btnalterar: TToolButton;
    btnexcluir: TToolButton;
    btnlocaliza: TToolButton;
    btnimprimi: TToolButton;
    btn2: TToolButton;
    btncancelar: TToolButton;
    btnsalvar: TToolButton;
    btn5: TToolButton;
    btnfechar: TToolButton;
    btn1: TToolButton;
    btnprimeiro: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btnultimo: TToolButton;
    il1: TImageList;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl2: TPanel;
    lbl15: TLabel;
    edtbusca: TEdit;
    btn7: TBitBtn;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    dbedtID_FORNECEDOR: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    dbedtFORNECEDOR: TDBEdit;
    lbl3: TLabel;
    dbedtENDERECO: TDBEdit;
    lbl4: TLabel;
    dbedtNUMERO: TDBEdit;
    lbl5: TLabel;
    dbedtBAIRRO: TDBEdit;
    lbl6: TLabel;
    dbedtCEP: TDBEdit;
    lbl7: TLabel;
    dbedtCIDADE: TDBEdit;
    lbl8: TLabel;
    dbedtFONE: TDBEdit;
    lbl9: TLabel;
    dbedtFAX: TDBEdit;
    lbl10: TLabel;
    dbedtCELULAR: TDBEdit;
    lbl11: TLabel;
    dbedtCONTATO: TDBEdit;
    lbl12: TLabel;
    dbedtEMAIL: TDBEdit;
    lbl13: TLabel;
    dbedtHP: TDBEdit;
    lbl14: TLabel;
    dbedtCNPJ: TDBEdit;
    lbl16: TLabel;
    dbedtIE: TDBEdit;
    procedure dbedtFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure btnnovoClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds1StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fornecedor: Tfrm_fornecedor;

implementation

uses U_Modulo;

{$R *.dfm}

procedure Tfrm_fornecedor.btn3Click(Sender: TObject);
begin
  DM.CDSfornecedor.Prior;
end;

procedure Tfrm_fornecedor.btn4Click(Sender: TObject);
begin
  DM.CDSfornecedor.Next;
end;

procedure Tfrm_fornecedor.btnalterarClick(Sender: TObject);
begin
    dm.CDSfornecedor.edit;
    pgc1.ActivePage:=ts1;
    dbedtFORNECEDOR.SetFocus;

end;

procedure Tfrm_fornecedor.btncancelarClick(Sender: TObject);
begin
  DM.CDSfornecedor.Cancel;
end;

procedure Tfrm_fornecedor.btnexcluirClick(Sender: TObject);
begin
  if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

    DM.CDSfornecedor.Delete;
    DM.CDSfornecedor.ApplyUpdates(0);
    DM.CDSfornecedor.Close;
    DM.CDSfornecedor.Open;

end;

procedure Tfrm_fornecedor.btnfecharClick(Sender: TObject);
begin
Close;
end;

procedure Tfrm_fornecedor.btnlocalizaClick(Sender: TObject);
begin
  IF pgc1.ActivePage = ts1 THEN
    pgc1.ActivePage:=ts2
    ELSE
    pgc1.ActivePage:=ts1;

end;

procedure Tfrm_fornecedor.btnnovoClick(Sender: TObject);
begin
    dm.CDSfornecedor.Insert;
    pgc1.ActivePage:=ts1;
    dbedtFORNECEDOR.SetFocus;
end;

procedure Tfrm_fornecedor.btnprimeiroClick(Sender: TObject);
begin
  DM.CDSfornecedor.First;
end;

procedure Tfrm_fornecedor.btnsalvarClick(Sender: TObject);
begin
  DM.CDSfornecedor.ApplyUpdates(0);
  DM.CDSfornecedor.Close;
  DM.CDSfornecedor.Open;
end;

procedure Tfrm_fornecedor.btnultimoClick(Sender: TObject);
begin
  DM.CDSfornecedor.Last;
end;

procedure Tfrm_fornecedor.dbedtFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
  SelectNext(ActiveControl,true,true);
  Key:=#0;
end;

end;

procedure Tfrm_fornecedor.ds1StateChange(Sender: TObject);
begin
  btnnovo.Enabled:=ds1.State in [dsBrowse];
  btnsalvar.Enabled:=ds1.State in [dsinsert,dsedit];
  btnexcluir.Enabled:=ds1.State in [dsbrowse];
  btncancelar.Enabled:=ds1.State in [dsinsert,dsedit];
  btnalterar.Enabled:=ds1.State in [dsbrowse];
  btnimprimi.Enabled:=ds1.State in [dsbrowse];
  btnlocaliza.Enabled:=ds1.State in [dsbrowse];
  btnfechar.Enabled:=ds1.State in [dsBrowse];

end;

procedure Tfrm_fornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.CDSfornecedor.Close;
end;

procedure Tfrm_fornecedor.FormShow(Sender: TObject);
begin
DM.CDSfornecedor.Open;
end;

end.
