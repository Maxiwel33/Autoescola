unit U_Manutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, DB, Mask, Grids, DBGrids, ImgList,
  ComCtrls, ToolWin, Buttons;

type
  TFrm_manutencao = class(TForm)
    ds1: TDataSource;
    dsfuncionario: TDataSource;
    dsoficina: TDataSource;
    dstransporte: TDataSource;
    il1: TImageList;
    pnl2: TPanel;
    il2: TImageList;
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
    pnl4: TPanel;
    btn7: TBitBtn;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtID_MANUTENCAO: TDBEdit;
    dblkcbbID_FUNCIONARIO: TDBLookupComboBox;
    dblkcbbID_OFICINA: TDBLookupComboBox;
    dblkcbbID_TRANSPORTE: TDBLookupComboBox;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    dbedtDATA: TDBEdit;
    lbl12: TLabel;
    dbedtKMINICIAL: TDBEdit;
    lbl13: TLabel;
    dbedtKMFINAL: TDBEdit;
    lbl14: TLabel;
    dbedtKM_TOTAL: TDBEdit;
    lbl15: TLabel;
    dbmmoPROBLEMA: TDBMemo;
    lbl16: TLabel;
    dbedtDTAENTREGA: TDBEdit;
    lbl17: TLabel;
    dbedtGARANTIA: TDBEdit;
    lbl18: TLabel;
    dbedtDTARECEBIMENTO: TDBEdit;
    lbl19: TLabel;
    dbedtPECA: TDBEdit;
    dbtxtPLACA: TDBText;
    lbl20: TLabel;
    dbedtMPG: TDBEdit;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl21: TLabel;
    lbl22: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbedtKM_TOTALExit(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btnimprimiClick(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure dblkcbbID_FUNCIONARIOKeyPress(Sender: TObject; var Key: Char);
    procedure btnlocalizaClick(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_manutencao: TFrm_manutencao;

implementation

uses U_Modulo, U_RelManutencao;

{$R *.dfm}

procedure TFrm_manutencao.btn1Click(Sender: TObject);
begin
DM.CDSmanutencao.Insert;
dblkcbbID_FUNCIONARIO.SetFocus;
end;

procedure TFrm_manutencao.btn2Click(Sender: TObject);
begin
  DM.CDSmanutencao.ApplyUpdates(0);
  DM.CDSmanutencao.Close;
  DM.CDSmanutencao.Open;
end;

procedure TFrm_manutencao.btn3Click(Sender: TObject);
begin
    DM.CDSmanutencao.Prior;
end;

procedure TFrm_manutencao.btn4Click(Sender: TObject);
begin
   DM.CDSmanutencao.Next;
end;

procedure TFrm_manutencao.btn7Click(Sender: TObject);
var
d1,d2:TDateTime;
begin
 with DM.CDSmanutencao do
 begin
    d1:=dtp1.DateTime;
    d2:=dtp2.DateTime;
 begin
   close;
    CommandText :='select * from manutecao where data >= :d1 and data<= :d2';
    Params.ParamByName('d1').AsDate:=(d1);
    Params.ParamByName('d2').AsDate:=(d2);
    Open;
 end;
 end;

end;

procedure TFrm_manutencao.btnalterarClick(Sender: TObject);
begin
  DM.CDSmanutencao.Edit;
  pgc1.ActivePage:=ts1;
  dblkcbbID_FUNCIONARIO.SetFocus;
end;

procedure TFrm_manutencao.btncancelarClick(Sender: TObject);
begin
    DM.CDSmanutencao.Cancel;
end;

procedure TFrm_manutencao.btnfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_manutencao.btnimprimiClick(Sender: TObject);
begin
   Frm_RelManutencao.QuickRep1.Preview;
end;

procedure TFrm_manutencao.btnlocalizaClick(Sender: TObject);
begin
  if pgc1.ActivePage =ts1 then
  pgc1.ActivePage:=ts2
  else
  pgc1.ActivePage:=ts1;

end;

procedure TFrm_manutencao.btnnovoClick(Sender: TObject);
begin
  DM.CDSmanutencao.Insert;
  pgc1.ActivePage:=ts1;
  dblkcbbID_FUNCIONARIO.SetFocus;
end;

procedure TFrm_manutencao.btnprimeiroClick(Sender: TObject);
begin
  DM.CDSmanutencao.First;
end;

procedure TFrm_manutencao.btnsalvarClick(Sender: TObject);
begin
  DM.CDSmanutencao.ApplyUpdates(0);
  DM.CDSmanutencao.Close;
  DM.CDSmanutencao.Open;
end;

procedure TFrm_manutencao.btnultimoClick(Sender: TObject);
begin
    DM.CDSmanutencao.Last;
end;

procedure TFrm_manutencao.dbedtKM_TOTALExit(Sender: TObject);
begin
   DM.CDSmanutencaoMPG.AsFloat:=(DM.CDSmanutencaoKMFINAL.AsFloat-DM.CDSmanutencaoKMINICIAL.AsFloat)/DM.CDSmanutencaoLITROS.AsFloat;
end;

procedure TFrm_manutencao.dblkcbbID_FUNCIONARIOKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key=#13 then
    BEGIN
      SelectNext(ActiveControl,true,true);
      Key:=#0;
    END;

end;

procedure TFrm_manutencao.ds1StateChange(Sender: TObject);
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

procedure TFrm_manutencao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dm.CDSmanutencao.State in [dsinsert,dsedit] then
  begin
  ShowMessage('Salve ou cancele as operações antes de sair');
  Action:=caNone;
  Exit;
  end;
  DM.cdsfuncionario.Close;
  DM.cdstransporte.Close;
  DM.CDSoficina.Close;

end;

procedure TFrm_manutencao.FormShow(Sender: TObject);
begin
  DM.cdsfuncionario.Open;
  DM.cdstransporte.Open;
  DM.CDSoficina.Open;
  DM.CDSmanutencao.Open;

  dtp1.DateTime:= now -2;
  dtp2.DateTime:=Now;
end;

end.
