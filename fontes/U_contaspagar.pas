unit U_contaspagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList,
  ToolWin, DB, Mask, DBCtrls;

type
  Tfrm_contaspagar = class(TForm)
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
    dbedtID_CONTASPAGAR: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtPAGAR_DATACONTA: TDBEdit;
    lbl4: TLabel;
    dbedtPAGAR_REFERENTE: TDBEdit;
    lbl5: TLabel;
    dbedtPAGAR_DOCUMENTO: TDBEdit;
    lbl6: TLabel;
    dbedtPAGAR_DATAVENCIMENTO: TDBEdit;
    lbl7: TLabel;
    dbedtPAGAR_VALORCONTA: TDBEdit;
    lbl8: TLabel;
    dbedtPAGAR_PORTADOR: TDBEdit;
    lbl9: TLabel;
    dbedtPAGAR_OBSERVACAO: TDBEdit;
    lbl22: TLabel;
    dbedtPAGAR_TOTAL: TDBEdit;
    dblkcbbID_FORNECEDOR: TDBLookupComboBox;
    dsfornece: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure dblkcbbID_FORNECEDORKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_contaspagar: Tfrm_contaspagar;

implementation

uses U_Modulo;

{$R *.dfm}

procedure Tfrm_contaspagar.btn3Click(Sender: TObject);
begin
      DM.CDScontaspagar.Prior;
end;

procedure Tfrm_contaspagar.btn4Click(Sender: TObject);
begin
      DM.CDScontaspagar.Next;
end;

procedure Tfrm_contaspagar.btnalterarClick(Sender: TObject);
begin
  DM.CDScontaspagar.Edit;
  pgc1.ActivePage:=ts1;
  dblkcbbID_FORNECEDOR.SetFocus;

end;

procedure Tfrm_contaspagar.btncancelarClick(Sender: TObject);
begin
  DM.CDScontaspagar.Cancel;
end;

procedure Tfrm_contaspagar.btnexcluirClick(Sender: TObject);
begin
    if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then
      DM.CDScontaspagar.Delete;
      DM.CDScontaspagar.ApplyUpdates(0);
      DM.CDScontaspagar.Close;
      DM.CDScontaspagar.Open;

end;

procedure Tfrm_contaspagar.btnfecharClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_contaspagar.btnlocalizaClick(Sender: TObject);
begin
  IF pgc1.ActivePage = ts1 THEN
    pgc1.ActivePage:=ts2
    ELSE
    pgc1.ActivePage:=ts1;

    end;

procedure Tfrm_contaspagar.btnnovoClick(Sender: TObject);
begin
  DM.CDScontaspagar.Insert;
  pgc1.ActivePage:=ts1;
  dblkcbbID_FORNECEDOR.SetFocus;

end;

procedure Tfrm_contaspagar.btnprimeiroClick(Sender: TObject);
begin
      DM.CDScontaspagar.First;
end;

procedure Tfrm_contaspagar.btnsalvarClick(Sender: TObject);
begin
      if dbedtPAGAR_VALORCONTA.Text = '' then
      begin
      ShowMessage('Digite o valor a ser pago!');
      dbedtPAGAR_VALORCONTA.SetFocus;
      Exit;
      end else

      DM.CDScontaspagar.ApplyUpdates(0);
      DM.CDScontaspagar.Close;
      DM.CDScontaspagar.Open;

end;


procedure Tfrm_contaspagar.btnultimoClick(Sender: TObject);
begin
      DM.CDScontaspagar.Last;
end;

procedure Tfrm_contaspagar.dblkcbbID_FORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
 begin
   SelectNext(ActiveControl,true,true);
   Key:=#0;
 end;

end;

procedure Tfrm_contaspagar.ds1StateChange(Sender: TObject);
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

procedure Tfrm_contaspagar.FormShow(Sender: TObject);
begin
DM.CDSfornecedor.Open;
DM.CDScontaspagar.Open;
end;

end.
