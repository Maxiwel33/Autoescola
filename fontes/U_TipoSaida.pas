unit U_TipoSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, DB, Mask, DBCtrls;

type
  TFrm_tiposaida = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel1: TPanel;
    lbl15: TLabel;
    edtbusca: TEdit;
    btn5: TBitBtn;
    dbgrd1: TDBGrid;
    il1: TImageList;
    tlb1: TToolBar;
    btnnovo: TToolButton;
    btnalterar: TToolButton;
    btnexcluir: TToolButton;
    btnlocaliza: TToolButton;
    btnimprimi: TToolButton;
    btn6: TToolButton;
    btncancelar: TToolButton;
    btnsalvar: TToolButton;
    btn7: TToolButton;
    btnfechar: TToolButton;
    btn1: TToolButton;
    btnprimeiro: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btnultimo: TToolButton;
    lbl1: TLabel;
    dbedtID_SAIDA: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    dbedtCODIGO: TDBEdit;
    lbl3: TLabel;
    dbedtDESCRICAO: TDBEdit;
    procedure btnnovoClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds1StateChange(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure btnimprimiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_tiposaida: TFrm_tiposaida;

implementation

uses U_Modulo, U_RelTiposaida;

{$R *.dfm}

procedure TFrm_tiposaida.btnalterarClick(Sender: TObject);
begin
  DM.cdstiposaida.Edit;
    pgc1.ActivePage:=ts1;
  dbedtCODIGO.SetFocus;
end;

procedure TFrm_tiposaida.btncancelarClick(Sender: TObject);
begin
  DM.cdstiposaida.Cancel;
end;

procedure TFrm_tiposaida.btnfecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_tiposaida.btnimprimiClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_Despesas,Frm_Despesas);
    Frm_Despesas.RelTipoSaida.Preview;
    finally
    Frm_Despesas.Free;
    end;
end;

procedure TFrm_tiposaida.btnlocalizaClick(Sender: TObject);
begin
    IF pgc1.ActivePage = ts1 then
   pgc1.ActivePage:=ts2
   else
   pgc1.ActivePage:=ts1;

end;

procedure TFrm_tiposaida.btnnovoClick(Sender: TObject);
begin
  dm.cdstiposaida.Insert;
  pgc1.ActivePage:=ts1;
  dbedtCODIGO.SetFocus;
end;

procedure TFrm_tiposaida.btnsalvarClick(Sender: TObject);
begin
  DM.cdstiposaida.ApplyUpdates(0);
  DM.cdstiposaida.Close;
  DM.cdstiposaida.Open;
end;

procedure TFrm_tiposaida.ds1StateChange(Sender: TObject);
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

procedure TFrm_tiposaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dm.cdstiposaida.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
  end;
  DM.cdstiposaida.Close;
end;

procedure TFrm_tiposaida.FormShow(Sender: TObject);
begin
  DM.cdstiposaida.Open;
end;

end.
