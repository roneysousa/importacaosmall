unit untdmDados;

interface

uses
  SysUtils, Classes, IniFiles, DBXpress, DB, MidasLib, SqlExpr, Forms, Windows,
  FMTBcd, DBClient, Provider, Variants, ZSequence, ZConnection, AppEvnts;

type
  TTypeLocalizar = (fsInteger, fsString);
  TdmDados = class(TDataModule)
    sqlFirebird: TSQLConnection;
    SqlPostGres: TSQLConnection;
    dstProdutos: TSQLDataSet;
    dstProdutosCODIGO: TStringField;
    dstProdutosREFERENCIA: TStringField;
    dstProdutosDESCRICAO: TStringField;
    dstProdutosNOME: TStringField;
    dstProdutosFORNECEDOR: TStringField;
    dstProdutosMEDIDA: TStringField;
    dstProdutosPRECO: TFloatField;
    dstProdutosINDEXADOR: TFloatField;
    dstProdutosCUSTOCOMPR: TFloatField;
    dstProdutosCUSTOMEDIO: TFloatField;
    dstProdutosQTD_COMPRA: TFloatField;
    dstProdutosQTD_ATUAL: TFloatField;
    dstProdutosQTD_MINIM: TFloatField;
    dstProdutosQTD_INICIO: TFloatField;
    dstProdutosDAT_INICIO: TDateField;
    dstProdutosULT_COMPRA: TDateField;
    dstProdutosULT_VENDA: TDateField;
    dstProdutosLIVRE1: TStringField;
    dstProdutosLIVRE2: TStringField;
    dstProdutosLIVRE3: TStringField;
    dstProdutosLIVRE4: TStringField;
    dstProdutosPESO: TFloatField;
    dstProdutosLOCAL: TStringField;
    dstProdutosCF: TStringField;
    dstProdutosIPI: TFloatField;
    dstProdutosCST: TStringField;
    dstProdutosST: TStringField;
    dstProdutosCOMISSAO: TFloatField;
    dstProdutosOBS: TStringField;
    dstProdutosQTD_VEND: TFloatField;
    dstProdutosCUS_VEND: TFloatField;
    dstProdutosVAL_VEND: TFloatField;
    dstProdutosLUC_VEND: TFloatField;
    dstProdutosATIVO: TSmallintField;
    dstProdutosMARGEMLB: TFloatField;
    dstProdutosALTERADO: TSmallintField;
    dstProdutosSERIE: TSmallintField;
    dstProdutosFOTO: TMemoField;
    dstProdutosREGISTRO: TStringField;
    dstProdutosPIVA: TFloatField;
    dstProdutosCSOSN: TStringField;
    dstProdutosENCRYPTHASH: TStringField;
    dstProdutosIAT: TStringField;
    dstProdutosIPPT: TStringField;
    dstProdutosONPROMO: TFMTBCDField;
    dstProdutosOFFPROMO: TFMTBCDField;
    dstProdutosPROMOINI: TDateField;
    dstProdutosPROMOFIM: TDateField;
    dstProdutosIIA: TFloatField;
    dstProdutosCST_IPI: TStringField;
    dstProdutosTIPO_ITEM: TStringField;
    dstProdutosCST_PIS_COFINS_ENTRADA: TStringField;
    dstProdutosALIQ_PIS_ENTRADA: TFMTBCDField;
    dstProdutosALIQ_COFINS_ENTRADA: TFMTBCDField;
    dstProdutosCST_PIS_COFINS_SAIDA: TStringField;
    dstProdutosALIQ_PIS_SAIDA: TFMTBCDField;
    dstProdutosALIQ_COFINS_SAIDA: TFMTBCDField;
    dstProdutosVALOR_PARCELA_IMPORTADA_EXTERIO: TFMTBCDField;
    dstProdutosCODIGO_FCI: TStringField;
    dstProdutosCFOP: TStringField;
    dstProdutosMEDIDAE: TStringField;
    dstProdutosFATORC: TFMTBCDField;
    dstProdutosIIA_UF: TFloatField;
    dstProdutosIIA_MUNI: TFloatField;
    dstProdutosCEST: TStringField;
    dstProdutosCSOSN_NFCE: TStringField;
    dstProdutosCST_NFCE: TStringField;
    dstProdutosALIQUOTA_NFCE: TFMTBCDField;
    dstProdutosENQ_IPI: TStringField;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    cdsProdutosCODIGO: TStringField;
    cdsProdutosREFERENCIA: TStringField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosNOME: TStringField;
    cdsProdutosFORNECEDOR: TStringField;
    cdsProdutosMEDIDA: TStringField;
    cdsProdutosPRECO: TFloatField;
    cdsProdutosINDEXADOR: TFloatField;
    cdsProdutosCUSTOCOMPR: TFloatField;
    cdsProdutosCUSTOMEDIO: TFloatField;
    cdsProdutosQTD_COMPRA: TFloatField;
    cdsProdutosQTD_ATUAL: TFloatField;
    cdsProdutosQTD_MINIM: TFloatField;
    cdsProdutosQTD_INICIO: TFloatField;
    cdsProdutosDAT_INICIO: TDateField;
    cdsProdutosULT_COMPRA: TDateField;
    cdsProdutosULT_VENDA: TDateField;
    cdsProdutosLIVRE1: TStringField;
    cdsProdutosLIVRE2: TStringField;
    cdsProdutosLIVRE3: TStringField;
    cdsProdutosLIVRE4: TStringField;
    cdsProdutosPESO: TFloatField;
    cdsProdutosLOCAL: TStringField;
    cdsProdutosCF: TStringField;
    cdsProdutosIPI: TFloatField;
    cdsProdutosCST: TStringField;
    cdsProdutosST: TStringField;
    cdsProdutosCOMISSAO: TFloatField;
    cdsProdutosOBS: TStringField;
    cdsProdutosQTD_VEND: TFloatField;
    cdsProdutosCUS_VEND: TFloatField;
    cdsProdutosVAL_VEND: TFloatField;
    cdsProdutosLUC_VEND: TFloatField;
    cdsProdutosATIVO: TSmallintField;
    cdsProdutosMARGEMLB: TFloatField;
    cdsProdutosALTERADO: TSmallintField;
    cdsProdutosSERIE: TSmallintField;
    cdsProdutosFOTO: TMemoField;
    cdsProdutosREGISTRO: TStringField;
    cdsProdutosPIVA: TFloatField;
    cdsProdutosCSOSN: TStringField;
    cdsProdutosENCRYPTHASH: TStringField;
    cdsProdutosIAT: TStringField;
    cdsProdutosIPPT: TStringField;
    cdsProdutosONPROMO: TFMTBCDField;
    cdsProdutosOFFPROMO: TFMTBCDField;
    cdsProdutosPROMOINI: TDateField;
    cdsProdutosPROMOFIM: TDateField;
    cdsProdutosIIA: TFloatField;
    cdsProdutosCST_IPI: TStringField;
    cdsProdutosTIPO_ITEM: TStringField;
    cdsProdutosCST_PIS_COFINS_ENTRADA: TStringField;
    cdsProdutosALIQ_PIS_ENTRADA: TFMTBCDField;
    cdsProdutosALIQ_COFINS_ENTRADA: TFMTBCDField;
    cdsProdutosCST_PIS_COFINS_SAIDA: TStringField;
    cdsProdutosALIQ_PIS_SAIDA: TFMTBCDField;
    cdsProdutosALIQ_COFINS_SAIDA: TFMTBCDField;
    cdsProdutosVALOR_PARCELA_IMPORTADA_EXTERIO: TFMTBCDField;
    cdsProdutosCODIGO_FCI: TStringField;
    cdsProdutosCFOP: TStringField;
    cdsProdutosMEDIDAE: TStringField;
    cdsProdutosFATORC: TFMTBCDField;
    cdsProdutosIIA_UF: TFloatField;
    cdsProdutosIIA_MUNI: TFloatField;
    cdsProdutosCEST: TStringField;
    cdsProdutosCSOSN_NFCE: TStringField;
    cdsProdutosCST_NFCE: TStringField;
    cdsProdutosALIQUOTA_NFCE: TFMTBCDField;
    cdsProdutosENQ_IPI: TStringField;
    dstTabelas: TSQLDataSet;
    dspTabelas: TDataSetProvider;
    cdsUnidades: TClientDataSet;
    cdsFornecedores: TClientDataSet;
    cdsTributacao: TClientDataSet;
    cdsUnidadesMEDIDA: TStringField;
    cdsFornecedoresFORNECEDOR: TStringField;
    cdsFornecedoresNOME: TStringField;
    cdsFornecedoresCONTATO: TStringField;
    cdsFornecedoresIE: TStringField;
    cdsFornecedoresCGC: TStringField;
    cdsFornecedoresENDERE: TStringField;
    cdsFornecedoresCOMPLE: TStringField;
    cdsFornecedoresCIDADE: TStringField;
    cdsFornecedoresESTADO: TStringField;
    cdsFornecedoresCEP: TStringField;
    cdsFornecedoresFONE: TStringField;
    cdsFornecedoresFAX: TStringField;
    cdsFornecedoresEMAIL: TStringField;
    cdsFornecedoresOBS: TStringField;
    cdsFornecedoresCELULAR: TStringField;
    cdsFornecedoresCREDITO: TFloatField;
    cdsFornecedoresCONVENIO: TStringField;
    cdsFornecedoresIDENTIFICADOR1: TStringField;
    cdsFornecedoresIDENTIFICADOR2: TStringField;
    cdsFornecedoresIDENTIFICADOR3: TStringField;
    cdsFornecedoresIDENTIFICADOR4: TStringField;
    cdsFornecedoresIDENTIFICADOR5: TStringField;
    cdsFornecedoresDATANAS: TDateField;
    cdsFornecedoresCADASTRO: TDateField;
    cdsFornecedoresULTIMACO: TDateField;
    cdsFornecedoresPROXDATA: TDateField;
    cdsFornecedoresCUSTO: TFloatField;
    cdsFornecedoresCOMPRA: TFloatField;
    cdsFornecedoresATIVO: TSmallintField;
    cdsFornecedoresMOSTRAR: TStringField;
    cdsFornecedoresCLIFOR: TStringField;
    cdsFornecedoresCONTATOS: TMemoField;
    cdsFornecedoresREGISTRO: TStringField;
    cdsFornecedoresFOTO: TGraphicField;
    cdsTributacaoST: TStringField;
    dstCadUnidades: TSQLDataSet;
    dspCadUnidades: TDataSetProvider;
    cdsCadUnidades: TClientDataSet;
    dstCadUnidadesid: TStringField;
    dstCadUnidadesdescricao: TStringField;
    cdsCadUnidadesid: TStringField;
    cdsCadUnidadesdescricao: TStringField;
    dstCadTributacao: TSQLDataSet;
    dstCadTributacaoid: TIntegerField;
    dstCadTributacaodescricao: TStringField;
    dstCadTributacaotipo_tributacao: TStringField;
    dstCadTributacaocst_icms: TIntegerField;
    dstCadTributacaoaliquota_icms: TFMTBCDField;
    dstCadTributacaocst_pis: TIntegerField;
    dstCadTributacaoaliquota_pis: TFMTBCDField;
    dstCadTributacaocst_cofins: TIntegerField;
    dstCadTributacaoaliquota_cofins: TFMTBCDField;
    dstCadTributacaomva_interno: TFMTBCDField;
    dstCadTributacaoaliquota_iss: TFMTBCDField;
    dspCadTributacao: TDataSetProvider;
    cdsCadTributacao: TClientDataSet;
    cdsCadTributacaoid: TIntegerField;
    cdsCadTributacaodescricao: TStringField;
    cdsCadTributacaotipo_tributacao: TStringField;
    cdsCadTributacaocst_icms: TIntegerField;
    cdsCadTributacaoaliquota_icms: TFMTBCDField;
    cdsCadTributacaocst_pis: TIntegerField;
    cdsCadTributacaoaliquota_pis: TFMTBCDField;
    cdsCadTributacaocst_cofins: TIntegerField;
    cdsCadTributacaoaliquota_cofins: TFMTBCDField;
    cdsCadTributacaomva_interno: TFMTBCDField;
    cdsCadTributacaoaliquota_iss: TFMTBCDField;
    dstCadFornecedores: TSQLDataSet;
    cdsTributacaoCST: TStringField;
    dstCadFornecedoresid: TIntegerField;
    dstCadFornecedoresnome_fantasia: TStringField;
    dstCadFornecedoresrazao_social: TStringField;
    dstCadFornecedorestipo_pessoa: TStringField;
    dstCadFornecedorescpf_cnpj: TStringField;
    dstCadFornecedoresinsc_estadual: TStringField;
    dstCadFornecedorestransportadora: TBooleanField;
    dstCadFornecedoresid_cidade: TIntegerField;
    dstCadFornecedoresid_bairro: TIntegerField;
    dstCadFornecedorescep: TStringField;
    dstCadFornecedoreslogradouro: TStringField;
    dstCadFornecedoresnumero: TIntegerField;
    dstCadFornecedorescomplemento: TStringField;
    dstCadFornecedoresreferencia: TStringField;
    dstCadFornecedoresfone1: TStringField;
    dstCadFornecedoresfone2: TStringField;
    dstCadFornecedoresfone3: TStringField;
    dstCadFornecedoresramal1: TStringField;
    dstCadFornecedoresramal2: TStringField;
    dstCadFornecedoresramal3: TStringField;
    dstCadFornecedoressite: TStringField;
    dstCadFornecedoresemail: TStringField;
    dstCadFornecedoresid_banco: TStringField;
    dstCadFornecedoresagencia: TStringField;
    dstCadFornecedoresoperacao_conta: TIntegerField;
    dstCadFornecedoresnumero_conta: TStringField;
    dstCadFornecedoresperc_ipi: TFMTBCDField;
    dstCadFornecedorescontato1_nome: TStringField;
    dstCadFornecedorescontato1_cargo: TStringField;
    dstCadFornecedorescontato1_fone: TStringField;
    dstCadFornecedorescontato2_nome: TStringField;
    dstCadFornecedorescontato2_cargo: TStringField;
    dstCadFornecedorescontato2_fone: TStringField;
    dstCadFornecedoresdata_cadastro: TSQLTimeStampField;
    dstCadFornecedoresid_usuario_cadastro: TIntegerField;
    dstCadFornecedoresdata_alteracao: TSQLTimeStampField;
    dstCadFornecedoresid_usuario_alteracao: TIntegerField;
    dspCadFornecedores: TDataSetProvider;
    cdsCadFornecedores: TClientDataSet;
    cdsCadFornecedoresid: TIntegerField;
    cdsCadFornecedoresnome_fantasia: TStringField;
    cdsCadFornecedoresrazao_social: TStringField;
    cdsCadFornecedorestipo_pessoa: TStringField;
    cdsCadFornecedorescpf_cnpj: TStringField;
    cdsCadFornecedoresinsc_estadual: TStringField;
    cdsCadFornecedorestransportadora: TBooleanField;
    cdsCadFornecedoresid_cidade: TIntegerField;
    cdsCadFornecedoresid_bairro: TIntegerField;
    cdsCadFornecedorescep: TStringField;
    cdsCadFornecedoreslogradouro: TStringField;
    cdsCadFornecedoresnumero: TIntegerField;
    cdsCadFornecedorescomplemento: TStringField;
    cdsCadFornecedoresreferencia: TStringField;
    cdsCadFornecedoresfone1: TStringField;
    cdsCadFornecedoresfone2: TStringField;
    cdsCadFornecedoresfone3: TStringField;
    cdsCadFornecedoresramal1: TStringField;
    cdsCadFornecedoresramal2: TStringField;
    cdsCadFornecedoresramal3: TStringField;
    cdsCadFornecedoressite: TStringField;
    cdsCadFornecedoresemail: TStringField;
    cdsCadFornecedoresid_banco: TStringField;
    cdsCadFornecedoresagencia: TStringField;
    cdsCadFornecedoresoperacao_conta: TIntegerField;
    cdsCadFornecedoresnumero_conta: TStringField;
    cdsCadFornecedoresperc_ipi: TFMTBCDField;
    cdsCadFornecedorescontato1_nome: TStringField;
    cdsCadFornecedorescontato1_cargo: TStringField;
    cdsCadFornecedorescontato1_fone: TStringField;
    cdsCadFornecedorescontato2_nome: TStringField;
    cdsCadFornecedorescontato2_cargo: TStringField;
    cdsCadFornecedorescontato2_fone: TStringField;
    cdsCadFornecedoresdata_cadastro: TSQLTimeStampField;
    cdsCadFornecedoresid_usuario_cadastro: TIntegerField;
    cdsCadFornecedoresdata_alteracao: TSQLTimeStampField;
    cdsCadFornecedoresid_usuario_alteracao: TIntegerField;
    ZConnection1: TZConnection;
    ZSequence1: TZSequence;
    dspCadProdutos: TDataSetProvider;
    cdsCadProdutos: TClientDataSet;
    dstCadProdutos: TSQLDataSet;
    dstCadProdutosid: TIntegerField;
    dstCadProdutosdescricao: TStringField;
    dstCadProdutostipo: TIntegerField;
    dstCadProdutoscod_barras: TStringField;
    dstCadProdutosreferencia: TStringField;
    dstCadProdutosid_ncm: TStringField;
    dstCadProdutosid_cor: TIntegerField;
    dstCadProdutosid_grade: TIntegerField;
    dstCadProdutosgrupo: TIntegerField;
    dstCadProdutosorigem: TIntegerField;
    dstCadProdutosid_produto_localizacao: TIntegerField;
    dstCadProdutosid_secao: TIntegerField;
    dstCadProdutosid_subsecao: TIntegerField;
    dstCadProdutosid_unidade: TStringField;
    dstCadProdutosid_unidade_armaz: TStringField;
    dstCadProdutosquant_armaz: TFMTBCDField;
    dstCadProdutosfracionado: TBooleanField;
    dstCadProdutospesavel: TBooleanField;
    dstCadProdutospeso_liquido: TFMTBCDField;
    dstCadProdutospeso_bruto: TFMTBCDField;
    dstCadProdutosid_fornecedor: TIntegerField;
    dstCadProdutosid_fabricante: TIntegerField;
    dstCadProdutosvalor_compra: TFMTBCDField;
    dstCadProdutosvalor_custo: TFMTBCDField;
    dstCadProdutosperc_lucro_bruto: TFMTBCDField;
    dstCadProdutosperc_lucro_liquido: TFMTBCDField;
    dstCadProdutosvalor_venda: TFMTBCDField;
    dstCadProdutosvalor_anterior: TFMTBCDField;
    dstCadProdutosvalor_fracao: TFMTBCDField;
    dstCadProdutoscontrole_lote: TBooleanField;
    dstCadProdutosmedicamento: TBooleanField;
    dstCadProdutosregistro_ms: TStringField;
    dstCadProdutosid_classe_medicamento: TIntegerField;
    dstCadProdutosid_principio_ativo: TStringField;
    dstCadProdutoslista_medicamento: TIntegerField;
    dstCadProdutosmedicamento_controlado: TBooleanField;
    dstCadProdutosreajuste_automatico: TBooleanField;
    dstCadProdutospmc: TFMTBCDField;
    dstCadProdutosvalor_farmacia_popular: TFMTBCDField;
    dstCadProdutosativo: TBooleanField;
    dstCadProdutoscomissionado: TBooleanField;
    dstCadProdutosperc_comissao: TFMTBCDField;
    dstCadProdutoslimite_desconto_bloqueado: TBooleanField;
    dstCadProdutosperc_limite_desconto: TFMTBCDField;
    dstCadProdutospermite_editar_valor_venda: TBooleanField;
    dstCadProdutosquantidade_minima_atacado: TFMTBCDField;
    dstCadProdutosvalor_revenda: TFMTBCDField;
    dstCadProdutosvalor_revenda_anterior: TFMTBCDField;
    dstCadProdutosid_usuario_reajuste: TIntegerField;
    dstCadProdutosid_tributacao: TIntegerField;
    dstCadProdutosperc_icms_compra: TFMTBCDField;
    dstCadProdutosperc_diferencial_icms: TFMTBCDField;
    dstCadProdutosperc_reducao_icms: TFMTBCDField;
    dstCadProdutosperc_outras_taxas: TFMTBCDField;
    dstCadProdutoscst_ipi: TIntegerField;
    dstCadProdutosperc_ipi: TFMTBCDField;
    dstCadProdutosperc_frete: TFMTBCDField;
    dstCadProdutosperc_icms_frete: TFMTBCDField;
    dstCadProdutosperc_simples_nacional: TFMTBCDField;
    dstCadProdutosperc_imposto_renda: TFMTBCDField;
    dstCadProdutosperc_contribuicao_social: TFMTBCDField;
    dstCadProdutosperc_frete_venda: TFMTBCDField;
    dstCadProdutosid_cfop_venda_interna: TIntegerField;
    dstCadProdutosid_cfop_venda_externa: TIntegerField;
    dstCadProdutoschecksum: TStringField;
    dstCadProdutosobservacao: TMemoField;
    dstCadProdutosid_usuario_cadastro: TIntegerField;
    dstCadProdutosid_usuario_alteracao: TIntegerField;
    dstCadProdutosdata_cadastro: TSQLTimeStampField;
    dstCadProdutosdata_alteracao: TSQLTimeStampField;
    cdsCadProdutosid: TIntegerField;
    cdsCadProdutosdescricao: TStringField;
    cdsCadProdutostipo: TIntegerField;
    cdsCadProdutoscod_barras: TStringField;
    cdsCadProdutosreferencia: TStringField;
    cdsCadProdutosid_ncm: TStringField;
    cdsCadProdutosid_cor: TIntegerField;
    cdsCadProdutosid_grade: TIntegerField;
    cdsCadProdutosgrupo: TIntegerField;
    cdsCadProdutosorigem: TIntegerField;
    cdsCadProdutosid_produto_localizacao: TIntegerField;
    cdsCadProdutosid_secao: TIntegerField;
    cdsCadProdutosid_subsecao: TIntegerField;
    cdsCadProdutosid_unidade: TStringField;
    cdsCadProdutosid_unidade_armaz: TStringField;
    cdsCadProdutosquant_armaz: TFMTBCDField;
    cdsCadProdutosfracionado: TBooleanField;
    cdsCadProdutospesavel: TBooleanField;
    cdsCadProdutospeso_liquido: TFMTBCDField;
    cdsCadProdutospeso_bruto: TFMTBCDField;
    cdsCadProdutosid_fornecedor: TIntegerField;
    cdsCadProdutosid_fabricante: TIntegerField;
    cdsCadProdutosvalor_compra: TFMTBCDField;
    cdsCadProdutosvalor_custo: TFMTBCDField;
    cdsCadProdutosperc_lucro_bruto: TFMTBCDField;
    cdsCadProdutosperc_lucro_liquido: TFMTBCDField;
    cdsCadProdutosvalor_venda: TFMTBCDField;
    cdsCadProdutosvalor_anterior: TFMTBCDField;
    cdsCadProdutosvalor_fracao: TFMTBCDField;
    cdsCadProdutoscontrole_lote: TBooleanField;
    cdsCadProdutosmedicamento: TBooleanField;
    cdsCadProdutosregistro_ms: TStringField;
    cdsCadProdutosid_classe_medicamento: TIntegerField;
    cdsCadProdutosid_principio_ativo: TStringField;
    cdsCadProdutoslista_medicamento: TIntegerField;
    cdsCadProdutosmedicamento_controlado: TBooleanField;
    cdsCadProdutosreajuste_automatico: TBooleanField;
    cdsCadProdutospmc: TFMTBCDField;
    cdsCadProdutosvalor_farmacia_popular: TFMTBCDField;
    cdsCadProdutosativo: TBooleanField;
    cdsCadProdutoscomissionado: TBooleanField;
    cdsCadProdutosperc_comissao: TFMTBCDField;
    cdsCadProdutoslimite_desconto_bloqueado: TBooleanField;
    cdsCadProdutosperc_limite_desconto: TFMTBCDField;
    cdsCadProdutospermite_editar_valor_venda: TBooleanField;
    cdsCadProdutosquantidade_minima_atacado: TFMTBCDField;
    cdsCadProdutosvalor_revenda: TFMTBCDField;
    cdsCadProdutosvalor_revenda_anterior: TFMTBCDField;
    cdsCadProdutosid_usuario_reajuste: TIntegerField;
    cdsCadProdutosid_tributacao: TIntegerField;
    cdsCadProdutosperc_icms_compra: TFMTBCDField;
    cdsCadProdutosperc_diferencial_icms: TFMTBCDField;
    cdsCadProdutosperc_reducao_icms: TFMTBCDField;
    cdsCadProdutosperc_outras_taxas: TFMTBCDField;
    cdsCadProdutoscst_ipi: TIntegerField;
    cdsCadProdutosperc_ipi: TFMTBCDField;
    cdsCadProdutosperc_frete: TFMTBCDField;
    cdsCadProdutosperc_icms_frete: TFMTBCDField;
    cdsCadProdutosperc_simples_nacional: TFMTBCDField;
    cdsCadProdutosperc_imposto_renda: TFMTBCDField;
    cdsCadProdutosperc_contribuicao_social: TFMTBCDField;
    cdsCadProdutosperc_frete_venda: TFMTBCDField;
    cdsCadProdutosid_cfop_venda_interna: TIntegerField;
    cdsCadProdutosid_cfop_venda_externa: TIntegerField;
    cdsCadProdutosobservacao: TMemoField;
    cdsCadProdutosid_usuario_cadastro: TIntegerField;
    cdsCadProdutosid_usuario_alteracao: TIntegerField;
    cdsCadProdutosdata_cadastro: TSQLTimeStampField;
    cdsCadProdutosdata_alteracao: TSQLTimeStampField;
    cdsCadProdutoschecksum: TStringField;
    cdsCodBarras: TClientDataSet;
    cdsCodBarrasbarras: TStringField;
    ApplicationEvents1: TApplicationEvents;
    dstEstoque: TSQLDataSet;
    dstEstoqueid_empresa: TIntegerField;
    dstEstoqueid_produto: TIntegerField;
    dstEstoqueid_unidade: TStringField;
    dstEstoquelote: TStringField;
    dstEstoquedata_vencimento: TDateField;
    dstEstoquedata_fabricacao: TDateField;
    dstEstoquedata_entrada: TDateField;
    dstEstoquequant_entrada: TFMTBCDField;
    dstEstoquedata_saida: TDateField;
    dstEstoquequant_saida: TFMTBCDField;
    dstEstoquequant_atual: TFMTBCDField;
    dstEstoquequant_minima: TFMTBCDField;
    dstEstoquequant_reservada: TFMTBCDField;
    dstEstoquevalor_custo_anterior: TFMTBCDField;
    dstEstoquevalor_custo_medio: TFMTBCDField;
    dstEstoquevalor_maior_custo: TFMTBCDField;
    dstEstoquedata_reajuste: TDateField;
    dstEstoquechecksum: TStringField;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    cdsEstoqueid_empresa: TIntegerField;
    cdsEstoqueid_produto: TIntegerField;
    cdsEstoqueid_unidade: TStringField;
    cdsEstoquelote: TStringField;
    cdsEstoquedata_vencimento: TDateField;
    cdsEstoquedata_fabricacao: TDateField;
    cdsEstoquedata_entrada: TDateField;
    cdsEstoquequant_entrada: TFMTBCDField;
    cdsEstoquedata_saida: TDateField;
    cdsEstoquequant_saida: TFMTBCDField;
    cdsEstoquequant_atual: TFMTBCDField;
    cdsEstoquequant_minima: TFMTBCDField;
    cdsEstoquequant_reservada: TFMTBCDField;
    cdsEstoquevalor_custo_anterior: TFMTBCDField;
    cdsEstoquevalor_custo_medio: TFMTBCDField;
    cdsEstoquevalor_maior_custo: TFMTBCDField;
    cdsEstoquedata_reajuste: TDateField;
    cdsEstoquechecksum: TStringField;
    procedure sqlFirebirdBeforeConnect(Sender: TObject);
    procedure SqlPostGresBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
    Transc : TTransactionDesc;
    Procedure FilterCDS(aCds : TClientDataSet; aType : TTypeLocalizar ; aBusca : String);
    procedure RefreshCDS(aDateSet : TClientDataSet);
    //  Dados do Banco
    Procedure AbrirProdutos();
    Procedure AbrirUnidades();
    Procedure AbrirFornecedores();
    Procedure AbrirTributacao();
    //
    Function ImportarUnidades(): Boolean;
    Function ImportarTribucacoes(): Boolean;
    Function ImportarFornecedores(): Boolean;
    Function ImportarProdutos(): Boolean;
    Function ImportarEstoqueProdutos(): Boolean;
    //
    procedure Start;
    procedure Comit(aTransc : TTransactionDesc);
    procedure Rollback(aMsg : String);
    //
    Function GetIDSequencia(aNomeSequencia : String): Integer;
    Function GetFornecedor(aNome : String ): Integer;
    Function GetTributacao(aCST : String; FAliquota : Double): Integer;
    Function VerificaNCM(aCodigo : String ): Boolean;

    Function AtualizarSeqFornecedor( UltimoCodigo : string) : Boolean;
    Function AtualizarSeqProduto(UltimoCodigo : string) : Boolean;
    Function CodCidade(aNome : String): Integer;

    Function MaxID(aCampo , aTabela : String): Integer;
  end;

