unit U_Modulo;

interface

uses
  SysUtils, Classes, DBXFirebird, FMTBcd, DBClient, Provider, DB,IniFiles, Messages,DateUtils,SqlExpr;

type
  TDM = class(TDataModule)
    conexao: TSQLConnection;
    sdscliente: TSQLDataSet;
    sdsclienteID_CLIENTE: TIntegerField;
    sdsclienteCLIENTE: TStringField;
    sdsclienteENDERECO: TStringField;
    sdsclienteNUMERO: TStringField;
    sdsclienteCIDADE: TStringField;
    sdsclienteUF: TStringField;
    sdsclienteBAIRRO: TStringField;
    sdsclienteCEP: TStringField;
    sdsclienteCPF: TStringField;
    sdsclienteRG: TStringField;
    sdsclienteCELULAR: TStringField;
    sdsclienteFONE: TStringField;
    sdsclienteEMAIL: TStringField;
    sdsclienteFOTO: TStringField;
    dspcliente: TDataSetProvider;
    cdscliente: TClientDataSet;
    funcionario: TSQLDataSet;
    dspfuncionario: TDataSetProvider;
    cdsfuncionario: TClientDataSet;
    funcionarioID_FUNCIONARIO: TIntegerField;
    funcionarioFUNCIONARIO: TStringField;
    funcionarioENDERECO: TStringField;
    funcionarioNUMERO: TStringField;
    funcionarioCIDADE: TStringField;
    funcionarioUF: TStringField;
    funcionarioBAIRRO: TStringField;
    funcionarioCEP: TStringField;
    funcionarioCPF: TStringField;
    funcionarioRG: TStringField;
    funcionarioFONE: TStringField;
    funcionarioCELULAR: TStringField;
    funcionarioEMAIL: TStringField;
    funcionarioFOTO: TStringField;
    cdsfuncionarioID_FUNCIONARIO: TIntegerField;
    cdsfuncionarioFUNCIONARIO: TStringField;
    cdsfuncionarioENDERECO: TStringField;
    cdsfuncionarioNUMERO: TStringField;
    cdsfuncionarioCIDADE: TStringField;
    cdsfuncionarioUF: TStringField;
    cdsfuncionarioBAIRRO: TStringField;
    cdsfuncionarioCEP: TStringField;
    cdsfuncionarioCPF: TStringField;
    cdsfuncionarioRG: TStringField;
    cdsfuncionarioFONE: TStringField;
    cdsfuncionarioCELULAR: TStringField;
    cdsfuncionarioEMAIL: TStringField;
    cdsfuncionarioFOTO: TStringField;
    sdsTransporte: TSQLDataSet;
    dspTransporte: TDataSetProvider;
    cdstransporte: TClientDataSet;
    sdsTransporteID_TRANSPORTES: TIntegerField;
    sdsTransporteTRANSPORTE: TStringField;
    sdsTransporteDATA_COMPRA: TDateField;
    sdsTransporteCOR: TStringField;
    sdsTransporteMODELO: TStringField;
    sdsTransporteDUTE: TStringField;
    sdsTransporteRENAVAM: TStringField;
    sdsTransportePLACA: TStringField;
    sdsTransporteANO: TStringField;
    cdstransporteID_TRANSPORTES: TIntegerField;
    cdstransporteTRANSPORTE: TStringField;
    cdstransporteDATA_COMPRA: TDateField;
    cdstransporteCOR: TStringField;
    cdstransporteMODELO: TStringField;
    cdstransporteDUTE: TStringField;
    cdstransporteRENAVAM: TStringField;
    cdstransportePLACA: TStringField;
    cdstransporteANO: TStringField;
    sdscategoria: TSQLDataSet;
    dspcategoria: TDataSetProvider;
    cdscategoria: TClientDataSet;
    sdscategoriaID_CATEGORIA: TIntegerField;
    sdscategoriaCATEGORIA: TStringField;
    sdscategoriaOBS: TMemoField;
    cdscategoriaID_CATEGORIA: TIntegerField;
    cdscategoriaCATEGORIA: TStringField;
    cdscategoriaOBS: TMemoField;
    funcionarioCARTEIRA: TStringField;
    cdsfuncionarioCARTEIRA: TStringField;
    sdsagendamento: TSQLDataSet;
    dspagendamento: TDataSetProvider;
    cdsagendamento: TClientDataSet;
    sdsagendamentoID_AGENDAMENTO: TIntegerField;
    cdsagendamentoID_AGENDAMENTO: TIntegerField;
    sdsitemagenda: TSQLDataSet;
    dsdetalheagenda: TDataSource;
    cdsitemagenda: TClientDataSet;
    cdsagendamentosdsitemagenda: TDataSetField;
    cdsitemagendaID_AGENDAMENTO: TIntegerField;
    cdsitemagendaDATA: TDateField;
    cdsitemagendaHORA: TTimeField;
    cdsitemagendaID_CLIENTE: TIntegerField;
    cdsitemagendaID_FUNCIONARIO: TIntegerField;
    cdsitemagendaID_TRANSPORTE: TIntegerField;
    cdsitemagendaID_CATEGORIA: TIntegerField;
    cdsitemagendacliente: TStringField;
    cdsitemagendafuncionario: TStringField;
    cdsitemagendatransporte: TStringField;
    cdsitemagendacategoria: TStringField;
    sdsitemagendaID_AGENDAMENTO: TIntegerField;
    sdsitemagendaDATA: TDateField;
    sdsitemagendaHORA: TTimeField;
    sdsitemagendaID_CLIENTE: TIntegerField;
    sdsitemagendaID_FUNCIONARIO: TIntegerField;
    sdsitemagendaID_TRANSPORTE: TIntegerField;
    sdsitemagendaID_CATEGORIA: TIntegerField;
    sdspatrimonio: TSQLDataSet;
    dsppatrimonio: TDataSetProvider;
    cdspatrimonio: TClientDataSet;
    sdspatrimonioID_PATRIMONIO: TIntegerField;
    sdspatrimonioDESCRICAO: TStringField;
    sdspatrimonioPATRIMONIO: TStringField;
    sdspatrimonioMODELO: TStringField;
    sdspatrimonioMARCA: TStringField;
    sdspatrimonioANO: TStringField;
    sdspatrimonioCOR: TStringField;
    sdsagendamentoMES: TStringField;
    sdsagendamentoANO: TStringField;
    cdsagendamentoMES: TStringField;
    cdsagendamentoANO: TStringField;
    SDSParcela: TSQLDataSet;
    CDSparcela: TClientDataSet;
    dsdetalhecliente: TDataSource;
    cdsclienteID_CLIENTE: TIntegerField;
    cdsclienteCLIENTE: TStringField;
    cdsclienteENDERECO: TStringField;
    cdsclienteNUMERO: TStringField;
    cdsclienteCIDADE: TStringField;
    cdsclienteUF: TStringField;
    cdsclienteBAIRRO: TStringField;
    cdsclienteCEP: TStringField;
    cdsclienteCPF: TStringField;
    cdsclienteRG: TStringField;
    cdsclienteCELULAR: TStringField;
    cdsclienteFONE: TStringField;
    cdsclienteEMAIL: TStringField;
    cdsclienteFOTO: TStringField;
    cdsclienteSDSParcela: TDataSetField;
    SDSgerar: TSQLDataSet;
    DSPgerar: TDataSetProvider;
    CDSgerar: TClientDataSet;
    CDSgerarCOUNT: TIntegerField;
    SDSpagparcela: TSQLDataSet;
    DSPpagparcela: TDataSetProvider;
    CDSpagparcela: TClientDataSet;
    sdsclienteSTATUS: TStringField;
    cdsclienteSTATUS: TStringField;
    sdspagamento: TSQLDataSet;
    dsppagamento: TDataSetProvider;
    cdspagamento: TClientDataSet;
    sdspagamentoID_PAGAMENTO: TIntegerField;
    sdspagamentoDESCRICAO: TStringField;
    cdspagamentoID_PAGAMENTO: TIntegerField;
    cdspagamentoDESCRICAO: TStringField;
    sdstiposaida: TSQLDataSet;
    dsptiposaida: TDataSetProvider;
    cdstiposaida: TClientDataSet;
    sdstiposaidaID_SAIDA: TIntegerField;
    sdstiposaidaCODIGO: TStringField;
    sdstiposaidaDESCRICAO: TStringField;
    cdstiposaidaID_SAIDA: TIntegerField;
    cdstiposaidaCODIGO: TStringField;
    cdstiposaidaDESCRICAO: TStringField;
    sdscaixa: TSQLDataSet;
    dspcaixa: TDataSetProvider;
    cdscaixa: TClientDataSet;
    SDSParcelaID_CLIENTE: TIntegerField;
    SDSParcelaNOME: TStringField;
    SDSParcelaVALOR: TFMTBCDField;
    SDSParcelaDATA: TDateField;
    SDSParcelaNUM_PARCELA: TIntegerField;
    CDSparcelaID_CLIENTE: TIntegerField;
    CDSparcelaNOME: TStringField;
    CDSparcelaVALOR: TFMTBCDField;
    CDSparcelaDATA: TDateField;
    CDSparcelaNUM_PARCELA: TIntegerField;
    SDSpagparcelaID_PAGPARCELAS: TIntegerField;
    SDSpagparcelaID_CLIENTE: TIntegerField;
    SDSpagparcelaDATA: TDateField;
    SDSpagparcelaNUM_PARCELA: TIntegerField;
    SDSpagparcelaVALOR: TFMTBCDField;
    SDSpagparcelaDATA_PAGAMENTO: TDateField;
    SDSpagparcelaSTATUS: TStringField;
    CDSpagparcelaID_PAGPARCELAS: TIntegerField;
    CDSpagparcelaID_CLIENTE: TIntegerField;
    CDSpagparcelaDATA: TDateField;
    CDSpagparcelaNUM_PARCELA: TIntegerField;
    CDSpagparcelaVALOR: TFMTBCDField;
    CDSpagparcelaDATA_PAGAMENTO: TDateField;
    CDSpagparcelaSTATUS: TStringField;
    sdsTransporteVALOR: TFMTBCDField;
    cdstransporteVALOR: TFMTBCDField;
    sdspatrimonioQUANT: TFMTBCDField;
    sdspatrimonioVALOR: TFMTBCDField;
    sdspatrimonioTOTAL: TFMTBCDField;
    cdspatrimonioID_PATRIMONIO: TIntegerField;
    cdspatrimonioDESCRICAO: TStringField;
    cdspatrimonioPATRIMONIO: TStringField;
    cdspatrimonioMODELO: TStringField;
    cdspatrimonioMARCA: TStringField;
    cdspatrimonioANO: TStringField;
    cdspatrimonioCOR: TStringField;
    cdspatrimonioQUANT: TFMTBCDField;
    cdspatrimonioVALOR: TFMTBCDField;
    cdspatrimonioTOTAL: TFMTBCDField;
    SDSoficina: TSQLDataSet;
    SDSoficinaID_OFICINA: TIntegerField;
    SDSoficinaOFICINA: TStringField;
    SDSoficinaENDERECO: TStringField;
    SDSoficinaNUMERO: TStringField;
    SDSoficinaCIDADE: TStringField;
    SDSoficinaUF: TStringField;
    SDSoficinaBAIRRO: TStringField;
    SDSoficinaCNPJ: TStringField;
    SDSoficinaFONE: TStringField;
    SDSoficinaFAX: TStringField;
    SDSoficinaCONTATO: TStringField;
    SDSoficinaCELULAR: TStringField;
    SDSoficinaEMAIL: TStringField;
    DSPoficina: TDataSetProvider;
    CDSoficina: TClientDataSet;
    CDSoficinaID_OFICINA: TIntegerField;
    CDSoficinaOFICINA: TStringField;
    CDSoficinaENDERECO: TStringField;
    CDSoficinaNUMERO: TStringField;
    CDSoficinaCIDADE: TStringField;
    CDSoficinaUF: TStringField;
    CDSoficinaBAIRRO: TStringField;
    CDSoficinaCNPJ: TStringField;
    CDSoficinaFONE: TStringField;
    CDSoficinaFAX: TStringField;
    CDSoficinaCONTATO: TStringField;
    CDSoficinaCELULAR: TStringField;
    CDSoficinaEMAIL: TStringField;
    SDSmanutencao: TSQLDataSet;
    DSPmanutencao: TDataSetProvider;
    CDSmanutencao: TClientDataSet;
    SDSmanutencaoID_MANUTENCAO: TIntegerField;
    CDSmanutencaoID_MANUTENCAO: TIntegerField;
    SDSmanutencaoID_FUNCIONARIO: TIntegerField;
    SDSmanutencaoID_OFICINA: TIntegerField;
    SDSmanutencaoID_TRANSPORTE: TIntegerField;
    SDSmanutencaoDATA: TDateField;
    SDSmanutencaoKMINICIAL: TFMTBCDField;
    SDSmanutencaoKMFINAL: TFMTBCDField;
    SDSmanutencaoLITROS: TFMTBCDField;
    SDSmanutencaoMPG: TFMTBCDField;
    SDSmanutencaoPROBLEMA: TMemoField;
    SDSmanutencaoPECA: TStringField;
    SDSmanutencaoDTAENTREGA: TDateField;
    SDSmanutencaoGARANTIA: TStringField;
    SDSmanutencaoDTARECEBIMENTO: TDateField;
    CDSmanutencaoID_FUNCIONARIO: TIntegerField;
    CDSmanutencaoID_OFICINA: TIntegerField;
    CDSmanutencaoID_TRANSPORTE: TIntegerField;
    CDSmanutencaoDATA: TDateField;
    CDSmanutencaoKMINICIAL: TFMTBCDField;
    CDSmanutencaoKMFINAL: TFMTBCDField;
    CDSmanutencaoLITROS: TFMTBCDField;
    CDSmanutencaoMPG: TFMTBCDField;
    CDSmanutencaoPROBLEMA: TMemoField;
    CDSmanutencaoPECA: TStringField;
    CDSmanutencaoDTAENTREGA: TDateField;
    CDSmanutencaoGARANTIA: TStringField;
    CDSmanutencaoDTARECEBIMENTO: TDateField;
    SDSgastos: TSQLDataSet;
    DSPgasto: TDataSetProvider;
    CDSgasto: TClientDataSet;
    SDSgastosID_GASTO: TIntegerField;
    SDSgastosID_TRANSPORTE: TIntegerField;
    SDSgastosDESTINO: TStringField;
    SDSgastosDATA: TDateField;
    SDSgastosKMI: TFMTBCDField;
    SDSgastosKMF: TFMTBCDField;
    SDSgastosPCL: TFMTBCDField;
    SDSgastosM: TFMTBCDField;
    SDSgastosQLC: TFMTBCDField;
    CDSgastoID_GASTO: TIntegerField;
    CDSgastoID_TRANSPORTE: TIntegerField;
    CDSgastoDESTINO: TStringField;
    CDSgastoDATA: TDateField;
    CDSgastoKMI: TFMTBCDField;
    CDSgastoKMF: TFMTBCDField;
    CDSgastoPCL: TFMTBCDField;
    CDSgastoM: TFMTBCDField;
    CDSgastoQLC: TFMTBCDField;
    SDSgastosVTA: TFMTBCDField;
    CDSgastoVTA: TFMTBCDField;
    SDSlogin: TSQLDataSet;
    DSPlogin: TDataSetProvider;
    CDSlogin: TClientDataSet;
    SDSloginID_SENHA: TIntegerField;
    SDSloginNOME: TStringField;
    SDSloginUSUARIO: TStringField;
    SDSloginSENHA: TStringField;
    SDSloginNIVEL: TIntegerField;
    CDSloginID_SENHA: TIntegerField;
    CDSloginNOME: TStringField;
    CDSloginUSUARIO: TStringField;
    CDSloginSENHA: TStringField;
    CDSloginNIVEL: TIntegerField;
    cdspatrimoniosoma: TAggregateField;
    CDSparcelatotal: TAggregateField;
    sdsabastecimento: TSQLDataSet;
    sdsabastecimentoID_CONTROLECOMB: TIntegerField;
    sdsabastecimentoID_TRANSPORTE: TIntegerField;
    dspabastecimento: TDataSetProvider;
    cdsabastecimento: TClientDataSet;
    cdsabastecimentoID_CONTROLECOMB: TIntegerField;
    cdsabastecimentoID_TRANSPORTE: TIntegerField;
    SDSposto: TSQLDataSet;
    DSPposto: TDataSetProvider;
    CDSposto: TClientDataSet;
    SDSpostoID_POSTO: TIntegerField;
    SDSpostoNOME: TStringField;
    SDSpostoCIDADE: TStringField;
    SDSpostoESTADO: TStringField;
    SDSpostoBANDEIRA: TStringField;
    CDSpostoID_POSTO: TIntegerField;
    CDSpostoNOME: TStringField;
    CDSpostoCIDADE: TStringField;
    CDSpostoESTADO: TStringField;
    CDSpostoBANDEIRA: TStringField;
    sdsabastecimentoID_POSTO: TIntegerField;
    sdsabastecimentoCOMBUSTIVEL: TStringField;
    sdsabastecimentoKMFINAL: TFMTBCDField;
    sdsabastecimentoKINICIAL: TFMTBCDField;
    sdsabastecimentoDATA: TDateField;
    sdsabastecimentoVLRLITRO: TFMTBCDField;
    sdsabastecimentoQTDLITRO: TFMTBCDField;
    sdsabastecimentoVLRTOTAL: TFMTBCDField;
    cdsabastecimentoID_POSTO: TIntegerField;
    cdsabastecimentoCOMBUSTIVEL: TStringField;
    cdsabastecimentoKMFINAL: TFMTBCDField;
    cdsabastecimentoKINICIAL: TFMTBCDField;
    cdsabastecimentoDATA: TDateField;
    cdsabastecimentoVLRLITRO: TFMTBCDField;
    cdsabastecimentoQTDLITRO: TFMTBCDField;
    cdsabastecimentoVLRTOTAL: TFMTBCDField;
    sdsabastecimentoCODIGO: TStringField;
    cdsabastecimentoCODIGO: TStringField;
    sdsempresa: TSQLDataSet;
    sdsempresaID_EMPRESA: TIntegerField;
    sdsempresaNOMEFANTAZIA: TStringField;
    sdsempresaRAZAOSOCIAL: TStringField;
    sdsempresaCNPJ: TStringField;
    sdsempresaIE: TStringField;
    sdsempresaENDERECO: TStringField;
    sdsempresaNUMERO: TStringField;
    sdsempresaCIDADE: TStringField;
    sdsempresaUF: TStringField;
    sdsempresaBAIRRO: TStringField;
    sdsempresaCEP: TStringField;
    sdsempresaFONE: TStringField;
    sdsempresaFAX: TStringField;
    sdsempresaEMAIL: TStringField;
    sdsempresaHP: TStringField;
    sdsempresaLOGO: TStringField;
    dspempresa: TDataSetProvider;
    cdsempresa: TClientDataSet;
    cdsempresaID_EMPRESA: TIntegerField;
    cdsempresaNOMEFANTAZIA: TStringField;
    cdsempresaRAZAOSOCIAL: TStringField;
    cdsempresaCNPJ: TStringField;
    cdsempresaIE: TStringField;
    cdsempresaENDERECO: TStringField;
    cdsempresaNUMERO: TStringField;
    cdsempresaCIDADE: TStringField;
    cdsempresaUF: TStringField;
    cdsempresaBAIRRO: TStringField;
    cdsempresaCEP: TStringField;
    cdsempresaFONE: TStringField;
    cdsempresaFAX: TStringField;
    cdsempresaEMAIL: TStringField;
    cdsempresaHP: TStringField;
    cdsempresaLOGO: TStringField;
    CDSpagparcelacliente: TStringField;
    CDSpagparcelasoma: TAggregateField;
    cdsabastecimentoPOSTO: TStringField;
    cdsabastecimentoVEICULO: TStringField;
    SDSfornecedor: TSQLDataSet;
    DSPfornecedor: TDataSetProvider;
    CDSfornecedor: TClientDataSet;
    SDSfornecedorID_FORNECEDOR: TIntegerField;
    SDSfornecedorFORNECEDOR: TStringField;
    SDSfornecedorENDERECO: TStringField;
    SDSfornecedorNUMERO: TStringField;
    SDSfornecedorBAIRRO: TStringField;
    SDSfornecedorCEP: TStringField;
    SDSfornecedorCIDADE: TStringField;
    SDSfornecedorFONE: TStringField;
    SDSfornecedorFAX: TStringField;
    SDSfornecedorCELULAR: TStringField;
    SDSfornecedorCONTATO: TStringField;
    SDSfornecedorEMAIL: TStringField;
    SDSfornecedorHP: TStringField;
    SDSfornecedorCNPJ: TStringField;
    SDSfornecedorIE: TStringField;
    CDSfornecedorID_FORNECEDOR: TIntegerField;
    CDSfornecedorFORNECEDOR: TStringField;
    CDSfornecedorENDERECO: TStringField;
    CDSfornecedorNUMERO: TStringField;
    CDSfornecedorBAIRRO: TStringField;
    CDSfornecedorCEP: TStringField;
    CDSfornecedorCIDADE: TStringField;
    CDSfornecedorFONE: TStringField;
    CDSfornecedorFAX: TStringField;
    CDSfornecedorCELULAR: TStringField;
    CDSfornecedorCONTATO: TStringField;
    CDSfornecedorEMAIL: TStringField;
    CDSfornecedorHP: TStringField;
    CDSfornecedorCNPJ: TStringField;
    CDSfornecedorIE: TStringField;
    SDScontaspagar: TSQLDataSet;
    DSPcontaspagar: TDataSetProvider;
    CDScontaspagar: TClientDataSet;
    SDScontasreceber: TSQLDataSet;
    DSPcontasreceber: TDataSetProvider;
    CDScontasreceber: TClientDataSet;
    CDSparcelacontagem: TAggregateField;
    SDScontaspagarID_CONTASPAGAR: TIntegerField;
    SDScontaspagarID_FORNECEDOR: TIntegerField;
    SDScontaspagarPAGAR_DATACONTA: TDateField;
    SDScontaspagarPAGAR_REFERENTE: TStringField;
    SDScontaspagarPAGAR_DOCUMENTO: TStringField;
    SDScontaspagarPAGAR_DATAVENCIMENTO: TDateField;
    SDScontaspagarPAGAR_VALORCONTA: TFMTBCDField;
    SDScontaspagarPAGAR_PORTADOR: TStringField;
    SDScontaspagarPAGAR_OBSERVACAO: TStringField;
    SDScontaspagarPAGAR_TOTAL: TFMTBCDField;
    CDScontaspagarID_CONTASPAGAR: TIntegerField;
    CDScontaspagarID_FORNECEDOR: TIntegerField;
    CDScontaspagarPAGAR_DATACONTA: TDateField;
    CDScontaspagarPAGAR_REFERENTE: TStringField;
    CDScontaspagarPAGAR_DOCUMENTO: TStringField;
    CDScontaspagarPAGAR_DATAVENCIMENTO: TDateField;
    CDScontaspagarPAGAR_VALORCONTA: TFMTBCDField;
    CDScontaspagarPAGAR_PORTADOR: TStringField;
    CDScontaspagarPAGAR_OBSERVACAO: TStringField;
    CDScontaspagarPAGAR_TOTAL: TFMTBCDField;
    sdscaixaID_CAIXA: TIntegerField;
    sdscaixaDATA: TDateField;
    sdscaixaDESCRICAO: TStringField;
    sdscaixaVALOR: TFMTBCDField;
    sdscaixaSALDO: TFMTBCDField;
    sdscaixaTOTAL: TFMTBCDField;
    sdscaixaSTATUS: TStringField;
    cdscaixaID_CAIXA: TIntegerField;
    cdscaixaDATA: TDateField;
    cdscaixaDESCRICAO: TStringField;
    cdscaixaVALOR: TFMTBCDField;
    cdscaixaSALDO: TFMTBCDField;
    cdscaixaTOTAL: TFMTBCDField;
    cdscaixaSTATUS: TStringField;
    SDScontaspagas: TSQLDataSet;
    DSPcontaspagas: TDataSetProvider;
    CDScontaspagas: TClientDataSet;
    CDScontaspagasID_CONTASPAGAS: TIntegerField;
    CDScontaspagasID_CONTAPAGAR: TIntegerField;
    CDScontaspagasDATAPAG: TDateField;
    CDScontaspagasJUROS: TFMTBCDField;
    CDScontaspagasMULTA: TFMTBCDField;
    CDScontaspagasDESCONTO: TFMTBCDField;
    CDScontaspagasVALOR: TFMTBCDField;
    CDScontaspagasSUBTOTAL: TFMTBCDField;
    CDScontaspagasTOTAL: TFMTBCDField;
    CDScontaspagasDESCRICAO: TStringField;
    CDScontaspagasDOCUMENTO: TStringField;
    CDScontaspagasDATAVENC: TDateField;
    CDScontaspagasDIAS: TIntegerField;
    SDScontasreceberID_CONTARECEBER: TIntegerField;
    SDScontasreceberID_CLIENTE: TIntegerField;
    CDScontasreceberID_CONTARECEBER: TIntegerField;
    CDScontasreceberID_CLIENTE: TIntegerField;
    SDScontasreceberREC_DATACONTA: TDateField;
    SDScontasreceberREC_REFERENTE: TStringField;
    SDScontasreceberREC_DATAVENCIMENTO: TDateField;
    SDScontasreceberREC_VALORCONTA: TFMTBCDField;
    SDScontasreceberREC_TOTAL: TFMTBCDField;
    CDScontasreceberREC_DATACONTA: TDateField;
    CDScontasreceberREC_REFERENTE: TStringField;
    CDScontasreceberREC_DATAVENCIMENTO: TDateField;
    CDScontasreceberREC_VALORCONTA: TFMTBCDField;
    CDScontasreceberREC_TOTAL: TFMTBCDField;
    SDScontasreceberREC_DOCUMENTO: TStringField;
    CDScontasreceberREC_DOCUMENTO: TStringField;
    SDScontasrecebidas: TSQLDataSet;
    DSPcontasrecebidas: TDataSetProvider;
    CDScontasrecebidas: TClientDataSet;
    SDScontasrecebidasID_CONTASRECEBIDAS: TIntegerField;
    SDScontasrecebidasID_CONTARECEBER: TIntegerField;
    SDScontasrecebidasDATAPAG: TDateField;
    SDScontasrecebidasDATAVENC: TDateField;
    SDScontasrecebidasDESCRICAO: TStringField;
    SDScontasrecebidasDOCUMENTO: TStringField;
    SDScontasrecebidasDIAS: TIntegerField;
    SDScontasrecebidasJUROS: TFMTBCDField;
    SDScontasrecebidasDESCONTOS: TFMTBCDField;
    SDScontasrecebidasVALOR: TFMTBCDField;
    SDScontasrecebidasSUBTOTAL: TFMTBCDField;
    SDScontasrecebidasTOTAL: TFMTBCDField;
    CDScontasrecebidasID_CONTASRECEBIDAS: TIntegerField;
    CDScontasrecebidasID_CONTARECEBER: TIntegerField;
    CDScontasrecebidasDATAPAG: TDateField;
    CDScontasrecebidasDATAVENC: TDateField;
    CDScontasrecebidasDESCRICAO: TStringField;
    CDScontasrecebidasDOCUMENTO: TStringField;
    CDScontasrecebidasDIAS: TIntegerField;
    CDScontasrecebidasJUROS: TFMTBCDField;
    CDScontasrecebidasDESCONTOS: TFMTBCDField;
    CDScontasrecebidasVALOR: TFMTBCDField;
    CDScontasrecebidasSUBTOTAL: TFMTBCDField;
    CDScontasrecebidasTOTAL: TFMTBCDField;
    SDScontaspagasID_CONTASPAGAS: TIntegerField;
    SDScontaspagasID_CONTAPAGAR: TIntegerField;
    SDScontaspagasDATAPAG: TDateField;
    SDScontaspagasDATAVENC: TDateField;
    SDScontaspagasDIAS: TIntegerField;
    SDScontaspagasJUROS: TFMTBCDField;
    SDScontaspagasMULTA: TFMTBCDField;
    SDScontaspagasDESCONTO: TFMTBCDField;
    SDScontaspagasVALOR: TFMTBCDField;
    SDScontaspagasSUBTOTAL: TFMTBCDField;
    SDScontaspagasTOTAL: TFMTBCDField;
    SDScontaspagasDESCRICAO: TStringField;
    SDScontaspagasDOCUMENTO: TStringField;
    cdscaixasoma: TAggregateField;
    procedure conexaoBeforeConnect(Sender: TObject);
    procedure CDScontaspagasDESCONTOValidate(Sender: TField);
    procedure CDScontaspagasSUBTOTALValidate(Sender: TField);
    procedure CDScontaspagasJUROSValidate(Sender: TField);
  private
      { Private declarations }
  public

    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.CDScontaspagasDESCONTOValidate(Sender: TField);
