program Autoescola;

uses
  Forms,
  U_principal in 'U_principal.pas' {Frm_principal},
  U_Modulo in 'U_Modulo.pas' {DM: TDataModule},
  U_cliente in 'U_cliente.pas' {Frm_cliente},
  U_Funcionario in 'U_Funcionario.pas' {Frm_funcionarios},
  U_Transporte in 'U_Transporte.pas' {Frm_transporte},
  U_Categoria in 'U_Categoria.pas' {Frm_categoria},
  U_Agendamento in 'U_Agendamento.pas' {Frm_agendamento},
  U_Patrimonio in 'U_Patrimonio.pas' {Frm_patrimonio},
  U_Parcelas in 'U_Parcelas.pas' {Frm_Parcelas},
  U_PagParcela in 'U_PagParcela.pas' {Frm_pagParcelas},
  U_TipoPagamento in 'U_TipoPagamento.pas' {Frm_TipoPagamento},
  U_TipoSaida in 'U_TipoSaida.pas' {Frm_tiposaida},
  U_LivroCaixa in 'U_LivroCaixa.pas' {Frm_livrocaixa},
  U_Oficina in 'U_Oficina.pas' {Frm_Oficina},
  U_Login in 'U_Login.pas' {Frm_login},
  U_Manutencao in 'U_Manutencao.pas' {Frm_manutencao},
  U_Gastos in 'U_Gastos.pas' {Frm_gastos},
  U_Backup in 'U_Backup.pas' {Frm_Backup},
  U_ControleAbastecimento in 'U_ControleAbastecimento.pas' {Frm_Abastecimento},
  U_Posto in 'U_Posto.pas' {Frm_posto},
  U_Sobre in 'U_Sobre.pas' {frm_sobre},
  U_Empresa in 'U_Empresa.pas' {Frm_empresa},
  U_RelCliente in 'U_RelCliente.pas' {Frm_Relclientes},
  U_RelCarne in 'U_RelCarne.pas' {Frm_relCarne},
  U_RelPatrimonio in 'U_RelPatrimonio.pas' {frm_RelPatrimo},
  U_RelTiposaida in 'U_RelTiposaida.pas' {Frm_Despesas},
  U_RelCombustivel in 'U_RelCombustivel.pas' {Frm_RelPosto},
  U_RelTransporte in 'U_RelTransporte.pas' {frm_RelTransporte},
  U_RelOficinas in 'U_RelOficinas.pas' {Frm_RelOficinas},
  U_RelFuncionarios in 'U_RelFuncionarios.pas' {Frm_RelFuncionarios},
  U_Relatorios in 'U_Relatorios.pas' {Frm_RelDiversos},
  U_RelCaixa in 'U_RelCaixa.pas' {frm_relCaixa},
  U_RelManutencao in 'U_RelManutencao.pas' {Frm_RelManutencao},
  U_RelPagamento in 'U_RelPagamento.pas' {Frm_relpagamento},
  U_RelAbastecimento in 'U_RelAbastecimento.pas' {FRM_RELAbastecimento},
  U_RelAgendamento in 'U_RelAgendamento.pas' {Frm_RelAgendamento},
  U_fornecedor in 'U_fornecedor.pas' {frm_fornecedor},
  U_contaspagar in 'U_contaspagar.pas' {frm_contaspagar},
  U_ContasReceber in 'U_ContasReceber.pas' {Frm_contasreceber},
  U_Consultas in 'U_Consultas.pas' {frm_consultasparc},
  U_ContasPagas in 'U_ContasPagas.pas' {Frm_pagamentodecontas},
  U_Recebimentocontas in 'U_Recebimentocontas.pas' {frm_Recebimentocontas},
  U_Senha in 'U_Senha.pas' {frm_senha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_principal, Frm_principal);
  Application.CreateForm(TFrm_RelOficinas, Frm_RelOficinas);
  Application.CreateForm(TFrm_RelFuncionarios, Frm_RelFuncionarios);
  Application.CreateForm(TFrm_RelDiversos, Frm_RelDiversos);
  Application.CreateForm(TFrm_RelPosto, Frm_RelPosto);
  Application.CreateForm(Tfrm_RelTransporte, frm_RelTransporte);
  Application.CreateForm(TFrm_relCarne, Frm_relCarne);
  Application.CreateForm(Tfrm_RelPatrimo, frm_RelPatrimo);
  Application.CreateForm(TFrm_Relclientes, Frm_Relclientes);
  Application.CreateForm(Tfrm_relCaixa, frm_relCaixa);
  Application.CreateForm(TFrm_RelManutencao, Frm_RelManutencao);
  Application.CreateForm(TFrm_relpagamento, Frm_relpagamento);
  Application.CreateForm(TFRM_RELAbastecimento, FRM_RELAbastecimento);
  Application.CreateForm(TFrm_RelAgendamento, Frm_RelAgendamento);
  Application.CreateForm(TFrm_pagamentodecontas, Frm_pagamentodecontas);
  Application.CreateForm(Tfrm_Recebimentocontas, frm_Recebimentocontas);
  Application.Run;
end.