var
  dmDados: TdmDados;

implementation

uses uFuncoes, Math;

{$R *.dfm}

procedure TdmDados.sqlFirebirdBeforeConnect(Sender: TObject);
Var
	ConfigIni : TIniFile;
	Path, aFile, aNomeBanco : String;
Begin
     Try
          sqlFirebird.Connected := False;
          aFile := ExtractFilePath(ParamStr(0)) + 'fbclient.dll';
          sqlFirebird.VendorLib := aFile;
        	ConfigIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
          aNomeBanco := ConfigIni.ReadString('ORIGEM','DATABASE_FIREBIRD','');
        	sqlFirebird.Params.Values['Database'] := aNomeBanco;
          //
        	ConfigIni.Free;
    Except
         on e: exception do
          begin
              sqlFirebird.Connected := false;
              raise Exception.Create('Erro na abertura de Base de Dados! Erro:'+#13
                      + E.Message);
          End;
    End;
end;

procedure TdmDados.SqlPostGresBeforeConnect(Sender: TObject);
Var 
	ConfigIni : TIniFile;
	Path, aFile : String;
Begin
     Try
          aFile := ExtractFilePath(ParamStr(0)) + 'dbexppgsql.dll';
          SqlPostGres.VendorLib := aFile;
        	ConfigIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
        	SqlPostGres.Params.Values['HostName'] := ConfigIni.ReadString('DESTINO','SERVIDOR','');
          SqlPostGres.Params.Values['Database'] := ConfigIni.ReadString('DESTINO','DATABASE_POSTGRES','');
          SqlPostGres.Params.Values['User_Name']:= ConfigIni.ReadString('DESTINO','USER_NAME','');
          SqlPostGres.Params.Values['Password'] := ConfigIni.ReadString('DESTINO','PASSWORD','');
          SqlPostGres.Params.Values['PostgreSQL.UseUnicode'] := 'True';
          SqlPostGres.Params.Values['Charset'] := 'WIN1252';
          //
          ZConnection1.Connected := False;
          ZConnection1.HostName  := ConfigIni.ReadString('DESTINO','SERVIDOR','');
          ZConnection1.Database  := ConfigIni.ReadString('DESTINO','DATABASE_POSTGRES','');
          //
        	ConfigIni.Free;
    Except
         on e: exception do
          begin
              SqlPostGres.Connected := false;
              raise Exception.Create('Erro na abertura de Base de Dados! Erro:'+#13
                      + E.Message);
          End;
    End;
