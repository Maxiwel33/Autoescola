unit U_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, ToolWin, StdCtrls, jpeg, DB, Grids,
  DBGrids, Buttons, ImgList, EHintBal,ShellAPI, DBCtrls, EAppProt,IniFiles, ELab3D;

type
  TFrm_principal = class(TForm)
    MainMenu1: TMainMenu;
    ToolBar1: TToolBar;
    barra: TStatusBar;
    Timer1: TTimer;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Funcionarios1: TMenuItem;
    transportes1: TMenuItem;
    Categorias1: TMenuItem;
    Agendamento1: TMenuItem;
    Administrao1: TMenuItem;
    Relatorios1: TMenuItem;
    Utilitarios1: TMenuItem;
    Sobre1: TMenuItem;
    Caixa1: TMenuItem;
    GerarCarndePagamento1: TMenuItem;
    N1: TMenuItem;
    PagamentodeParcelas1: TMenuItem;
    N2: TMenuItem;
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    dsclientes: TDataSource;
    pnl2: TPanel;
    edtbusca: TEdit;
    pnl3: TPanel;
    btn1: TBitBtn;
    ilBOTOES: TImageList;
    btncliente: TToolButton;
    btnagenda: TToolButton;
    btnfuncionario: TToolButton;
    btnpatrimonio: TToolButton;
    btncategoria: TToolButton;
    btncarne: TToolButton;
    EvHintBalloon1: TEvHintBalloon;
    btnpagparcela: TToolButton;
    btn10: TToolButton;
    btn7: TToolButton;
    btnacesso: TToolButton;
    btn12: TToolButton;
    N3: TMenuItem;
    SairdoSistema1: TMenuItem;
    Calculadora1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    N4: TMenuItem;
    Backup1: TMenuItem;
    SalvarBancodedados1: TMenuItem;
    RestaurarBancodeDados1: TMenuItem;
    N5: TMenuItem;
    AlterarSenhaeNiveldeacesso1: TMenuItem;
    TipodePagamento1: TMenuItem;
    TipodeSaida1: TMenuItem;
    Oficina1: TMenuItem;
    ManutenoVeculo1: TMenuItem;
    N6: TMenuItem;
    GerarmdiadeGastoAbastecimento1: TMenuItem;
    btnGasto: TToolButton;
    btnoficina: TToolButton;
    il1: TImageList;
    pnl4: TPanel;
    dbtxtENDERECO: TDBText;
    dbtxtCIDADE: TDBText;
    dbtxtCPF: TDBText;
    dbtxtRG: TDBText;
    dbtxtBAIRRO: TDBText;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    dbtxtBAIRRO1: TDBText;
    N7: TMenuItem;
    PostodeCombustivel1: TMenuItem;
    N8: TMenuItem;
    Patrimnio1: TMenuItem;
    N9: TMenuItem;
    ControledeAbastecimento1: TMenuItem;
    btnabastecimento: TToolButton;
    Empresa1: TMenuItem;
    RelatoriosDiversos1: TMenuItem;
    pnl5: TPanel;
    pnl6: TPanel;
    lblnomeemrpesa: TLabel;
    pnl7: TPanel;
    lblendereco: TLabel;
    lblcnpj: TLabel;
    lblfone: TLabel;
    lblfax: TLabel;
    lblnumero: TLabel;
    lblIe: TLabel;
    lblemail: TLabel;
    lblcelular: TLabel;
    lbl3: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    Fornecedor1: TMenuItem;
    N10: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    btncontareceber: TToolButton;
    btncontapagar: TToolButton;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    N11: TMenuItem;
    ConsultasdeParcelas1: TMenuItem;
    lbl22: TLabel;
    lbldata: TLabel;
    N12: TMenuItem;
    RecebimentodeContas1: TMenuItem;
    PagamentodeContas1: TMenuItem;
    EvAppProtect1: TEvAppProtect;
    procedure Timer1Timer(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure transportes1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure Agendamento1Click(Sender: TObject);
    procedure GerarCarndePagamento1Click(Sender: TObject);
    procedure PagamentodeParcelas1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtbuscaChange(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnclienteClick(Sender: TObject);
    procedure btnfuncionarioClick(Sender: TObject);
    procedure btncategoriaClick(Sender: TObject);
    procedure btnagendaClick(Sender: TObject);
    procedure btnpatrimonioClick(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btncarneClick(Sender: TObject);
    procedure btnpagparcelaClick(Sender: TObject);
    procedure TipodePagamento1Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure TipodeSaida1Click(Sender: TObject);
    procedure Oficina1Click(Sender: TObject);
    procedure btnacessoClick(Sender: TObject);
    procedure ManutenoVeculo1Click(Sender: TObject);
    procedure GerarmdiadeGastoAbastecimento1Click(Sender: TObject);
    procedure btnGastoClick(Sender: TObject);
    procedure btnoficinaClick(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure SairdoSistema1Click(Sender: TObject);
    procedure SalvarBancodedados1Click(Sender: TObject);
    procedure Patrimnio1Click(Sender: TObject);
    procedure ControledeAbastecimento1Click(Sender: TObject);
    procedure btnabastecimentoClick(Sender: TObject);
    procedure PostodeCombustivel1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure RelatoriosDiversos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure btncontapagarClick(Sender: TObject);
    procedure btncontareceberClick(Sender: TObject);
    procedure ConsultasdeParcelas1Click(Sender: TObject);
    procedure PagamentodeContas1Click(Sender: TObject);
    procedure RecebimentodeContas1Click(Sender: TObject);
    procedure AlterarSenhaeNiveldeacesso1Click(Sender: TObject);
  private
  iniconf: TIniFile;
    { Private declarations }
  public
  nivel_acesso:Integer;
    { Public declarations }
  end;

var
  Frm_principal: TFrm_principal;

implementation

uses U_cliente, U_Funcionario, U_Transporte, U_Categoria, U_Agendamento,
  U_Patrimonio, U_Parcelas, U_PagParcela, U_Modulo, U_TipoPagamento,
  U_LivroCaixa, U_TipoSaida, U_Oficina, U_Login, U_Manutencao, U_Gastos,
  U_Backup, U_ControleAbastecimento, U_Posto, U_Sobre, U_Empresa, U_Relatorios,
  U_fornecedor, U_contaspagar, U_ContasReceber, U_Consultas, U_ContasPagas,
  U_Recebimentocontas, U_Senha;

{$R *.dfm}

procedure TFrm_principal.Agendamento1Click(Sender: TObject);
begin
  try
Application.CreateForm(TFrm_agendamento,Frm_agendamento);
Frm_agendamento.ShowModal;
finally
Frm_agendamento.Free;

end;
end;

procedure TFrm_principal.AlterarSenhaeNiveldeacesso1Click(Sender: TObject);
begin
    try
    Application.CreateForm(Tfrm_senha,frm_senha);
    frm_senha.ShowModal;
    finally
      frm_senha.Free;
    end;
end;

procedure TFrm_principal.BlocodeNotas1Click(Sender: TObject);
begin
  shellexecute(handle, 'open', 'notepad.exe', '', nil,sw_shownormal);//exibe o
  //bloco de notas
end;

procedure TFrm_principal.btn10Click(Sender: TObject);
begin
if Application.MessageBox('Deseja Realmente Sair do Sistema?','AUTO ESCOLA SIGA-ME',MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IdYes then
Application.Terminate;

end;

procedure TFrm_principal.btnacessoClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_login,Frm_login);
    Frm_login.ShowModal;
    finally
    Frm_login.Free;
    end;

end;

procedure TFrm_principal.btnGastoClick(Sender: TObject);
begin
    try
  Application.CreateForm(TFrm_gastos,Frm_gastos);
  Frm_gastos.ShowModal;
  finally
    Frm_gastos.Free;
  end;

end;

procedure TFrm_principal.btnoficinaClick(Sender: TObject);
begin
    try
  Application.CreateForm(TFrm_manutencao,Frm_manutencao);
  Frm_manutencao.ShowModal;
  finally
    Frm_manutencao.Free;
  end;

end;

procedure TFrm_principal.btn1Click(Sender: TObject);
var  //Crio uma variavel para verificar o resultado
result:string;
begin
if dm.CDSparcela.Fields.Fields[2].AsString <> '' then
begin
dm.cdsgerar.Open; //Abro o ClientDataset de verificação de contagem dos campos
result := dm.cdsgerarCOUNT.AsString ;
Showmessage('Você possui parcelas pendentes' + #13
+ 'Nao é possivel Agendar prova')
end else
ShowMessage('Clientes pronto para agendamento da prova');
 //envio uma mesagem para o usuario falando que tem a quantidade que retornar em aberto
abort; //aborto a operação e fecho o ClientDataSet referente a contagem dos campos
dm.cdsgerar.Close;
end;

procedure TFrm_principal.btnabastecimentoClick(Sender: TObject);
begin
     try
    Application.CreateForm(TFrm_Abastecimento,Frm_Abastecimento);
    Frm_Abastecimento.ShowModal;
    finally
      Frm_Abastecimento.Free;
    end;
end;

procedure TFrm_principal.btnclienteClick(Sender: TObject);
begin
  try
 Application.CreateForm(TFrm_cliente,Frm_cliente);
 Frm_cliente.ShowModal;
  finally
   Frm_cliente.Free;
  end;

end;

procedure TFrm_principal.btncontapagarClick(Sender: TObject);
begin
        try
    Application.CreateForm(Tfrm_contaspagar,frm_contaspagar);
    frm_contaspagar.ShowModal;
    finally
      frm_contaspagar.Free;
    end;

end;

procedure TFrm_principal.btncontareceberClick(Sender: TObject);
begin
        try
    Application.CreateForm(TFrm_contasreceber,Frm_contasreceber);
    Frm_contasreceber.ShowModal;
    finally
      Frm_contasreceber.Free;
    end;

end;

procedure TFrm_principal.btnagendaClick(Sender: TObject);
begin
  try
Application.CreateForm(TFrm_agendamento,Frm_agendamento);
Frm_agendamento.ShowModal;
finally
Frm_agendamento.Free;

end;
end;

procedure TFrm_principal.btnfuncionarioClick(Sender: TObject);
begin
try
Application.CreateForm(TFrm_funcionarios,Frm_funcionarios);
Frm_funcionarios.ShowModal;
finally
Frm_funcionarios.Free;

end;
end;

procedure TFrm_principal.btnpatrimonioClick(Sender: TObject);
begin
try
Application.CreateForm(TFrm_patrimonio,Frm_patrimonio);
Frm_patrimonio.ShowModal;
finally
  Frm_patrimonio.Free;

end;
end;

procedure TFrm_principal.btncategoriaClick(Sender: TObject);
begin
try
Application.CreateForm(TFrm_categoria,Frm_categoria);
Frm_categoria.ShowModal;
finally
Frm_categoria.Free;

end;
end;

procedure TFrm_principal.btncarneClick(Sender: TObject);
begin
try
Application.CreateForm(TFrm_Parcelas,Frm_Parcelas);
Frm_Parcelas.ShowModal;
finally
Frm_Parcelas.Free;
end;

end;

procedure TFrm_principal.btnpagparcelaClick(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_pagParcelas,Frm_pagParcelas);
  Frm_pagParcelas.ShowModal;
  finally
    Frm_pagParcelas.Free;
  end;

end;

procedure TFrm_principal.Caixa1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_livrocaixa,Frm_livrocaixa);
  Frm_livrocaixa.ShowModal;
  finally
    Frm_livrocaixa.Free;
  end;

end;

procedure TFrm_principal.Calculadora1Click(Sender: TObject);
begin
  shellexecute(handle, 'open', 'calc.exe', '', nil,sw_shownormal);//exibe a
//calculadora
end;

procedure TFrm_principal.Categorias1Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_categoria,Frm_categoria);
Frm_categoria.ShowModal;
finally
Frm_categoria.Free;

end;

end;

procedure TFrm_principal.Cliente1Click(Sender: TObject);
begin
  try
 Application.CreateForm(TFrm_cliente,Frm_cliente);
 Frm_cliente.ShowModal;
  finally
   Frm_cliente.Free;
  end;
end;


procedure TFrm_principal.ConsultasdeParcelas1Click(Sender: TObject);
begin
    try
    Application.CreateForm(Tfrm_consultasparc,frm_consultasparc);
    frm_consultasparc.ShowModal;
    finally
      frm_consultasparc.Free;
    end;
end;

procedure TFrm_principal.ContasaPagar1Click(Sender: TObject);
begin
    try
    Application.CreateForm(Tfrm_contaspagar,frm_contaspagar);
    frm_contaspagar.ShowModal;
    finally
      frm_contaspagar.Free;
    end;
end;

procedure TFrm_principal.ContasaReceber1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_contasreceber,Frm_contasreceber);
    Frm_contasreceber.ShowModal;
    finally
      Frm_contasreceber.Free;
    end;
end;

procedure TFrm_principal.ControledeAbastecimento1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_Abastecimento,Frm_Abastecimento);
    Frm_Abastecimento.ShowModal;
    finally
      Frm_Abastecimento.Free;
    end;

