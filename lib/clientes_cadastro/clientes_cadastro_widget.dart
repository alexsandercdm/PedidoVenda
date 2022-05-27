import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientesCadastroWidget extends StatefulWidget {
  const ClientesCadastroWidget({
    Key key,
    this.collectionCadastro,
  }) : super(key: key);

  final ClientesRecord collectionCadastro;

  @override
  _ClientesCadastroWidgetState createState() => _ClientesCadastroWidgetState();
}

class _ClientesCadastroWidgetState extends State<ClientesCadastroWidget> {
  List<String> checkboxGroupValues1;
  TextEditingController inscrEstadualController;
  List<String> checkboxGroupValues2;
  TextEditingController inscrMunicipalController;
  String regimeTributarioValue;
  String naturezaJuridicaValue;
  TextEditingController sinceDateController;
  TextEditingController rgController;
  TextEditingController sinceDateCNPJController;
  String typePersonValue;
  TextEditingController cdigoerpController;
  TextEditingController cnpjCpfController;
  TextEditingController razaoSocialController;
  TextEditingController fantasiaController;
  TextEditingController celularController;
  TextEditingController emailController;
  TextEditingController telefoneController;
  TextEditingController ibgeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cdigoerpController = TextEditingController();
    cnpjCpfController =
        TextEditingController(text: widget.collectionCadastro.cnpjCpf);
    razaoSocialController =
        TextEditingController(text: widget.collectionCadastro.fullName);
    fantasiaController =
        TextEditingController(text: widget.collectionCadastro.fantasyName);
    inscrEstadualController = TextEditingController();
    inscrMunicipalController = TextEditingController();
    sinceDateController = TextEditingController(
        text: dateTimeFormat('M/d h:mm a', getCurrentTimestamp));
    rgController = TextEditingController(
        text: widget.collectionCadastro.stateRegistration);
    sinceDateCNPJController = TextEditingController(
        text: dateTimeFormat('M/d h:mm a', getCurrentTimestamp));
    celularController = TextEditingController(
        text: widget.collectionCadastro.celular.toString());
    emailController =
        TextEditingController(text: widget.collectionCadastro.email);
    telefoneController = TextEditingController(
        text: widget.collectionCadastro.telefone.toString());
    ibgeController = TextEditingController(
        text: widget.collectionCadastro.addressIbge.toString());
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
            'ubgl9mah' /* Cadastro de Clientes */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
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
                            '3tzf6byj' /* Cadastro */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'd0os8sbl' /* Fiscal */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'oesdhse3' /* Contato */,
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
                                        '0iwsaj75' /* Dados Cadasrais */,
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
                                      controller: cnpjCpfController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'cnpjCpfController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'zkb5w9w5' /* CNPJ_CPF */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'm8arotl0' /* Digite o CNPJ/CPF */,
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
                                          '27hs18r6' /* Nome Completo */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          're2wcw6h' /* Digite o Nome Completo ou Razã... */,
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
                                          'e7h16n79' /* Nome Fantasia */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '2op1vuyn' /* Digite o Nome Fantasia */,
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
                                          'bpizybhn' /* Código */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'ydyiat16' /* Digite o código interno no ERP */,
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
                                    child: FlutterFlowDropDown(
                                      initialOption: typePersonValue ??=
                                          widget.collectionCadastro.typePerson,
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'qb8n8iez' /* PESSOA FÍSICA */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uwumpalp' /* PESSOA JURÍDICA */,
                                        )
                                      ].toList(),
                                      onChanged: (val) =>
                                          setState(() => typePersonValue = val),
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
                                        '4jf4qpsn' /* Selecione o tipo de Cliente */,
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
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if ((typePersonValue) == 'PESSOA JURÍDICA')
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8xgwaa28' /* Dados Fiscais */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: TextFormField(
                                                    controller:
                                                        inscrEstadualController,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      'inscrEstadualController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () => setState(() {}),
                                                    ),
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '8602l6um' /* Inscrição Estadual */,
                                                      ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'we2b2ran' /* Digite a Inscrição Estadual */,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    if (FFAppState()
                                                        .isentoMuncipal) {
                                                      setState(() => FFAppState()
                                                              .isentoMuncipal =
                                                          false);
                                                      return;
                                                    } else {
                                                      setState(() => FFAppState()
                                                              .isentoMuncipal =
                                                          true);
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    width: 100,
                                                    decoration: BoxDecoration(),
                                                    child:
                                                        FlutterFlowCheckboxGroup(
                                                      initiallySelected:
                                                          checkboxGroupValues1 !=
                                                                  null
                                                              ? checkboxGroupValues1
                                                              : [],
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5e1ajl0h' /* ISENTO */,
                                                        )
                                                      ].toList(),
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              checkboxGroupValues1 =
                                                                  val),
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      checkColor: Colors.white,
                                                      checkboxBorderColor:
                                                          Color(0xFF95A1AC),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 18),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: TextFormField(
                                                    controller:
                                                        inscrMunicipalController,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      'inscrMunicipalController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () => setState(() {}),
                                                    ),
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'cz4ls7df' /* Inscrição Municipal */,
                                                      ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'd286jbav' /* Digite a Inscrição Estadual */,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  decoration: BoxDecoration(),
                                                  child:
                                                      FlutterFlowCheckboxGroup(
                                                    initiallySelected:
                                                        checkboxGroupValues2 !=
                                                                null
                                                            ? checkboxGroupValues2
                                                            : [],
                                                    options: [
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'tud5rmsv' /* ISENTO */,
                                                      )
                                                    ].toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            checkboxGroupValues2 =
                                                                val),
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryColor,
                                                    checkColor: Colors.white,
                                                    checkboxBorderColor:
                                                        Color(0xFF95A1AC),
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 18),
                                            child: FlutterFlowDropDown(
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'eoie9dcr' /* ISENTO */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'zuea8kjq' /* MEI */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'c1x8940q' /* SIMPLES NACIONAL */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'sar5pm2a' /* LUCRO PRESUMIDO */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'r6zyhhj9' /* LUCRO REAL */,
                                                )
                                              ].toList(),
                                              onChanged: (val) => setState(() =>
                                                  regimeTributarioValue = val),
                                              width: 180,
                                              height: 50,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '6winwug3' /* Selecione o Regime Tributário */,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2,
                                              borderColor: Color(0xFF757575),
                                              borderWidth: 1,
                                              borderRadius: 5,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              hidesUnderline: true,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 18),
                                            child: FlutterFlowDropDown(
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '1z79krgw' /* EMPRESA PÚBLICA */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '90r257by' /* EMPRESÁRIO */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'a2ovxmfi' /* EIRELI NATUREZA SIMPLES */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'w7iog54e' /* EIRELI NATUREZA EMPRESARIA */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'd6yhm4ee' /* SOCIEDADE SIMPLES LIMITADA */,
                                                )
                                              ].toList(),
                                              onChanged: (val) => setState(() =>
                                                  naturezaJuridicaValue = val),
                                              width: 180,
                                              height: 50,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '9am3znj6' /* Selecione a Natureza Jurídica */,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2,
                                              borderColor: Color(0xFF757575),
                                              borderWidth: 1,
                                              borderRadius: 5,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              hidesUnderline: true,
                                            ),
                                          ),
                                          TextFormField(
                                            controller: sinceDateController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'sinceDateController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '6tjazrwb' /* Cliente desde */,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                if ((typePersonValue) == 'PESSOA FÍSICA')
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tmsa52jk' /* Dados Fiscais */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                              controller: rgController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                'rgController',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '9qop1adz' /* RG */,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                          TextFormField(
                                            controller: sinceDateCNPJController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'sinceDateCNPJController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'gmtdh8ox' /* Cliente desde */,
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
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
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
                                              'pjxyhs7z' /* Dados de Contato */,
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
                                                'gny79ncs' /* Email */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'xppb4wc4' /* Digite o Email */,
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
                                                'akv624mc' /* Telefone */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '47gesny8' /* Digite o Nº de Telefone */,
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
                                                '09b4b26v' /* Celular */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '2phzv8gp' /* Digite o Nº Celular */,
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
                                              '7dm6nvto' /* Endereço */,
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
                                                '78klpeh1' /* IBGE */,
                                              ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '7nfqerfn' /* Digite o IBGE */,
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
                                      ],
                                    ),
                                  ),
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
                        if ((widget.collectionCadastro.cnpjCpf) == '') {
                          await widget.collectionCadastro.reference.delete();
                          return;
                        } else {
                          return;
                        }
                      },
                      text: FFLocalizations.of(context).getText(
                        'ntzky7zy' /* Voltar */,
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
                        final clientesUpdateData = createClientesRecordData(
                          email: emailController.text,
                          fantasyName: fantasiaController.text,
                          fullName: razaoSocialController.text,
                          typePerson: typePersonValue,
                          cnpjCpf: cnpjCpfController.text,
                          municipalRegistration: inscrMunicipalController.text,
                          stateRegistration: inscrEstadualController.text,
                          idCustomer: int.parse(cdigoerpController.text),
                          modifieldDate: getCurrentTimestamp,
                          telefone: int.parse(telefoneController.text),
                          celular: int.parse(celularController.text),
                          addressIbge: int.parse(ibgeController.text),
                          rg: int.parse(rgController.text),
                        );
                        await widget.collectionCadastro.reference
                            .update(clientesUpdateData);
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
                        Navigator.pop(context);
                      },
                      text: FFLocalizations.of(context).getText(
                        '5vaz5hw9' /* Salvar */,
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
