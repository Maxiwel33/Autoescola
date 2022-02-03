unit U_Parcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ExtCtrls, RxCurrEdit, Mask, RxToolEdit,
  Buttons, ComCtrls, DBCtrls,ShellAPI, ENumEd, ESpin;

type
  TFrm_Parcelas = class(TForm)
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    pnl2: TPanel;
    dscliente: TDataSource;
    edt1: TEdit;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    dbgrd2: TDBGrid;
    edtvalor: TCurrencyEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    ds1: TDataSource;
    dtpdata: TDateTimePicker;
    pnl6: TPanel;
    dbtxttotal: TDBText;
    lbl5: TLabel;
    btn4: TBitBtn;
    btn5: TBitBtn;
    edtParcela: TEdit;
    pnl7: TPanel;
    img1: TImage;
    dbedtID_CLIENTE: TDBEdit;
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dtpdataKeyPress(Sender: TObject; var Key: Char);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
  procedure verificaparcela;
  procedure CriaCodigo(Cod : String; Imagem : TCanvas);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Parcelas: TFrm_Parcelas;

implementation

uses U_Modulo, U_cliente, U_RelCliente, U_RelCarne;

{$R *.dfm}

procedure TFrm_Parcelas.btn1Click(Sender: TObject);
    var
    i: integer;
Begin
    if edtParcela.Text = '' then
    begin
    ShowMessage('digite a quantidade de parcelas a ser divididas');
    edtParcela.SetFocus;
    Exit;
    end else
    if edtvalor.Text = '' then
    begin
    ShowMessage('digite o valor a ser dividido no carnê de Pagamento');
    edtvalor.SetFocus;
    Exit;
    end;
    Dm.CDSparcela.Open; //Abro o Banco
    verificaparcela; //Chamo um procedimento para verificar se tem prestação pendente
    i:=0; // Minha variável no caso i inicialmente é 0
    for i := 1 to StrToInt(edtParcela.Text) do  // minha variável recebe 1 do numero de parcelas no caso o digitado dentro de edParcela.Text


begin
      if dm.cdsparcela.RecordCount < i then // verifico o numero é menor do que o da variavel
      dm.cdsparcela.Insert  // se for insiro

      else  //senao edito
      dm.cdsparcela.Edit; //PARC vai receber o numero de parcelas que eu digitei
      DM.CDSparcela.FieldByName('nome').AsString:=DM.cdscliente.FieldByName(
        'cliente').AsString;
      dm.cdsparcela.FieldByName('num_parcela').Value := i; //VALOR vai receber o
      //valor digitado  dividido pelo numero de parcelas
      dm.cdsparcela.FieldByName('VALOR').Value :=(StrToFloat(edtvalor.Text)/StrToInt(
        edtparcela.Text));
      dm.cdsparcela.FieldByName('DATA').Value:= incMonth( Date, i - 1); //DATA recebe a data replicando conforme o numero das parcelas
      dm.cdsparcela.Post;  //Gravo no banco
      dm.cdsparcela.Next; //vou para o próximo
      end;
      //Dou um updade para gravar esse registro no banco lembre-se que quando
      dm.CDSparcela.ApplyUpdates(0);

       //ApplyUpdates(0) para gravar no banco o (0)
      //significa o numero de erros
      showmessage('Arquivo incuido com sucesso'); //Mando uma mensagem de texto

      DM.cdscliente.Edit;
      DM.cdscliente.FieldByName('status').AsString:='D';
      DM.cdscliente.ApplyUpdates(0);
      DM.cdscliente.Close;
      DM.cdscliente.Open;


end;



procedure TFrm_Parcelas.btn2Click(Sender: TObject);
begin
      Frm_relCarne.RelCarne.Prepare;
      CriaCodigo(dbedtID_CLIENTE.Text,img1.Canvas);
      Frm_relCarne.RelCarne.Preview;
      CriaCodigo(dbedtID_CLIENTE.Text,Frm_relCarne.QRImage1.Canvas);
      CriaCodigo(dbedtID_CLIENTE.Text,Frm_relCarne.QRImage2.Canvas);


end;

procedure TFrm_Parcelas.btn3Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Parcelas.btn4Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_cliente,Frm_cliente);
    Frm_cliente.ShowModal;
    finally
      Frm_cliente.Free;
    end;
end;

procedure TFrm_Parcelas.btn5Click(Sender: TObject);
begin
  shellexecute(handle, 'open', 'calc.exe', '', nil,sw_shownormal);//exibe a
end;


procedure TFrm_Parcelas.CriaCodigo(Cod: String; Imagem: TCanvas);
Const
  digitos : array['0'..'9'] of string[5]= ('00110',
  '10001',
  '01001',
  '11000',
  '00101',
  '10100',
  '01100',
  '00011',
  '10010',
  '01010');
