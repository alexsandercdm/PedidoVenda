import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../cadastro_empresas/cadastro_empresas_widget.dart';
import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmpresasWidget extends StatefulWidget {
  const EmpresasWidget({Key key}) : super(key: key);

  @override
  _EmpresasWidgetState createState() => _EmpresasWidgetState();
}

class _EmpresasWidgetState extends State<EmpresasWidget> {
  EmpresasRecord empresa;
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
          'Page Title',
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
          final empresasCreateData = createEmpresasRecordData(
            createdDate: getCurrentTimestamp,
          );
          var empresasRecordReference = EmpresasRecord.collection.doc();
          await empresasRecordReference.set(empresasCreateData);
          empresa = EmpresasRecord.getDocumentFromData(
              empresasCreateData, empresasRecordReference);
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              duration: Duration(milliseconds: 100),
              reverseDuration: Duration(milliseconds: 100),
              child: CadastroEmpresasWidget(
                collectionEmpresas: empresa,
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
        child: MenuWidget(),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 100,
                    height: 500,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: StreamBuilder<List<EmpresasRecord>>(
                        stream: queryEmpresasRecord(),
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
                          List<EmpresasRecord> listViewEmpresasRecordList =
                              snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewEmpresasRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewEmpresasRecord =
                                  listViewEmpresasRecordList[listViewIndex];
                              return InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 200),
                                      reverseDuration:
                                          Duration(milliseconds: 200),
                                      child: CadastroEmpresasWidget(
                                        collectionEmpresas:
                                            listViewEmpresasRecord,
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 2, 2, 5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                listViewEmpresasRecord.logo,
                                                width: 80,
                                                height: 80,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Text(
                                                  listViewEmpresasRecord
                                                      .fantasyName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textButton,
                                                      ),
                                                ),
                                                Text(
                                                  listViewEmpresasRecord.email,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textButton,
                                                      ),
                                                ),
                                                Text(
                                                  listViewEmpresasRecord.cnpj,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textButton,
                                                      ),
                                                ),
                                              ],
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
