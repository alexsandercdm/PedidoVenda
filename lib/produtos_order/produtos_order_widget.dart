import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdutosOrderWidget extends StatefulWidget {
  const ProdutosOrderWidget({
    Key key,
    this.produto,
  }) : super(key: key);

  final ProdutoRecord produto;

  @override
  _ProdutosOrderWidgetState createState() => _ProdutosOrderWidgetState();
}

class _ProdutosOrderWidgetState extends State<ProdutosOrderWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: FFAppState().qtd.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'qaoxs6u9' /* Adicionar Produto */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 3,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.produto.productName,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              StreamBuilder<UnidadeRecord>(
                stream: UnidadeRecord.getDocument(widget.produto.unit),
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
                  final textUnidadeRecord = snapshot.data;
                  return Text(
                    textUnidadeRecord.descripritionUnity,
                    style: FlutterFlowTheme.of(context).bodyText1,
                  );
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFAppState().qtd.toString(),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.indeterminate_check_box_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () async {
                      setState(() => FFAppState().qtd = FFAppState().qtd + -1);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () async {
                      setState(() => FFAppState().qtd = FFAppState().qtd + 1);
                    },
                  ),
                ],
              ),
              TextFormField(
                controller: textController,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[Some hint text...]',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