Var
  Numero : String;
  Cod1 : Array[1..1000] Of Char;
  Cod2 : Array[1..1000] Of Char;
  Codigo : Array[1..1000] Of Char;
  Digito : String;
  c1,c2 : Integer;
  x,y,z,h : LongInt;
  a,b,c,d : TPoint;
  I : Boolean;
Begin
  Numero := Cod;
  For x := 1 to 1000 Do
  Begin
    Cod1 [x] := #0;
    Cod2 [x] := #0;
    Codigo[x] := #0;
  End;
  c1 := 1;
  c2 := 1;
  x := 1;
  For y := 1 to Length(Numero) div 2 do
  Begin
    Digito := Digitos[Numero[x ]];
    For z := 1 to 5 do
    Begin
      Cod1[c1] := Digito[z];
      Inc(c1);
    End;
    Digito := Digitos[Numero[x+1]];
    For z := 1 to 5 do
    Begin
      Cod2[c2] := Digito[z];
      Inc(c2);
    End;
    Inc(x,2);
  End;
  y := 5;
  Codigo[1] := '0';
  Codigo[2] := '0';
  Codigo[3] := '0';
  Codigo[4] := '0'; { Inicio do Codigo }
  For x := 1 to c1-1 do
  begin
    Codigo[y] := Cod1[x]; Inc(y);
    Codigo[y] := Cod2[x]; Inc(y);
  end;
  Codigo[y] := '1'; Inc(y); { Final do Codigo }
  Codigo[y] := '0'; Inc(y);
  Codigo[y] := '0';
  Imagem.Pen .Width := 1;
  Imagem.Brush.Color := ClWhite;
  Imagem.Pen .Color := ClWhite;
  a.x := 1; a.y := 0;
  b.x := 1; b.y := 79;
  c.x := 2000; c.y := 79;
  d.x := 2000; d.y := 0;
  Imagem.Polygon([a,b,c,d]);
  Imagem.Brush.Color := ClBlack;
  Imagem.Pen .Color := ClBlack;
  x := 0;
  i := True;
  for y:=1 to 1000 do
  begin
    If Codigo[y] <> #0 Then
    Begin
      If Codigo[y] = '0' then
        h := 1
      Else
        h := 3;
      a.x := x; a.y := 0;
      b.x := x; b.y := 79;
      c.x := x+h-1; c.y := 79;
      d.x := x+h-1; d.y := 0;
      If i Then
        Imagem.Polygon([a,b,c,d]);
      i := Not(i);
      x := x + h;
    End;
  end;
end;



procedure TFrm_Parcelas.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if not odd(dm.cdscliente.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd1.Canvas.Brush.Color := clMoneyGreen;
      dbgrd1.Canvas.FillRect(Rect);
      dbgrd1.DefaultDrawDataCell(rect,Column.Field,state);
end;
end;

procedure TFrm_Parcelas.dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if not odd(dm.CDSparcela.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd2.Canvas.Brush.Color := clMoneyGreen;
      dbgrd2.Canvas.FillRect(Rect);
      dbgrd2.DefaultDrawDataCell(rect,Column.Field,state);

      end;
end;

procedure TFrm_Parcelas.dtpdataKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
 begin
   SelectNext(ActiveControl,true,true);
   Key:=#0;
 end;

end;

procedure TFrm_Parcelas.edt1Change(Sender: TObject);
begin
with DM.cdscliente do
begin
  close;
  CommandText:='select * from cliente where cliente like'+QuotedStr(edt1.Text+
    '%');
    Open;
end;
end;

procedure TFrm_Parcelas.FormShow(Sender: TObject);
begin
    DM.cdscliente.Open;
    dtpdata.DateTime:=Now;

end;

procedure TFrm_Parcelas.verificaparcela;
var  //Crio uma variavel para verificar o resultado
result:string;
begin
if dm.CDSparcela.Fields.Fields[0].AsString <> '' then  //Aqui verifico se a coluna em que esta a parcela esta vazia
begin
dm.cdsgerar.Open; //Abro o ClientDataset de verificação de contagem dos campos
begin
result:=dm.cdsgerarCOUNT.AsString; //result vai receber a quantidade de parcelas em aberto
Showmessage('Você possui '+ result +' parcelas pendentes' + #13
+ 'Nao é possivel efetuar pagamento'); //envio uma mesagem para o usuario falando que tem a quantidade que retornar em aberto
abort; //aborto a operação e fecho o ClientDataSet referente a contagem dos campos
dm.cdsgerar.Close;
end;
end;
end;

end.
