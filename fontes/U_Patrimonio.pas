unit U_Patrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, ImgList, ToolWin, FMTBcd, SqlExpr;

type
  TFrm_patrimonio = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel1: TPanel;
    lbl15: TLabel;
    edtbusca: TEdit;
    btn4: TBitBtn;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    dbedtID_PATRIMONIO: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    dbedtDESCRICAO: TDBEdit;
    lbl4: TLabel;
    dbedtPATRIMONIO: TDBEdit;
    lbl5: TLabel;
    dbedtMODELO: TDBEdit;
    lbl6: TLabel;
    dbedtMARCA: TDBEdit;
    lbl7: TLabel;
    dbedtQUANT: TDBEdit;
    lbl8: TLabel;
    dbedtVALOR: TDBEdit;
    lbl9: TLabel;
    dbedtTOTAL: TDBEdit;
    Panel3: TPanel;
    lbl10: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    soma: TSQLQuery;
    dssoma: TDataSource;
    somaSUM: TFloatField;
    il2: TImageList;
    tlb1: TToolBar;
    btnnovo: TToolButton;
    btneditar: TToolButton;
    btnapagar: TToolButton;
    btnlocalizar: TToolButton;
    btnimprimir: TToolButton;
    btn2: TToolButton;
    btncancela: TToolButton;
    btnsalva: TToolButton;
    btn5: TToolButton;
    btnsair: TToolButton;
    btn1: TToolButton;
    btnprimeiro: TToolButton;
    btn3: TToolButton;
    btn6: TToolButton;
    btnultimo: TToolButton;
    dbtxtsoma: TDBText;
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btncancelaClick(Sender: TObject);
    procedure btnsalvaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnlocalizarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure dbedtDESCRICAOKeyPress(Sender: TObject; var Key: Char);
    procedure ds1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_patrimonio: TFrm_patrimonio;

implementation

uses U_Modulo, U_RelCliente, U_Empresa, U_RelPatrimonio;

{$R *.dfm}

procedure TFrm_patrimonio.btn3Click(Sender: TObject);
begin
  DM.cdspatrimonio.Prior;
end;

procedure TFrm_patrimonio.btn6Click(Sender: TObject);
begin
  DM.cdspatrimonio.Next;
end;

procedure TFrm_patrimonio.btnapagarClick(Sender: TObject);
begin
if MessageDlg('Deseja realmente excluir o registro corrente?',mtConfirmation,[mbOK,mbCancel],0)=mrOk then
dm.cdspatrimonio.Delete;
dm.cdspatrimonio.ApplyUpdates(0);
dm.cdspatrimonio.Close;
dm.cdspatrimonio.Open;

soma.Close;
soma.Open;
end;

procedure TFrm_patrimonio.btncancelaClick(Sender: TObject);
begin
  dm.cdspatrimonio.Cancel;
end;

procedure TFrm_patrimonio.btneditarClick(Sender: TObject);
begin
dm.cdspatrimonio.Edit;
dbedtDESCRICAO.SetFocus;
end;

procedure TFrm_patrimonio.btnimprimirClick(Sender: TObject);
begin
    try
    Application.CreateForm(Tfrm_RelPatrimo,frm_RelPatrimo);
    frm_RelPatrimo.RelPatrimonio.Preview;
    finally
      frm_RelPatrimo.Free;
    end;

end;

procedure TFrm_patrimonio.btnlocalizarClick(Sender: TObject);
begin
    IF pgc1.ActivePage = ts1 then
   pgc1.ActivePage:=ts2
   else
   pgc1.ActivePage:=ts1;

end;

procedure TFrm_patrimonio.btnnovoClick(Sender: TObject);
begin
dm.cdspatrimonio.Insert;
dbedtDESCRICAO.SetFocus;
end;

procedure TFrm_patrimonio.btnprimeiroClick(Sender: TObject);
begin
  DM.cdspatrimonio.First;
end;

procedure TFrm_patrimonio.btnsairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_patrimonio.btnsalvaClick(Sender: TObject);
begin
  dm.cdspatrimonio.ApplyUpdates(0);
  dm.cdspatrimonio.Close;
  dm.cdspatrimonio.Open;

soma.Close;
soma.Open;
end;

procedure TFrm_patrimonio.btnultimoClick(Sender: TObject);
begin
  DM.cdspatrimonio.Last;
end;

procedure TFrm_patrimonio.dbedtDESCRICAOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
  SelectNext(ActiveControl,true,true);
  Key:=#0;
end;

end;

procedure TFrm_patrimonio.ds1StateChange(Sender: TObject);
begin
     btnnovo.Enabled:=ds1.State in [dsBrowse];
    btnsalva.Enabled:=ds1.State in [dsinsert,dsedit];
    btnapagar.Enabled:=ds1.State in [dsbrowse];
    btncancela.Enabled:=ds1.State in [dsinsert,dsedit];
    btneditar.Enabled:=ds1.State in [dsbrowse];
    btnlocalizar.Enabled:=ds1.State in [dsbrowse];
    btnimprimir.Enabled:=ds1.State in [dsbrowse];


end;

procedure TFrm_patrimonio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if dm.cdspatrimonio.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
    DM.cdspatrimonio.Close;
end;
end;

procedure TFrm_patrimonio.FormCreate(Sender: TObject);
begin
dm.cdspatrimonio.Open;

end;

end.