end;

procedure TFrm_principal.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not odd(dm.cdscliente.RecNo) then
    if not (gdSelected in State) then
      begin
      dbgrd1.Canvas.Brush.Color := clMoneyGreen;
      dbgrd1.Canvas.FillRect(Rect);
      dbgrd1.DefaultDrawDataCell(rect,Column.Field,state);

  end;
end;

procedure TFrm_principal.edtbuscaChange(Sender: TObject);
begin
  with DM.cdscliente do
    begin
    close;
    CommandText:='select * from cliente where cliente like'+QuotedStr(
      edtbusca.Text+'%');
      Open;

  end;
end;

procedure TFrm_principal.Empresa1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_empresa,Frm_empresa);
    Frm_empresa.ShowModal;
    finally
      Frm_empresa.Free;
    end;

end;

procedure TFrm_principal.FormCreate(Sender: TObject);
begin
WindowState:=wsMaximized;
iniconf:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'conf.ini');

end;

procedure TFrm_principal.FormShow(Sender: TObject);
begin
WindowState:=wsMaximized;
end;

procedure TFrm_principal.Fornecedor1Click(Sender: TObject);
begin
    try
    Application.CreateForm(Tfrm_fornecedor,frm_fornecedor);
    frm_fornecedor.ShowModal;
    finally
      frm_fornecedor.Free;
    end;
