unit U_Transporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList,
  ToolWin, DB, Mask, DBCtrls;

type
  TFrm_transporte = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    busca: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ds1: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
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
    btn4: TToolButton;
    btnultimo: TToolButton;
    il2: TImageList;
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnlocalizarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btncancelaClick(Sender: TObject);
    procedure btnsalvaClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ds1StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_transporte: TFrm_transporte;

implementation

uses U_Modulo, U_RelCliente, U_Empresa, U_RelTransporte;

{$R *.dfm}

procedure TFrm_transporte.btnapagarClick(Sender: TObject);
begin
if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

DM.cdstransporte.Delete;
DM.cdstransporte.ApplyUpdates(0);
DM.cdstransporte.Close;
DM.cdstransporte.Open;

end;

procedure TFrm_transporte.btncancelaClick(Sender: TObject);
begin
DM.cdstransporte.Cancel;
end;

procedure TFrm_transporte.btneditarClick(Sender: TObject);
begin
DM.cdstransporte.Edit;
DBEdit2.SetFocus;
end;

procedure TFrm_transporte.btnimprimirClick(Sender: TObject);
begin
      try
      Application.CreateForm(Tfrm_RelTransporte,frm_RelTransporte);
      frm_RelTransporte.RelTransporte.Preview
      finally
        frm_RelTransporte.Free;
      end;

end;

procedure TFrm_transporte.btnlocalizarClick(Sender: TObject);
begin
IF PageControl1.ActivePage = TabSheet1 THEN
    PageControl1.ActivePage:=TabSheet2
    ELSE
    PageControl1.ActivePage:=TabSheet1;

end;

procedure TFrm_transporte.btnnovoClick(Sender: TObject);
begin
DM.cdstransporte.Insert;
DBEdit2.SetFocus;
end;

procedure TFrm_transporte.btnsairClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_transporte.btnsalvaClick(Sender: TObject);
begin
DM.cdstransporte.ApplyUpdates(0);
DM.cdstransporte.Close;
DM.cdstransporte.Open;
end;

procedure TFrm_transporte.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    SelectNext(ActiveControl,true,true);
    Key:=#0;
  end;

end;

procedure TFrm_transporte.ds1StateChange(Sender: TObject);
begin
        btnnovo.Enabled:=ds1.State in [dsBrowse];
        btnsalva.Enabled:=ds1.State in [dsinsert,dsedit];
        btnapagar.Enabled:=ds1.State in [dsbrowse];
        btncancela.Enabled:=ds1.State in [dsinsert,dsedit];
        btneditar.Enabled:=ds1.State in [dsbrowse];
        btnimprimir.Enabled:=ds1.State in [dsbrowse];
        btnlocalizar.Enabled:=ds1.State in [dsbrowse];
        btnsair.Enabled:=ds1.State in [dsBrowse];
end;

procedure TFrm_transporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dm.cdstransporte.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
  end;
    DM.cdstransporte.Close;
end;

procedure TFrm_transporte.FormShow(Sender: TObject);
begin
DM.cdstransporte.Open;
end;

end.
