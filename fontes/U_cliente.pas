unit U_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, StdCtrls, Buttons, ExtCtrls, DB, Mask,
  DBCtrls, Grids, DBGrids, ExtDlgs, QuickRpt, QRCtrls;

type
  TFrm_cliente = class(TForm)
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    btnnovo: TToolButton;
    btnalterar: TToolButton;
    btnexcluir: TToolButton;
    btnlocaliza: TToolButton;
    btnimprimi: TToolButton;
    ToolButton6: TToolButton;
    btncancelar: TToolButton;
    btnsalvar: TToolButton;
    ToolButton9: TToolButton;
    btnfechar: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    busca: TEdit;
    Label1: TLabel;
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
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    dbedtFOTO: TDBEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btn1: TToolButton;
    btnprimeiro: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btnultimo: TToolButton;
    img1: TImage;
    dlgOpenPic1: TOpenPictureDialog;
    procedure btnfecharClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnlocalizaClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbedtFOTOChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnimprimiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cliente: TFrm_cliente;

implementation

uses U_Modulo, U_Empresa, U_RelCliente;

{$R *.dfm}

procedure TFrm_cliente.btnexcluirClick(Sender: TObject);
begin
if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

DM.cdscliente.Delete;
DM.cdscliente.ApplyUpdates(0);
DM.cdscliente.Close;
DM.cdscliente.Open;
end;

procedure TFrm_cliente.btnprimeiroClick(Sender: TObject);
begin
dm.cdscliente.First;
btnultimo.Enabled:=True;
btnprimeiro.Enabled:=False;
end;

procedure TFrm_cliente.BitBtn1Click(Sender: TObject);
begin
with DM.cdscliente do
begin
  Close;
  CommandText:='select * from cliente where cliente like '+QuotedStr(busca.Text+'%');
  Open;
end;
end;

procedure TFrm_cliente.BitBtn2Click(Sender: TObject);
begin
if dlgOpenPic1.Execute then
dbedtFOTO.Text:=dlgOpenPic1.FileName;

end;

procedure TFrm_cliente.btn3Click(Sender: TObject);
begin
dm.cdscliente.Prior;
btnultimo.Enabled:=True;
end;

procedure TFrm_cliente.btn4Click(Sender: TObject);
begin
dm.cdscliente.Next;
btnprimeiro.Enabled:=True;
end;

procedure TFrm_cliente.btnultimoClick(Sender: TObject);
begin
dm.cdscliente.Last;
btnultimo.Enabled:=False;

end;

procedure TFrm_cliente.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    SelectNext(ActiveControl,true,true);
    Key:=#0;
  end;


end;

procedure TFrm_cliente.btncancelarClick(Sender: TObject);
begin
DM.cdscliente.Cancel;
PageControl1.ActivePage:=TabSheet1;
end;

procedure TFrm_cliente.ds1StateChange(Sender: TObject);
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

procedure TFrm_cliente.dbedtFOTOChange(Sender: TObject);
begin
IF NOT FileExists(dbedtFOTO.Text) THEN
img1.Picture:=NIL
else
img1.Picture.LoadFromFile(dbedtFOTO.Text);
end;

procedure TFrm_cliente.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if not odd(dm.cdscliente.RecNo) then
  if not (gdSelected in State) then
  begin
  DBGrid1.Canvas.Brush.Color := clMoneyGreen;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
end;
end;

procedure TFrm_cliente.btnalterarClick(Sender: TObject);
begin
DM.cdscliente.Edit;
PageControl1.ActivePage:=TabSheet1;
DBEdit2.SetFocus;
end;

procedure TFrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dm.cdscliente.State in [dsinsert,dsedit] then
begin
  ShowMessage('Salve ou cancele as operações antes de sair');
  Action:=caNone;
  Exit;
  DM.cdscliente.Close;
  end;

end;

procedure TFrm_cliente.FormShow(Sender: TObject);
begin
DM.cdscliente.Open;
end;

procedure TFrm_cliente.btnlocalizaClick(Sender: TObject);
begin
  IF PageControl1.ActivePage = TabSheet1 THEN
    PageControl1.ActivePage:=TabSheet2
    ELSE
    PageControl1.ActivePage:=TabSheet1;
end;

procedure TFrm_cliente.btnnovoClick(Sender: TObject);
begin
DM.cdscliente.Insert;
PageControl1.ActivePage:=TabSheet1;
DBEdit2.SetFocus;
end;

procedure TFrm_cliente.btnfecharClick(Sender: TObject);
begin
close;//sair
end;

procedure TFrm_cliente.btnimprimiClick(Sender: TObject);
begin
    Frm_Relclientes.QuickRep1.Preview;
    end;



procedure TFrm_cliente.btnsalvarClick(Sender: TObject);
begin
    DM.cdscliente.ApplyUpdates(-1);
    dm.cdscliente.Refresh;



end;

end.
