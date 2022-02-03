unit U_Categoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask, ImgList, ComCtrls, ToolWin, Grids,
  DBGrids, Buttons, ExtCtrls;

type
  TFrm_categoria = class(TForm)
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
    DBMemo1: TDBMemo;
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
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnlocalizarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btncancelaClick(Sender: TObject);
    procedure btnsalvaClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnapagarClick(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_categoria: TFrm_categoria;

implementation

uses U_Modulo;

{$R *.dfm}

procedure TFrm_categoria.btn3Click(Sender: TObject);
begin
dm.cdscategoria.Prior;
end;

procedure TFrm_categoria.btn4Click(Sender: TObject);
begin
dm.cdscategoria.Next;
end;

procedure TFrm_categoria.btnapagarClick(Sender: TObject);
begin
if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

DM.cdscategoria.Delete;
DM.cdscategoria.ApplyUpdates(0);
DM.cdscategoria.Close;
DM.cdscategoria.Open;

end;

procedure TFrm_categoria.btncancelaClick(Sender: TObject);
begin
DM.cdscategoria.Cancel;
end;

procedure TFrm_categoria.btneditarClick(Sender: TObject);
begin
DM.cdscategoria.Edit;
PageControl1.ActivePage:=TabSheet1;
DBEdit2.SetFocus;
end;

procedure TFrm_categoria.btnimprimirClick(Sender: TObject);
begin
ShowMessage('SEM FUNÇÃO');
end;

procedure TFrm_categoria.btnlocalizarClick(Sender: TObject);
begin
IF PageControl1.ActivePage = TabSheet1 then
   PageControl1.ActivePage:=TabSheet2
   else
   PageControl1.ActivePage:=TabSheet1;
end;

procedure TFrm_categoria.btnnovoClick(Sender: TObject);
begin
DM.cdscategoria.Insert;
PageControl1.ActivePage:=TabSheet1;
DBEdit2.SetFocus;
end;

procedure TFrm_categoria.btnprimeiroClick(Sender: TObject);
begin
dm.cdscategoria.First;
end;

procedure TFrm_categoria.btnsairClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_categoria.btnsalvaClick(Sender: TObject);
begin
dm.cdscategoria.ApplyUpdates(0);
dm.cdscategoria.Close;
dm.cdscategoria.Open;
end;

procedure TFrm_categoria.btnultimoClick(Sender: TObject);
begin
dm.cdscategoria.Last;
end;

procedure TFrm_categoria.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if not odd(dm.cdscategoria.RecNo) then
  if not (gdSelected in State) then
  begin
  DBGrid1.Canvas.Brush.Color := clMoneyGreen;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);

  end;
end;

procedure TFrm_categoria.ds1StateChange(Sender: TObject);
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

procedure TFrm_categoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dm.cdscategoria.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;
  end;

    dm.cdscategoria.Close;
end;

procedure TFrm_categoria.FormShow(Sender: TObject);
begin
dm.cdscategoria.Open;
end;

end.
