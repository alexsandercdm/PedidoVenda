import '../backend/backend.dart';
import '../components/adicionar_podutos_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ListProductsWidget extends StatefulWidget {
  const ListProductsWidget({
    Key key,
    this.pedidoCollection,
    this.order,
  }) : super(key: key);

  final DocumentReference pedidoCollection;
  final PedidosRecord order;

  @override
  _ListProductsWidgetState createState() => _ListProductsWidgetState();
}

class _ListProductsWidgetState extends State<ListProductsWidget> {
  PagingController<DocumentSnapshot, ProdutoRecord> _pagingController;
  Query _pagingQuery;
  List<StreamSubscription> _streamSubscriptions = [];

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<DocumentSnapshot<Object>, ProdutoRecord>(
      pagingController: () {
        final Query<Object> Function(Query<Object>) queryBuilder =
            (produtoRecord) => produtoRecord;
        if (_pagingController != null) {
          final query = queryBuilder(ProdutoRecord.collection);
          if (query != _pagingQuery) {
            // The query has changed
            _pagingQuery = query;
            _streamSubscriptions.forEach((s) => s?.cancel());
            _streamSubscriptions.clear();
            _pagingController.refresh();
          }
          return _pagingController;
        }

        _pagingController = PagingController(firstPageKey: null);
        _pagingQuery = queryBuilder(ProdutoRecord.collection);
        _pagingController.addPageRequestListener((nextPageMarker) {
          queryProdutoRecordPage(
            queryBuilder: (produtoRecord) => produtoRecord,
            nextPageMarker: nextPageMarker,
            pageSize: 25,
            isStream: true,
          ).then((page) {
            _pagingController.appendPage(
              page.data,
              page.nextPageMarker,
            );
            final streamSubscription = page.dataStream?.listen((data) {
              final itemIndexes = _pagingController.itemList
                  .asMap()
                  .map((k, v) => MapEntry(v.reference.id, k));
              data.forEach((item) {
                final index = itemIndexes[item.reference.id];
                if (index != null) {
                  _pagingController.itemList
                      .replaceRange(index, index + 1, [item]);
                }
              });
              setState(() {});
            });
            _streamSubscriptions.add(streamSubscription);
          });
        });
        return _pagingController;
      }(),
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      builderDelegate: PagedChildBuilderDelegate<ProdutoRecord>(
        // Customize what your widget looks like when it's loading the first page.
        firstPageProgressIndicatorBuilder: (_) => Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: SpinKitRipple(
              color: FlutterFlowTheme.of(context).secondaryColor,
              size: 50,
            ),
          ),
        ),

        itemBuilder: (context, _, listViewFullIndex) {
          final listViewFullProdutoRecord =
              _pagingController.itemList[listViewFullIndex];
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: InkWell(
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: AdicionarPodutosWidget(
                        produto: listViewFullProdutoRecord,
                        unity: listViewFullProdutoRecord.unit,
                        order: widget.order,
                      ),
                    );
                  },
                );
                setState(() => FFAppState().qtd = 1);
                setState(() => FFAppState().desconto = 0.0);
                await actions.calcDesconto(
                  FFAppState().desconto,
                  listViewFullProdutoRecord.salePrice,
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x411D2429),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            listViewFullProdutoRecord.imgPrincipal,
                            width: 70,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listViewFullProdutoRecord.productName,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 8, 0),
                                  child: AutoSizeText(
                                    listViewFullProdutoRecord.descrition
                                        .maybeHandleOverflow(
                                      maxChars: 70,
                                      replacement: '…',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Icon(
                              Icons.chevron_right_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 8),
                            child: Text(
                              formatNumber(
                                listViewFullProdutoRecord.salePrice,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.commaDecimal,
                                currency: 'R\$ ',
                              ),
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color:
                                        FlutterFlowTheme.of(context).textButton,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
        },
      ),
    );
  }
}
