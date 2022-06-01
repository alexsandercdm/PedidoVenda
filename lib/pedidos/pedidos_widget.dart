import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../order_item/order_item_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PedidosWidget extends StatefulWidget {
  const PedidosWidget({Key key}) : super(key: key);

  @override
  _PedidosWidgetState createState() => _PedidosWidgetState();
}

class _PedidosWidgetState extends State<PedidosWidget> {
  PedidosRecord recordPedido;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu_rounded,
            color: FlutterFlowTheme.of(context).textButton,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'qlkywdta' /* Pedidos */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).textButton,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 3,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final pedidosCreateData = createPedidosRecordData(
            createdDate: getCurrentTimestamp,
          );
          var pedidosRecordReference = PedidosRecord.collection.doc();
          await pedidosRecordReference.set(pedidosCreateData);
          recordPedido = PedidosRecord.getDocumentFromData(
              pedidosCreateData, pedidosRecordReference);

          final pedidosUpdateData = createPedidosRecordData(
            orderReferente: recordPedido.reference,
          );
          await recordPedido.reference.update(pedidosUpdateData);
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 200),
              reverseDuration: Duration(milliseconds: 200),
              child: OrderItemWidget(
                recordPedido: recordPedido,
              ),
            ),
          );

          setState(() {});
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      ),
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: MenuWidget(),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                child: StreamBuilder<List<PedidosRecord>>(
                  stream: queryPedidosRecord(
                    queryBuilder: (pedidosRecord) =>
                        pedidosRecord.where('sale_total', isGreaterThan: 0.0),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SpinKitRipple(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            size: 50,
                          ),
                        ),
                      );
                    }
                    List<PedidosRecord> listViewPedidosRecordList =
                        snapshot.data;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewPedidosRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewPedidosRecord =
                            listViewPedidosRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        listViewPedidosRecord.typeDcument,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                      Text(
                                        formatNumber(
                                          listViewPedidosRecord.saleTotal,
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.commaDecimal,
                                          currency: 'R\$ ',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      StreamBuilder<EmpresasRecord>(
                                        stream: EmpresasRecord.getDocument(
                                            listViewPedidosRecord.company),
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
                                          final textEmpresasRecord =
                                              snapshot.data;
                                          return Text(
                                            textEmpresasRecord.socialReason,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          );
                                        },
                                      ),
                                      Text(
                                        dateTimeFormat('d/M H:mm',
                                            listViewPedidosRecord.dateMovement),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      StreamBuilder<ClientesRecord>(
                                        stream: ClientesRecord.getDocument(
                                            listViewPedidosRecord.customer),
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
                                          final textClientesRecord =
                                              snapshot.data;
                                          return Text(
                                            textClientesRecord.fullName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          );
                                        },
                                      ),
                                      StreamBuilder<List<PedidoItemsRecord>>(
                                        stream: queryPedidoItemsRecord(
                                          queryBuilder: (pedidoItemsRecord) =>
                                              pedidoItemsRecord.where(
                                                  'id_order',
                                                  isEqualTo:
                                                      listViewPedidosRecord
                                                          .reference),
                                        ),
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
                                          List<PedidoItemsRecord>
                                              textPedidoItemsRecordList =
                                              snapshot.data;
                                          return Text(
                                            textPedidoItemsRecordList.length
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          );
                                        },
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
            ),
          ],
        ),
      ),
    );
  }
}
