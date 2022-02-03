unit U_ControleAbastecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, DB, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Buttons, Grids, DBGrids;

type
  TFrm_Abastecimento = class(TForm)
    tlb1: TToolBar;
    btnnovo: TToolButton;
    btneditar: TToolButton;
    btnapagar: TToolButton;
    btnlocalizar: TToolButton;
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
    il1: TImageList;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    lbl1: TLabel;
    dbedtID_CONTROLECOMB: TDBEdit;
    ds1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    dbedtDATA: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    dblkcbbID_TRANSPORTE: TDBLookupComboBox;
    dstransp: TDataSource;
    dsposto: TDataSource;
    dblkcbbID_POSTO: TDBLookupComboBox;
    grp1: TGroupBox;
    grp2: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    dbtxtPLACA: TDBText;
    dbtxtCOR: TDBText;
    dbtxtMODELO: TDBText;
    dbtxtRENAVAM: TDBText;
    dbtxtANO: TDBText;
    dbtxtCIDADE1: TDBText;
    dbtxtESTADO: TDBText;
    dbtxtCIDADE: TDBText;
    dbedtVLRLITRO: TDBEdit;
    dbedtQTDLITRO: TDBEdit;
    dbedtVLRTOTAL: TDBEdit;
    pnl1: TPanel;
    lbl7: TLabel;
    dbedtCODIGO: TDBEdit;
    lbl11: TLabel;
    lbl12: TLabel;
    rg1: TRadioGroup;
    lbl13: TLabel;
    pnl2: TPanel;
    btn6: TBitBtn;
    pnl3: TPanel;
    lbl15: TLabel;
    edtbusca: TEdit;
    btn7: TBitBtn;
    dbgrd1: TDBGrid;
    pnl4: TPanel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl14: TLabel;
    lbl16: TLabel;
    dbcbbCOMBUSTIVEL: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btncancelaClick(Sender: TObject);
    procedure btnsalvaClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure dblkcbbID_TRANSPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtVLRTOTALExit(Sender: TObject);
    procedure btnlocalizarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn6Click(Sender: TObject);
  private
  procedure CriaCodigo(Cod : String; Imagem : TCanvas);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Abastecimento: TFrm_Abastecimento;

implementation

uses U_Modulo, U_RelAbastecimento;

{$R *.dfm}

procedure TFrm_Abastecimento.btn6Click(Sender: TObject);
begin
      CriaCodigo(dbedtCODIGO.Text,FRM_RELAbastecimento.QRImage1.Canvas);
      CriaCodigo(dbedtCODIGO.Text,FRM_RELAbastecimento.QRImage2.Canvas);
      FRM_RELAbastecimento.QuickRep1.Preview;
end;

procedure TFrm_Abastecimento.btnapagarClick(Sender: TObject);
begin
    if MessageDlg('DESEJA REALMENTE EXCLUIR O REGISTRO CORRENTE?',mtConfirmation,[mbOK,mbCancel],0)= mrOk then

      DM.cdsabastecimento.Delete;
      DM.cdsabastecimento.ApplyUpdates(0);
      DM.cdsabastecimento.Close;
      DM.cdsabastecimento.Open;

end;

procedure TFrm_Abastecimento.btncancelaClick(Sender: TObject);
begin
    DM.cdsabastecimento.Cancel;
end;

procedure TFrm_Abastecimento.btneditarClick(Sender: TObject);
begin
    DM.cdsabastecimento.Edit;
    pgc1.ActivePage:=ts1;
  dblkcbbID_TRANSPORTE.SetFocus;
end;

procedure TFrm_Abastecimento.btnlocalizarClick(Sender: TObject);
begin
      IF pgc1.ActivePage = ts1 THEN
    pgc1.ActivePage:=ts2
    ELSE
    pgc1.ActivePage:=ts1;

end;

procedure TFrm_Abastecimento.btnnovoClick(Sender: TObject);
begin
  DM.cdsabastecimento.Insert;
      pgc1.ActivePage:=ts1;
  dblkcbbID_TRANSPORTE.SetFocus;
end;

procedure TFrm_Abastecimento.btnsairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Abastecimento.btnsalvaClick(Sender: TObject);
begin
      DM.cdsabastecimento.ApplyUpdates(0);
      DM.cdsabastecimento.Close;
      DM.cdsabastecimento.Open;
end;


procedure TFrm_Abastecimento.CriaCodigo(Cod: String; Imagem: TCanvas);
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

procedure TFrm_Abastecimento.dbedtVLRTOTALExit(Sender: TObject);
begin
  DM.cdsabastecimentoQTDLITRO.AsFloat:=(DM.cdsabastecimentoVLRTOTAL.AsFloat/
    DM.cdsabastecimentoVLRLITRO.AsFloat);
    dbedtDATA.Text:=DateToStr(date);

end;

procedure TFrm_Abastecimento.dblkcbbID_TRANSPORTEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
 begin
   SelectNext(ActiveControl,true,true);
   Key:=#0;
 end;

end;

procedure TFrm_Abastecimento.ds1StateChange(Sender: TObject);
begin
    btnnovo.Enabled:=ds1.State in [dsBrowse];
    btnsalva.Enabled:=ds1.State in [dsinsert,dsedit];
    btnapagar.Enabled:=ds1.State in [dsbrowse];
    btncancela.Enabled:=ds1.State in [dsinsert,dsedit];
    btneditar.Enabled:=ds1.State in [dsbrowse];
    btnlocalizar.Enabled:=ds1.State in [dsbrowse];
end;

procedure TFrm_Abastecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       if dm.cdsabastecimento.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Salve ou cancele as operações antes de sair');
    Action:=caNone;
    Exit;

    DM.cdsagendamento.Close;
    DM.cdsposto.Close;
    DM.cdsabastecimento.Close;
    end;
end;

procedure TFrm_Abastecimento.FormShow(Sender: TObject);
begin
    DM.cdsagendamento.Open;
    DM.cdsposto.Open;
    DM.cdsabastecimento.Open;
end;

end.
