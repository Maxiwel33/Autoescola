unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Buttons;

type
  TFrm_login = class(TForm)
    img1: TImage;
    btn1: TBitBtn;
    btn2: TBitBtn;
    edtusuario: TEdit;
    edtsenha: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtusuarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  nivel_acesso:Integer;
    { Public declarations }
  end;

var
  Frm_login: TFrm_login;

implementation

uses U_Modulo, U_principal;

{$R *.dfm}

procedure TFrm_login.btn1Click(Sender: TObject);
begin
  with dm.CDSlogin do
     begin
     Close;
     Params.ParamByName('nome').AsString:=edtusuario.Text;
     Params.ParamByName('senha').AsString:=edtsenha.Text;
     Open;
     Frm_login.nivel_acesso:=dm.CDSloginNIVEL.AsInteger;
     Frm_principal.lblnomeemrpesa.Caption:='Empresa:  '+ dm.cdsempresaNOMEFANTAZIA.AsString;
     Frm_principal.lblendereco.Caption:='Endereço:  '+ dm.cdsempresaENDERECO.AsString;
     Frm_principal.lblcnpj.Caption:='CNPJ:  '+ dm.cdsempresaCNPJ.AsString;
     Frm_principal.lblfone.Caption:='Fone:  '+ dm.cdsempresaFONE.AsString;
     Frm_principal.lblfax.Caption:='Fax:  '+ dm.cdsempresaFAX.AsString;
     Frm_principal.lblnumero.Caption:='Nº:  '+ dm.cdsempresaNUMERO.AsString;
     Frm_principal.lblIe.Caption:='I.E:  '+ dm.cdsempresaIE.AsString;
     Frm_principal.lblemail.Caption:='E-mail:  '+ dm.cdsempresaEMAIL.AsString;
     Frm_principal.lblcelular.Caption:='Proprietário:  '+ dm.cdsempresaRAZAOSOCIAL.AsString;







     if (RecordCount > 0) then
     begin
     ShowMessage('Ola '  +  FieldByName('usuario').AsString   +  ' Bemvindo ao ' +
       'Sistema, Bom Trabalho');
       Frm_login.Close;
       end else
       ShowMessage('acesso negado');
       edtusuario.Text:='';
       edtsenha.Text:='';
       edtusuario.SetFocus;
     if nivel_acesso = 1 then
     begin
       //menu principal
       frm_principal.Cadastro1.Enabled:=True;
       frm_principal.Administrao1.Enabled:=True;
       frm_principal.Relatorios1.Enabled:=True;
       Frm_principal.Utilitarios1.Enabled:=True;
       //menu suspenso
       frm_principal.Cliente1.Enabled:=true;
       frm_principal.Funcionarios1.Enabled:=True;
       frm_principal.Oficina1.Enabled:=True;
       frm_principal.transportes1.Enabled:=True;
       frm_principal.Categorias1.Enabled:=True;
       frm_principal.Agendamento1.Enabled:=True;
       frm_principal.Patrimnio1.Enabled:=True;
       frm_principal.TipodePagamento1.Enabled:=True;
       frm_principal.TipodeSaida1.Enabled:=True;
       frm_principal.Caixa1.Enabled:=False;
       frm_principal.GerarCarndePagamento1.Enabled:=False;
       frm_principal.PagamentodeParcelas1.Enabled:=False;
       frm_principal.ManutenoVeculo1.Enabled:=True;
       frm_principal.GerarmdiadeGastoAbastecimento1.Enabled:=True;
       frm_principal.AlterarSenhaeNiveldeacesso1.Enabled:=False;
       Frm_principal.Empresa1.Enabled:=False;
       Frm_principal.ControledeAbastecimento1.Enabled:=False;



       //acesso aos botoes
         frm_principal.btncliente.Visible:=True;
         frm_principal.btnagenda.Visible:=True;
         frm_principal.btnfuncionario.Visible:=True;
         frm_principal.btnpatrimonio.Visible:=True;
         frm_principal.btncategoria.Visible:=True;
         frm_principal.btncarne.Visible:=False;
         frm_principal.btnpagparcela.Visible:=False;
         frm_principal.btnoficina.Visible:=True;
         frm_principal.btnabastecimento.Visible:=False;

       end else
       if nivel_acesso = 2 then
       begin
       //menu principal
       frm_principal.Cadastro1.Enabled:=True;
       frm_principal.Administrao1.Enabled:=True;
       frm_principal.Relatorios1.Enabled:=True;
       Frm_principal.Utilitarios1.Enabled:=True;

       //acesso aos botoes
         frm_principal.btncliente.Visible:=True;
         frm_principal.btnagenda.Visible:=True;
         frm_principal.btnfuncionario.Visible:=True;
         frm_principal.btnpatrimonio.Visible:=True;
         frm_principal.btncategoria.Visible:=True;
         frm_principal.btncarne.Visible:=True;
         frm_principal.btnpagparcela.Visible:=False;
         frm_principal.btnoficina.Visible:=True;
         frm_principal.btnabastecimento.Visible:=False;


       frm_principal.Cliente1.Enabled:=True;
       frm_principal.Funcionarios1.Enabled:=True;
       frm_principal.Oficina1.Enabled:=True;
       frm_principal.transportes1.Enabled:=True;
       frm_principal.Categorias1.Enabled:=True;
       frm_principal.Agendamento1.Enabled:=False;
       frm_principal.Patrimnio1.Enabled:=False;
       frm_principal.TipodePagamento1.Enabled:=True;
       frm_principal.TipodeSaida1.Enabled:=True;
       frm_principal.Caixa1.Enabled:=False;
       frm_principal.GerarCarndePagamento1.Enabled:=False;
       frm_principal.PagamentodeParcelas1.Enabled:=False;
       frm_principal.ManutenoVeculo1.Enabled:=False;
       frm_principal.GerarmdiadeGastoAbastecimento1.Enabled:=False;
       frm_principal.AlterarSenhaeNiveldeacesso1.Enabled:=False;



     end else begin
       if nivel_acesso = 3 then
       begin

       //menu principal
       frm_principal.Cadastro1.Enabled:=True;
       frm_principal.Administrao1.Enabled:=True;
       frm_principal.Relatorios1.Enabled:=True;
       Frm_principal.Utilitarios1.Enabled:=True;

       //acesso aos botoes
         frm_principal.btncliente.Visible:=True;
         frm_principal.btnagenda.Visible:=True;
         frm_principal.btnfuncionario.Visible:=True;
         frm_principal.btnpatrimonio.Visible:=True;
         frm_principal.btncategoria.Visible:=True;
         frm_principal.btncarne.Visible:=True;
         frm_principal.btnpagparcela.Visible:=True;
         frm_principal.btnoficina.Visible:=True;
         frm_principal.btnabastecimento.Visible:=True;
         frm_principal.btncontareceber.Visible:=True;
         frm_principal.btncontapagar.Visible:=True;



       frm_principal.Cliente1.Enabled:=True;
       frm_principal.Funcionarios1.Enabled:=True;
       frm_principal.Oficina1.Enabled:=True;
       frm_principal.transportes1.Enabled:=True;
       frm_principal.Categorias1.Enabled:=True;
       frm_principal.Agendamento1.Enabled:=True;
       frm_principal.Patrimnio1.Enabled:=True;
       frm_principal.TipodePagamento1.Enabled:=True;
       frm_principal.TipodeSaida1.Enabled:=True;
       frm_principal.Caixa1.Enabled:=True;
       frm_principal.GerarCarndePagamento1.Enabled:=True;
       frm_principal.PagamentodeParcelas1.Enabled:=True;
       frm_principal.ManutenoVeculo1.Enabled:=True;
       frm_principal.GerarmdiadeGastoAbastecimento1.Enabled:=True;
       frm_principal.AlterarSenhaeNiveldeacesso1.Enabled:=True;




       end;
      end;
     end;
end;

procedure TFrm_login.btn2Click(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TFrm_login.edtusuarioKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
  SelectNext(ActiveControl,True,true);
  Key:=#0;
end;

end;

procedure TFrm_login.FormShow(Sender: TObject);
begin
DM.CDSlogin.Open;
edtusuario.SetFocus;
end;

end.