end;

procedure TFrm_principal.Funcionarios1Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_funcionarios,Frm_funcionarios);
Frm_funcionarios.ShowModal;
finally
Frm_funcionarios.Free;

end;

end;

procedure TFrm_principal.GerarCarndePagamento1Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_Parcelas,Frm_Parcelas);
Frm_Parcelas.ShowModal;
finally
Frm_Parcelas.Free;
end;
end;

procedure TFrm_principal.GerarmdiadeGastoAbastecimento1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_gastos,Frm_gastos);
  Frm_gastos.ShowModal;
  finally
    Frm_gastos.Free;
  end;

end;

procedure TFrm_principal.TipodePagamento1Click(Sender: TObject);
begin
   try
   Application.CreateForm(TFrm_TipoPagamento,Frm_TipoPagamento);
   Frm_TipoPagamento.ShowModal;
   finally
     Frm_TipoPagamento.Free;
   end;
end;

procedure TFrm_principal.TipodeSaida1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_tiposaida,Frm_tiposaida);
  Frm_tiposaida.ShowModal;
  finally
  Frm_tiposaida.Free;

  end;

end;

procedure TFrm_principal.ManutenoVeculo1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_manutencao,Frm_manutencao);
  Frm_manutencao.ShowModal;
  finally
    Frm_manutencao.Free;
  end;
