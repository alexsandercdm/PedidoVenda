import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['pt', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String ptText = '',
    String enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'i3yz5f4k': {
      'pt': 'Email',
      'en': 'Email',
    },
    'ajra0he6': {
      'pt': 'Digite seu email',
      'en': 're-email',
    },
    '5jry4k2x': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'zqv9cvjv': {
      'pt': 'Digite sua Senha',
      'en': 're-password',
    },
    'j1xagls6': {
      'pt': 'Login',
      'en': 'login',
    },
    'kt08e0m0': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Home
  {
    '2zub5iuf': {
      'pt': 'Seja Bem-Vindo!',
      'en': '',
    },
    'nb6zxmvv': {
      'pt': 'Página Inicial',
      'en': '',
    },
    'pjgmgor0': {
      'pt': 'Inicial',
      'en': 'Home',
    },
  },
  // Empresas
  {
    'd8tyidvl': {
      'pt': 'Page Title',
      'en': '',
    },
    'swzg1pu1': {
      'pt': 'Empresas',
      'en': '',
    },
  },
  // CadastroEmpresas
  {
    '92nkt69f': {
      'pt': 'Empresa',
      'en': '',
    },
    'cwotb33s': {
      'pt': 'Cadastro',
      'en': '',
    },
    'ld2con2u': {
      'pt': 'Dados Cadasrais',
      'en': '',
    },
    '408lt98g': {
      'pt': 'CNPJ',
      'en': 'Email',
    },
    'mex7z8l5': {
      'pt': 'Digite o CNPJ',
      'en': 're-email',
    },
    'wctcud5v': {
      'pt': 'Razão Social',
      'en': 'Email',
    },
    'jskf0u29': {
      'pt': 'Digite Razão Social ',
      'en': 're-email',
    },
    'cvl3u35w': {
      'pt': 'Nome Fantasia',
      'en': 'Email',
    },
    '4orjv6n5': {
      'pt': 'Digite o Nome Fantasia',
      'en': 're-email',
    },
    '3is7xvca': {
      'pt': 'Código',
      'en': 'Email',
    },
    '2e2vzmgx': {
      'pt': 'Digite o código interno no ERP',
      'en': 're-email',
    },
    '9n6acg9h': {
      'pt': 'Fiscal',
      'en': '',
    },
    'y32n2bol': {
      'pt': 'Dados Fiscais',
      'en': '',
    },
    'ojxmtbim': {
      'pt': 'Inscrição Estadual',
      'en': 'Email',
    },
    'jjj8lcv5': {
      'pt': 'Digite a Inscrição Estadual',
      'en': 're-email',
    },
    'o2qg9ddk': {
      'pt': 'ISENTO',
      'en': '',
    },
    'tshgd77f': {
      'pt': 'Inscrição Municipal',
      'en': 'Email',
    },
    'x152l5y2': {
      'pt': 'Digite a Inscrição Estadual',
      'en': 're-email',
    },
    '8oamjb5u': {
      'pt': 'ISENTO',
      'en': '',
    },
    'r249yhq6': {
      'pt': 'ISENTO',
      'en': '',
    },
    'ucartunj': {
      'pt': 'MEI',
      'en': '',
    },
    '7bqyrecn': {
      'pt': 'SIMPLES NACIONAL',
      'en': '',
    },
    'tgpx1ys2': {
      'pt': 'LUCRO PRESUMIDO',
      'en': '',
    },
    'ti7qyjdj': {
      'pt': 'LUCRO REAL',
      'en': '',
    },
    'j0ox9p66': {
      'pt': 'Selecione o Regime Tributário',
      'en': '',
    },
    'i3voap0f': {
      'pt': 'EMPRESA PÚBLICA',
      'en': '',
    },
    '15d5gced': {
      'pt': 'EMPRESÁRIO',
      'en': '',
    },
    'sjcqnra1': {
      'pt': 'EIRELI NATUREZA SIMPLES',
      'en': '',
    },
    '109tca1k': {
      'pt': 'EIRELI NATUREZA EMPRESARIA',
      'en': '',
    },
    'ik5bnfnu': {
      'pt': 'SOCIEDADE SIMPLES LIMITADA',
      'en': '',
    },
    '7qjmpcq1': {
      'pt': 'Selecione a Natureza Jurídica',
      'en': '',
    },
    '5bodvjvx': {
      'pt': 'Cliente desde',
      'en': 'Email',
    },
    'ahzd24ow': {
      'pt': '',
      'en': 're-email',
    },
    'ex9ribey': {
      'pt': 'Contato',
      'en': '',
    },
    'f8l12jif': {
      'pt': 'Dados de Contato',
      'en': '',
    },
    'np7h8v5r': {
      'pt': 'Email',
      'en': 'Email',
    },
    'cvtpz3zk': {
      'pt': 'Digite o Email',
      'en': 're-email',
    },
    'j1r2c9zh': {
      'pt': 'Telefone',
      'en': 'Email',
    },
    'x9tmgpcr': {
      'pt': 'Digite o Nº de Telefone',
      'en': 're-email',
    },
    'vgbgt045': {
      'pt': 'Celular',
      'en': 'Email',
    },
    'aey72e87': {
      'pt': 'Digite o Nº Celular',
      'en': 're-email',
    },
    '0njrg1gg': {
      'pt': 'Endereço',
      'en': '',
    },
    'y20u7xop': {
      'pt': 'IBGE',
      'en': 'Email',
    },
    's87dp8fh': {
      'pt': 'Digite o IBGE',
      'en': 're-email',
    },
    'hlv012b8': {
      'pt': 'Inseir Logo',
      'en': '',
    },
    'i7x0oysi': {
      'pt': 'Voltar',
      'en': '',
    },
    'qskc7yco': {
      'pt': 'Salvar',
      'en': '',
    },
  },
  // Clientes
  {
    'va4jp67a': {
      'pt': 'Clientes',
      'en': '',
    },
    'bveii3d7': {
      'pt': 'Clientes',
      'en': '',
    },
  },
  // ClientesCadastro
  {
    '3tzf6byj': {
      'pt': 'Cadastro',
      'en': '',
    },
    '0iwsaj75': {
      'pt': 'Dados Cadasrais',
      'en': '',
    },
    'zkb5w9w5': {
      'pt': 'CNPJ_CPF',
      'en': 'Email',
    },
    'm8arotl0': {
      'pt': 'Digite o CNPJ/CPF',
      'en': 're-email',
    },
    '27hs18r6': {
      'pt': 'Nome Completo',
      'en': 'Email',
    },
    're2wcw6h': {
      'pt': 'Digite o Nome Completo ou Razão Social ',
      'en': 're-email',
    },
    'e7h16n79': {
      'pt': 'Nome Fantasia',
      'en': 'Email',
    },
    '2op1vuyn': {
      'pt': 'Digite o Nome Fantasia',
      'en': 're-email',
    },
    'bpizybhn': {
      'pt': 'Código',
      'en': 'Email',
    },
    'ydyiat16': {
      'pt': 'Digite o código interno no ERP',
      'en': 're-email',
    },
    'qb8n8iez': {
      'pt': 'PESSOA FÍSICA',
      'en': '',
    },
    'uwumpalp': {
      'pt': 'PESSOA JURÍDICA',
      'en': '',
    },
    '4jf4qpsn': {
      'pt': 'Selecione o tipo de Cliente',
      'en': '',
    },
    'd0os8sbl': {
      'pt': 'Fiscal',
      'en': '',
    },
    '8xgwaa28': {
      'pt': 'Dados Fiscais',
      'en': '',
    },
    '8602l6um': {
      'pt': 'Inscrição Estadual',
      'en': 'Email',
    },
    'we2b2ran': {
      'pt': 'Digite a Inscrição Estadual',
      'en': 're-email',
    },
    '5e1ajl0h': {
      'pt': 'ISENTO',
      'en': '',
    },
    'cz4ls7df': {
      'pt': 'Inscrição Municipal',
      'en': 'Email',
    },
    'd286jbav': {
      'pt': 'Digite a Inscrição Estadual',
      'en': 're-email',
    },
    'tud5rmsv': {
      'pt': 'ISENTO',
      'en': '',
    },
    'eoie9dcr': {
      'pt': 'ISENTO',
      'en': '',
    },
    'zuea8kjq': {
      'pt': 'MEI',
      'en': '',
    },
    'c1x8940q': {
      'pt': 'SIMPLES NACIONAL',
      'en': '',
    },
    'sar5pm2a': {
      'pt': 'LUCRO PRESUMIDO',
      'en': '',
    },
    'r6zyhhj9': {
      'pt': 'LUCRO REAL',
      'en': '',
    },
    '6winwug3': {
      'pt': 'Selecione o Regime Tributário',
      'en': '',
    },
    '1z79krgw': {
      'pt': 'EMPRESA PÚBLICA',
      'en': '',
    },
    '90r257by': {
      'pt': 'EMPRESÁRIO',
      'en': '',
    },
    'a2ovxmfi': {
      'pt': 'EIRELI NATUREZA SIMPLES',
      'en': '',
    },
    'w7iog54e': {
      'pt': 'EIRELI NATUREZA EMPRESARIA',
      'en': '',
    },
    'd6yhm4ee': {
      'pt': 'SOCIEDADE SIMPLES LIMITADA',
      'en': '',
    },
    '9am3znj6': {
      'pt': 'Selecione a Natureza Jurídica',
      'en': '',
    },
    '6tjazrwb': {
      'pt': 'Cliente desde',
      'en': 'Email',
    },
    '5ehdjz9c': {
      'pt': '',
      'en': 're-email',
    },
    'tmsa52jk': {
      'pt': 'Dados Fiscais',
      'en': '',
    },
    '9qop1adz': {
      'pt': 'RG',
      'en': 'Email',
    },
    '8tctx9bz': {
      'pt': '',
      'en': 're-email',
    },
    'gmtdh8ox': {
      'pt': 'Cliente desde',
      'en': 'Email',
    },
    '9m88my8x': {
      'pt': '',
      'en': 're-email',
    },
    'oesdhse3': {
      'pt': 'Contato',
      'en': '',
    },
    'pjxyhs7z': {
      'pt': 'Dados de Contato',
      'en': '',
    },
    'gny79ncs': {
      'pt': 'Email',
      'en': 'Email',
    },
    'xppb4wc4': {
      'pt': 'Digite o Email',
      'en': 're-email',
    },
    'akv624mc': {
      'pt': 'Telefone',
      'en': 'Email',
    },
    '47gesny8': {
      'pt': 'Digite o Nº de Telefone',
      'en': 're-email',
    },
    '09b4b26v': {
      'pt': 'Celular',
      'en': 'Email',
    },
    '2phzv8gp': {
      'pt': 'Digite o Nº Celular',
      'en': 're-email',
    },
    '7dm6nvto': {
      'pt': 'Endereço',
      'en': '',
    },
    '78klpeh1': {
      'pt': 'IBGE',
      'en': 'Email',
    },
    '7nfqerfn': {
      'pt': 'Digite o IBGE',
      'en': 're-email',
    },
    'ntzky7zy': {
      'pt': 'Voltar',
      'en': '',
    },
    '5vaz5hw9': {
      'pt': 'Salvar',
      'en': '',
    },
    'q1gjt8r7': {
      'pt': 'Cadastro de Cliente',
      'en': '',
    },
    '5vbjhhxx': {
      'pt': 'Clientes',
      'en': '',
    },
  },
  // Produtos
  {
    'iuq9uj7z': {
      'pt': 'Produtos',
      'en': '',
    },
    'dgzrdpug': {
      'pt': 'Produtos',
      'en': '',
    },
  },
  // ProdutosCadastros
  {
    'kv4vas3d': {
      'pt': 'Dados',
      'en': '',
    },
    'ozrx0p5r': {
      'pt': 'Dados do Produto',
      'en': '',
    },
    'ytl32yfn': {
      'pt': 'Id do Produto',
      'en': '',
    },
    'vfe1e45r': {
      'pt': 'Digite ao Código do Produto',
      'en': '',
    },
    'athv1m6h': {
      'pt': 'Produto',
      'en': '',
    },
    'atrvzr4m': {
      'pt': 'Digite a Descrição do Produto',
      'en': '',
    },
    'xd31m60l': {
      'pt': 'Unidade',
      'en': '',
    },
    'kbro1bg2': {
      'pt': 'Criar Nova Unidade +',
      'en': '',
    },
    'i7b2qd2i': {
      'pt': 'Option 1',
      'en': '',
    },
    'hfa99iyq': {
      'pt': 'Seleciona a Unidade',
      'en': '',
    },
    '8azjih16': {
      'pt': 'Categoria',
      'en': '',
    },
    'd7sg4v2n': {
      'pt': 'Criar Nova Categoria +',
      'en': '',
    },
    'i6e8k52m': {
      'pt': 'Option 1',
      'en': '',
    },
    '6pgtklg6': {
      'pt': 'Selecione a Categoria',
      'en': '',
    },
    'p2a09twu': {
      'pt': 'Marca',
      'en': '',
    },
    '46zoun8p': {
      'pt': 'Criar Nova Marca +',
      'en': '',
    },
    'x4g2ukpg': {
      'pt': 'Option 1',
      'en': '',
    },
    'x0x7moi4': {
      'pt': 'Selecione a Marca',
      'en': '',
    },
    '8954ek95': {
      'pt': 'Produto Acabado',
      'en': '',
    },
    'ltgrnup4': {
      'pt': 'Produto em Processo',
      'en': '',
    },
    'ub6hovya': {
      'pt': 'Serviços',
      'en': '',
    },
    '99z6tv74': {
      'pt': 'Matéria Prima',
      'en': '',
    },
    'r4hdj607': {
      'pt': 'Selectione o Tipo de Produto',
      'en': '',
    },
    'knyrfyzb': {
      'pt': 'Financeiro',
      'en': '',
    },
    'gan93jqr': {
      'pt': 'Valores',
      'en': '',
    },
    'ivkn87ih': {
      'pt': 'Preço Custo',
      'en': '',
    },
    '221aep0c': {
      'pt': 'Digite o Preço de Custo',
      'en': '',
    },
    'sz7vpd9i': {
      'pt': 'Preço de Venda',
      'en': '',
    },
    '16y6ixw1': {
      'pt': 'Digite o Preço de Venda',
      'en': '',
    },
    'brsi28vx': {
      'pt': 'Dados Fiscais',
      'en': '',
    },
    'jy5u2gi3': {
      'pt': '0 - Nacional, exceto as indicadas nos códigos de 3, 4, 5 e 8',
      'en': '',
    },
    'pxoiepnp': {
      'pt': '1 - Estrangeira, importação direta, exceto a indicada no código 6',
      'en': '',
    },
    'auwdv28s': {
      'pt':
          '2 - Estrangeira, adquirida no mercado interno, exceto a indicada no código 7',
      'en': '',
    },
    '5trox0bp': {
      'pt':
          '3 - Nacional, mercadoria ou bem com Conteúdo de Importação maior que 40% e menor ou igual a 70%',
      'en': '',
    },
    'm8m919zf': {
      'pt':
          '4 - Nacional, produção em conformidade com processos básicos que tratam as legisl. dos Ajustes',
      'en': '',
    },
    '0sgy57gm': {
      'pt':
          '5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%',
      'en': '',
    },
    'r8pbrh6m': {
      'pt':
          '6 - Estrangeira, importação direta, sem similar nacional, constante na lista da CAMEX e gás natural',
      'en': '',
    },
    'wtoxau2g': {
      'pt':
          '7 - Estrangeira, adquir. merc. interno, sem similar nacional, na lista da CAMEX e gás natural',
      'en': '',
    },
    'a7ffj25j': {
      'pt':
          '8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%',
      'en': '',
    },
    'tq79fzt7': {
      'pt': 'Seleciona a Origem da Mercadoria',
      'en': '',
    },
    'baw323oz': {
      'pt': '01',
      'en': '',
    },
    '18fetv26': {
      'pt': '02',
      'en': '',
    },
    '7betr5qe': {
      'pt': '03',
      'en': '',
    },
    'gv0zmuwr': {
      'pt': '04',
      'en': '',
    },
    'avs693iw': {
      'pt': '05',
      'en': '',
    },
    'j47x8t2c': {
      'pt': '06',
      'en': '',
    },
    'mzdjc05x': {
      'pt': '07',
      'en': '',
    },
    'bt839ynd': {
      'pt': 'Selecione Exceção Tabela IPI',
      'en': '',
    },
    'vb9ktijo': {
      'pt': 'Referência EAN/GTIN',
      'en': '',
    },
    '1o6umkmg': {
      'pt': 'Digite a Referência EAN/GTIN',
      'en': '',
    },
    'e38ae2az': {
      'pt': 'Peso Unitário Líquido(kg)',
      'en': '',
    },
    '5gxdxk3a': {
      'pt': 'Digite o Peso Unitário Líquido(kg)',
      'en': '',
    },
    '2pep1eft': {
      'pt': 'Peso Unitário Bruto(kg)',
      'en': '',
    },
    '39amhjkt': {
      'pt': 'Digite Peso Unitário Bruto(kg)',
      'en': '',
    },
    'b6ltwq8a': {
      'pt': 'NCM',
      'en': '',
    },
    'zphr6fzw': {
      'pt': 'Digite o NCM',
      'en': '',
    },
    'hucobh3f': {
      'pt': 'Código CEST',
      'en': '',
    },
    '48pqy83s': {
      'pt': 'Digite o Código CEST',
      'en': '',
    },
    'jlqiibm5': {
      'pt': 'Código Benefício Fiscal na UF',
      'en': '',
    },
    'mfdezcsf': {
      'pt': 'Digite o Código Benefício Fiscal na UF',
      'en': '',
    },
    'ig5lcr5d': {
      'pt': 'Unidade Comercial',
      'en': '',
    },
    'aoo9ciao': {
      'pt': 'Digite a Unidade Comercial',
      'en': '',
    },
    'zsacxqn4': {
      'pt': 'Detalhes',
      'en': '',
    },
    'unvrphng': {
      'pt': 'Detalhes do Produto',
      'en': '',
    },
    'v0m1ujju': {
      'pt': 'Descrição do Produto',
      'en': '',
    },
    'cy1welbh': {
      'pt': '',
      'en': '',
    },
    '0gwgxgw5': {
      'pt': 'Adicionar Imagens',
      'en': '',
    },
    '63jbcj3e': {
      'pt': 'Field is required',
      'en': '',
    },
    'rqqt1rv4': {
      'pt': 'Field is required',
      'en': '',
    },
    'tpa7kvus': {
      'pt': 'Voltar',
      'en': '',
    },
    '6604x1sv': {
      'pt': 'Salvar',
      'en': '',
    },
    'ymfv010v': {
      'pt': 'Cadasto de Produtos',
      'en': '',
    },
    'nhan914h': {
      'pt': 'Produtos',
      'en': '',
    },
  },
  // Pedidos
  {
    's63pg1tz': {
      'pt': 'Pedidos',
      'en': '',
    },
    '7tpr6h8h': {
      'pt': 'Pedidos',
      'en': '',
    },
  },
  // order_item
  {
    '2035t9fz': {
      'pt': 'Cabeçalho',
      'en': '',
    },
    '7a8n1xm5': {
      'pt': 'Cliente',
      'en': '',
    },
    '9c3xd6cs': {
      'pt': 'Selecione um Cliente',
      'en': '',
    },
    '01pgokpy': {
      'pt': 'Empresa',
      'en': '',
    },
    'yeju6kn3': {
      'pt': 'Option 1',
      'en': '',
    },
    'ei57hzku': {
      'pt': 'Seleciona uma Empresa',
      'en': '',
    },
    'nd6mwr6y': {
      'pt': 'Endereço de Cobrança',
      'en': '',
    },
    'yon8il12': {
      'pt': 'Endereço de Cobrança',
      'en': '',
    },
    'dcpfmblc': {
      'pt': 'Tipo de Pedido',
      'en': '',
    },
    'c5hlahak': {
      'pt': 'Orçamento',
      'en': '',
    },
    'sbs4v1ky': {
      'pt': 'Pedido',
      'en': '',
    },
    'eki7mggd': {
      'pt': 'Tipo de Pedido',
      'en': '',
    },
    '7gmxaz7x': {
      'pt': 'Condiçoes de Pagamento',
      'en': '',
    },
    '74gepajq': {
      'pt': 'À Vista',
      'en': '',
    },
    'yqgzd9cb': {
      'pt': '30 / 60 / 90 ',
      'en': '',
    },
    'by270219': {
      'pt': 'Cartão de Crédido',
      'en': '',
    },
    'e607k3ze': {
      'pt': 'Condições de Pagamento',
      'en': '',
    },
    '69avcayv': {
      'pt': 'Endereço de Cobrança',
      'en': '',
    },
    'yk2blgrk': {
      'pt': 'Endereço de Cobrança',
      'en': '',
    },
    'evdkfaa3': {
      'pt': 'Endereço de Entrega',
      'en': '',
    },
    'afnmhxub': {
      'pt': 'Endereço de Entrega',
      'en': '',
    },
    'za43vcu3': {
      'pt': 'Frete',
      'en': '',
    },
    'prdl7idb': {
      'pt': 'Grátis',
      'en': '',
    },
    'aae5qs89': {
      'pt': 'Frete',
      'en': '',
    },
    'rbw26xpm': {
      'pt': 'Valor do Frete',
      'en': '',
    },
    'eexfqbkd': {
      'pt': 'Valor do Frete',
      'en': '',
    },
    'vutc73hp': {
      'pt': 'Observações Interna',
      'en': '',
    },
    'rreeq982': {
      'pt': 'Observações Interna',
      'en': '',
    },
    '2uv0mqtl': {
      'pt': 'Field is required',
      'en': '',
    },
    'fr1qi70l': {
      'pt': 'Field is required',
      'en': '',
    },
    '7imnh70b': {
      'pt': 'Field is required',
      'en': '',
    },
    '8zfbrffv': {
      'pt': 'Field is required',
      'en': '',
    },
    'lfo0nt6t': {
      'pt': 'Field is required',
      'en': '',
    },
    'v7ly75w7': {
      'pt': 'Produtos',
      'en': '',
    },
    '7y47ulfl': {
      'pt': 'Inserir Produto',
      'en': '',
    },
    'una1r86m': {
      'pt': 'refrigerante, coca-cola, pizza...',
      'en': '',
    },
    'wpgez4ek': {
      'pt': 'Search',
      'en': '',
    },
    'qipk3hp4': {
      'pt': 'Itens',
      'en': '',
    },
    'qebatqtz': {
      'pt': 'Share',
      'en': '',
    },
    'ga1nhttp': {
      'pt': 'Checkout',
      'en': '',
    },
    'jikgsuxk': {
      'pt': 'Checkout do Pedido',
      'en': '',
    },
    'wszoemst': {
      'pt': 'Valor total de Tabela:',
      'en': '',
    },
    'zei09687': {
      'pt': 'Frete:',
      'en': '',
    },
    'a9o0jbca': {
      'pt': 'Descontos:',
      'en': '',
    },
    'rwgvj1yg': {
      'pt': 'Total do Pedido:',
      'en': '',
    },
    'yw298vdq': {
      'pt': 'Cancelar',
      'en': '',
    },
    'or5qp1di': {
      'pt': 'Fechar Pedido',
      'en': '',
    },
    'uv5b2ugf': {
      'pt': 'Page Title',
      'en': '',
    },
    'oejepwl1': {
      'pt': 'Itens',
      'en': '',
    },
  },
  // produtosDetails
  {
    'uguc34vv': {
      'pt': 'Cadastrar Produtos',
      'en': '',
    },
    'ofluqzg7': {
      'pt': 'Cadastar Marca',
      'en': '',
    },
    '6fed193r': {
      'pt': 'Cadastrar Unidade',
      'en': '',
    },
    't9fdytyu': {
      'pt': 'Cadastrar Categoria',
      'en': '',
    },
    'u97wxqsm': {
      'pt': 'Tabela de Preço',
      'en': '',
    },
  },
  // Marca
  {
    '76owbtva': {
      'pt': 'ID Marca',
      'en': '',
    },
    'l5x9ck84': {
      'pt': 'Digite o ID da Marca',
      'en': '',
    },
    '0hv5rtxb': {
      'pt': 'Marca',
      'en': '',
    },
    'svqu21gl': {
      'pt': 'Digite a Descrição da Marca',
      'en': '',
    },
    'ydbmtyok': {
      'pt': 'Cadastrar Marca',
      'en': '',
    },
    'ebfs5b7j': {
      'pt': 'Field is required',
      'en': '',
    },
    'okrcinp4': {
      'pt': 'Field is required',
      'en': '',
    },
  },
  // Unidade
  {
    'puckfpz5': {
      'pt': 'ID Unidade',
      'en': '',
    },
    'tlwtlyjw': {
      'pt': 'Digite o ID da Unidade',
      'en': '',
    },
    'v6ugzp1w': {
      'pt': 'Unidade',
      'en': '',
    },
    'yl3dta07': {
      'pt': 'Digite a Descrição da Unidade',
      'en': '',
    },
    '5kunt1ss': {
      'pt': 'Cadastrar Unidade',
      'en': '',
    },
    'nbvenrm7': {
      'pt': 'Field is required',
      'en': '',
    },
    'l99heqmx': {
      'pt': 'Field is required',
      'en': '',
    },
  },
  // Categoria
  {
    '5y8iobi9': {
      'pt': 'ID Categoria',
      'en': '',
    },
    '1sdvnw8g': {
      'pt': 'Digite o ID da Categoria',
      'en': '',
    },
    'eu7kawyl': {
      'pt': 'Categoria',
      'en': '',
    },
    '2cl8nrm6': {
      'pt': 'Digite a Descrição da Categoria',
      'en': '',
    },
    '6m4w0vf6': {
      'pt': 'Cadastrar Categoria',
      'en': '',
    },
    'k5qszcb3': {
      'pt': 'Field is required',
      'en': '',
    },
    'x3xoixfg': {
      'pt': 'Field is required',
      'en': '',
    },
  },
  // adicionar_podutos
  {
    '77mxhcz8': {
      'pt': 'Unidade',
      'en': '',
    },
    'th3jsfc8': {
      'pt': 'Unidade de venda do item',
      'en': '',
    },
    'btqpepx9': {
      'pt': 'Quantidade',
      'en': '',
    },
    'r6rblpcs': {
      'pt': 'Quantidade de Itens na venda',
      'en': '',
    },
    'vlfjmbjq': {
      'pt': 'Desconto',
      'en': '',
    },
    'x26tmth0': {
      'pt': 'Desconto Total da Venda %',
      'en': '',
    },
    'rt25vvpx': {
      'pt': '0',
      'en': '',
    },
    'utiidicw': {
      'pt': 'Resumo',
      'en': '',
    },
    'ma37gdbc': {
      'pt': 'Preço de Tabela',
      'en': '',
    },
    'wz2o2w2a': {
      'pt': 'Preço Líquido',
      'en': '',
    },
    'dbey7pwi': {
      'pt': 'Desconto',
      'en': '',
    },
    '2gwdsfbh': {
      'pt': 'Total',
      'en': '',
    },
    'q5bu4bld': {
      'pt': 'Confirmar Item',
      'en': '',
    },
  },
  // Menu
  {
    'tcutck3s': {
      'pt': 'Menu',
      'en': '',
    },
    '67gskevq': {
      'pt': 'Página Inicial',
      'en': '',
    },
    '08bpfzhl': {
      'pt': 'Empresas',
      'en': '',
    },
    'dau2huhi': {
      'pt': 'Clientes',
      'en': '',
    },
    'z5j8t8g0': {
      'pt': 'Carteira',
      'en': '',
    },
    'rmn2y2tx': {
      'pt': 'Cadastro de Clientes',
      'en': '',
    },
    'vt6cfgh3': {
      'pt': 'Produtos',
      'en': '',
    },
    '5tivqo2u': {
      'pt': 'Produtos',
      'en': '',
    },
    'd5i5nnuv': {
      'pt': 'Pedidos',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'egqj9s9u': {
      'pt': '',
      'en': '',
    },
    '5qw68bci': {
      'pt': '',
      'en': '',
    },
    'ln9qmxsp': {
      'pt': '',
      'en': '',
    },
    'x7gfh0ba': {
      'pt': '',
      'en': '',
    },
    'zggchrm8': {
      'pt': '',
      'en': '',
    },
    'dpp34ziz': {
      'pt': '',
      'en': '',
    },
    'fkkxh82i': {
      'pt': '',
      'en': '',
    },
    'i6f6pw0h': {
      'pt': '',
      'en': '',
    },
    'jxlyjvkq': {
      'pt': '',
      'en': '',
    },
    'y9pad5xm': {
      'pt': '',
      'en': '',
    },
    'fzg5fxx2': {
      'pt': '',
      'en': '',
    },
    '7giu858t': {
      'pt': '',
      'en': '',
    },
    '9rbm6s7u': {
      'pt': '',
      'en': '',
    },
    '2szhheqv': {
      'pt': '',
      'en': '',
    },
    'hhi04mwk': {
      'pt': '',
      'en': '',
    },
    'p0zlfhh3': {
      'pt': '',
      'en': '',
    },
    'immzpa7d': {
      'pt': '',
      'en': '',
    },
    'tolwmg1q': {
      'pt': '',
      'en': '',
    },
    'uai5mu7k': {
      'pt': '',
      'en': '',
    },
    'puwx2bf2': {
      'pt': '',
      'en': '',
    },
    'jmzc6crg': {
      'pt': '',
      'en': '',
    },
    'i7508bpl': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
