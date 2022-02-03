unit U_Funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList,
  ToolWin, DB, Mask, DBCtrls, ExtDlgs;

type
  TFrm_funcionarios = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
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
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    dbedtFOTO: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    il1: TImageList;
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
    dlgOpenPic1: TOpenPictureDialog;
    img1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnlocalizarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btncancelaClick(Sender: TObject);
    procedure btnsalvaClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbedtFOTOChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_funcionarios: TFrm_funcionarios;

implementation

uses U_Modulo, U_RelCliente, U_Empresa, U_RelFuncionarios;

{$R *.dfm}

procedure TFrm_funcionarios.BitBtn1Click(Sender: TObject);
begin
with DM.cdsfuncionario do
begin
  Close;
  CommandText:='select * from funcionario where funcionario like '+QuotedStr(busca.Text+'%');
  Open;
end;

end;

procedure TFrm_funcionarios.BitBtn2Click(Sender: TObject);
begin
if dlgOpenPic1.Execute then
dbedtFOTO.Text:=dlgOpenPic1.FileName;


end;

procedure TFrm_funcionarios.btn3Click(Sender: TObject);
begin
DM.cdsfuncionario.Prior;
end;

procedure TFrm_funcionarios.btn4Click(Sender: TObject);
begin
DM.cdsfuncionario.Next;
end;

procedure TFrm_funcionarios.btnapagarClick(Sender: TObject);
begin
if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

DM.cdsfuncionario.Delete;
DM.cdsfuncionario.ApplyUpdates(0);
DM.cdsfuncionario.Close;
DM.cdsfuncionario.Open;

end;

procedure TFrm_funcionarios.btncancelaClick(Sender: TObject);
begin
DM.cdsfuncionario.Cancel;
end;

procedure TFrm_funcionarios.btneditarClick(Sender: TObject);
begin
DM.cdsfuncionario.Edit;
PageControl1.ActivePage:=TabSheet1;
DBEdit2.SetFocus;
end;

procedure TFrm_funcionarios.btnimprimirClick(Sender: TObject);
begin
//    Frm_RelFull.QRImage2.Picture.LoadFromFile(Frm_empresa.dbedtLOGO.Text);
    try
    Application.CreateForm(TFrm_RelFuncionarios,Frm_RelFuncionarios);
    Frm_RelFuncionarios.Relfuncionario.Preview;
    finally
      Frm_RelFuncionarios.Free;
    end;
end;

procedure TFrm_funcionarios.btnlocalizarClick(Sender: TObject);
begin
IF PageControl1.ActivePage = TabSheet1 then
   PageControl1.ActivePage:=TabSheet2
   else
   PageControl1.ActivePage:=TabSheet1;

end;

procedure TFrm_funcionarios.btnnovoClick(Sender: TObject);
begin
DM.cdsfuncionario.Insert;
PageControl1.ActivePage:=TabSheet1;
DBEdit2.SetFocus;
end;

procedure TFrm_funcionarios.btnprimeiroClick(Sender: TObject);
begin
DM.cdsfuncionario.First;
end;

procedure TFrm_funcionarios.btnsairClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_funcionarios.btnsalvaClick(Sender: TObject);
begin
DM.cdsfuncionario.ApplyUpdates(0);
DM.cdsfuncionario.Close;
DM.cdsfuncionario.Open;
end;

procedure TFrm_funcionarios.btnultimoClick(Sender: TObject);
begin
DM.cdsfuncionario.Last;
end;

procedure TFrm_funcionarios.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
 begin
   SelectNext(ActiveControl,true,true);
   Key:=#0;
 end;

end;

procedure TFrm_funcionarios.ds1StateChange(Sender: TObject);
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

procedure TFrm_funcionarios.dbedtFOTOChange(Sender: TObject);
begin
IF NOT FileExists(dbedtFOTO.Text) THEN
img1.Picture:=NIL
else
img1.Picture.LoadFromFile(dbedtFOTO.Text);

end;

procedure TFrm_funcionarios.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if not odd(dm.cdsfuncionario.RecNo) then
  if not (gdSelected in State) then
  begin
  DBGrid1.Canvas.Brush.Color := clMoneyGreen;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
end;

end;

procedure TFrm_funcionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if dm.cdsfuncionario.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
  end;

    DM.cdsfuncionario.Close;
end;

procedure TFrm_funcionarios.FormShow(Sender: TObject);
begin
DM.cdsfuncionario.Open;
end;

end.