end;

procedure TFrm_principal.Oficina1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_Oficina,Frm_Oficina);
    Frm_Oficina.ShowModal;
    finally
      Frm_Oficina.Free;
    end;
end;

procedure TFrm_principal.PagamentodeContas1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_pagamentodecontas,Frm_pagamentodecontas);
  Frm_pagamentodecontas.ShowModal;
  finally
    Frm_pagamentodecontas.Free;
  end;
end;

procedure TFrm_principal.PagamentodeParcelas1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_pagParcelas,Frm_pagParcelas);
  Frm_pagParcelas.ShowModal;
  finally
    Frm_pagParcelas.Free;
  end;
end;

procedure TFrm_principal.Patrimnio1Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_patrimonio,Frm_patrimonio);
Frm_patrimonio.ShowModal;
finally
  Frm_patrimonio.Free;

end;
end;

procedure TFrm_principal.PostodeCombustivel1Click(Sender: TObject);
begin
      try
      Application.CreateForm(TFrm_posto,Frm_posto);
      Frm_posto.ShowModal;
      finally
        Frm_posto.Free;
      end;

end;

procedure TFrm_principal.RecebimentodeContas1Click(Sender: TObject);
begin
  try
  Application.CreateForm(Tfrm_Recebimentocontas,frm_Recebimentocontas);
  frm_Recebimentocontas.ShowModal;
  finally
    frm_Recebimentocontas.Free;
  end;
end;

procedure TFrm_principal.RelatoriosDiversos1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrm_RelDiversos,Frm_RelDiversos);
    Frm_RelDiversos.ShowModal;
    finally
      Frm_RelDiversos.Free;
    end;
end;

procedure TFrm_principal.transportes1Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_transporte,Frm_transporte);
Frm_transporte.ShowModal;
finally
  Frm_transporte.Free;
end;
end;

procedure TFrm_principal.SairdoSistema1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Sair do Sistema?','AUTO ESCOLA SIGA-ME',MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IdYes then
Application.Terminate;

end;

procedure TFrm_principal.SalvarBancodedados1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrm_Backup,Frm_Backup);
  Frm_Backup.ShowModal;
  finally
    Frm_Backup.Free;
  end;

end;

procedure TFrm_principal.Sobre1Click(Sender: TObject);
begin
    try
    Application.CreateForm(Tfrm_sobre,frm_sobre);
    frm_sobre.ShowModal;
    finally
      frm_sobre.Free;
    end;
end;

procedure TFrm_principal.Timer1Timer(Sender: TObject);
begin
barra.Font.Size:=11;//aumenta tamanho da fonte
barra.Panels[0].Text:=TimeToStr(time);//recebe a hora do sistema.
barra.Panels[1].Text:=FormatDateTime('dddddd',date);//mostra data por extenso
barra.Panels[2].Text:= 'Usuario: '+ DM.CDSloginUSUARIO.Text ;
lbl22.Caption:=FormatDateTime('hh:mm',time);
lbldata.Caption:=FormatDateTime('dddddd',date);//mostra
//data por extenso
end;

end.
