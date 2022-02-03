unit U_ContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin,
  ImgList, DBCtrls, DB, Mask;

type
  TFrm_contasreceber = class(TForm)
    il1: TImageList;
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
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl2: TPanel;
    lbl15: TLabel;
    edtbusca: TEdit;
    btn7: TBitBtn;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    dbedtID_CONTARECEBER: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    dblkcbbID_CLIENTE: TDBLookupComboBox;
    dscliente: TDataSource;
    lbl3: TLabel;
    dbedtREC_DATACONTA: TDBEdit;
    lbl4: TLabel;
    dbedtREC_REFERENTE: TDBEdit;
    lbl5: TLabel;
    dbedtREC_DOCUMENTO: TDBEdit;
    lbl6: TLabel;
    dbedtREC_DATAVENCIMENTO: TDBEdit;
    lbl7: TLabel;
    dbedtREC_VALORCONTA: TDBEdit;
    lbl11: TLabel;
    dbedtREC_TOTAL: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure dblkcbbID_CLIENTEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_contasreceber: TFrm_contasreceber;

implementation

uses U_Modulo;

{$R *.dfm}

procedure TFrm_contasreceber.btn3Click(Sender: TObject);
begin
DM.CDScontasreceber.Prior;
end;

procedure TFrm_contasreceber.btn4Click(Sender: TObject);
begin
  DM.CDScontasreceber.Next;
end;

procedure TFrm_contasreceber.btnalterarClick(Sender: TObject);
begin
    DM.CDScontasreceber.edit;
    pgc1.ActivePage:=ts1;
    dblkcbbID_CLIENTE.SetFocus;
end;

procedure TFrm_contasreceber.btncancelarClick(Sender: TObject);
begin
      DM.CDScontasreceber.cancel;
end;

procedure TFrm_contasreceber.btnexcluirClick(Sender: TObject);
begin
      if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then
      DM.CDScontasreceber.Delete;
      DM.CDScontasreceber.ApplyUpdates(0);
      DM.CDScontasreceber.Close;
      DM.CDScontasreceber.Open;

end;

procedure TFrm_contasreceber.btnfecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_contasreceber.btnlocalizaClick(Sender: TObject);
begin
  IF pgc1.ActivePage = ts1 THEN
    pgc1.ActivePage:=ts2
    ELSE
    pgc1.ActivePage:=ts1;

end;

procedure TFrm_contasreceber.btnnovoClick(Sender: TObject);
begin
    DM.CDScontasreceber.Insert;
    pgc1.ActivePage:=ts1;
    dblkcbbID_CLIENTE.SetFocus;
end;

procedure TFrm_contasreceber.btnprimeiroClick(Sender: TObject);
begin
DM.CDScontasreceber.First;
end;

procedure TFrm_contasreceber.btnsalvarClick(Sender: TObject);
begin
      DM.CDScontasreceber.ApplyUpdates(0);
      DM.CDScontasreceber.Close;
      DM.CDScontasreceber.Open;

end;

procedure TFrm_contasreceber.btnultimoClick(Sender: TObject);
begin
  DM.CDScontasreceber.Last;
end;

procedure TFrm_contasreceber.dblkcbbID_CLIENTEKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
    begin
      SelectNext(ActiveControl,true,true);
      Key:=#0;

    end;
end;

procedure TFrm_contasreceber.ds1StateChange(Sender: TObject);
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

procedure TFrm_contasreceber.FormShow(Sender: TObject);
begin
DM.cdscliente.Open;
DM.CDScontasreceber.Open;
end;

end.
