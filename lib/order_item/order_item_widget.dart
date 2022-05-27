import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/list_products_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../produtos_order/produtos_order_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class OrderItemWidget extends StatefulWidget {
  const OrderItemWidget({
    Key key,
    this.recordPedido,
  }) : super(key: key);

  final PedidosRecord recordPedido;

  @override
  _OrderItemWidgetState createState() => _OrderItemWidgetState();
}

class _OrderItemWidgetState extends State<OrderItemWidget> {
  List<ProdutoRecord> simpleSearchResults = [];
  TextEditingController textFieldSearchController;
  String dropDownClienteValue;
  String dropDownEmpresaValue;
  TextEditingController fieldTextVendedorController;
  String dropDownPedidoValue;
  String dropDownPagamentoValue;
  TextEditingController fieldTextCobrancaController;
  TextEditingController fieldTextEntregaController;
  String dropDownFreteValue;
  TextEditingController fieldTextValorFreteController;
  TextEditingController obsInternaController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    fieldTextCobrancaController = TextEditingController();
    fieldTextVendedorController =
        TextEditingController(text: currentUserDisplayName);
    fieldTextEntregaController = TextEditingController();
    fieldTextValorFreteController = TextEditingController();
    obsInternaController = TextEditingController();
    textFieldSearchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'clzz2mnr' /* Pedidos */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 3,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: FlutterFlowTheme.of(context).textButton,
                      labelStyle: FlutterFlowTheme.of(context).bodyText1,
                      indicatorColor:
                          FlutterFlowTheme.of(context).secondaryColor,
                      tabs: [
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            '2035t9fz' /* Cabeçalho */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'v7ly75w7' /* Produtos */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'qipk3hp4' /* Itens */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'ga1nhttp' /* Checkout */,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 9, 9, 9),
                            child: Form(
                              key: formKey,
                              autovalidateMode: AutovalidateMode.always,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '7a8n1xm5' /* Cliente */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 9),
                                      child:
                                          StreamBuilder<List<ClientesRecord>>(
                                        stream: queryClientesRecord(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitRipple(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          List<ClientesRecord>
                                              dropDownClienteClientesRecordList =
                                              snapshot.data;
                                          return FlutterFlowDropDown(
                                            options:
                                                dropDownClienteClientesRecordList
                                                    .map((e) => e.fullName)
                                                    .toList()
                                                    .toList(),
                                            onChanged: (val) => setState(() =>
                                                dropDownClienteValue = val),
                                            height: 50,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF212121),
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '9c3xd6cs' /* Selecione um Cliente */,
                                            ),
                                            fillColor: Colors.white,
                                            elevation: 2,
                                            borderColor: Color(0xFF757575),
                                            borderWidth: 1,
                                            borderRadius: 5,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            hidesUnderline: true,
                                          );
                                        },
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '01pgokpy' /* Empresa */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child:
                                          StreamBuilder<List<EmpresasRecord>>(
                                        stream: queryEmpresasRecord(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitRipple(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          List<EmpresasRecord>
                                              dropDownEmpresaEmpresasRecordList =
                                              snapshot.data;
                                          return FlutterFlowDropDown(
                                            options:
                                                dropDownEmpresaEmpresasRecordList
                                                    .map((e) => e.socialReason)
                                                    .toList()
                                                    .toList(),
                                            onChanged: (val) => setState(() =>
                                                dropDownEmpresaValue = val),
                                            height: 50,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF212121),
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ei57hzku' /* Seleciona uma Empresa */,
                                            ),
                                            fillColor: Colors.white,
                                            elevation: 2,
                                            borderColor: Color(0xFF757575),
                                            borderWidth: 1,
                                            borderRadius: 5,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            hidesUnderline: true,
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child: TextFormField(
                                        controller: fieldTextVendedorController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'fieldTextVendedorController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'nd6mwr6y' /* Endereço de Cobrança */,
                                          ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'yon8il12' /* Endereço de Cobrança */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'dcpfmblc' /* Tipo de Pedido */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 9),
                                      child: FlutterFlowDropDown(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'c5hlahak' /* Orçamento */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'sbs4v1ky' /* Pedido */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => setState(
                                            () => dropDownPedidoValue = val),
                                        height: 50,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF212121),
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'eki7mggd' /* Tipo de Pedido */,
                                        ),
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Color(0xFF757575),
                                        borderWidth: 1,
                                        borderRadius: 5,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '7gmxaz7x' /* Condiçoes de Pagamento */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child: FlutterFlowDropDown(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '74gepajq' /* À Vista */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'yqgzd9cb' /* 30 / 60 / 90  */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'by270219' /* Cartão de Crédido */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => setState(
                                            () => dropDownPagamentoValue = val),
                                        height: 50,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF212121),
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'e607k3ze' /* Condições de Pagamento */,
                                        ),
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Color(0xFF757575),
                                        borderWidth: 1,
                                        borderRadius: 5,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child: TextFormField(
                                        controller: fieldTextCobrancaController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'fieldTextCobrancaController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '69avcayv' /* Endereço de Cobrança */,
                                          ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'yk2blgrk' /* Endereço de Cobrança */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child: TextFormField(
                                        controller: fieldTextEntregaController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'fieldTextEntregaController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'evdkfaa3' /* Endereço de Entrega */,
                                          ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'afnmhxub' /* Endereço de Entrega */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'za43vcu3' /* Frete */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child: FlutterFlowDropDown(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'prdl7idb' /* Option 1 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => setState(
                                            () => dropDownFreteValue = val),
                                        height: 50,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF212121),
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'aae5qs89' /* Frete */,
                                        ),
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Color(0xFF757575),
                                        borderWidth: 1,
                                        borderRadius: 5,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child: TextFormField(
                                        controller:
                                            fieldTextValorFreteController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'fieldTextValorFreteController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'rbw26xpm' /* Valor do Frete */,
                                          ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'eexfqbkd' /* Valor do Frete */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 18),
                                      child: TextFormField(
                                        controller: obsInternaController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'obsInternaController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'vutc73hp' /* Observações Interna */,
                                          ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'rreeq982' /* Observações Interna */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757575),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        keyboardType: TextInputType.multiline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 9, 9, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      9, 9, 9, 9),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7y47ulfl' /* Inserir Produto */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 18),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Color(0x39000000),
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 4),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(4, 0, 4, 0),
                                                child: TextFormField(
                                                  controller:
                                                      textFieldSearchController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    prefixIcon: Icon(
                                                      Icons.search_sharp,
                                                      color: Color(0xFF57636C),
                                                      size: 16,
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF262D34),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 8, 0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await queryProdutoRecordOnce()
                                                      .then(
                                                        (records) =>
                                                            simpleSearchResults =
                                                                TextSearch(
                                                          records
                                                              .map(
                                                                (record) =>
                                                                    TextSearchItem(
                                                                        record,
                                                                        [
                                                                      record
                                                                          .productName,
                                                                      record
                                                                          .descrition
                                                                    ]),
                                                              )
                                                              .toList(),
                                                        )
                                                                    .search(
                                                                        textFieldSearchController
                                                                            .text)
                                                                    .map((r) =>
                                                                        r.object)
                                                                    .toList(),
                                                      )
                                                      .onError((_, __) =>
                                                          simpleSearchResults =
                                                              [])
                                                      .whenComplete(() =>
                                                          setState(() {}));
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'wpgez4ek' /* Search */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 100,
                                                  height: 40,
                                                  color: Color(0xFF4B39EF),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  elevation: 2,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius: 50,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Builder(
                                    builder: (context) {
                                      final product =
                                          simpleSearchResults?.toList() ?? [];
                                      if (product.isEmpty) {
                                        return ListProductsWidget(
                                          pedidoCollection:
                                              widget.recordPedido.reference,
                                        );
                                      }
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount: product.length,
                                        itemBuilder: (context, productIndex) {
                                          final productItem =
                                              product[productIndex];
                                          return InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType
                                                      .rightToLeft,
                                                  duration: Duration(
                                                      milliseconds: 200),
                                                  reverseDuration: Duration(
                                                      milliseconds: 200),
                                                  child: ProdutosOrderWidget(
                                                    produto: productItem,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 3,
                                                    color: Color(0x411D2429),
                                                    offset: Offset(0, 1),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 8, 8, 8),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 1, 1, 1),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        child: Image.network(
                                                          productItem
                                                              .imgPrincipal,
                                                          width: 70,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 4, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              productItem
                                                                  .productName,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            8,
                                                                            0),
                                                                child:
                                                                    AutoSizeText(
                                                                  productItem
                                                                      .descrition
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                        70,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Icon(
                                                            Icons
                                                                .chevron_right_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 4, 8),
                                                          child: Text(
                                                            formatNumber(
                                                              productItem
                                                                  .salePrice,
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .commaDecimal,
                                                              currency: 'R\$ ',
                                                            ),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textButton,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          StreamBuilder<List<PedidoItemsRecord>>(
                            stream: queryPedidoItemsRecord(
                              queryBuilder: (pedidoItemsRecord) =>
                                  pedidoItemsRecord.where('id_order',
                                      isEqualTo: widget.recordPedido.reference),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitRipple(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<PedidoItemsRecord>
                                  listViewFiltrosPedidoItemsRecordList =
                                  snapshot.data;
                              if (listViewFiltrosPedidoItemsRecordList
                                  .isEmpty) {
                                return ListProductsWidget(
                                  pedidoCollection:
                                      widget.recordPedido.reference,
                                );
                              }
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listViewFiltrosPedidoItemsRecordList.length,
                                itemBuilder: (context, listViewFiltrosIndex) {
                                  final listViewFiltrosPedidoItemsRecord =
                                      listViewFiltrosPedidoItemsRecordList[
                                          listViewFiltrosIndex];
                                  return StreamBuilder<ProdutoRecord>(
                                    stream: ProdutoRecord.getDocument(
                                        listViewFiltrosPedidoItemsRecord
                                            .product),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: SpinKitRipple(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      final menuItemProdutoRecord =
                                          snapshot.data;
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              color: Color(0x411D2429),
                                              offset: Offset(0, 1),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 1, 1),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  child: Image.network(
                                                    menuItemProdutoRecord
                                                        .imgPrincipal,
                                                    width: 70,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 8, 4, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        menuItemProdutoRecord
                                                            .productName,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 8, 0),
                                                          child: AutoSizeText(
                                                            menuItemProdutoRecord
                                                                .descrition
                                                                .maybeHandleOverflow(
                                                              maxChars: 70,
                                                              replacement: '…',
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 4, 0, 0),
                                                    child: Icon(
                                                      Icons
                                                          .chevron_right_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 4, 8),
                                                    child: Text(
                                                      formatNumber(
                                                        listViewFiltrosPedidoItemsRecord
                                                            .valueLiquido,
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .commaDecimal,
                                                        currency: 'R\$ ',
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textButton,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 16, 24, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'jikgsuxk' /* Checkout do Pedido */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF7C8791),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 4, 24, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'wszoemst' /* Valor total de Tabela: */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF7C8791),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              widget.recordPedido.saleProducts,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.commaDecimal,
                                              currency: 'R\$ ',
                                            ),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 4, 24, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'zei09687' /* Frete: */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF7C8791),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              widget.recordPedido.valueDelivery,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.commaDecimal,
                                              currency: 'R\$ ',
                                            ),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 4, 24, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'a9o0jbca' /* Descontos: */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF7C8791),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              widget.recordPedido.discountTotal,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.commaDecimal,
                                              currency: 'R\$ ',
                                            ),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 4, 24, 24),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rwgvj1yg' /* Total do Pedido: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: Color(0xFF7C8791),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 36,
                                              icon: Icon(
                                                Icons.info_outlined,
                                                color: Color(0xFF7C8791),
                                                size: 18,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              widget.recordPedido.saleTotal,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.commaDecimal,
                                              currency: 'R\$ ',
                                            ),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          9, 0, 9, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                              if ((widget.recordPedido
                                                      .typeDcument) ==
                                                  '') {
                                                await widget
                                                    .recordPedido.reference
                                                    .delete();
                                                return;
                                              } else {
                                                return;
                                              }
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'yw298vdq' /* Cancelar */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Color(0xFF303F9F),
                                                width: 2,
                                              ),
                                              borderRadius: 12,
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              final pedidosUpdateData =
                                                  createPedidosRecordData();
                                              await widget
                                                  .recordPedido.reference
                                                  .update(pedidosUpdateData);
                                              setState(() {
                                                obsInternaController?.clear();
                                              });
                                              Navigator.pop(context);
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'or5qp1di' /* Fechar Pedido */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 160,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
