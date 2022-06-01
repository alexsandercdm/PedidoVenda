import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController;
  TextEditingController senhaController;
  bool senhaVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    senhaController = TextEditingController();
    senhaVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              color: FlutterFlowTheme.of(context).primaryBackground,
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 120),
                child: Container(
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: SvgPicture.network(
                    'https://s3.amazonaws.com/appforest_uf/f1641501640797x506355522528109300/logoipsum-logo-33.svg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 40),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: TextFormField(
                          controller: emailController,
                          onChanged: (_) => EasyDebounce.debounce(
                            'emailController',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'i3yz5f4k' /* Email */,
                            ),
                            hintText: FFLocalizations.of(context).getText(
                              'ajra0he6' /* Digite seu email */,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: TextFormField(
                          controller: senhaController,
                          onChanged: (_) => EasyDebounce.debounce(
                            'senhaController',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofocus: true,
                          obscureText: !senhaVisibility,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              '5jry4k2x' /* Senha */,
                            ),
                            hintText: FFLocalizations.of(context).getText(
                              'zqv9cvjv' /* Digite sua Senha */,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => senhaVisibility = !senhaVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                senhaVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          final user = await signInWithEmail(
                            context,
                            emailController.text,
                            senhaController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'Home'),
                            ),
                            (r) => false,
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'j1xagls6' /* Login */,
                        ),
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
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
          ],
        ),
      ),
    );
  }
}
