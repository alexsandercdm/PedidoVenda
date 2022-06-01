import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AdicionarPodutosWidget extends StatefulWidget {
  const AdicionarPodutosWidget({
    Key key,
    this.produto,
    this.order,
    this.unity,
  }) : super(key: key);

  final ProdutoRecord produto;
  final PedidosRecord order;
  final DocumentReference unity;

  @override
  _AdicionarPodutosWidgetState createState() => _AdicionarPodutosWidgetState();
}

class _AdicionarPodutosWidgetState extends State<AdicionarPodutosWidget> {
  TextEditingController textController1;
  double valorCalcDesconto1;
  TextEditingController textController2;
  double valorCalcDesconto;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: FFAppState().qtd.toString());
    textController2 = TextEditingController(
        text: FFLocalizations.of(context).getText(
      'rt25vvpx' /* 0 */,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x25090F13),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F4F8),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Text(
                    widget.produto.productName,
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Text(
                    widget.produto.descrition,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Divider(
                  height: 24,
                  thickness: 2,
                  color: Color(0xFFF1F4F8),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: StreamBuilder<UnidadeRecord>(
                        stream: UnidadeRecord.getDocument(widget.produto.unit),
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
                          final containerUnidadeRecord = snapshot.data;
                          return Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFF1F4F8),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '77mxhcz8' /* Unidade */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'th3jsfc8' /* Unidade de venda do item */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    containerUnidadeRecord.descripritionUnity,
                                    textAlign: TextAlign.end,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFF1F4F8),
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'btqpepx9' /* Quantidade */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'r6rblpcs' /* Quantidade de Itens na venda */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                  controller: textController1,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController1',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  onFieldSubmitted: (_) async {
                                    setState(() => FFAppState().qtd =
                                        int.parse(textController1.text));
                                    valorCalcDesconto1 =
                                        await actions.calcDesconto(
                                      double.parse(textController2.text),
                                      functions.calcPrecoLiquido(
                                          widget.produto.salePrice,
                                          FFAppState().qtd),
                                    );
                                    setState(() => FFAppState().desconto =
                                        valorCalcDesconto1);

                                    setState(() {});
                                  },
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFF1F4F8),
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'vlfjmbjq' /* Desconto */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'x26tmth0' /* Desconto Total da Venda % */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 100,
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                  controller: textController2,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController2',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  onFieldSubmitted: (_) async {
                                    valorCalcDesconto =
                                        await actions.calcDesconto(
                                      double.parse(textController2.text),
                                      functions.calcPrecoLiquido(
                                          widget.produto.salePrice,
                                          FFAppState().qtd),
                                    );
                                    setState(() => FFAppState().desconto =
                                        valorCalcDesconto);

                                    setState(() {});
                                  },
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'utiidicw' /* Resumo */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Roboto Mono',
                                      color: Color(0xFF57636C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ma37gdbc' /* Preço de Tabela */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Roboto Mono',
                                      color: Color(0xFF57636C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            functions
                                .maskPrecoLiquido(widget.produto.salePrice),
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto Mono',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'wz2o2w2a' /* Preço Líquido */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Roboto Mono',
                                      color: Color(0xFF57636C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            functions.maskPrecoLiquido(
                                functions.calcPrecoLiquido(
                                    widget.produto.salePrice,
                                    FFAppState().qtd)),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto Mono',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'dbey7pwi' /* Desconto */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Roboto Mono',
                                      color: Color(0xFF57636C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            formatNumber(
                              FFAppState().desconto,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.commaDecimal,
                              currency: 'R\$ ',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto Mono',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '2gwdsfbh' /* Total */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 36,
                                icon: Icon(
                                  Icons.info_outlined,
                                  color: Color(0xFF57636C),
                                  size: 18,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          Text(
                            functions.maskPrecoLiquido(
                                functions.calValorLiquido(
                                    functions.calcPrecoLiquido(
                                        widget.produto.salePrice,
                                        FFAppState().qtd),
                                    FFAppState().desconto)),
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 34,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final pedidoItemsCreateData =
                              createPedidoItemsRecordData(
                            idOrder: widget.order.reference,
                            product: widget.produto.reference,
                            priceTable: widget.produto.salePrice,
                            amount: FFAppState().qtd,
                            discountTotalProduct: functions.descontoLiquido(
                                functions.calcPrecoLiquido(
                                    widget.produto.salePrice, FFAppState().qtd),
                                FFAppState().desconto),
                            discountUnitPorcentagem:
                                double.parse(textController2.text),
                            priceUnitLiquido: widget.produto.salePrice,
                            valueBruto: functions.calcPrecoLiquido(
                                widget.produto.salePrice, FFAppState().qtd),
                            discountTotal: FFAppState().desconto,
                            createdDate: getCurrentTimestamp,
                            modifieldDate: getCurrentTimestamp,
                            valueLiquido: functions.calValorLiquido(
                                functions.calcPrecoLiquido(
                                    widget.produto.salePrice, FFAppState().qtd),
                                FFAppState().desconto),
                          );
                          await PedidoItemsRecord.collection
                              .doc()
                              .set(pedidoItemsCreateData);

                          final pedidosUpdateData = {
                            'sale_total': FieldValue.increment(
                                functions.calValorLiquido(
                                    functions.calcPrecoLiquido(
                                        widget.produto.salePrice,
                                        FFAppState().qtd),
                                    FFAppState().desconto)),
                            'discountTotal':
                                FieldValue.increment(FFAppState().desconto),
                            'sale_products': FieldValue.increment(
                                functions.calcPrecoLiquido(
                                    widget.produto.salePrice,
                                    FFAppState().qtd)),
                            'amount_products':
                                FieldValue.increment(FFAppState().qtd),
                          };
                          await widget.order.reference
                              .update(pedidosUpdateData);
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'q5bu4bld' /* Confirmar Item */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
