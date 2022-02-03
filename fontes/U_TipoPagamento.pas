unit U_TipoPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Grids, DBGrids, DB, StdCtrls, Mask,
  DBCtrls;

type
  TFrm_TipoPagamento = class(TForm)
    tlb1: TToolBar;
    btnnovo: TToolButton;
    btnalterar: TToolButton;
    btnexcluir: TToolButton;
    btnimprimi: TToolButton;
    btn2: TToolButton;
    btncancelar: TToolButton;
    btnsalvar: TToolButton;
    btn5: TToolButton;
    btnfechar: TToolButton;
    il1: TImageList;
    lbl1: TLabel;
    dbedtID_PAGAMENTO: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    dbedtDESCRICAO: TDBEdit;
    dbgrd1: TDBGrid;
    procedure btnnovoClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds1StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TipoPagamento: TFrm_TipoPagamento;

implementation

uses U_Modulo;

{$R *.dfm}

procedure TFrm_TipoPagamento.btnalterarClick(Sender: TObject);
begin
  DM.cdspagamento.Edit;
  dbedtDESCRICAO.SetFocus;
end;

procedure TFrm_TipoPagamento.btncancelarClick(Sender: TObject);
begin
  DM.cdspagamento.Cancel;
end;

procedure TFrm_TipoPagamento.btnexcluirClick(Sender: TObject);
begin
  if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

    DM.cdspagamento.Delete;
    DM.cdspagamento.ApplyUpdates(0);
    DM.cdspagamento.Close;
    DM.cdspagamento.Open;

end;

procedure TFrm_TipoPagamento.btnfecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_TipoPagamento.btnnovoClick(Sender: TObject);
begin
  DM.cdspagamento.Insert;
  dbedtDESCRICAO.SetFocus;
end;

procedure TFrm_TipoPagamento.btnsalvarClick(Sender: TObject);
begin
DM.cdspagamento.ApplyUpdates(0);
DM.cdspagamento.Close;
DM.cdspagamento.Open;
end;

procedure TFrm_TipoPagamento.ds1StateChange(Sender: TObject);
begin
    btnnovo.Enabled:=ds1.State in [dsBrowse];
    btnsalvar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnexcluir.Enabled:=ds1.State in [dsbrowse];
    btncancelar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnalterar.Enabled:=ds1.State in [dsbrowse];
    btnimprimi.Enabled:=ds1.State in [dsbrowse];


end;

procedure TFrm_TipoPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if dm.cdspagamento.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
    DM.cdspagamento.Close;
end;
end;

procedure TFrm_TipoPagamento.FormShow(Sender: TObject);
begin
  DM.cdspagamento.Open;
end;

end.
