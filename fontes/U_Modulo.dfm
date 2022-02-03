object DM: TDM
  OldCreateOrder = False
  Left = 133
  Top = 250
  Height = 426
  Width = 1147
  object conexao: TSQLConnection
    ConnectionName = 'AUTOESCOLA'
    DriverName = 'FIREBIRD'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=FIREBIRD'
      'blobsize=-1'
      'commitretain=False'
      'Database=localhost:c:\autoescola\banco\dados.fdb'
      'localecode=0000'
      'password=masterkey'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    VendorLib = 'fbclient.DLL'
    BeforeConnect = conexaoBeforeConnect
    Connected = True
    Left = 16
    Top = 8
  end
  object sdscliente: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CLIENTE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 88
    Top = 8
    object sdsclienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsclienteCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 60
    end
    object sdsclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsclienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sdsclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object sdsclienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sdsclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsclienteCPF: TStringField
      FieldName = 'CPF'
    end
    object sdsclienteRG: TStringField
      FieldName = 'RG'
    end
    object sdsclienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object sdsclienteFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object sdsclienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 60
    end
    object sdsclienteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object dspcliente: TDataSetProvider
    DataSet = sdscliente
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 8
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    Left = 240
    Top = 8
    object cdsclienteID_CLIENTE: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_CLIENTE'
      DisplayFormat = '000000'
    end
    object cdsclienteCLIENTE: TStringField
      DisplayWidth = 37
      FieldName = 'CLIENTE'
      Size = 60
    end
    object cdsclienteENDERECO: TStringField
      DisplayWidth = 36
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsclienteNUMERO: TStringField
      DisplayWidth = 9
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsclienteCIDADE: TStringField
      DisplayWidth = 36
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsclienteUF: TStringField
      DisplayWidth = 3
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsclienteBAIRRO: TStringField
      DisplayWidth = 48
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsclienteCEP: TStringField
      DisplayWidth = 12
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsclienteCPF: TStringField
      DisplayWidth = 24
      FieldName = 'CPF'
      EditMask = '999.999.999-99;1;_'
    end
    object cdsclienteRG: TStringField
      DisplayWidth = 24
      FieldName = 'RG'
      EditMask = '999.999.999.999;1;_'
    end
    object cdsclienteCELULAR: TStringField
      DisplayWidth = 18
      FieldName = 'CELULAR'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object cdsclienteFONE: TStringField
      DisplayWidth = 18
      FieldName = 'FONE'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object cdsclienteEMAIL: TStringField
      DisplayWidth = 72
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsclienteFOTO: TStringField
      DisplayWidth = 72
      FieldName = 'FOTO'
      Size = 60
    end
    object cdsclienteSDSParcela: TDataSetField
      DisplayWidth = 12
      FieldName = 'SDSParcela'
    end
    object cdsclienteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object funcionario: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from FUNCIONARIO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 88
    Top = 72
    object funcionarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object funcionarioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 60
    end
    object funcionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object funcionarioNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object funcionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object funcionarioUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object funcionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object funcionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object funcionarioCPF: TStringField
      FieldName = 'CPF'
    end
    object funcionarioRG: TStringField
      FieldName = 'RG'
    end
    object funcionarioFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object funcionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object funcionarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object funcionarioFOTO: TStringField
      FieldName = 'FOTO'
      Size = 60
    end
    object funcionarioCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 10
    end
  end
  object dspfuncionario: TDataSetProvider
    DataSet = funcionario
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 68
  end
  object cdsfuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspfuncionario'
    Left = 240
    Top = 67
    object cdsfuncionarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      DisplayFormat = '000000'
    end
    object cdsfuncionarioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 60
    end
    object cdsfuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsfuncionarioNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsfuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsfuncionarioUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsfuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsfuncionarioCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsfuncionarioCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;1;_'
    end
    object cdsfuncionarioRG: TStringField
      FieldName = 'RG'
      EditMask = '999.999.999.9;1;_'
    end
    object cdsfuncionarioFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object cdsfuncionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object cdsfuncionarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object cdsfuncionarioFOTO: TStringField
      FieldName = 'FOTO'
      Size = 60
    end
    object cdsfuncionarioCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 10
    end
  end
  object sdsTransporte: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from TRANSPORTES'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 88
    Top = 127
    object sdsTransporteID_TRANSPORTES: TIntegerField
      FieldName = 'ID_TRANSPORTES'
    end
    object sdsTransporteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 60
    end
    object sdsTransporteDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object sdsTransporteCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object sdsTransporteMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsTransporteDUTE: TStringField
      FieldName = 'DUTE'
    end
    object sdsTransporteRENAVAM: TStringField
      FieldName = 'RENAVAM'
    end
    object sdsTransportePLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsTransporteANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object sdsTransporteVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
  end
  object dspTransporte: TDataSetProvider
    DataSet = sdsTransporte
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 129
  end
  object cdstransporte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransporte'
    Left = 240
    Top = 126
    object cdstransporteID_TRANSPORTES: TIntegerField
      FieldName = 'ID_TRANSPORTES'
      DisplayFormat = '000000'
    end
    object cdstransporteTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 60
    end
    object cdstransporteDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdstransporteCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object cdstransporteMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdstransporteDUTE: TStringField
      FieldName = 'DUTE'
    end
    object cdstransporteRENAVAM: TStringField
      FieldName = 'RENAVAM'
    end
    object cdstransportePLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdstransporteANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object cdstransporteVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
  end
  object sdscategoria: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CATEGORIA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = conexao
    Left = 88
    Top = 187
    object sdscategoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object sdscategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 60
    end
    object sdscategoriaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspcategoria: TDataSetProvider
    DataSet = sdscategoria
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 190
  end
  object cdscategoria: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcategoria'
    Left = 240
    Top = 189
    object cdscategoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      DisplayFormat = '000000'
    end
    object cdscategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 60
    end
    object cdscategoriaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object sdsagendamento: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from AGENDAMENTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = conexao
    Left = 88
    Top = 249
    object sdsagendamentoID_AGENDAMENTO: TIntegerField
      FieldName = 'ID_AGENDAMENTO'
    end
    object sdsagendamentoMES: TStringField
      FieldName = 'MES'
    end
    object sdsagendamentoANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
  end
  object dspagendamento: TDataSetProvider
    DataSet = sdsagendamento
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 164
    Top = 251
  end
  object cdsagendamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspagendamento'
    Left = 240
    Top = 248
    object cdsagendamentoID_AGENDAMENTO: TIntegerField
      FieldName = 'ID_AGENDAMENTO'
      DisplayFormat = '000000'
    end
    object cdsagendamentosdsitemagenda: TDataSetField
      FieldName = 'sdsitemagenda'
    end
    object cdsagendamentoMES: TStringField
      FieldName = 'MES'
    end
    object cdsagendamentoANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
  end
  object sdsitemagenda: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from ITEMAGENDA'#13#10'where id_agendamento =:id_agendamento'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsdetalheagenda
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_AGENDAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    Left = 88
    Top = 312
    object sdsitemagendaID_AGENDAMENTO: TIntegerField
      FieldName = 'ID_AGENDAMENTO'
    end
    object sdsitemagendaDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsitemagendaHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsitemagendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsitemagendaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsitemagendaID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object sdsitemagendaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
  end
  object dsdetalheagenda: TDataSource
    DataSet = sdsagendamento
    Left = 163
    Top = 312
  end
  object cdsitemagenda: TClientDataSet
    Aggregates = <>
    DataSetField = cdsagendamentosdsitemagenda
    Params = <>
    Left = 238
    Top = 312
    object cdsitemagendaID_AGENDAMENTO: TIntegerField
      FieldName = 'ID_AGENDAMENTO'
    end
    object cdsitemagendaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsitemagendaHORA: TTimeField
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
    end
    object cdsitemagendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsitemagendaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsitemagendaID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object cdsitemagendaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object cdsitemagendacliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = cdscliente
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'CLIENTE'
      KeyFields = 'ID_CLIENTE'
      Size = 40
      Lookup = True
    end
    object cdsitemagendafuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'funcionario'
      LookupDataSet = cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 40
      Lookup = True
    end
    object cdsitemagendatransporte: TStringField
      FieldKind = fkLookup
      FieldName = 'transporte'
      LookupDataSet = cdstransporte
      LookupKeyFields = 'ID_TRANSPORTES'
      LookupResultField = 'TRANSPORTE'
      KeyFields = 'ID_TRANSPORTE'
      Size = 40
      Lookup = True
    end
    object cdsitemagendacategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'categoria'
      LookupDataSet = cdscategoria
      LookupKeyFields = 'ID_CATEGORIA'
      LookupResultField = 'CATEGORIA'
      KeyFields = 'ID_CATEGORIA'
      Size = 10
      Lookup = True
    end
  end
  object sdspatrimonio: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from PATRIMONIO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 328
    Top = 128
    object sdspatrimonioID_PATRIMONIO: TIntegerField
      FieldName = 'ID_PATRIMONIO'
      DisplayFormat = '000000'
    end
    object sdspatrimonioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sdspatrimonioPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
    end
    object sdspatrimonioMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdspatrimonioMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object sdspatrimonioANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object sdspatrimonioCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object sdspatrimonioQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 9
      Size = 2
    end
    object sdspatrimonioVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object sdspatrimonioTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 9
      Size = 2
    end
  end
  object dsppatrimonio: TDataSetProvider
    DataSet = sdspatrimonio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 400
    Top = 128
  end
  object cdspatrimonio: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsppatrimonio'
    Left = 472
    Top = 126
    object cdspatrimonioID_PATRIMONIO: TIntegerField
      FieldName = 'ID_PATRIMONIO'
      DisplayFormat = '000000'
    end
    object cdspatrimonioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdspatrimonioPATRIMONIO: TStringField
      FieldName = 'PATRIMONIO'
    end
    object cdspatrimonioMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdspatrimonioMARCA: TStringField
      FieldName = 'MARCA'
      Size = 60
    end
    object cdspatrimonioANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object cdspatrimonioCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object cdspatrimonioQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 9
      Size = 2
    end
    object cdspatrimonioVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object cdspatrimonioTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object cdspatrimoniosoma: TAggregateField
      FieldName = 'soma'
      Active = True
      currency = True
      Expression = 'sum(valor)'
    end
  end
  object SDSParcela: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from PARCELA'#13#10'where id_cliente =:id_cliente'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsdetalhecliente
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    Left = 328
    Top = 8
    object SDSParcelaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object SDSParcelaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object SDSParcelaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object SDSParcelaDATA: TDateField
      FieldName = 'DATA'
    end
    object SDSParcelaNUM_PARCELA: TIntegerField
      FieldName = 'NUM_PARCELA'
    end
  end
  object CDSparcela: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsclienteSDSParcela
    Params = <>
    Left = 472
    Top = 8
    object CDSparcelaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      DisplayFormat = '000000'
    end
    object CDSparcelaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object CDSparcelaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object CDSparcelaDATA: TDateField
      FieldName = 'DATA'
    end
    object CDSparcelaNUM_PARCELA: TIntegerField
      FieldName = 'NUM_PARCELA'
      DisplayFormat = '000'
    end
    object CDSparcelatotal: TAggregateField
      FieldName = 'total'
      Active = True
      currency = True
      Expression = 'sum(valor)'
    end
    object CDSparcelacontagem: TAggregateField
      FieldName = 'contagem'
      Active = True
      DisplayFormat = '000000'
      Expression = 'count(id_cliente)'
    end
  end
  object dsdetalhecliente: TDataSource
    DataSet = sdscliente
    Left = 400
    Top = 8
  end
  object SDSgerar: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select  count(num_parcela) from PARCELA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 328
    Top = 72
  end
  object DSPgerar: TDataSetProvider
    DataSet = SDSgerar
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 400
    Top = 72
  end
  object CDSgerar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPgerar'
    Left = 472
    Top = 72
    object CDSgerarCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
  object SDSpagparcela: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from PAGPARCELAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 328
    Top = 188
    object SDSpagparcelaID_PAGPARCELAS: TIntegerField
      FieldName = 'ID_PAGPARCELAS'
    end
    object SDSpagparcelaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object SDSpagparcelaDATA: TDateField
      FieldName = 'DATA'
    end
    object SDSpagparcelaNUM_PARCELA: TIntegerField
      FieldName = 'NUM_PARCELA'
    end
    object SDSpagparcelaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object SDSpagparcelaDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object SDSpagparcelaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object DSPpagparcela: TDataSetProvider
    DataSet = SDSpagparcela
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 400
    Top = 187
  end
  object CDSpagparcela: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSPpagparcela'
    Left = 472
    Top = 184
    object CDSpagparcelaID_PAGPARCELAS: TIntegerField
      FieldName = 'ID_PAGPARCELAS'
    end
    object CDSpagparcelaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object CDSpagparcelaDATA: TDateField
      FieldName = 'DATA'
    end
    object CDSpagparcelaNUM_PARCELA: TIntegerField
      FieldName = 'NUM_PARCELA'
      DisplayFormat = '0000'
    end
    object CDSpagparcelaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object CDSpagparcelaDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
    end
    object CDSpagparcelaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDSpagparcelacliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = cdscliente
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'CLIENTE'
      KeyFields = 'ID_CLIENTE'
      Size = 40
      Lookup = True
    end
    object CDSpagparcelasoma: TAggregateField
      FieldName = 'soma'
      Active = True
      currency = True
      Expression = 'sum(valor)'
    end
  end
  object sdspagamento: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from TIPOPAG'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 332
    Top = 246
    object sdspagamentoID_PAGAMENTO: TIntegerField
      FieldName = 'ID_PAGAMENTO'
    end
    object sdspagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dsppagamento: TDataSetProvider
    DataSet = sdspagamento
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 392
    Top = 245
  end
  object cdspagamento: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsppagamento'
    Left = 468
    Top = 241
    object cdspagamentoID_PAGAMENTO: TIntegerField
      FieldName = 'ID_PAGAMENTO'
      DisplayFormat = '000000'
    end
    object cdspagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object sdstiposaida: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from SAIDA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 329
    Top = 312
    object sdstiposaidaID_SAIDA: TIntegerField
      FieldName = 'ID_SAIDA'
    end
    object sdstiposaidaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
    object sdstiposaidaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object dsptiposaida: TDataSetProvider
    DataSet = sdstiposaida
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 412
    Top = 304
  end
  object cdstiposaida: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsptiposaida'
    Left = 488
    Top = 304
    object cdstiposaidaID_SAIDA: TIntegerField
      FieldName = 'ID_SAIDA'
      DisplayFormat = '000000'
    end
    object cdstiposaidaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
    object cdstiposaidaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object sdscaixa: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CAIXA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 552
    Top = 8
    object sdscaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
    end
    object sdscaixaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object sdscaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sdscaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object sdscaixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      currency = True
      Precision = 9
      Size = 2
    end
    object sdscaixaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object sdscaixaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object dspcaixa: TDataSetProvider
    DataSet = sdscaixa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 8
  end
  object cdscaixa: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'STATUS'
        IndexName = 'STATUS'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'ID_CAIXA'
        DataType = ftInteger
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 9
        Size = 2
      end
      item
        Name = 'SALDO'
        DataType = ftFMTBcd
        Precision = 9
        Size = 2
      end
      item
        Name = 'TOTAL'
        DataType = ftFMTBcd
        Precision = 9
        Size = 2
      end
      item
        Name = 'STATUS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_CONTASPAGAS'
        DataType = ftInteger
      end
      item
        Name = 'ID_CONTASRECEBIDAS'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'STATUS'
        Fields = 'STATUS'
        GroupingLevel = 1
      end>
    IndexName = 'STATUS'
    Params = <>
    ProviderName = 'dspcaixa'
    StoreDefs = True
    Left = 696
    Top = 8
    object cdscaixaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
    end
    object cdscaixaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdscaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdscaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object cdscaixaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      currency = True
      Precision = 9
      Size = 2
    end
    object cdscaixaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object cdscaixaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdscaixasoma: TAggregateField
      FieldName = 'soma'
      Active = True
      currency = True
      Expression = 'sum(valor)'
    end
  end
  object SDSoficina: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from OFICINA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 552
    Top = 72
    object SDSoficinaID_OFICINA: TIntegerField
      FieldName = 'ID_OFICINA'
    end
    object SDSoficinaOFICINA: TStringField
      FieldName = 'OFICINA'
      Size = 60
    end
    object SDSoficinaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDSoficinaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object SDSoficinaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object SDSoficinaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object SDSoficinaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object SDSoficinaCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object SDSoficinaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object SDSoficinaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDSoficinaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object SDSoficinaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SDSoficinaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
  end
  object DSPoficina: TDataSetProvider
    DataSet = SDSoficina
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 72
  end
  object CDSoficina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPoficina'
    Left = 696
    Top = 72
    object CDSoficinaID_OFICINA: TIntegerField
      FieldName = 'ID_OFICINA'
      DisplayFormat = '000000'
    end
    object CDSoficinaOFICINA: TStringField
      FieldName = 'OFICINA'
      Size = 60
    end
    object CDSoficinaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CDSoficinaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CDSoficinaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object CDSoficinaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CDSoficinaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object CDSoficinaCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object CDSoficinaFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object CDSoficinaFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object CDSoficinaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object CDSoficinaCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object CDSoficinaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
  end
  object SDSmanutencao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from MANUTECAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = conexao
    Left = 552
    Top = 126
    object SDSmanutencaoID_MANUTENCAO: TIntegerField
      FieldName = 'ID_MANUTENCAO'
    end
    object SDSmanutencaoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object SDSmanutencaoID_OFICINA: TIntegerField
      FieldName = 'ID_OFICINA'
    end
    object SDSmanutencaoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object SDSmanutencaoDATA: TDateField
      FieldName = 'DATA'
    end
    object SDSmanutencaoKMINICIAL: TFMTBCDField
      FieldName = 'KMINICIAL'
      Precision = 18
      Size = 2
    end
    object SDSmanutencaoKMFINAL: TFMTBCDField
      FieldName = 'KMFINAL'
      Precision = 18
      Size = 2
    end
    object SDSmanutencaoLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Precision = 18
      Size = 2
    end
    object SDSmanutencaoMPG: TFMTBCDField
      FieldName = 'MPG'
      Precision = 18
      Size = 2
    end
    object SDSmanutencaoPROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      BlobType = ftMemo
      Size = 1
    end
    object SDSmanutencaoPECA: TStringField
      FieldName = 'PECA'
      Size = 60
    end
    object SDSmanutencaoDTAENTREGA: TDateField
      FieldName = 'DTAENTREGA'
    end
    object SDSmanutencaoGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 3
    end
    object SDSmanutencaoDTARECEBIMENTO: TDateField
      FieldName = 'DTARECEBIMENTO'
    end
  end
  object DSPmanutencao: TDataSetProvider
    DataSet = SDSmanutencao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 127
  end
  object CDSmanutencao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPmanutencao'
    Left = 696
    Top = 127
    object CDSmanutencaoID_MANUTENCAO: TIntegerField
      FieldName = 'ID_MANUTENCAO'
      DisplayFormat = '000000'
    end
    object CDSmanutencaoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      DisplayFormat = '000000'
    end
    object CDSmanutencaoID_OFICINA: TIntegerField
      FieldName = 'ID_OFICINA'
      DisplayFormat = '000000'
    end
    object CDSmanutencaoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      DisplayFormat = '000000'
    end
    object CDSmanutencaoDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object CDSmanutencaoKMINICIAL: TFMTBCDField
      FieldName = 'KMINICIAL'
      Precision = 18
      Size = 2
    end
    object CDSmanutencaoKMFINAL: TFMTBCDField
      FieldName = 'KMFINAL'
      Precision = 18
      Size = 2
    end
    object CDSmanutencaoLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Precision = 18
      Size = 2
    end
    object CDSmanutencaoMPG: TFMTBCDField
      FieldName = 'MPG'
      Precision = 18
      Size = 2
    end
    object CDSmanutencaoPROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      BlobType = ftMemo
      Size = 1
    end
    object CDSmanutencaoPECA: TStringField
      FieldName = 'PECA'
      Size = 60
    end
    object CDSmanutencaoDTAENTREGA: TDateField
      FieldName = 'DTAENTREGA'
      EditMask = '!99/99/0000;1;_'
    end
    object CDSmanutencaoGARANTIA: TStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 3
    end
    object CDSmanutencaoDTARECEBIMENTO: TDateField
      FieldName = 'DTARECEBIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object SDSgastos: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from GASTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = conexao
    Left = 552
    Top = 184
    object SDSgastosID_GASTO: TIntegerField
      FieldName = 'ID_GASTO'
    end
    object SDSgastosID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object SDSgastosDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 60
    end
    object SDSgastosDATA: TDateField
      FieldName = 'DATA'
    end
    object SDSgastosKMI: TFMTBCDField
      FieldName = 'KMI'
      Precision = 18
      Size = 2
    end
    object SDSgastosKMF: TFMTBCDField
      FieldName = 'KMF'
      Precision = 18
      Size = 2
    end
    object SDSgastosPCL: TFMTBCDField
      FieldName = 'PCL'
      Precision = 18
      Size = 2
    end
    object SDSgastosM: TFMTBCDField
      FieldName = 'M'
      Precision = 18
      Size = 2
    end
    object SDSgastosQLC: TFMTBCDField
      FieldName = 'QLC'
      Precision = 18
      Size = 2
    end
    object SDSgastosVTA: TFMTBCDField
      FieldName = 'VTA'
      Precision = 18
      Size = 2
    end
  end
  object DSPgasto: TDataSetProvider
    DataSet = SDSgastos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 186
  end
  object CDSgasto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPgasto'
    Left = 696
    Top = 185
    object CDSgastoID_GASTO: TIntegerField
      FieldName = 'ID_GASTO'
      DisplayFormat = '000000'
    end
    object CDSgastoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object CDSgastoDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 60
    end
    object CDSgastoDATA: TDateField
      FieldName = 'DATA'
    end
    object CDSgastoKMI: TFMTBCDField
      FieldName = 'KMI'
      Precision = 18
      Size = 2
    end
    object CDSgastoKMF: TFMTBCDField
      FieldName = 'KMF'
      Precision = 18
      Size = 2
    end
    object CDSgastoPCL: TFMTBCDField
      FieldName = 'PCL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDSgastoM: TFMTBCDField
      FieldName = 'M'
      Precision = 18
      Size = 2
    end
    object CDSgastoQLC: TFMTBCDField
      FieldName = 'QLC'
      Precision = 18
      Size = 2
    end
    object CDSgastoVTA: TFMTBCDField
      FieldName = 'VTA'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object SDSlogin: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from acesso'#13#10'where USUARIO = :nome and SENHA = :senha'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    Left = 544
    Top = 240
    object SDSloginID_SENHA: TIntegerField
      FieldName = 'ID_SENHA'
    end
    object SDSloginNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object SDSloginUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object SDSloginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object SDSloginNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object DSPlogin: TDataSetProvider
    DataSet = SDSlogin
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 620
    Top = 244
  end
  object CDSlogin: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPlogin'
    Left = 696
    Top = 242
    object CDSloginID_SENHA: TIntegerField
      FieldName = 'ID_SENHA'
    end
    object CDSloginNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object CDSloginUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object CDSloginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object CDSloginNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object sdsabastecimento: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CONTROLECOMB'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 552
    Top = 304
    object sdsabastecimentoID_CONTROLECOMB: TIntegerField
      FieldName = 'ID_CONTROLECOMB'
    end
    object sdsabastecimentoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object sdsabastecimentoID_POSTO: TIntegerField
      FieldName = 'ID_POSTO'
    end
    object sdsabastecimentoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 30
    end
    object sdsabastecimentoKMFINAL: TFMTBCDField
      FieldName = 'KMFINAL'
      Precision = 9
      Size = 2
    end
    object sdsabastecimentoKINICIAL: TFMTBCDField
      FieldName = 'KINICIAL'
      Precision = 9
      Size = 2
    end
    object sdsabastecimentoDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsabastecimentoVLRLITRO: TFMTBCDField
      FieldName = 'VLRLITRO'
      Precision = 9
      Size = 2
    end
    object sdsabastecimentoQTDLITRO: TFMTBCDField
      FieldName = 'QTDLITRO'
      Precision = 9
      Size = 2
    end
    object sdsabastecimentoVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      Precision = 9
      Size = 2
    end
    object sdsabastecimentoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
  end
  object dspabastecimento: TDataSetProvider
    DataSet = sdsabastecimento
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 296
  end
  object cdsabastecimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspabastecimento'
    Left = 696
    Top = 304
    object cdsabastecimentoID_CONTROLECOMB: TIntegerField
      FieldName = 'ID_CONTROLECOMB'
      DisplayFormat = '000000'
    end
    object cdsabastecimentoID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object cdsabastecimentoID_POSTO: TIntegerField
      FieldName = 'ID_POSTO'
    end
    object cdsabastecimentoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 30
    end
    object cdsabastecimentoKMFINAL: TFMTBCDField
      FieldName = 'KMFINAL'
      Precision = 9
      Size = 2
    end
    object cdsabastecimentoKINICIAL: TFMTBCDField
      FieldName = 'KINICIAL'
      Precision = 9
      Size = 2
    end
    object cdsabastecimentoDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsabastecimentoVLRLITRO: TFMTBCDField
      FieldName = 'VLRLITRO'
      currency = True
      Precision = 9
      Size = 2
    end
    object cdsabastecimentoQTDLITRO: TFMTBCDField
      FieldName = 'QTDLITRO'
      Precision = 9
      Size = 2
    end
    object cdsabastecimentoVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object cdsabastecimentoCODIGO: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Size = 12
    end
    object cdsabastecimentoPOSTO: TStringField
      FieldKind = fkLookup
      FieldName = 'POSTO'
      LookupDataSet = CDSposto
      LookupKeyFields = 'ID_POSTO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_POSTO'
      Size = 40
      Lookup = True
    end
    object cdsabastecimentoVEICULO: TStringField
      FieldKind = fkLookup
      FieldName = 'VEICULO'
      LookupDataSet = cdstransporte
      LookupKeyFields = 'ID_TRANSPORTES'
      LookupResultField = 'TRANSPORTE'
      KeyFields = 'ID_TRANSPORTE'
      Size = 40
      Lookup = True
    end
  end
  object SDSposto: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from POSTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 792
    Top = 8
    object SDSpostoID_POSTO: TIntegerField
      FieldName = 'ID_POSTO'
    end
    object SDSpostoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object SDSpostoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object SDSpostoESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object SDSpostoBANDEIRA: TStringField
      FieldName = 'BANDEIRA'
      Size = 30
    end
  end
  object DSPposto: TDataSetProvider
    DataSet = SDSposto
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 856
    Top = 8
  end
  object CDSposto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPposto'
    Left = 920
    Top = 8
    object CDSpostoID_POSTO: TIntegerField
      FieldName = 'ID_POSTO'
      DisplayFormat = '000000'
    end
    object CDSpostoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object CDSpostoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CDSpostoESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CDSpostoBANDEIRA: TStringField
      FieldName = 'BANDEIRA'
      Size = 30
    end
  end
  object sdsempresa: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from EMPRESA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 784
    Top = 72
    object sdsempresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object sdsempresaNOMEFANTAZIA: TStringField
      FieldName = 'NOMEFANTAZIA'
      Size = 60
    end
    object sdsempresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object sdsempresaCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object sdsempresaIE: TStringField
      FieldName = 'IE'
    end
    object sdsempresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsempresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sdsempresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object sdsempresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsempresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sdsempresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsempresaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsempresaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsempresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 35
    end
    object sdsempresaHP: TStringField
      FieldName = 'HP'
      Size = 35
    end
    object sdsempresaLOGO: TStringField
      FieldName = 'LOGO'
      Size = 60
    end
  end
  object dspempresa: TDataSetProvider
    DataSet = sdsempresa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 856
    Top = 72
  end
  object cdsempresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspempresa'
    Left = 919
    Top = 72
    object cdsempresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object cdsempresaNOMEFANTAZIA: TStringField
      FieldName = 'NOMEFANTAZIA'
      Size = 60
    end
    object cdsempresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 60
    end
    object cdsempresaCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '999.999.999/9999-99'
    end
    object cdsempresaIE: TStringField
      FieldName = 'IE'
    end
    object cdsempresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsempresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsempresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsempresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsempresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsempresaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object cdsempresaFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object cdsempresaFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object cdsempresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 35
    end
    object cdsempresaHP: TStringField
      FieldName = 'HP'
      Size = 35
    end
    object cdsempresaLOGO: TStringField
      FieldName = 'LOGO'
      Size = 60
    end
  end
  object SDSfornecedor: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from FORNECEDOR'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 784
    Top = 128
    object SDSfornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object SDSfornecedorFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 60
    end
    object SDSfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDSfornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object SDSfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object SDSfornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SDSfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object SDSfornecedorFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object SDSfornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDSfornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SDSfornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 35
    end
    object SDSfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 35
    end
    object SDSfornecedorHP: TStringField
      FieldName = 'HP'
      Size = 35
    end
    object SDSfornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object SDSfornecedorIE: TStringField
      FieldName = 'IE'
    end
  end
  object DSPfornecedor: TDataSetProvider
    DataSet = SDSfornecedor
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 856
    Top = 128
  end
  object CDSfornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPfornecedor'
    Left = 919
    Top = 128
    object CDSfornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      DisplayFormat = '000000'
    end
    object CDSfornecedorFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 60
    end
    object CDSfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CDSfornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CDSfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object CDSfornecedorCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object CDSfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CDSfornecedorFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object CDSfornecedorFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object CDSfornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object CDSfornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 35
    end
    object CDSfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 35
    end
    object CDSfornecedorHP: TStringField
      FieldName = 'HP'
      Size = 35
    end
    object CDSfornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object CDSfornecedorIE: TStringField
      FieldName = 'IE'
    end
  end
  object SDScontaspagar: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CONTASPAGAR'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 784
    Top = 184
    object SDScontaspagarID_CONTASPAGAR: TIntegerField
      FieldName = 'ID_CONTASPAGAR'
    end
    object SDScontaspagarID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object SDScontaspagarPAGAR_DATACONTA: TDateField
      FieldName = 'PAGAR_DATACONTA'
      EditMask = '!99/99/0000;1;_'
    end
    object SDScontaspagarPAGAR_REFERENTE: TStringField
      FieldName = 'PAGAR_REFERENTE'
      Size = 50
    end
    object SDScontaspagarPAGAR_DOCUMENTO: TStringField
      FieldName = 'PAGAR_DOCUMENTO'
      Size = 50
    end
    object SDScontaspagarPAGAR_DATAVENCIMENTO: TDateField
      FieldName = 'PAGAR_DATAVENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object SDScontaspagarPAGAR_VALORCONTA: TFMTBCDField
      FieldName = 'PAGAR_VALORCONTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object SDScontaspagarPAGAR_PORTADOR: TStringField
      FieldName = 'PAGAR_PORTADOR'
      Size = 50
    end
    object SDScontaspagarPAGAR_OBSERVACAO: TStringField
      FieldName = 'PAGAR_OBSERVACAO'
      Size = 220
    end
    object SDScontaspagarPAGAR_TOTAL: TFMTBCDField
      FieldName = 'PAGAR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DSPcontaspagar: TDataSetProvider
    DataSet = SDScontaspagar
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 856
    Top = 184
  end
  object CDScontaspagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPcontaspagar'
    Left = 919
    Top = 184
    object CDScontaspagarID_CONTASPAGAR: TIntegerField
      FieldName = 'ID_CONTASPAGAR'
    end
    object CDScontaspagarID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object CDScontaspagarPAGAR_DATACONTA: TDateField
      FieldName = 'PAGAR_DATACONTA'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontaspagarPAGAR_REFERENTE: TStringField
      FieldName = 'PAGAR_REFERENTE'
      Size = 50
    end
    object CDScontaspagarPAGAR_DOCUMENTO: TStringField
      FieldName = 'PAGAR_DOCUMENTO'
      Size = 50
    end
    object CDScontaspagarPAGAR_DATAVENCIMENTO: TDateField
      FieldName = 'PAGAR_DATAVENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontaspagarPAGAR_VALORCONTA: TFMTBCDField
      FieldName = 'PAGAR_VALORCONTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDScontaspagarPAGAR_PORTADOR: TStringField
      FieldName = 'PAGAR_PORTADOR'
      Size = 50
    end
    object CDScontaspagarPAGAR_OBSERVACAO: TStringField
      FieldName = 'PAGAR_OBSERVACAO'
      Size = 220
    end
    object CDScontaspagarPAGAR_TOTAL: TFMTBCDField
      FieldName = 'PAGAR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object SDScontasreceber: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CONTASRECEBER'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 784
    Top = 240
    object SDScontasreceberID_CONTARECEBER: TIntegerField
      FieldName = 'ID_CONTARECEBER'
    end
    object SDScontasreceberID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object SDScontasreceberREC_DATACONTA: TDateField
      FieldName = 'REC_DATACONTA'
    end
    object SDScontasreceberREC_REFERENTE: TStringField
      FieldName = 'REC_REFERENTE'
      Size = 50
    end
    object SDScontasreceberREC_DATAVENCIMENTO: TDateField
      FieldName = 'REC_DATAVENCIMENTO'
    end
    object SDScontasreceberREC_VALORCONTA: TFMTBCDField
      FieldName = 'REC_VALORCONTA'
      Precision = 18
      Size = 2
    end
    object SDScontasreceberREC_TOTAL: TFMTBCDField
      FieldName = 'REC_TOTAL'
      Precision = 18
      Size = 2
    end
    object SDScontasreceberREC_DOCUMENTO: TStringField
      FieldName = 'REC_DOCUMENTO'
    end
  end
  object DSPcontasreceber: TDataSetProvider
    DataSet = SDScontasreceber
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 856
    Top = 240
  end
  object CDScontasreceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPcontasreceber'
    Left = 919
    Top = 240
    object CDScontasreceberID_CONTARECEBER: TIntegerField
      FieldName = 'ID_CONTARECEBER'
    end
    object CDScontasreceberID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object CDScontasreceberREC_DATACONTA: TDateField
      FieldName = 'REC_DATACONTA'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontasreceberREC_REFERENTE: TStringField
      FieldName = 'REC_REFERENTE'
      Size = 50
    end
    object CDScontasreceberREC_DATAVENCIMENTO: TDateField
      FieldName = 'REC_DATAVENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontasreceberREC_VALORCONTA: TFMTBCDField
      FieldName = 'REC_VALORCONTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDScontasreceberREC_TOTAL: TFMTBCDField
      FieldName = 'REC_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object CDScontasreceberREC_DOCUMENTO: TStringField
      FieldName = 'REC_DOCUMENTO'
    end
  end
  object SDScontaspagas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CONTASPAGAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 784
    Top = 296
    object SDScontaspagasID_CONTASPAGAS: TIntegerField
      FieldName = 'ID_CONTASPAGAS'
    end
    object SDScontaspagasID_CONTAPAGAR: TIntegerField
      FieldName = 'ID_CONTAPAGAR'
    end
    object SDScontaspagasDATAPAG: TDateField
      FieldName = 'DATAPAG'
    end
    object SDScontaspagasDATAVENC: TDateField
      FieldName = 'DATAVENC'
    end
    object SDScontaspagasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object SDScontaspagasJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 9
      Size = 2
    end
    object SDScontaspagasMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 9
      Size = 2
    end
    object SDScontaspagasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 9
      Size = 2
    end
    object SDScontaspagasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object SDScontaspagasSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 9
      Size = 2
    end
    object SDScontaspagasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 9
      Size = 2
    end
    object SDScontaspagasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object SDScontaspagasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
  end
  object DSPcontaspagas: TDataSetProvider
    DataSet = SDScontaspagas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 856
    Top = 296
  end
  object CDScontaspagas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPcontaspagas'
    Left = 919
    Top = 296
    object CDScontaspagasID_CONTASPAGAS: TIntegerField
      FieldName = 'ID_CONTASPAGAS'
    end
    object CDScontaspagasID_CONTAPAGAR: TIntegerField
      FieldName = 'ID_CONTAPAGAR'
    end
    object CDScontaspagasDATAPAG: TDateField
      FieldName = 'DATAPAG'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontaspagasJUROS: TFMTBCDField
      FieldName = 'JUROS'
      OnValidate = CDScontaspagasJUROSValidate
      Precision = 9
      Size = 2
    end
    object CDScontaspagasMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 9
      Size = 2
    end
    object CDScontaspagasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      OnValidate = CDScontaspagasDESCONTOValidate
      Precision = 9
      Size = 2
    end
    object CDScontaspagasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object CDScontaspagasSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      OnValidate = CDScontaspagasSUBTOTALValidate
      currency = True
      Precision = 9
      Size = 2
    end
    object CDScontaspagasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object CDScontaspagasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object CDScontaspagasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object CDScontaspagasDATAVENC: TDateField
      FieldName = 'DATAVENC'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontaspagasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
  end
  object SDScontasrecebidas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CONTASRECEBIDAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 1008
    Top = 8
    object SDScontasrecebidasID_CONTASRECEBIDAS: TIntegerField
      FieldName = 'ID_CONTASRECEBIDAS'
    end
    object SDScontasrecebidasID_CONTARECEBER: TIntegerField
      FieldName = 'ID_CONTARECEBER'
    end
    object SDScontasrecebidasDATAPAG: TDateField
      FieldName = 'DATAPAG'
    end
    object SDScontasrecebidasDATAVENC: TDateField
      FieldName = 'DATAVENC'
    end
    object SDScontasrecebidasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object SDScontasrecebidasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object SDScontasrecebidasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object SDScontasrecebidasJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 9
      Size = 2
    end
    object SDScontasrecebidasDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Precision = 9
      Size = 2
    end
    object SDScontasrecebidasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 9
      Size = 2
    end
    object SDScontasrecebidasSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 9
      Size = 2
    end
    object SDScontasrecebidasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 9
      Size = 2
    end
  end
  object DSPcontasrecebidas: TDataSetProvider
    DataSet = SDScontasrecebidas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1080
    Top = 8
  end
  object CDScontasrecebidas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPcontasrecebidas'
    Left = 1047
    Top = 72
    object CDScontasrecebidasID_CONTASRECEBIDAS: TIntegerField
      FieldName = 'ID_CONTASRECEBIDAS'
    end
    object CDScontasrecebidasID_CONTARECEBER: TIntegerField
      FieldName = 'ID_CONTARECEBER'
    end
    object CDScontasrecebidasDATAPAG: TDateField
      FieldName = 'DATAPAG'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontasrecebidasDATAVENC: TDateField
      FieldName = 'DATAVENC'
      EditMask = '!99/99/0000;1;_'
    end
    object CDScontasrecebidasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object CDScontasrecebidasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object CDScontasrecebidasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CDScontasrecebidasJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 9
      Size = 2
    end
    object CDScontasrecebidasDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Precision = 9
      Size = 2
    end
    object CDScontasrecebidasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object CDScontasrecebidasSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object CDScontasrecebidasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
  end
end