end;

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
     try
         With sqlFirebird do
         begin
            if Connected then
             begin
                 CloseDataSets;
                 Connected := False;
             end;
             //
             Connected := True;
             //
             dstTabelas.CommandText := '';
         End;  // With sqlConexao do
     Except
          on e: exception do
          begin
              sqlFirebird.Connected := false;
              Application.MessageBox(PChar('Erro na abertura de Base de Dados! Erro:'+#13
                      + E.Message), 'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              Application.Terminate;
          End;
     End;
end;

procedure TdmDados.DataModuleDestroy(Sender: TObject);
begin
     sqlFirebird.Connected := false;
     SqlPostGres.Connected := false;
end;

procedure TdmDados.FilterCDS(aCds: TClientDataSet; aType: TTypeLocalizar;
  aBusca: String);
begin
     aCds.close;
     case aType of
          fsInteger : aCds.Params[0].AsInteger := StrtoInt(aBusca);
          fsString  : aCds.Params[0].AsString  := UpperCase(aBusca);
     end;
     aCds.Open;
end;

procedure TdmDados.RefreshCDS(aDateSet: TClientDataSet);
begin
     aDateSet.Close;
     aDateSet.Open;
end;

procedure TdmDados.AbrirProdutos;
begin
     RefreshCDS(cdsProdutos);
end;

procedure TdmDados.AbrirFornecedores;
begin
     RefreshCDS(cdsFornecedores);
end;

procedure TdmDados.AbrirTributacao;
begin
     RefreshCDS(cdsTributacao);
end;

procedure TdmDados.AbrirUnidades;
begin
     RefreshCDS(cdsUnidades);
end;

procedure TdmDados.Comit(aTransc: TTransactionDesc);
begin
     if (SqlPostGres.InTransaction) Then
         SqlPostGres.Commit(aTransc);
end;

procedure TdmDados.Rollback(aMsg : String);
begin
     if (SqlPostGres.InTransaction) Then
           SqlPostGres.Commit(Transc);
     raise Exception.Create(aMsg);
end;

procedure TdmDados.Start;
begin
     Transc.IsolationLevel := xilREADCOMMITTED;
     Transc.TransactionID  := StrToInt(uFuncoes.IDTransation);
     SqlPostGres.StartTransaction(Transc);
end;

function TdmDados.ImportarFornecedores: Boolean;
Var
    iCodigo, idCidade : Integer;
    aNomeFornecedor, aNomeCidade : String;
begin
     Result := False;

     if not (SqlPostGres.Connected) Then
        SqlPostGres.Connected := True;
     // Abrir Lista de dados
     AbrirFornecedores();
     if (cdsFornecedores.IsEmpty) Then
         Exit;

     Start;
     Try
           // Repassa valores de campos
           RefreshCDS(cdsCadFornecedores);
           // Repassa valores de campos
           With cdsFornecedores do
           begin
                First;
                While not (Eof) do
                 begin
                      aNomeFornecedor := UpperCase( FieldByName('FORNECEDOR').AsString );
                      aNomeCidade := '';
                      //
                      if not (cdsCadFornecedores.Locate('razao_social',aNomeFornecedor,[])) Then
                       begin
                            // iCodigo := GetIDSequencia('fornecedores_id_seq');
                            iCodigo := FieldByName('REGISTRO').AsInteger;
                            cdsCadFornecedores.Append;
                            cdsCadFornecedoresid.AsInteger := iCodigo;
                            cdsCadFornecedoresrazao_social.AsString := aNomeFornecedor;
                       End
                       Else
                           cdsCadFornecedores.Edit;
                       //
                       cdsCadFornecedoresnome_fantasia.AsString := aNomeFornecedor;
                       If not uFuncoes.Empty(FieldByName('CGC').AsString) Then
                          cdsCadFornecedores.FieldByName('cpf_cnpj').AsString      := uFuncoes.RemoveChar(FieldByName('CGC').AsString);
                       If not uFuncoes.Empty(FieldByName('IE').AsString) Then
                          cdsCadFornecedores.FieldByName('insc_estadual').AsString := uFuncoes.RemoveChar(FieldByName('IE').AsString);
                       cdsCadFornecedores.FieldByName('transportadora').AsBoolean  := false;
                       idCidade := -1;
                       aNomeCidade := UpperCase(uFuncoes.Alltrim(FieldByName('CIDADE').AsString));
                       If not uFuncoes.Empty(aNomeCidade) then
                       begin
                            idCidade := CodCidade(aNomeCidade);
                            if (idCidade <> -1) then
                               cdsCadFornecedores.FieldByName('id_cidade').AsInteger       := idCidade;
                       End;
                       //cdsCadFornecedores.FieldByName('id_bairro').AsInteger       := 1;
                       If not uFuncoes.Empty(FieldByName('CEP').AsString) Then
                          cdsCadFornecedores.FieldByName('cep').AsString := uFuncoes.RemoveChar(FieldByName('CEP').AsString);
                       cdsCadFornecedores.FieldByName('logradouro').AsString     := FieldByName('ENDERE').AsString;
                       //cdsCadFornecedores.FieldByName('numero').AsString
                       If not uFuncoes.Empty(FieldByName('COMPLE').AsString) Then
                          cdsCadFornecedores.FieldByName('complemento').AsString := FieldByName('COMPLE').AsString;
                       // cdsCadFornecedores.FieldByName('referencia').AsString
                       If not uFuncoes.Empty(FieldByName('FONE').AsString) Then
                          cdsCadFornecedores.FieldByName('fone1').AsString := uFuncoes.RemoveChar(FieldByName('FONE').AsString);
                       If not uFuncoes.Empty(FieldByName('CELULAR').AsString) Then
                          cdsCadFornecedores.FieldByName('fone2').AsString := uFuncoes.RemoveChar(FieldByName('CELULAR').AsString);
                       If not uFuncoes.Empty(FieldByName('FAX').AsString) Then
                          cdsCadFornecedores.FieldByName('fone3').AsString := uFuncoes.RemoveChar(FieldByName('FAX').AsString);
                       {cdsCadFornecedores.FieldByName('site character varying(60),
                       cdsCadFornecedores.FieldByName('email character varying(60),}
                       cdsCadFornecedores.FieldByName('data_cadastro').AsDateTime := Date();
                       cdsCadFornecedores.FieldByName('id_usuario_cadastro').asinteger := 1;
                       //
                       cdsCadFornecedores.Post;
                      //
                      Next;
                 End;
           End;
           // Grava dados
           if (cdsCadFornecedores.ApplyUpdates(0) = 0) Then
            begin
                Comit(Transc);
                cdsCadFornecedores.close;
                //
                iCodigo := MaxID('id', 'fornecedores');
                AtualizarSeqFornecedor(InttoStr(iCodigo));
                cdsFornecedores.Close;
                Result := True;
            End;
     Except
           on Exc:Exception do
           begin
                 Rollback(Exc.Message);
           End;
     End;
end;

function TdmDados.ImportarProdutos: Boolean;
Var
   idProduto, idFornecedor, idTributacao, iCont : Integer;
   aNomeProduto, aCodigo, aCST, aCodBarras : String;
begin
     Result := False;
     if not (SqlPostGres.Connected) Then
          SqlPostGres.Connected := True;
     // Abrir Lista de dados
     AbrirProdutos();
     if (cdsProdutos.IsEmpty) Then
         Exit;

     RefreshCDS(cdsCodBarras);
     cdsCodBarras.EmptyDataSet;

     Start;
     Try
           // Repassa valores de campos
           RefreshCDS(cdsCadProdutos);
           // Repassa valores de campos
           With cdsProdutos do
           begin
                First;
                While not (Eof) do
                 begin
                      idProduto    := FieldByName('REGISTRO').AsInteger;
                      aNomeProduto := UpperCase(uFuncoes.Alltrim(FieldByName('DESCRICAO').AsString) );
                      aCodBarras := '';
                      if not (cdsCodBarras.Locate('barras',uFuncoes.Alltrim(FieldByName('REFERENCIA').AsString),[])) Then
                       begin
                            aCodBarras := uFuncoes.Alltrim(FieldByName('REFERENCIA').AsString);
                            cdsCodBarras.Append;
                            cdsCodBarrasbarras.AsString := aCodBarras;
                            cdsCodBarras.Post;
                       End;

                      FilterCDS(cdsCadProdutos, fsInteger, InttoStr(idProduto));
                      //
                      If (cdsCadProdutos.IsEmpty) then
                       begin
                            cdsCadProdutos.Append;
                            cdsCadProdutosid.AsInteger       := idProduto;
                            If not uFuncoes.Empty(aCodBarras) Then
                               cdsCadProdutoscod_barras.AsString := aCodBarras;
                       End
                       Else
                           cdsCadProdutos.Edit;

                       cdsCadProdutosdescricao.AsString := aNomeProduto;

                       If not uFuncoes.Empty(FieldByName('MEDIDA').AsString) Then
                           cdsCadProdutosid_unidade.AsString   := FieldByName('MEDIDA').AsString
                       Else
                           cdsCadProdutosid_unidade.AsString   := 'UN';
                       cdsCadProdutosid_unidade_armaz.AsString := cdsCadProdutosid_unidade.AsString;
                       cdsCadProdutosquant_armaz.AsInteger     := 1;

                       If not uFuncoes.Empty(FieldByName('CF').AsString) Then
                          if (VerificaNCM(FieldByName('CF').AsString)) Then
                              cdsCadProdutosid_ncm.AsString := FieldByName('CF').AsString;

                       cdsCadProdutosorigem.AsInteger   := 0;
                       cdsCadProdutosid_secao.AsInteger := 1;
                       cdsCadProdutosid_subsecao.AsInteger := 1;

                       cdsCadProdutosfracionado.AsBoolean      := False;
                       cdsCadProdutospesavel.AsBoolean         := False;
                       If not uFuncoes.Empty(FieldByName('FORNECEDOR').AsString) Then
                        begin
                             idFornecedor := GetFornecedor(uFuncoes.Alltrim(UpperCase(FieldByName('FORNECEDOR').AsString)));
                             if (idFornecedor <> -1) Then
                             begin
                                 cdsCadProdutosid_fornecedor.asInteger := idFornecedor;
                                 cdsCadProdutosid_fabricante.asInteger := idFornecedor;
                             End;
                        End;
                       if  (Length(FieldByName('CUSTOCOMPR').AsString) <= 10) Then
                           cdsCadProdutosvalor_compra.AsFloat := FieldByName('CUSTOCOMPR').AsFloat;
                       if  (Length(FieldByName('CUSTOMEDIO').AsString) <= 10) Then
                          cdsCadProdutosvalor_custo.AsFloat  := FieldByName('CUSTOMEDIO').AsFloat;
                       if  (Length(FieldByName('LUC_VEND').AsString) <= 10) Then
                          cdsCadProdutosperc_lucro_bruto.AsFloat := FieldByName('LUC_VEND').AsFloat;
                       cdsCadProdutosvalor_venda.AsFloat      :=  FieldByName('PRECO').AsFloat;
                       cdsCadProdutoscontrole_lote.AsBoolean  := False;
                       cdsCadProdutosmedicamento.AsBoolean    := False;
                       cdsCadProdutosativo.AsBoolean          := true;
                       cdsCadProdutoscomissionado.AsBoolean   := true;
                       cdsCadProdutospermite_editar_valor_venda.AsBoolean    := False;
                       If not uFuncoes.Empty(FieldByName('ST').AsString) Then
                       begin
                           aCodigo := FieldByName('ST').AsString;
                           If (aCodigo = 'FFF') Then
                              aCodigo := '0';
                           aCST    := uFuncoes.Alltrim(FieldByName('CST').AsString);
                           if Length(aCST) = 3 then
                               aCST := Copy( aCST, 2,2)
                           Else
                               aCST := aCST;
                           //
                           idTributacao := GetTributacao(aCST, StrtoFloat(aCodigo));
                           cdsCadProdutosid_tributacao.AsInteger := idTributacao;
                       End
                       Else
                       begin
                           idTributacao := 3;
                           cdsCadProdutosid_tributacao.AsInteger := idTributacao;
                       End;
                       If not uFuncoes.Empty(FieldByName('CST_IPI').AsString) Then
                           cdsCadProdutoscst_ipi.AsInteger := FieldByName('CST_IPI').AsInteger;
                       If not uFuncoes.Empty(FieldByName('IPI').AsString) Then
                           cdsCadProdutosperc_ipi.AsFloat := FieldByName('IPI').AsFloat;
                       If not uFuncoes.Empty(FieldByName('CFOP').AsString) Then
                           cdsCadProdutosid_cfop_venda_interna.AsInteger := FieldByName('CFOP').AsInteger;
                       If not uFuncoes.Empty(FieldByName('OBS').AsString) Then
                           cdsCadProdutosobservacao.AsString        := FieldByName('OBS').AsString;
                       cdsCadProdutosid_usuario_cadastro.AsInteger  := 1;
                       cdsCadProdutosdata_cadastro.AsDateTime       := Date();

                       cdsCadProdutos.Post;
                       cdsCadProdutos.ApplyUpdates(0);
                      //
                      Next;
                      Application.ProcessMessages;
                 End;
           End;
           // Grava dados
           {if (cdsCadProdutos.ApplyUpdates(0) = 0) Then
            begin}
                Comit(Transc);
                //cdsCadProdutos.close;
                // cdsProdutos.Close;
                Result := True;
                //
                iCont := MaxID('id','produtos');
                AtualizarSeqProduto(InttoStr(iCont));
           // End;
     Except
           on Exc:Exception do
           begin
                 Rollback(Exc.Message+#13+ 'Produto : '+Inttostr(idProduto)+#13+cdsProdutosREGISTRO.AsString);
           End;
     End;
end;

function TdmDados.ImportarTribucacoes: Boolean;
Var
    aCodigo, aCST : String;
    iCST, iCodigo : Integer;
begin
     Result := False;
     if not (SqlPostGres.Connected) Then
        SqlPostGres.Connected := True;
     // Abrir Lista de dados
     AbrirTributacao();
     if (cdsTributacao.IsEmpty) Then
         Exit;

     Start;
     Try
           // Abrir Lista de dados
           RefreshCDS(cdsCadTributacao);
           // Repassa valores de campos
           With cdsTributacao do
           begin
                First;
                iCodigo := 1;
                While not (Eof) do
                 begin
                      aCodigo := FieldByName('ST').AsString;
                      If (aCodigo = 'FFF') Then
                         aCodigo := '0';
                      aCST    := uFuncoes.Alltrim(FieldByName('CST').AsString);
                      if Length(aCST) = 3 then
                          iCST := StrtoInt(Copy( aCST, 2,2))
                      Else
                          iCST := StrtoInt(aCST);
                      //
                      if not (cdsCadTributacao.Locate('aliquota_icms;cst_icms', VarArrayof([StrtoFloat(aCodigo), iCST]), [])) then
                        begin
                            cdsCadTributacao.Append;
                            cdsCadTributacaoid.AsInteger := GetIDSequencia('tributacao_id_seq');
                            cdsCadTributacaodescricao.AsString := 'TRIBUTACAO '+aCodigo;
                            cdsCadTributacaocst_icms.AsInteger := iCST;
                            cdsCadTributacaoaliquota_icms.AsFloat := StrtoFloat(aCodigo);
                            //
                            cdsCadTributacaotipo_tributacao.AsString := 'T';
                            cdsCadTributacaocst_pis.AsInteger        := 1;
                            cdsCadTributacaoaliquota_pis.AsFloat     := 1.65;
                            cdsCadTributacaocst_cofins.AsInteger        := 1;
                            cdsCadTributacaoaliquota_cofins.AsFloat  := 7.6;
                            //
                            cdsCadTributacao.Post;
                        End;
                      //
                      Next;
                 End;
           End;  // With cdsUnidades do
           // Grava dados
           If (cdsCadTributacao.ApplyUpdates(0)= 0) Then
           begin
                Comit(Transc);
                cdsTributacao.Close;
                cdsCadTributacao.Close;
                Result := True;
           End;
     Except
           on Exc:Exception do
           begin
                 Rollback(Exc.Message);
           End;
     End;
end;

function TdmDados.ImportarUnidades: Boolean;
Var
   aUnd : String;
begin
     Result := False;
     if not (SqlPostGres.Connected) Then
        SqlPostGres.Connected := True;
     // Abrir Lista de dados
     AbrirUnidades();
     if (cdsUnidades.IsEmpty) Then
         Exit;

     Start;
     Try
           RefreshCDS(cdsCadUnidades);
           // Repassa valores de campos
           With cdsUnidades do
           begin
                First;
                While not (Eof) do
                 begin
                      aUnd := Copy(FieldByName('MEDIDA').AsString,1,2);
                      //
                      if not (cdsCadUnidades.Locate('id', aUnd, [])) then
                        begin
                            cdsCadUnidades.Append;
                            cdsCadUnidadesid.AsString := aUnd;
                        End
                      Else
                          cdsCadUnidades.Edit;
                      //
                      cdsCadUnidadesdescricao.AsString := aUnd+'_';
                      cdsCadUnidades.Post;
                      //
                      cdsCadUnidades.ApplyUpdates(0);
                      //
                      Next;
                 End;
           End;  // With cdsUnidades do
           // Grava dados
           If (cdsCadUnidades.ApplyUpdates(0)= 0) Then
           begin
                Comit(Transc);
                cdsUnidades.Close;
                cdsCadUnidades.Close;
                Result := True;
           End;
     Except
           on Exc:Exception do
           begin
                 Rollback(Exc.Message);
           End;
     End;
end;

function TdmDados.GetIDSequencia(aNomeSequencia: String): Integer;
var qraux : TSQLquery;
    texto : string;
begin
     ZConnection1.Connected := True;
     Try
        try
            ZSequence1.SequenceName := 'public.'+aNomeSequencia;
            Result := ZSequence1.GetNextValue;
        Except

        End;
     Finally
         ZConnection1.Connected := False;
     End;
end;

function TdmDados.GetFornecedor(aNome: String): Integer;
Var
    qryAux : TSQLQuery;
    aTexto : String;
begin
    Result := -1;
    aTexto := 'Select id , razao_social from fornecedores where (razao_social = :pnome) ';
    qryAux := TSQLQuery.Create(Self);
    Try
       With qryAux do
       begin
            SQLConnection := SqlPostGres;
            SQL.Add(aTexto);
            Params[0].AsString := aNome;
            Open;
            If Not (IsEmpty) Then
                Result := FieldByname('id').AsInteger;
       End;
    Finally
        qryAux.Free;
    End;
end;

function TdmDados.GetTributacao(aCST : String; FAliquota : Double): Integer;
Var
    qryAux : TSQLQuery;
    aTexto : String;
begin
    Result := -1;
    aTexto := 'Select id , cst_icms, aliquota_icms from tributacao where (cst_icms = :pcst) and (aliquota_icms = :paliquota) ';
    qryAux := TSQLQuery.Create(Self);
    Try
       With qryAux do
       begin
            SQLConnection := SqlPostGres;
            SQL.Add(aTexto);
            Params.ParamByName('pcst').AsInteger    := StrtoInt(aCST);
            Params.ParamByName('paliquota').AsFloat := FAliquota;
            Open;
            If Not (IsEmpty) Then
                Result := FieldByname('id').AsInteger;
       End;
    Finally
        qryAux.Free;
    End;
end;

function TdmDados.VerificaNCM(aCodigo: String): Boolean;
Var
    qryAux : TSQLQuery;
    aTexto : String;
begin
    Result := False;
    aTexto := 'Select id from ncm where (id = :pnome) ';
    qryAux := TSQLQuery.Create(Self);
    Try
       With qryAux do
       begin
            SQLConnection := SqlPostGres;
            SQL.Add(aTexto);
            Params[0].AsString := uFuncoes.Alltrim(aCodigo);
            Open;
            If Not (IsEmpty) Then
                Result := True;
       End;
    Finally
        qryAux.Free;
    End;
end;

function TdmDados.AtualizarSeqFornecedor(UltimoCodigo: string): Boolean;
Var
    qryAux : TSQLQuery;
    aTexto : String;
begin
    Result := False;
    aTexto := 'select setval('+chr(39)+'fornecedores_id_seq'+chr(39)+ ',  '+UltimoCodigo+', true); ';
    qryAux := TSQLQuery.Create(Self);
    Try
       With qryAux do
       begin
            SQLConnection := SqlPostGres;
            SQL.Add(aTexto);
            ExecSQL();
            Result := True;
       End;
    Finally
        qryAux.Free;
    End;
end;

function TdmDados.CodCidade(aNome: String): Integer;
Var
    qryAux : TSQLQuery;
    aTexto : String;
begin
    Result := -1;
    aTexto := 'Select id, nome from cidades where (nome = :pnome) ';
    qryAux := TSQLQuery.Create(Self);
    Try
       With qryAux do
       begin
            SQLConnection := SqlPostGres;
            SQL.Add(aTexto);
            Params.ParamByName('pnome').AsString := aNome;
            Open;
            if not (IsEmpty) then
               Result := FieldByname('id').AsInteger;
       End;
    Finally
        qryAux.Free;
    End;
end;

function TdmDados.MaxID(aCampo, aTabela: String): Integer;
Var
    qryAux : TSQLQuery;
    aTexto : String;
begin
    Result := 0;
    aTexto := 'Select Max('+aCampo+') as TOTAL from '+aTabela;
    qryAux := TSQLQuery.Create(Self);
    Try
       With qryAux do
       begin
            SQLConnection := SqlPostGres;
            SQL.Add(aTexto);
            Open;
            if not (IsEmpty) then
               Result := FieldByname('TOTAL').AsInteger;
       End;
    Finally
        qryAux.Free;
    End;
end;

function TdmDados.AtualizarSeqProduto(UltimoCodigo: string): Boolean;
Var
    qryAux : TSQLQuery;
    aTexto : String;
begin
    Result := False;
    aTexto := 'select setval('+chr(39)+'produtos_id_seq'+chr(39)+ ',  '+UltimoCodigo+', true); ';
    qryAux := TSQLQuery.Create(Self);
    Try
       With qryAux do
       begin
            SQLConnection := SqlPostGres;
            SQL.Add(aTexto);
            ExecSQL();
            Result := True;
       End;
    Finally
        qryAux.Free;
    End;
end;

procedure TdmDados.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var
  NomeDoLog: string;
  Arquivo: TextFile;
begin
  NomeDoLog := ChangeFileExt(Application.Exename, '.log');
  AssignFile(Arquivo, NomeDoLog);
  if FileExists(NomeDoLog) then
    Append(arquivo) { se existir, apenas adiciona linhas }
  else
    ReWrite(arquivo); { cria um novo se n�o existir }
  try
    WriteLn(arquivo, DateTimeToStr(Now) + ':' + E.Message);
    WriteLn(arquivo, '----------------------------------------------------------------------');
    Application.ShowException(E);
  finally
    CloseFile(arquivo)
  end;
end;

function TdmDados.ImportarEstoqueProdutos: Boolean;
Var
   aLote : String;
   idLoja, idProduto : Integer;
begin
     Result := False;
     if not (SqlPostGres.Connected) Then
          SqlPostGres.Connected := True;
     // Abrir Lista de dados
     AbrirProdutos();
     if (cdsProdutos.IsEmpty) Then
         Exit;

     idLoja := 1;
     aLote  := 'GERAL';
     
     Start;
     Try
           // Repassa valores de campos
           With cdsProdutos do
           begin
                First;
                While not (Eof) do
                 begin
                      idProduto    := FieldByName('REGISTRO').AsInteger;

                      With cdsEstoque do
                      begin
                           Close;
                           Params.ParamByName('ploja').AsInteger    := idLoja;
                           Params.ParamByName('pproduto').AsInteger := idProduto;
                           Params.ParamByName('plote').AsString     := aLote;
                           Open;
                      End;
                      //
                      If (cdsEstoque.IsEmpty) then
                       begin
                            cdsEstoque.Append;
                            cdsEstoqueid_empresa.AsInteger    := idLoja;
                            cdsEstoqueid_produto.AsInteger    := idProduto;
                            cdsEstoquelote.AsString           := aLote;
                       End
                       Else
                           cdsEstoque.Edit;
                       //
                       if not ufuncoes.Empty(FieldByname('MEDIDA').AsString) then
                           cdsEstoqueid_unidade.AsString := FieldByname('MEDIDA').AsString
                       Else
                           cdsEstoqueid_unidade.AsString := 'UN';
                       if not ufuncoes.Empty(uFuncoes.RemoveChar(FieldByname('ULT_COMPRA').AsString)) then
                           cdsEstoquedata_entrada.AsDateTime := FieldByname('ULT_COMPRA').AsDateTime;
                       if (Length(FieldByname('CUSTOMEDIO').AsString) <= 12) then
                          cdsEstoquevalor_custo_medio.AsFloat := FieldByname('CUSTOMEDIO').AsFloat;
                       cdsEstoquequant_entrada.AsFloat := FieldByname('QTD_COMPRA').AsFloat;
                       if not ufuncoes.Empty(uFuncoes.RemoveChar(FieldByname('ULT_VENDA').AsString)) then
                          cdsEstoquedata_saida.AsDateTime := FieldByname('ULT_VENDA').AsDateTime;
                       cdsEstoquequant_saida.AsFloat := FieldByname('QTD_VEND').AsFloat;
                       If (FieldByname('QTD_ATUAL').AsFloat >= 0) Then
                           cdsEstoquequant_atual.AsFloat := FieldByname('QTD_ATUAL').AsFloat
                       Else
                           cdsEstoquequant_atual.AsFloat := 0;
                       if (FieldByname('QTD_MINIM').AsFloat > 0) then
                          cdsEstoquequant_minima.AsFloat := FieldByname('QTD_MINIM').AsFloat;
                       cdsEstoquequant_reservada.AsFloat := 0;
                       //
                       cdsEstoque.Post;
                       cdsEstoque.ApplyUpdates(0);
                      //
                      Next;
                      Application.ProcessMessages;
                 End;
           End;
           // Grava dados
           Comit(Transc);
           Result := True;
     Except
           on Exc:Exception do
           begin
                 Rollback(Exc.Message+#13+ 'Produto : '+Inttostr(idProduto)+#13+cdsProdutosREGISTRO.AsString);
           End;
     End;
end;

end.
