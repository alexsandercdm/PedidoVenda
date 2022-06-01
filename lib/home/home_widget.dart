import '../components/menu_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
            'e1hc3j8k' /* Página Inicial */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).textButton,
                fontSize: 22,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 0),
            child: InkWell(
              onTap: () async {
                if (Theme.of(context).brightness == Brightness.dark) {
                  setDarkModeSetting(context, ThemeMode.light);
                  return;
                } else {
                  setDarkModeSetting(context, ThemeMode.dark);
                  return;
                }
              },
              child: Container(
                width: 50,
                height: 50,
                child: custom_widgets.SwitchMinimal(
                  width: 50,
                  height: 50,
                  size: 50.0,
                  onColor: FlutterFlowTheme.of(context).secondaryText,
                  offColor: Color(0xFF3F51B5),
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 3,
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '2zub5iuf' /* Seja Bem-Vindo! */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
