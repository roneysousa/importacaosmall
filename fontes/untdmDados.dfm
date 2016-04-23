object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 305
  Top = 162
  Height = 448
  Width = 714
  object sqlFirebird: TSQLConnection
    ConnectionName = 'SMALL'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=C:\INFOG2\Banco\SMALL.FDB'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'c:\infog2\fbclient.dll'
    BeforeConnect = sqlFirebirdBeforeConnect
    Left = 56
    Top = 24
  end
  object SqlPostGres: TSQLConnection
    ConnectionName = 'pluspdv_pile'
    DriverName = 'DevartPostgreSQL'
    GetDriverFunc = 'getSQLDriverPostgreSQL'
    LibraryName = 'dbexppgsql.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartPostgreSQL'
      'BlobSize=-1'
      'HostName=localhost'
      'SchemaName='
      'DataBase=pluspdv_pile'
      'User_Name=postgres'
      'Password=admg2'
      'UseQuoteChar=False'
      'EnableBCD=True')
    VendorLib = 'dbexppgsql.dll'
    BeforeConnect = SqlPostGresBeforeConnect
    Connected = True
    Left = 400
    Top = 24
  end
  object dstProdutos: TSQLDataSet
    CommandText = 'select * from ESTOQUE order by REGISTRO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlFirebird
    Left = 24
    Top = 88
    object dstProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object dstProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object dstProdutosNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object dstProdutosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object dstProdutosMEDIDA: TStringField
      FieldName = 'MEDIDA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstProdutosPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosINDEXADOR: TFloatField
      FieldName = 'INDEXADOR'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosCUSTOCOMPR: TFloatField
      FieldName = 'CUSTOCOMPR'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosQTD_COMPRA: TFloatField
      FieldName = 'QTD_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosQTD_ATUAL: TFloatField
      FieldName = 'QTD_ATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosQTD_MINIM: TFloatField
      FieldName = 'QTD_MINIM'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosQTD_INICIO: TFloatField
      FieldName = 'QTD_INICIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosDAT_INICIO: TDateField
      FieldName = 'DAT_INICIO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosULT_VENDA: TDateField
      FieldName = 'ULT_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosLIVRE1: TStringField
      FieldName = 'LIVRE1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstProdutosLIVRE2: TStringField
      FieldName = 'LIVRE2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstProdutosLIVRE3: TStringField
      FieldName = 'LIVRE3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstProdutosLIVRE4: TStringField
      FieldName = 'LIVRE4'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstProdutosPESO: TFloatField
      FieldName = 'PESO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosLOCAL: TStringField
      FieldName = 'LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstProdutosCF: TStringField
      FieldName = 'CF'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object dstProdutosIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosCST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstProdutosST: TStringField
      FieldName = 'ST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstProdutosCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 254
    end
    object dstProdutosQTD_VEND: TFloatField
      FieldName = 'QTD_VEND'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosCUS_VEND: TFloatField
      FieldName = 'CUS_VEND'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosVAL_VEND: TFloatField
      FieldName = 'VAL_VEND'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosLUC_VEND: TFloatField
      FieldName = 'LUC_VEND'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosATIVO: TSmallintField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosMARGEMLB: TFloatField
      FieldName = 'MARGEMLB'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosALTERADO: TSmallintField
      FieldName = 'ALTERADO'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosSERIE: TSmallintField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosFOTO: TMemoField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstProdutosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object dstProdutosPIVA: TFloatField
      FieldName = 'PIVA'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstProdutosENCRYPTHASH: TStringField
      FieldName = 'ENCRYPTHASH'
      ProviderFlags = [pfInUpdate]
      Size = 56
    end
    object dstProdutosIAT: TStringField
      FieldName = 'IAT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dstProdutosIPPT: TStringField
      FieldName = 'IPPT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dstProdutosONPROMO: TFMTBCDField
      FieldName = 'ONPROMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 8
    end
    object dstProdutosOFFPROMO: TFMTBCDField
      FieldName = 'OFFPROMO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 8
    end
    object dstProdutosPROMOINI: TDateField
      FieldName = 'PROMOINI'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosPROMOFIM: TDateField
      FieldName = 'PROMOFIM'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosIIA: TFloatField
      FieldName = 'IIA'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstProdutosTIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstProdutosCST_PIS_COFINS_ENTRADA: TStringField
      FieldName = 'CST_PIS_COFINS_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstProdutosALIQ_PIS_ENTRADA: TFMTBCDField
      FieldName = 'ALIQ_PIS_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 8
    end
    object dstProdutosALIQ_COFINS_ENTRADA: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 8
    end
    object dstProdutosCST_PIS_COFINS_SAIDA: TStringField
      FieldName = 'CST_PIS_COFINS_SAIDA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstProdutosALIQ_PIS_SAIDA: TFMTBCDField
      FieldName = 'ALIQ_PIS_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 8
    end
    object dstProdutosALIQ_COFINS_SAIDA: TFMTBCDField
      FieldName = 'ALIQ_COFINS_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 8
    end
    object dstProdutosVALOR_PARCELA_IMPORTADA_EXTERIO: TFMTBCDField
      FieldName = 'VALOR_PARCELA_IMPORTADA_EXTERIO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstProdutosCODIGO_FCI: TStringField
      FieldName = 'CODIGO_FCI'
      ProviderFlags = [pfInUpdate]
      Size = 36
    end
    object dstProdutosCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dstProdutosMEDIDAE: TStringField
      FieldName = 'MEDIDAE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstProdutosFATORC: TFMTBCDField
      FieldName = 'FATORC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstProdutosIIA_UF: TFloatField
      FieldName = 'IIA_UF'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosIIA_MUNI: TFloatField
      FieldName = 'IIA_MUNI'
      ProviderFlags = [pfInUpdate]
    end
    object dstProdutosCEST: TStringField
      FieldName = 'CEST'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object dstProdutosCSOSN_NFCE: TStringField
      FieldName = 'CSOSN_NFCE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstProdutosCST_NFCE: TStringField
      FieldName = 'CST_NFCE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstProdutosALIQUOTA_NFCE: TFMTBCDField
      FieldName = 'ALIQUOTA_NFCE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object dstProdutosENQ_IPI: TStringField
      FieldName = 'ENQ_IPI'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = dstProdutos
    Options = [poAllowCommandText]
    Left = 104
    Top = 88
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 176
    Top = 88
    object cdsProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 5
    end
    object cdsProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 14
    end
    object cdsProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 45
    end
    object cdsProdutosNOME: TStringField
      FieldName = 'NOME'
      Size = 25
    end
    object cdsProdutosFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 35
    end
    object cdsProdutosMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 3
    end
    object cdsProdutosPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsProdutosINDEXADOR: TFloatField
      FieldName = 'INDEXADOR'
    end
    object cdsProdutosCUSTOCOMPR: TFloatField
      FieldName = 'CUSTOCOMPR'
    end
    object cdsProdutosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object cdsProdutosQTD_COMPRA: TFloatField
      FieldName = 'QTD_COMPRA'
    end
    object cdsProdutosQTD_ATUAL: TFloatField
      FieldName = 'QTD_ATUAL'
    end
    object cdsProdutosQTD_MINIM: TFloatField
      FieldName = 'QTD_MINIM'
    end
    object cdsProdutosQTD_INICIO: TFloatField
      FieldName = 'QTD_INICIO'
    end
    object cdsProdutosDAT_INICIO: TDateField
      FieldName = 'DAT_INICIO'
    end
    object cdsProdutosULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
    end
    object cdsProdutosULT_VENDA: TDateField
      FieldName = 'ULT_VENDA'
    end
    object cdsProdutosLIVRE1: TStringField
      FieldName = 'LIVRE1'
      Size = 30
    end
    object cdsProdutosLIVRE2: TStringField
      FieldName = 'LIVRE2'
      Size = 30
    end
    object cdsProdutosLIVRE3: TStringField
      FieldName = 'LIVRE3'
      Size = 30
    end
    object cdsProdutosLIVRE4: TStringField
      FieldName = 'LIVRE4'
      Size = 30
    end
    object cdsProdutosPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsProdutosLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 10
    end
    object cdsProdutosCF: TStringField
      FieldName = 'CF'
      Size = 13
    end
    object cdsProdutosIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsProdutosCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object cdsProdutosST: TStringField
      FieldName = 'ST'
      Size = 3
    end
    object cdsProdutosCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object cdsProdutosOBS: TStringField
      FieldName = 'OBS'
      Size = 254
    end
    object cdsProdutosQTD_VEND: TFloatField
      FieldName = 'QTD_VEND'
    end
    object cdsProdutosCUS_VEND: TFloatField
      FieldName = 'CUS_VEND'
    end
    object cdsProdutosVAL_VEND: TFloatField
      FieldName = 'VAL_VEND'
    end
    object cdsProdutosLUC_VEND: TFloatField
      FieldName = 'LUC_VEND'
    end
    object cdsProdutosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object cdsProdutosMARGEMLB: TFloatField
      FieldName = 'MARGEMLB'
    end
    object cdsProdutosALTERADO: TSmallintField
      FieldName = 'ALTERADO'
    end
    object cdsProdutosSERIE: TSmallintField
      FieldName = 'SERIE'
    end
    object cdsProdutosFOTO: TMemoField
      FieldName = 'FOTO'
      BlobType = ftMemo
    end
    object cdsProdutosREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Required = True
      Size = 10
    end
    object cdsProdutosPIVA: TFloatField
      FieldName = 'PIVA'
    end
    object cdsProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsProdutosENCRYPTHASH: TStringField
      FieldName = 'ENCRYPTHASH'
      Size = 56
    end
    object cdsProdutosIAT: TStringField
      FieldName = 'IAT'
      Size = 1
    end
    object cdsProdutosIPPT: TStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object cdsProdutosONPROMO: TFMTBCDField
      FieldName = 'ONPROMO'
      Precision = 18
      Size = 8
    end
    object cdsProdutosOFFPROMO: TFMTBCDField
      FieldName = 'OFFPROMO'
      Precision = 18
      Size = 8
    end
    object cdsProdutosPROMOINI: TDateField
      FieldName = 'PROMOINI'
    end
    object cdsProdutosPROMOFIM: TDateField
      FieldName = 'PROMOFIM'
    end
    object cdsProdutosIIA: TFloatField
      FieldName = 'IIA'
    end
    object cdsProdutosCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 2
    end
    object cdsProdutosTIPO_ITEM: TStringField
      FieldName = 'TIPO_ITEM'
      Size = 2
    end
    object cdsProdutosCST_PIS_COFINS_ENTRADA: TStringField
      FieldName = 'CST_PIS_COFINS_ENTRADA'
      Size = 2
    end
    object cdsProdutosALIQ_PIS_ENTRADA: TFMTBCDField
      FieldName = 'ALIQ_PIS_ENTRADA'
      Precision = 18
      Size = 8
    end
    object cdsProdutosALIQ_COFINS_ENTRADA: TFMTBCDField
      FieldName = 'ALIQ_COFINS_ENTRADA'
      Precision = 18
      Size = 8
    end
    object cdsProdutosCST_PIS_COFINS_SAIDA: TStringField
      FieldName = 'CST_PIS_COFINS_SAIDA'
      Size = 2
    end
    object cdsProdutosALIQ_PIS_SAIDA: TFMTBCDField
      FieldName = 'ALIQ_PIS_SAIDA'
      Precision = 18
      Size = 8
    end
    object cdsProdutosALIQ_COFINS_SAIDA: TFMTBCDField
      FieldName = 'ALIQ_COFINS_SAIDA'
      Precision = 18
      Size = 8
    end
    object cdsProdutosVALOR_PARCELA_IMPORTADA_EXTERIO: TFMTBCDField
      FieldName = 'VALOR_PARCELA_IMPORTADA_EXTERIO'
      Precision = 18
      Size = 2
    end
    object cdsProdutosCODIGO_FCI: TStringField
      FieldName = 'CODIGO_FCI'
      Size = 36
    end
    object cdsProdutosCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsProdutosMEDIDAE: TStringField
      FieldName = 'MEDIDAE'
      Size = 3
    end
    object cdsProdutosFATORC: TFMTBCDField
      FieldName = 'FATORC'
      Precision = 18
      Size = 2
    end
    object cdsProdutosIIA_UF: TFloatField
      FieldName = 'IIA_UF'
    end
    object cdsProdutosIIA_MUNI: TFloatField
      FieldName = 'IIA_MUNI'
    end
    object cdsProdutosCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object cdsProdutosCSOSN_NFCE: TStringField
      FieldName = 'CSOSN_NFCE'
      Size = 3
    end
    object cdsProdutosCST_NFCE: TStringField
      FieldName = 'CST_NFCE'
      Size = 3
    end
    object cdsProdutosALIQUOTA_NFCE: TFMTBCDField
      FieldName = 'ALIQUOTA_NFCE'
      Precision = 18
      Size = 2
    end
    object cdsProdutosENQ_IPI: TStringField
      FieldName = 'ENQ_IPI'
      Size = 3
    end
  end
  object dstTabelas: TSQLDataSet
    CommandText = 
      'select P.ST, P.CST FROM ESTOQUE P where (p.st <> '#39#39')  GROUP BY P' +
      '.ST,P.CST  ORDER BY P.ST'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlFirebird
    Left = 32
    Top = 152
  end
  object dspTabelas: TDataSetProvider
    DataSet = dstTabelas
    Options = [poAllowCommandText]
    Left = 104
    Top = 144
  end
  object cdsUnidades: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select P.MEDIDA FROM ESTOQUE P where (p.medida <> '#39#39') GROUP BY P' +
      '.MEDIDA'
    Params = <>
    ProviderName = 'dspTabelas'
    Left = 184
    Top = 144
    object cdsUnidadesMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 3
    end
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select distinct P.FORNECEDOR, CF.* FROM ESTOQUE P inner JOIN CLI' +
      'FOR CF ON P.fornecedor = CF.nome'
    Params = <>
    ProviderName = 'dspTabelas'
    Left = 96
    Top = 208
    object cdsFornecedoresFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 35
    end
    object cdsFornecedoresNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object cdsFornecedoresCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 35
    end
    object cdsFornecedoresIE: TStringField
      FieldName = 'IE'
      Size = 16
    end
    object cdsFornecedoresCGC: TStringField
      FieldName = 'CGC'
      Size = 19
    end
    object cdsFornecedoresENDERE: TStringField
      FieldName = 'ENDERE'
      Size = 40
    end
    object cdsFornecedoresCOMPLE: TStringField
      FieldName = 'COMPLE'
      Size = 35
    end
    object cdsFornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFornecedoresESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsFornecedoresCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFornecedoresFONE: TStringField
      FieldName = 'FONE'
      Size = 16
    end
    object cdsFornecedoresFAX: TStringField
      FieldName = 'FAX'
      Size = 16
    end
    object cdsFornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsFornecedoresOBS: TStringField
      FieldName = 'OBS'
      Size = 254
    end
    object cdsFornecedoresCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 16
    end
    object cdsFornecedoresCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object cdsFornecedoresCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 30
    end
    object cdsFornecedoresIDENTIFICADOR1: TStringField
      FieldName = 'IDENTIFICADOR1'
      Size = 30
    end
    object cdsFornecedoresIDENTIFICADOR2: TStringField
      FieldName = 'IDENTIFICADOR2'
      Size = 30
    end
    object cdsFornecedoresIDENTIFICADOR3: TStringField
      FieldName = 'IDENTIFICADOR3'
      Size = 30
    end
    object cdsFornecedoresIDENTIFICADOR4: TStringField
      FieldName = 'IDENTIFICADOR4'
      Size = 30
    end
    object cdsFornecedoresIDENTIFICADOR5: TStringField
      FieldName = 'IDENTIFICADOR5'
      Size = 30
    end
    object cdsFornecedoresDATANAS: TDateField
      FieldName = 'DATANAS'
    end
    object cdsFornecedoresCADASTRO: TDateField
      FieldName = 'CADASTRO'
    end
    object cdsFornecedoresULTIMACO: TDateField
      FieldName = 'ULTIMACO'
    end
    object cdsFornecedoresPROXDATA: TDateField
      FieldName = 'PROXDATA'
    end
    object cdsFornecedoresCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object cdsFornecedoresCOMPRA: TFloatField
      FieldName = 'COMPRA'
    end
    object cdsFornecedoresATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object cdsFornecedoresMOSTRAR: TStringField
      FieldName = 'MOSTRAR'
      Size = 1
    end
    object cdsFornecedoresCLIFOR: TStringField
      FieldName = 'CLIFOR'
      Size = 40
    end
    object cdsFornecedoresCONTATOS: TMemoField
      FieldName = 'CONTATOS'
      BlobType = ftMemo
    end
    object cdsFornecedoresREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Required = True
      Size = 10
    end
    object cdsFornecedoresFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
  end
  object cdsTributacao: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select P.ST, P.CST FROM ESTOQUE P where (p.st <> '#39#39')  GROUP BY P' +
      '.ST,P.CST  ORDER BY P.ST'
    Params = <>
    ProviderName = 'dspTabelas'
    Left = 200
    Top = 208
    object cdsTributacaoST: TStringField
      FieldName = 'ST'
      Size = 3
    end
    object cdsTributacaoCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
  end
  object dstCadUnidades: TSQLDataSet
    CommandText = 'Select * from unidades'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlPostGres
    Left = 392
    Top = 88
    object dstCadUnidadesid: TStringField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object dstCadUnidadesdescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dspCadUnidades: TDataSetProvider
    DataSet = dstCadUnidades
    Options = [poAllowCommandText]
    Left = 472
    Top = 80
  end
  object cdsCadUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadUnidades'
    Left = 544
    Top = 96
    object cdsCadUnidadesid: TStringField
      FieldName = 'id'
      Size = 2
    end
    object cdsCadUnidadesdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dstCadTributacao: TSQLDataSet
    CommandText = 'select * from tributacao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlPostGres
    Left = 368
    Top = 152
    object dstCadTributacaoid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstCadTributacaodescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstCadTributacaotipo_tributacao: TStringField
      FieldName = 'tipo_tributacao'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dstCadTributacaocst_icms: TIntegerField
      FieldName = 'cst_icms'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadTributacaoaliquota_icms: TFMTBCDField
      FieldName = 'aliquota_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstCadTributacaocst_pis: TIntegerField
      FieldName = 'cst_pis'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadTributacaoaliquota_pis: TFMTBCDField
      FieldName = 'aliquota_pis'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstCadTributacaocst_cofins: TIntegerField
      FieldName = 'cst_cofins'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadTributacaoaliquota_cofins: TFMTBCDField
      FieldName = 'aliquota_cofins'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstCadTributacaomva_interno: TFMTBCDField
      FieldName = 'mva_interno'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 8
    end
    object dstCadTributacaoaliquota_iss: TFMTBCDField
      FieldName = 'aliquota_iss'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
  end
  object dspCadTributacao: TDataSetProvider
    DataSet = dstCadTributacao
    Options = [poAllowCommandText]
    Left = 456
    Top = 160
  end
  object cdsCadTributacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadTributacao'
    Left = 552
    Top = 152
    object cdsCadTributacaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsCadTributacaodescricao: TStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cdsCadTributacaotipo_tributacao: TStringField
      FieldName = 'tipo_tributacao'
      Size = 1
    end
    object cdsCadTributacaocst_icms: TIntegerField
      FieldName = 'cst_icms'
    end
    object cdsCadTributacaoaliquota_icms: TFMTBCDField
      FieldName = 'aliquota_icms'
      Precision = 6
      Size = 2
    end
    object cdsCadTributacaocst_pis: TIntegerField
      FieldName = 'cst_pis'
    end
    object cdsCadTributacaoaliquota_pis: TFMTBCDField
      FieldName = 'aliquota_pis'
      Precision = 6
      Size = 2
    end
    object cdsCadTributacaocst_cofins: TIntegerField
      FieldName = 'cst_cofins'
    end
    object cdsCadTributacaoaliquota_cofins: TFMTBCDField
      FieldName = 'aliquota_cofins'
      Precision = 6
      Size = 2
    end
    object cdsCadTributacaomva_interno: TFMTBCDField
      FieldName = 'mva_interno'
      Precision = 8
      Size = 8
    end
    object cdsCadTributacaoaliquota_iss: TFMTBCDField
      FieldName = 'aliquota_iss'
      Precision = 6
      Size = 2
    end
  end
  object dstCadFornecedores: TSQLDataSet
    CommandText = 'select * from fornecedores'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlPostGres
    Left = 376
    Top = 216
    object dstCadFornecedoresid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstCadFornecedoresnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstCadFornecedoresrazao_social: TStringField
      FieldName = 'razao_social'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstCadFornecedorestipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstCadFornecedorescpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstCadFornecedoresinsc_estadual: TStringField
      FieldName = 'insc_estadual'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstCadFornecedorestransportadora: TBooleanField
      FieldName = 'transportadora'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedoresid_cidade: TIntegerField
      FieldName = 'id_cidade'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedoresid_bairro: TIntegerField
      FieldName = 'id_bairro'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedorescep: TStringField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstCadFornecedoreslogradouro: TStringField
      FieldName = 'logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dstCadFornecedoresnumero: TIntegerField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedorescomplemento: TStringField
      FieldName = 'complemento'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstCadFornecedoresreferencia: TStringField
      FieldName = 'referencia'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstCadFornecedoresfone1: TStringField
      FieldName = 'fone1'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstCadFornecedoresfone2: TStringField
      FieldName = 'fone2'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstCadFornecedoresfone3: TStringField
      FieldName = 'fone3'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstCadFornecedoresramal1: TStringField
      FieldName = 'ramal1'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dstCadFornecedoresramal2: TStringField
      FieldName = 'ramal2'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dstCadFornecedoresramal3: TStringField
      FieldName = 'ramal3'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object dstCadFornecedoressite: TStringField
      FieldName = 'site'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstCadFornecedoresemail: TStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstCadFornecedoresid_banco: TStringField
      FieldName = 'id_banco'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dstCadFornecedoresagencia: TStringField
      FieldName = 'agencia'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object dstCadFornecedoresoperacao_conta: TIntegerField
      FieldName = 'operacao_conta'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedoresnumero_conta: TStringField
      FieldName = 'numero_conta'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object dstCadFornecedoresperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 2
    end
    object dstCadFornecedorescontato1_nome: TStringField
      FieldName = 'contato1_nome'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstCadFornecedorescontato1_cargo: TStringField
      FieldName = 'contato1_cargo'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedorescontato1_fone: TStringField
      FieldName = 'contato1_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstCadFornecedorescontato2_nome: TStringField
      FieldName = 'contato2_nome'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstCadFornecedorescontato2_cargo: TStringField
      FieldName = 'contato2_cargo'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedorescontato2_fone: TStringField
      FieldName = 'contato2_fone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstCadFornecedoresdata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedoresid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedoresdata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadFornecedoresid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCadFornecedores: TDataSetProvider
    DataSet = dstCadFornecedores
    Options = [poAllowCommandText]
    Left = 464
    Top = 240
  end
  object cdsCadFornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadFornecedores'
    Left = 552
    Top = 208
    object cdsCadFornecedoresid: TIntegerField
      FieldName = 'id'
    end
    object cdsCadFornecedoresnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 50
    end
    object cdsCadFornecedoresrazao_social: TStringField
      FieldName = 'razao_social'
      Size = 50
    end
    object cdsCadFornecedorestipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object cdsCadFornecedorescpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 14
    end
    object cdsCadFornecedoresinsc_estadual: TStringField
      FieldName = 'insc_estadual'
      Size = 14
    end
    object cdsCadFornecedorestransportadora: TBooleanField
      FieldName = 'transportadora'
    end
    object cdsCadFornecedoresid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object cdsCadFornecedoresid_bairro: TIntegerField
      FieldName = 'id_bairro'
    end
    object cdsCadFornecedorescep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object cdsCadFornecedoreslogradouro: TStringField
      FieldName = 'logradouro'
      Size = 80
    end
    object cdsCadFornecedoresnumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsCadFornecedorescomplemento: TStringField
      FieldName = 'complemento'
      Size = 40
    end
    object cdsCadFornecedoresreferencia: TStringField
      FieldName = 'referencia'
      Size = 50
    end
    object cdsCadFornecedoresfone1: TStringField
      FieldName = 'fone1'
      Size = 11
    end
    object cdsCadFornecedoresfone2: TStringField
      FieldName = 'fone2'
      Size = 11
    end
    object cdsCadFornecedoresfone3: TStringField
      FieldName = 'fone3'
      Size = 11
    end
    object cdsCadFornecedoresramal1: TStringField
      FieldName = 'ramal1'
      Size = 4
    end
    object cdsCadFornecedoresramal2: TStringField
      FieldName = 'ramal2'
      Size = 4
    end
    object cdsCadFornecedoresramal3: TStringField
      FieldName = 'ramal3'
      Size = 4
    end
    object cdsCadFornecedoressite: TStringField
      FieldName = 'site'
      Size = 60
    end
    object cdsCadFornecedoresemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object cdsCadFornecedoresid_banco: TStringField
      FieldName = 'id_banco'
      Size = 3
    end
    object cdsCadFornecedoresagencia: TStringField
      FieldName = 'agencia'
      FixedChar = True
      Size = 5
    end
    object cdsCadFornecedoresoperacao_conta: TIntegerField
      FieldName = 'operacao_conta'
    end
    object cdsCadFornecedoresnumero_conta: TStringField
      FieldName = 'numero_conta'
      Size = 12
    end
    object cdsCadFornecedoresperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      Precision = 10
      Size = 2
    end
    object cdsCadFornecedorescontato1_nome: TStringField
      FieldName = 'contato1_nome'
      Size = 30
    end
    object cdsCadFornecedorescontato1_cargo: TStringField
      FieldName = 'contato1_cargo'
    end
    object cdsCadFornecedorescontato1_fone: TStringField
      FieldName = 'contato1_fone'
      Size = 11
    end
    object cdsCadFornecedorescontato2_nome: TStringField
      FieldName = 'contato2_nome'
      Size = 30
    end
    object cdsCadFornecedorescontato2_cargo: TStringField
      FieldName = 'contato2_cargo'
    end
    object cdsCadFornecedorescontato2_fone: TStringField
      FieldName = 'contato2_fone'
      Size = 11
    end
    object cdsCadFornecedoresdata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
    end
    object cdsCadFornecedoresid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
    end
    object cdsCadFornecedoresdata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
    end
    object cdsCadFornecedoresid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-7'
    HostName = 'localhost'
    Database = 'pluspdv_pile'
    User = 'postgres'
    Password = 'admg2'
    TransactIsolationLevel = tiReadCommitted
    Left = 512
    Top = 16
  end
  object ZSequence1: TZSequence
    Connection = ZConnection1
    Left = 592
    Top = 24
  end
  object dspCadProdutos: TDataSetProvider
    DataSet = dstCadProdutos
    Options = [poAllowCommandText]
    Left = 448
    Top = 296
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadProdutos'
    Left = 544
    Top = 280
    object cdsCadProdutosid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsCadProdutostipo: TIntegerField
      FieldName = 'tipo'
    end
    object cdsCadProdutoscod_barras: TStringField
      FieldName = 'cod_barras'
      Size = 14
    end
    object cdsCadProdutosreferencia: TStringField
      FieldName = 'referencia'
      Size = 14
    end
    object cdsCadProdutosid_ncm: TStringField
      FieldName = 'id_ncm'
      Size = 10
    end
    object cdsCadProdutosid_cor: TIntegerField
      FieldName = 'id_cor'
    end
    object cdsCadProdutosid_grade: TIntegerField
      FieldName = 'id_grade'
    end
    object cdsCadProdutosgrupo: TIntegerField
      FieldName = 'grupo'
    end
    object cdsCadProdutosorigem: TIntegerField
      FieldName = 'origem'
    end
    object cdsCadProdutosid_produto_localizacao: TIntegerField
      FieldName = 'id_produto_localizacao'
    end
    object cdsCadProdutosid_secao: TIntegerField
      FieldName = 'id_secao'
    end
    object cdsCadProdutosid_subsecao: TIntegerField
      FieldName = 'id_subsecao'
    end
    object cdsCadProdutosid_unidade: TStringField
      FieldName = 'id_unidade'
      Size = 2
    end
    object cdsCadProdutosid_unidade_armaz: TStringField
      FieldName = 'id_unidade_armaz'
      Size = 2
    end
    object cdsCadProdutosquant_armaz: TFMTBCDField
      FieldName = 'quant_armaz'
      Precision = 11
      Size = 3
    end
    object cdsCadProdutosfracionado: TBooleanField
      FieldName = 'fracionado'
    end
    object cdsCadProdutospesavel: TBooleanField
      FieldName = 'pesavel'
    end
    object cdsCadProdutospeso_liquido: TFMTBCDField
      FieldName = 'peso_liquido'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutospeso_bruto: TFMTBCDField
      FieldName = 'peso_bruto'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
    end
    object cdsCadProdutosid_fabricante: TIntegerField
      FieldName = 'id_fabricante'
    end
    object cdsCadProdutosvalor_compra: TFMTBCDField
      FieldName = 'valor_compra'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosvalor_custo: TFMTBCDField
      FieldName = 'valor_custo'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosperc_lucro_bruto: TFMTBCDField
      FieldName = 'perc_lucro_bruto'
      Precision = 15
      Size = 3
    end
    object cdsCadProdutosperc_lucro_liquido: TFMTBCDField
      FieldName = 'perc_lucro_liquido'
      Precision = 15
      Size = 3
    end
    object cdsCadProdutosvalor_venda: TFMTBCDField
      FieldName = 'valor_venda'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosvalor_anterior: TFMTBCDField
      FieldName = 'valor_anterior'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosvalor_fracao: TFMTBCDField
      FieldName = 'valor_fracao'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutoscontrole_lote: TBooleanField
      FieldName = 'controle_lote'
    end
    object cdsCadProdutosmedicamento: TBooleanField
      FieldName = 'medicamento'
    end
    object cdsCadProdutosregistro_ms: TStringField
      FieldName = 'registro_ms'
      Size = 17
    end
    object cdsCadProdutosid_classe_medicamento: TIntegerField
      FieldName = 'id_classe_medicamento'
    end
    object cdsCadProdutosid_principio_ativo: TStringField
      FieldName = 'id_principio_ativo'
      Size = 7
    end
    object cdsCadProdutoslista_medicamento: TIntegerField
      FieldName = 'lista_medicamento'
    end
    object cdsCadProdutosmedicamento_controlado: TBooleanField
      FieldName = 'medicamento_controlado'
    end
    object cdsCadProdutosreajuste_automatico: TBooleanField
      FieldName = 'reajuste_automatico'
    end
    object cdsCadProdutospmc: TFMTBCDField
      FieldName = 'pmc'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosvalor_farmacia_popular: TFMTBCDField
      FieldName = 'valor_farmacia_popular'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosativo: TBooleanField
      FieldName = 'ativo'
    end
    object cdsCadProdutoscomissionado: TBooleanField
      FieldName = 'comissionado'
    end
    object cdsCadProdutosperc_comissao: TFMTBCDField
      FieldName = 'perc_comissao'
      Precision = 5
      Size = 2
    end
    object cdsCadProdutoslimite_desconto_bloqueado: TBooleanField
      FieldName = 'limite_desconto_bloqueado'
    end
    object cdsCadProdutosperc_limite_desconto: TFMTBCDField
      FieldName = 'perc_limite_desconto'
      Precision = 6
      Size = 2
    end
    object cdsCadProdutospermite_editar_valor_venda: TBooleanField
      FieldName = 'permite_editar_valor_venda'
    end
    object cdsCadProdutosquantidade_minima_atacado: TFMTBCDField
      FieldName = 'quantidade_minima_atacado'
      Precision = 8
      Size = 3
    end
    object cdsCadProdutosvalor_revenda: TFMTBCDField
      FieldName = 'valor_revenda'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosvalor_revenda_anterior: TFMTBCDField
      FieldName = 'valor_revenda_anterior'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosid_usuario_reajuste: TIntegerField
      FieldName = 'id_usuario_reajuste'
    end
    object cdsCadProdutosid_tributacao: TIntegerField
      FieldName = 'id_tributacao'
    end
    object cdsCadProdutosperc_icms_compra: TFMTBCDField
      FieldName = 'perc_icms_compra'
      Precision = 8
      Size = 3
    end
    object cdsCadProdutosperc_diferencial_icms: TFMTBCDField
      FieldName = 'perc_diferencial_icms'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosperc_reducao_icms: TFMTBCDField
      FieldName = 'perc_reducao_icms'
      Precision = 15
      Size = 3
    end
    object cdsCadProdutosperc_outras_taxas: TFMTBCDField
      FieldName = 'perc_outras_taxas'
      Precision = 15
      Size = 3
    end
    object cdsCadProdutoscst_ipi: TIntegerField
      FieldName = 'cst_ipi'
    end
    object cdsCadProdutosperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosperc_frete: TFMTBCDField
      FieldName = 'perc_frete'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosperc_icms_frete: TFMTBCDField
      FieldName = 'perc_icms_frete'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosperc_simples_nacional: TFMTBCDField
      FieldName = 'perc_simples_nacional'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosperc_imposto_renda: TFMTBCDField
      FieldName = 'perc_imposto_renda'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosperc_contribuicao_social: TFMTBCDField
      FieldName = 'perc_contribuicao_social'
      Precision = 15
      Size = 2
    end
    object cdsCadProdutosperc_frete_venda: TFMTBCDField
      FieldName = 'perc_frete_venda'
      Precision = 15
      Size = 8
    end
    object cdsCadProdutosid_cfop_venda_interna: TIntegerField
      FieldName = 'id_cfop_venda_interna'
    end
    object cdsCadProdutosid_cfop_venda_externa: TIntegerField
      FieldName = 'id_cfop_venda_externa'
    end
    object cdsCadProdutosobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object cdsCadProdutosid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
    end
    object cdsCadProdutosid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
    end
    object cdsCadProdutosdata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
    end
    object cdsCadProdutosdata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
    end
    object cdsCadProdutoschecksum: TStringField
      FieldName = 'checksum'
      Size = 32
    end
  end
  object dstCadProdutos: TSQLDataSet
    CommandText = 'select * from produtos where (id = :pid)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pid'
        ParamType = ptInput
      end>
    SQLConnection = SqlPostGres
    Left = 344
    Top = 288
    object dstCadProdutosid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstCadProdutosdescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstCadProdutostipo: TIntegerField
      FieldName = 'tipo'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutoscod_barras: TStringField
      FieldName = 'cod_barras'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstCadProdutosreferencia: TStringField
      FieldName = 'referencia'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstCadProdutosid_ncm: TStringField
      FieldName = 'id_ncm'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstCadProdutosid_cor: TIntegerField
      FieldName = 'id_cor'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_grade: TIntegerField
      FieldName = 'id_grade'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosgrupo: TIntegerField
      FieldName = 'grupo'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosorigem: TIntegerField
      FieldName = 'origem'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_produto_localizacao: TIntegerField
      FieldName = 'id_produto_localizacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_secao: TIntegerField
      FieldName = 'id_secao'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_subsecao: TIntegerField
      FieldName = 'id_subsecao'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_unidade: TStringField
      FieldName = 'id_unidade'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstCadProdutosid_unidade_armaz: TStringField
      FieldName = 'id_unidade_armaz'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstCadProdutosquant_armaz: TFMTBCDField
      FieldName = 'quant_armaz'
      ProviderFlags = [pfInUpdate]
      Precision = 11
      Size = 3
    end
    object dstCadProdutosfracionado: TBooleanField
      FieldName = 'fracionado'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutospesavel: TBooleanField
      FieldName = 'pesavel'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutospeso_liquido: TFMTBCDField
      FieldName = 'peso_liquido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutospeso_bruto: TFMTBCDField
      FieldName = 'peso_bruto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_fabricante: TIntegerField
      FieldName = 'id_fabricante'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosvalor_compra: TFMTBCDField
      FieldName = 'valor_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosvalor_custo: TFMTBCDField
      FieldName = 'valor_custo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosperc_lucro_bruto: TFMTBCDField
      FieldName = 'perc_lucro_bruto'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstCadProdutosperc_lucro_liquido: TFMTBCDField
      FieldName = 'perc_lucro_liquido'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstCadProdutosvalor_venda: TFMTBCDField
      FieldName = 'valor_venda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosvalor_anterior: TFMTBCDField
      FieldName = 'valor_anterior'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosvalor_fracao: TFMTBCDField
      FieldName = 'valor_fracao'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutoscontrole_lote: TBooleanField
      FieldName = 'controle_lote'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosmedicamento: TBooleanField
      FieldName = 'medicamento'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosregistro_ms: TStringField
      FieldName = 'registro_ms'
      ProviderFlags = [pfInUpdate]
      Size = 17
    end
    object dstCadProdutosid_classe_medicamento: TIntegerField
      FieldName = 'id_classe_medicamento'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_principio_ativo: TStringField
      FieldName = 'id_principio_ativo'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object dstCadProdutoslista_medicamento: TIntegerField
      FieldName = 'lista_medicamento'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosmedicamento_controlado: TBooleanField
      FieldName = 'medicamento_controlado'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosreajuste_automatico: TBooleanField
      FieldName = 'reajuste_automatico'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutospmc: TFMTBCDField
      FieldName = 'pmc'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosvalor_farmacia_popular: TFMTBCDField
      FieldName = 'valor_farmacia_popular'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosativo: TBooleanField
      FieldName = 'ativo'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutoscomissionado: TBooleanField
      FieldName = 'comissionado'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosperc_comissao: TFMTBCDField
      FieldName = 'perc_comissao'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 2
    end
    object dstCadProdutoslimite_desconto_bloqueado: TBooleanField
      FieldName = 'limite_desconto_bloqueado'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosperc_limite_desconto: TFMTBCDField
      FieldName = 'perc_limite_desconto'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object dstCadProdutospermite_editar_valor_venda: TBooleanField
      FieldName = 'permite_editar_valor_venda'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosquantidade_minima_atacado: TFMTBCDField
      FieldName = 'quantidade_minima_atacado'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object dstCadProdutosvalor_revenda: TFMTBCDField
      FieldName = 'valor_revenda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosvalor_revenda_anterior: TFMTBCDField
      FieldName = 'valor_revenda_anterior'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosid_usuario_reajuste: TIntegerField
      FieldName = 'id_usuario_reajuste'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_tributacao: TIntegerField
      FieldName = 'id_tributacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosperc_icms_compra: TFMTBCDField
      FieldName = 'perc_icms_compra'
      ProviderFlags = [pfInUpdate]
      Precision = 8
      Size = 3
    end
    object dstCadProdutosperc_diferencial_icms: TFMTBCDField
      FieldName = 'perc_diferencial_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosperc_reducao_icms: TFMTBCDField
      FieldName = 'perc_reducao_icms'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstCadProdutosperc_outras_taxas: TFMTBCDField
      FieldName = 'perc_outras_taxas'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object dstCadProdutoscst_ipi: TIntegerField
      FieldName = 'cst_ipi'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosperc_ipi: TFMTBCDField
      FieldName = 'perc_ipi'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosperc_frete: TFMTBCDField
      FieldName = 'perc_frete'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosperc_icms_frete: TFMTBCDField
      FieldName = 'perc_icms_frete'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosperc_simples_nacional: TFMTBCDField
      FieldName = 'perc_simples_nacional'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosperc_imposto_renda: TFMTBCDField
      FieldName = 'perc_imposto_renda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosperc_contribuicao_social: TFMTBCDField
      FieldName = 'perc_contribuicao_social'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object dstCadProdutosperc_frete_venda: TFMTBCDField
      FieldName = 'perc_frete_venda'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object dstCadProdutosid_cfop_venda_interna: TIntegerField
      FieldName = 'id_cfop_venda_interna'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_cfop_venda_externa: TIntegerField
      FieldName = 'id_cfop_venda_externa'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosobservacao: TMemoField
      FieldName = 'observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstCadProdutosid_usuario_cadastro: TIntegerField
      FieldName = 'id_usuario_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosid_usuario_alteracao: TIntegerField
      FieldName = 'id_usuario_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosdata_cadastro: TSQLTimeStampField
      FieldName = 'data_cadastro'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutosdata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object dstCadProdutoschecksum: TStringField
      FieldName = 'checksum'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object cdsCodBarras: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 192
    Data = {
      350000009619E0BD010000001800000001000000000003000000350006626172
      7261730100490000000100055749445448020002000E000000}
    object cdsCodBarrasbarras: TStringField
      FieldName = 'barras'
      Size = 14
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 232
    Top = 29
  end
  object dstEstoque: TSQLDataSet
    CommandText = 
      'select * from estoque where (id_empresa = :ploja) '#13#10'and (id_prod' +
      'uto = :pproduto) and (lote = :plote)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ploja'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pproduto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'plote'
        ParamType = ptInput
      end>
    SQLConnection = SqlPostGres
    Left = 320
    Top = 352
    object dstEstoqueid_empresa: TIntegerField
      FieldName = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstEstoqueid_produto: TIntegerField
      FieldName = 'id_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstEstoqueid_unidade: TStringField
      FieldName = 'id_unidade'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object dstEstoquelote: TStringField
      FieldName = 'lote'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dstEstoquedata_vencimento: TDateField
      FieldName = 'data_vencimento'
      ProviderFlags = [pfInUpdate]
    end
    object dstEstoquedata_fabricacao: TDateField
      FieldName = 'data_fabricacao'
      ProviderFlags = [pfInUpdate]
    end
    object dstEstoquedata_entrada: TDateField
      FieldName = 'data_entrada'
      ProviderFlags = [pfInUpdate]
    end
    object dstEstoquequant_entrada: TFMTBCDField
      FieldName = 'quant_entrada'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquedata_saida: TDateField
      FieldName = 'data_saida'
      ProviderFlags = [pfInUpdate]
    end
    object dstEstoquequant_saida: TFMTBCDField
      FieldName = 'quant_saida'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquequant_atual: TFMTBCDField
      FieldName = 'quant_atual'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquequant_minima: TFMTBCDField
      FieldName = 'quant_minima'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquequant_reservada: TFMTBCDField
      FieldName = 'quant_reservada'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquevalor_custo_anterior: TFMTBCDField
      FieldName = 'valor_custo_anterior'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquevalor_custo_medio: TFMTBCDField
      FieldName = 'valor_custo_medio'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquevalor_maior_custo: TFMTBCDField
      FieldName = 'valor_maior_custo'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object dstEstoquedata_reajuste: TDateField
      FieldName = 'data_reajuste'
      ProviderFlags = [pfInUpdate]
    end
    object dstEstoquechecksum: TStringField
      FieldName = 'checksum'
      ProviderFlags = [pfInUpdate]
      Size = 32
    end
  end
  object dspEstoque: TDataSetProvider
    DataSet = dstEstoque
    Options = [poAllowCommandText]
    Left = 408
    Top = 344
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ploja'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pproduto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'plote'
        ParamType = ptInput
      end>
    ProviderName = 'dspEstoque'
    Left = 520
    Top = 344
    object cdsEstoqueid_empresa: TIntegerField
      FieldName = 'id_empresa'
    end
    object cdsEstoqueid_produto: TIntegerField
      FieldName = 'id_produto'
    end
    object cdsEstoqueid_unidade: TStringField
      FieldName = 'id_unidade'
      Size = 2
    end
    object cdsEstoquelote: TStringField
      FieldName = 'lote'
    end
    object cdsEstoquedata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object cdsEstoquedata_fabricacao: TDateField
      FieldName = 'data_fabricacao'
    end
    object cdsEstoquedata_entrada: TDateField
      FieldName = 'data_entrada'
    end
    object cdsEstoquequant_entrada: TFMTBCDField
      FieldName = 'quant_entrada'
      Precision = 15
    end
    object cdsEstoquedata_saida: TDateField
      FieldName = 'data_saida'
    end
    object cdsEstoquequant_saida: TFMTBCDField
      FieldName = 'quant_saida'
      Precision = 15
    end
    object cdsEstoquequant_atual: TFMTBCDField
      FieldName = 'quant_atual'
      Precision = 15
    end
    object cdsEstoquequant_minima: TFMTBCDField
      FieldName = 'quant_minima'
      Precision = 15
    end
    object cdsEstoquequant_reservada: TFMTBCDField
      FieldName = 'quant_reservada'
      Precision = 15
    end
    object cdsEstoquevalor_custo_anterior: TFMTBCDField
      FieldName = 'valor_custo_anterior'
      Precision = 15
    end
    object cdsEstoquevalor_custo_medio: TFMTBCDField
      FieldName = 'valor_custo_medio'
      Precision = 15
    end
    object cdsEstoquevalor_maior_custo: TFMTBCDField
      FieldName = 'valor_maior_custo'
      Precision = 15
    end
    object cdsEstoquedata_reajuste: TDateField
      FieldName = 'data_reajuste'
    end
    object cdsEstoquechecksum: TStringField
      FieldName = 'checksum'
      Size = 32
    end
  end
end
