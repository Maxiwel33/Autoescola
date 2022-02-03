unit U_Posto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList,
  ToolWin, DB, Mask, DBCtrls;

type
  TFrm_posto = class(TForm)
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
    dbedtID_POSTO: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    dbedtNOME: TDBEdit;
    lbl3: TLabel;
    dbedtCIDADE: TDBEdit;
    lbl4: TLabel;
    dbedtESTADO: TDBEdit;
    lbl5: TLabel;
    dbedtBANDEIRA: TDBEdit;
    procedure btnnovoClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds1StateChange(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure btnimprimiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_posto: TFrm_posto;

implementation

uses U_Modulo, U_RelCliente, U_Empresa, U_RelCombustivel;

{$R *.dfm}

procedure TFrm_posto.btnalterarClick(Sender: TObject);
begin
  dm.cdsposto.Edit;
  pgc1.ActivePage:=ts1;
  dbedtNOME.SetFocus;

end;

procedure TFrm_posto.btncancelarClick(Sender: TObject);
begin
    DM.CDSposto.Cancel;
end;

procedure TFrm_posto.btnexcluirClick(Sender: TObject);
begin
   if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

  DM.CDSposto.Delete;
  DM.CDSposto.ApplyUpdates(0);
  DM.CDSposto.Close;
  DM.CDSposto.Open;

end;

procedure TFrm_posto.btnfecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_posto.btnimprimiClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_RelPosto,Frm_RelPosto);
    Frm_RelPosto.RelPosto.Preview;
    finally
      Frm_RelPosto.Free;
    end;

end;

procedure TFrm_posto.btnlocalizaClick(Sender: TObject);
begin
          IF pgc1.ActivePage = ts1 then
   pgc1.ActivePage:=ts2
   else
   pgc1.ActivePage:=ts1;

end;

procedure TFrm_posto.btnnovoClick(Sender: TObject);
begin
  dm.cdsposto.Insert;
  pgc1.ActivePage:=ts1;
  dbedtNOME.SetFocus;
end;

procedure TFrm_posto.btnsalvarClick(Sender: TObject);
begin
    DM.CDSposto.ApplyUpdates(0);
    DM.CDSposto.Close;
    DM.CDSposto.Open;
end;

procedure TFrm_posto.ds1StateChange(Sender: TObject);
begin

    btnnovo.Enabled:=ds1.State in [dsBrowse];
    btnsalvar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnexcluir.Enabled:=ds1.State in [dsbrowse];
    btncancelar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnalterar.Enabled:=ds1.State in [dsbrowse];
    btnlocaliza.Enabled:=ds1.State in [dsbrowse];
    btnimprimi.Enabled:=ds1.State in [dsbrowse];

end;

procedure TFrm_posto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if dm.CDSposto.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
    DM.CDSposto.Close;
  end;
end;

procedure TFrm_posto.FormShow(Sender: TObject);
begin
    DM.CDSposto.Open;

end;

end.
