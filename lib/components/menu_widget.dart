import '../clientes/clientes_widget.dart';
import '../clientes_cadastro/clientes_cadastro_widget.dart';
import '../empresas/empresas_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home/home_widget.dart';
import '../pedidos/pedidos_widget.dart';
import '../produtos/produtos_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'listViewOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 300,
      delay: 100,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'listViewOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 300,
      delay: 100,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 50),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
          child: SvgPicture.asset(
            'assets/images/logoipsum-logo-33.svg',
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
          child: Text(
            FFLocalizations.of(context).getText(
              'kl0lzkbz' /* Menu */,
            ),
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ),
        Divider(
          color: FlutterFlowTheme.of(context).textButton,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 100),
                      reverseDuration: Duration(milliseconds: 100),
                      child: HomeWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.home_outlined,
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '7wpkscbl' /* Página Inicial */,
                    ),
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 100),
                      reverseDuration: Duration(milliseconds: 100),
                      child: EmpresasWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.business_rounded,
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'ahg4sggp' /* Empresas */,
                    ),
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              InkWell(
                onTap: () async {
                  if ((FFAppState().menu) != 'Clientes') {
                    setState(() => FFAppState().menu = 'Clientes');
                    return;
                  } else {
                    setState(() => FFAppState().menu = 'Nenhum');
                    return;
                  }
                },
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '4xi3xise' /* Clientes */,
                    ),
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: FlutterFlowTheme.of(context).textButton,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              if ((FFAppState().menu) == 'Clientes')
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: ClientesWidget(),
                          ),
                        );
                      },
                      child: ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'zrfvi4r4' /* Carteira */,
                          ),
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(78, 0, 32, 0),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: ClientesCadastroWidget(),
                          ),
                        );
                      },
                      child: ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '3cvkbz19' /* Cadastro de Clientes */,
                          ),
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(78, 0, 32, 0),
                      ),
                    ),
                  ],
                ).animated([animationsMap['listViewOnPageLoadAnimation1']]),
              InkWell(
                onTap: () async {
                  if ((FFAppState().menu) != 'Produtos') {
                    setState(() => FFAppState().menu = 'Produtos');
                    return;
                  } else {
                    setState(() => FFAppState().menu = 'Nenhum');
                    return;
                  }
                },
                child: ListTile(
                  leading: Icon(
                    Icons.local_offer_outlined,
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'yvthh10v' /* Produtos */,
                    ),
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: FlutterFlowTheme.of(context).textButton,
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              if ((FFAppState().menu) == 'Produtos')
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: ProdutosWidget(),
                          ),
                        );
                      },
                      child: ListTile(
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '7ahooc7h' /* Produtos */,
                          ),
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(78, 0, 32, 0),
                      ),
                    ),
                  ],
                ).animated([animationsMap['listViewOnPageLoadAnimation2']]),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 100),
                      reverseDuration: Duration(milliseconds: 100),
                      child: PedidosWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '7vrehl28' /* Pedidos */,
                    ),
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
