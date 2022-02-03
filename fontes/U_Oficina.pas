unit U_Oficina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, ImgList, ToolWin;

type
  TFrm_Oficina = class(TForm)
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
    ds1: TDataSource;
    lbl1: TLabel;
    dbedtID_OFICINA: TDBEdit;
    lbl2: TLabel;
    dbedtOFICINA: TDBEdit;
    lbl3: TLabel;
    dbedtENDERECO: TDBEdit;
    lbl4: TLabel;
    dbedtNUMERO: TDBEdit;
    lbl5: TLabel;
    dbedtCIDADE: TDBEdit;
    lbl6: TLabel;
    dbedtUF: TDBEdit;
    lbl7: TLabel;
    dbedtBAIRRO: TDBEdit;
    lbl8: TLabel;
    dbedtCNPJ: TDBEdit;
    lbl9: TLabel;
    dbedtFONE: TDBEdit;
    lbl10: TLabel;
    dbedtFAX: TDBEdit;
    lbl11: TLabel;
    dbedtCONTATO: TDBEdit;
    lbl12: TLabel;
    dbedtCELULAR: TDBEdit;
    lbl13: TLabel;
    dbedtEMAIL: TDBEdit;
    pnl1: TPanel;
    lbl14: TLabel;
    edtbusca: TEdit;
    btn6: TBitBtn;
    dbgrd1: TDBGrid;
    procedure btnnovoClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds1StateChange(Sender: TObject);
    procedure dbedtOFICINAKeyPress(Sender: TObject; var Key: Char);
    procedure btnimprimiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Oficina: TFrm_Oficina;

implementation

uses U_Modulo, U_RelCliente, U_Empresa, U_RelOficinas;

{$R *.dfm}

procedure TFrm_Oficina.btnalterarClick(Sender: TObject);
begin
  DM.CDSoficina.Edit;
  pgc1.ActivePage:=ts1;
  dbedtOFICINA.SetFocus;
end;

procedure TFrm_Oficina.btncancelarClick(Sender: TObject);
begin
  DM.CDSoficina.Cancel;
end;

procedure TFrm_Oficina.btnexcluirClick(Sender: TObject);
begin
  if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

  DM.CDSoficina.Delete;
  DM.CDSoficina.ApplyUpdates(0);
  DM.CDSoficina.Close;
  DM.CDSoficina.Open;

end;

procedure TFrm_Oficina.btnfecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Oficina.btnimprimiClick(Sender: TObject);
begin
      try
      Application.CreateForm(TFrm_RelOficinas,Frm_RelOficinas);
      Frm_RelOficinas.RelOficina.Preview;
      finally
        Frm_RelOficinas.Free;
      end;

end;

procedure TFrm_Oficina.btnlocalizaClick(Sender: TObject);
begin
  IF pgc1.ActivePage = ts1 THEN
    pgc1.ActivePage:=ts2
    ELSE
    pgc1.ActivePage:=ts1;

end;

procedure TFrm_Oficina.btnnovoClick(Sender: TObject);
begin
  dm.CDSoficina.Insert;
  pgc1.ActivePage:=ts1;
  dbedtOFICINA.SetFocus;
end;

procedure TFrm_Oficina.btnsalvarClick(Sender: TObject);
begin
  DM.CDSoficina.ApplyUpdates(0);
  DM.CDSoficina.Close;
  DM.CDSoficina.Open;
end;

procedure TFrm_Oficina.dbedtOFICINAKeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 then
        begin
          SelectNext(ActiveControl,true,true);
          Key:=#0;
        end;

end;

procedure TFrm_Oficina.ds1StateChange(Sender: TObject);
begin
    btnnovo.Enabled:=ds1.State in [dsBrowse];
    btnsalvar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnexcluir.Enabled:=ds1.State in [dsbrowse];
    btncancelar.Enabled:=ds1.State in [dsinsert,dsedit];
    btnalterar.Enabled:=ds1.State in [dsbrowse];
    btnlocaliza.Enabled:=ds1.State in [dsbrowse];
    btnimprimi.Enabled:=ds1.State in [dsbrowse];

end;

procedure TFrm_Oficina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if dm.CDSoficina.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
    DM.CDSoficina.Close;
  end;
end;

procedure TFrm_Oficina.FormShow(Sender: TObject);
begin
  DM.CDSoficina.Open;
end;

end.
