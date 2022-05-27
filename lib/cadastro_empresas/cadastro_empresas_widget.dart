import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroEmpresasWidget extends StatefulWidget {
  const CadastroEmpresasWidget({
    Key key,
    this.collectionEmpresas,
  }) : super(key: key);

  final EmpresasRecord collectionEmpresas;

  @override
  _CadastroEmpresasWidgetState createState() => _CadastroEmpresasWidgetState();
}

class _CadastroEmpresasWidgetState extends State<CadastroEmpresasWidget> {
  List<String> checkboxGroupValues1;
  TextEditingController inscrEstadualController;
  List<String> checkboxGroupValues2;
  TextEditingController inscrMunicipalController;
  String regimeTributarioValue;
  String naturezaJuridicaValue;
  TextEditingController sinceDateController;
  TextEditingController cdigoerpController;
  TextEditingController cnpjController;
  TextEditingController razaoSocialController;
  TextEditingController fantasiaController;
  String uploadedFileUrl = '';
  TextEditingController ibgeController;
  TextEditingController celularController;
  TextEditingController emailController;
  TextEditingController telefoneController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cdigoerpController = TextEditingController();
    cnpjController =
        TextEditingController(text: widget.collectionEmpresas.cnpj);
    razaoSocialController =
        TextEditingController(text: widget.collectionEmpresas.socialReason);
    fantasiaController =
        TextEditingController(text: widget.collectionEmpresas.fantasyName);
    inscrEstadualController = TextEditingController();
    inscrMunicipalController = TextEditingController();
    sinceDateController = TextEditingController(
        text: dateTimeFormat('M/d h:mm a', getCurrentTimestamp));
    celularController = TextEditingController();
    emailController =
        TextEditingController(text: widget.collectionEmpresas.email);
    telefoneController = TextEditingController();
    ibgeController = TextEditingController(
        text: widget.collectionEmpresas.addressIbge.toString());
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
            if ((widget.collectionEmpresas.cnpj) == '') {
              await widget.collectionEmpresas.reference.delete();
              return;
            } else {
              return;
            }
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '92nkt69f' /* Empresa */,
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.of(context).textButton,
                      labelStyle: FlutterFlowTheme.of(context).bodyText1,
                      indicatorColor:
                          FlutterFlowTheme.of(context).secondaryColor,
                      tabs: [
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'cwotb33s' /* Cadastro */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            '9n6acg9h' /* Fiscal */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'ex9ribey' /* Contato */,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        9, 9, 9, 9),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ld2con2u' /* Dados Cadasrais */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 32,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 18),
                                    child: TextFormField(
                                      controller: cnpjController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'cnpjController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '408lt98g' /* CNPJ */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'mex7z8l5' /* Digite o CNPJ */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                      controller: razaoSocialController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'razaoSocialController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'wctcud5v' /* Razão Social */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'jskf0u29' /* Digite Razão Social  */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                      controller: fantasiaController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'fantasiaController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'cvl3u35w' /* Nome Fantasia */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '4orjv6n5' /* Digite o Nome Fantasia */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                      controller: cdigoerpController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'cdigoerpController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '3is7xvca' /* Código */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '2e2vzmgx' /* Digite o código interno no ERP */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        9, 9, 9, 9),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'y32n2bol' /* Dados Fiscais */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 32,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 18),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: inscrEstadualController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'inscrEstadualController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ojxmtbim' /* Inscrição Estadual */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'jjj8lcv5' /* Digite a Inscrição Estadual */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            if (FFAppState().isentoMuncipal) {
                                              setState(() => FFAppState()
                                                  .isentoMuncipal = false);
                                              return;
                                            } else {
                                              setState(() => FFAppState()
                                                  .isentoMuncipal = true);
                                              return;
                                            }
                                          },
                                          child: Container(
                                            width: 100,
                                            decoration: BoxDecoration(),
                                            child: FlutterFlowCheckboxGroup(
                                              initiallySelected:
                                                  checkboxGroupValues1 != null
                                                      ? checkboxGroupValues1
                                                      : [],
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'o2qg9ddk' /* ISENTO */,
                                                )
                                              ].toList(),
                                              onChanged: (val) => setState(() =>
                                                  checkboxGroupValues1 = val),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              checkColor: Colors.white,
                                              checkboxBorderColor:
                                                  Color(0xFF95A1AC),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 18),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller:
                                                inscrMunicipalController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'inscrMunicipalController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'tshgd77f' /* Inscrição Municipal */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'x152l5y2' /* Digite a Inscrição Estadual */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          decoration: BoxDecoration(),
                                          child: FlutterFlowCheckboxGroup(
                                            initiallySelected:
                                                checkboxGroupValues2 != null
                                                    ? checkboxGroupValues2
                                                    : [],
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8oamjb5u' /* ISENTO */,
                                              )
                                            ].toList(),
                                            onChanged: (val) => setState(() =>
                                                checkboxGroupValues2 = val),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            checkColor: Colors.white,
                                            checkboxBorderColor:
                                                Color(0xFF95A1AC),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 18),
                                    child: FlutterFlowDropDown(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'r249yhq6' /* ISENTO */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ucartunj' /* MEI */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7bqyrecn' /* SIMPLES NACIONAL */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'tgpx1ys2' /* LUCRO PRESUMIDO */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ti7qyjdj' /* LUCRO REAL */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => setState(
                                          () => regimeTributarioValue = val),
                                      width: 180,
                                      height: 50,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'j0ox9p66' /* Selecione o Regime Tributário */,
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
                                    child: FlutterFlowDropDown(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'i3voap0f' /* EMPRESA PÚBLICA */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '15d5gced' /* EMPRESÁRIO */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'sjcqnra1' /* EIRELI NATUREZA SIMPLES */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '109tca1k' /* EIRELI NATUREZA EMPRESARIA */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ik5bnfnu' /* SOCIEDADE SIMPLES LIMITADA */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => setState(
                                          () => naturezaJuridicaValue = val),
                                      width: 180,
                                      height: 50,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '7qjmpcq1' /* Selecione a Natureza Jurídica */,
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
                                  TextFormField(
                                    controller: sinceDateController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'sinceDateController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '5bodvjvx' /* Cliente desde */,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  9, 9, 9, 9),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'f8l12jif' /* Dados de Contato */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 32,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 18),
                                          child: TextFormField(
                                            controller: emailController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'emailController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'np7h8v5r' /* Email */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'cvtpz3zk' /* Digite o Email */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 18),
                                          child: TextFormField(
                                            controller: telefoneController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'telefoneController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'j1r2c9zh' /* Telefone */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'x9tmgpcr' /* Digite o Nº de Telefone */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            keyboardType: TextInputType.phone,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 18),
                                          child: TextFormField(
                                            controller: celularController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'celularController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'vgbgt045' /* Celular */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'aey72e87' /* Digite o Nº Celular */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  9, 9, 9, 9),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '0njrg1gg' /* Endereço */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 32,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 18),
                                          child: TextFormField(
                                            controller: ibgeController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'ibgeController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'y20u7xop' /* IBGE */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                's87dp8fh' /* Digite o IBGE */,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  18, 0, 18, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                allowPhoto: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                showUploadMessage(
                                                  context,
                                                  'Uploading file...',
                                                  showLoading: true,
                                                );
                                                final downloadUrls = (await Future
                                                        .wait(selectedMedia.map(
                                                            (m) async =>
                                                                await uploadData(
                                                                    m.storagePath,
                                                                    m.bytes))))
                                                    .where((u) => u != null)
                                                    .toList();
                                                ScaffoldMessenger.of(context)
                                                    .hideCurrentSnackBar();
                                                if (downloadUrls != null &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() =>
                                                      uploadedFileUrl =
                                                          downloadUrls.first);
                                                  showUploadMessage(
                                                    context,
                                                    'Success!',
                                                  );
                                                } else {
                                                  showUploadMessage(
                                                    context,
                                                    'Failed to upload media',
                                                  );
                                                  return;
                                                }
                                              }
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'hlv012b8' /* Inseir Logo */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 130,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Image.network(
                                  widget.collectionEmpresas.logo,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 25),
              child: Container(
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                        if ((widget.collectionEmpresas.cnpj) == '') {
                          await widget.collectionEmpresas.reference.delete();
                          return;
                        } else {
                          return;
                        }
                      },
                      text: FFLocalizations.of(context).getText(
                        'i7x0oysi' /* Voltar */,
                      ),
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        final empresasUpdateData = createEmpresasRecordData(
                          fantasyName: fantasiaController.text,
                          socialReason: razaoSocialController.text,
                          cnpj: cnpjController.text,
                          email: emailController.text,
                          logo: uploadedFileUrl,
                          addressIbge: int.parse(ibgeController.text),
                          modifieldDate: getCurrentTimestamp,
                          inscricaoMunicipal: inscrMunicipalController.text,
                          inscricaoEstadual: inscrEstadualController.text,
                          naturezaJuridica: naturezaJuridicaValue,
                          regimeTributario: regimeTributarioValue,
                          telefone: int.parse(telefoneController.text),
                          celular: int.parse(celularController.text),
                        );
                        await widget.collectionEmpresas.reference
                            .update(empresasUpdateData);
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Empresa Criada'),
                              content: Text('Empresa Criada com Sucesso.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'qskc7yco' /* Salvar */,
                      ),
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
          ],
        ),
      ),
    );
  }
}