begin
     DM.CDScontaspagasSUBTOTAL.AsFloat:=(DM.CDScontaspagasDESCONTO.AsFloat-DM.CDScontaspagarPAGAR_VALORCONTA.AsFloat);

end;

procedure TDM.CDScontaspagasJUROSValidate(Sender: TField);
begin
    DM.CDScontaspagasVALOR.AsFloat:=(DM.CDScontaspagasJUROS.AsFloat * DM.CDScontaspagasDIAS.AsInteger)/100 + DM.CDScontaspagasVALOR.AsFloat;
end;

procedure TDM.CDScontaspagasSUBTOTALValidate(Sender: TField);
begin
DM.CDScontaspagasTOTAL.AsFloat:=DM.CDScontaspagasVALOR.AsFloat -
  DM.CDScontaspagasSUBTOTAL.AsFloat;
end;

procedure TDM.conexaoBeforeConnect(Sender: TObject);
var
  configini: Tinifile;
begin
  configini := Tinifile.Create(ExtractFilePath(ParamStr(0)) + 'config.ini');
  conexao.Params.Values['Hostname'] := configini.ReadString('CONFIG','HOSTNAME', '');
  conexao.Params.Values['Database'] := configini.ReadString('CONFIG','DATABASE', '');
  conexao.Params.Values['User_Name'] := configini.ReadString('CONFIG','USER_NAME', '');
  conexao.Params.Values['Password'] := configini.ReadString('CONFIG','PASSWORD', '');
end;

end.