import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/categoria_widget.dart';
import '../components/marca_widget.dart';
import '../components/unidade_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
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

class ProdutosCadastrosWidget extends StatefulWidget {
  const ProdutosCadastrosWidget({
    Key key,
    this.recordProduc,
  }) : super(key: key);

  final ProdutoRecord recordProduc;

  @override
  _ProdutosCadastrosWidgetState createState() =>
      _ProdutosCadastrosWidgetState();
}

class _ProdutosCadastrosWidgetState extends State<ProdutosCadastrosWidget>
    with TickerProviderStateMixin {
  List<String> uploadedFileUrls = [];
  TextEditingController descricaoCompletoController;
  String dropDownCategoriaValue;
  String dropDownUnidadeValue;
  TextEditingController codigoProdutoController;
  TextEditingController produtoNomeController;
  String dropDownMarcaValue;
  String dropDownTipoProdutoValue;
  String dropDownExceIPIValue;
  String dropDownOrigemValue;
  TextEditingController precoCustoController;
  TextEditingController precoVendaController;
  TextEditingController refEANGTINController;
  TextEditingController pesoUnitLiquidoController;
  TextEditingController pesoUnitarioBrutoController;
  TextEditingController ncmController;
  TextEditingController codigoCestController;
  TextEditingController codigoBenefFiscalController;
  TextEditingController unidadeComercialController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'imageOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      initialState: AnimationState(
        offset: Offset(0, 0),
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
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );

    codigoBenefFiscalController = TextEditingController();
    codigoCestController = TextEditingController();
    ncmController = TextEditingController();
    pesoUnitLiquidoController = TextEditingController();
    precoCustoController = TextEditingController();
    precoVendaController = TextEditingController();
    refEANGTINController = TextEditingController();
    pesoUnitarioBrutoController = TextEditingController();
    unidadeComercialController = TextEditingController();
    codigoProdutoController = TextEditingController();
    produtoNomeController = TextEditingController();
    descricaoCompletoController = TextEditingController();
  }

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
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Cadasto de Produtos',
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(9, 9, 9, 18),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 0, 9, 0),
                            child: DefaultTabController(
                              length: 3,
                              initialIndex: 0,
                              child: Column(
                                children: [
                                  TabBar(
                                    labelColor:
                                        FlutterFlowTheme.of(context).textButton,
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    indicatorColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    tabs: [
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'kv4vas3d' /* Dados */,
                                        ),
                                      ),
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'knyrfyzb' /* Financeiro */,
                                        ),
                                      ),
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'zsacxqn4' /* Detalhes */,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(18, 18, 18, 18),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ozrx0p5r' /* Dados do Produto */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      codigoProdutoController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'codigoProdutoController',
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
                                                      'ytl32yfn' /* Id do Produto */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'vfe1e45r' /* Digite ao Código do Produto */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      produtoNomeController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'produtoNomeController',
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
                                                      'athv1m6h' /* Produto */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'atrvzr4m' /* Digite a Descrição do Produto */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xd31m60l' /* Unidade */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child:
                                                                UnidadeWidget(),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'kbro1bg2' /* Criar Nova Unidade + */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: StreamBuilder<
                                                    List<UnidadeRecord>>(
                                                  stream: queryUnidadeRecord(),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UnidadeRecord>
                                                        dropDownUnidadeUnidadeRecordList =
                                                        snapshot.data;
                                                    return FlutterFlowDropDown(
                                                      options:
                                                          dropDownUnidadeUnidadeRecordList
                                                              .map((e) => e
                                                                  .descripritionUnity)
                                                              .toList()
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              dropDownUnidadeValue =
                                                                  val),
                                                      height: 50,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF212121),
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'hfa99iyq' /* Seleciona a Unidade */,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2,
                                                      borderColor:
                                                          Color(0xFF757575),
                                                      borderWidth: 1,
                                                      borderRadius: 0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 4, 12, 4),
                                                      hidesUnderline: true,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8azjih16' /* Categoria */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child:
                                                                CategoriaWidget(),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'd7sg4v2n' /* Criar Nova Categoria + */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: StreamBuilder<
                                                    List<CategoriaRecord>>(
                                                  stream:
                                                      queryCategoriaRecord(),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<CategoriaRecord>
                                                        dropDownCategoriaCategoriaRecordList =
                                                        snapshot.data;
                                                    return FlutterFlowDropDown(
                                                      options:
                                                          dropDownCategoriaCategoriaRecordList
                                                              .map((e) => e
                                                                  .categoryName)
                                                              .toList()
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              dropDownCategoriaValue =
                                                                  val),
                                                      height: 50,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF212121),
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '6pgtklg6' /* Selecione a Categoria */,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2,
                                                      borderColor:
                                                          Color(0xFF757575),
                                                      borderWidth: 1,
                                                      borderRadius: 0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 4, 12, 4),
                                                      hidesUnderline: true,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p2a09twu' /* Marca */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child:
                                                                MarcaWidget(),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '46zoun8p' /* Criar Nova Marca + */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: StreamBuilder<
                                                    List<MarcaRecord>>(
                                                  stream: queryMarcaRecord(),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitRipple(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<MarcaRecord>
                                                        dropDownMarcaMarcaRecordList =
                                                        snapshot.data;
                                                    return FlutterFlowDropDown(
                                                      options:
                                                          dropDownMarcaMarcaRecordList
                                                              .map((e) =>
                                                                  e.brandName)
                                                              .toList()
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              dropDownMarcaValue =
                                                                  val),
                                                      height: 50,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF212121),
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'x0x7moi4' /* Selecione a Marca */,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2,
                                                      borderColor:
                                                          Color(0xFF757575),
                                                      borderWidth: 1,
                                                      borderRadius: 0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 4, 12, 4),
                                                      hidesUnderline: true,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: FlutterFlowDropDown(
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8954ek95' /* Produto Acabado */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ltgrnup4' /* Produto em Processo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ub6hovya' /* Serviços */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '99z6tv74' /* Matéria Prima */,
                                                    )
                                                  ].toList(),
                                                  onChanged: (val) => setState(() =>
                                                      dropDownTipoProdutoValue =
                                                          val),
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF212121),
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'r4hdj607' /* Selectione o Tipo de Produto */,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2,
                                                  borderColor:
                                                      Color(0xFF757575),
                                                  borderWidth: 1,
                                                  borderRadius: 0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 12, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(18, 18, 18, 18),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gan93jqr' /* Valores */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      precoCustoController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'precoCustoController',
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
                                                      'ivkn87ih' /* Preço Custo */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '221aep0c' /* Digite o Preço de Custo */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  keyboardType:
                                                      TextInputType.number,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      precoVendaController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'precoVendaController',
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
                                                      'sz7vpd9i' /* Preço de Venda */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '16y6ixw1' /* Digite o Preço de Venda */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  keyboardType:
                                                      TextInputType.number,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(18, 18, 18, 18),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'brsi28vx' /* Dados Fiscais */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title3,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: FlutterFlowDropDown(
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jy5u2gi3' /* 0 - Nacional, exceto as indica... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pxoiepnp' /* 1 - Estrangeira, importação di... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'auwdv28s' /* 2 - Estrangeira, adquirida no ... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5trox0bp' /* 3 - Nacional, mercadoria ou be... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm8m919zf' /* 4 - Nacional, produção em conf... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0sgy57gm' /* 5 - Nacional, mercadoria ou be... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r8pbrh6m' /* 6 - Estrangeira, importação di... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wtoxau2g' /* 7 - Estrangeira, adquir. merc.... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a7ffj25j' /* 8 - Nacional, mercadoria ou be... */,
                                                    )
                                                  ].toList(),
                                                  onChanged: (val) => setState(
                                                      () =>
                                                          dropDownOrigemValue =
                                                              val),
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF212121),
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'tq79fzt7' /* Seleciona a Origem da Mercador... */,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2,
                                                  borderColor:
                                                      Color(0xFF757575),
                                                  borderWidth: 1,
                                                  borderRadius: 0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 12, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: FlutterFlowDropDown(
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'baw323oz' /* 01 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '18fetv26' /* 02 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7betr5qe' /* 03 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gv0zmuwr' /* 04 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'avs693iw' /* 05 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j47x8t2c' /* 06 */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mzdjc05x' /* 07 */,
                                                    )
                                                  ].toList(),
                                                  onChanged: (val) => setState(
                                                      () =>
                                                          dropDownExceIPIValue =
                                                              val),
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF212121),
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'bt839ynd' /* Selecione Exceção Tabela IPI */,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2,
                                                  borderColor:
                                                      Color(0xFF757575),
                                                  borderWidth: 1,
                                                  borderRadius: 0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 12, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      refEANGTINController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'refEANGTINController',
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
                                                      'vb9ktijo' /* Referência EAN/GTIN */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '1o6umkmg' /* Digite a Referência EAN/GTIN */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      pesoUnitLiquidoController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'pesoUnitLiquidoController',
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
                                                      'e38ae2az' /* Peso Unitário Líquido(kg) */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '5gxdxk3a' /* Digite o Peso Unitário Líquido... */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  keyboardType:
                                                      TextInputType.number,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      pesoUnitarioBrutoController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'pesoUnitarioBrutoController',
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
                                                      '2pep1eft' /* Peso Unitário Bruto(kg) */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '39amhjkt' /* Digite Peso Unitário Bruto(kg) */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  keyboardType:
                                                      TextInputType.number,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller: ncmController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'ncmController',
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
                                                      'b6ltwq8a' /* NCM */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'zphr6fzw' /* Digite o NCM */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      codigoCestController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'codigoCestController',
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
                                                      'hucobh3f' /* Código CEST */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '48pqy83s' /* Digite o Código CEST */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      codigoBenefFiscalController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'codigoBenefFiscalController',
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
                                                      'jlqiibm5' /* Código Benefício Fiscal na UF */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'mfdezcsf' /* Digite o Código Benefício Fisc... */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 18),
                                                child: TextFormField(
                                                  controller:
                                                      unidadeComercialController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'unidadeComercialController',
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
                                                      'ig5lcr5d' /* Unidade Comercial */,
                                                    ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'aoo9ciao' /* Digite a Unidade Comercial */,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF757575),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(18, 18, 18, 18),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'unvrphng' /* Detalhes do Produto */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 18),
                                              child: Container(
                                                height: 140,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                    color: Color(0xFF757575),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  controller:
                                                      descricaoCompletoController,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'descricaoCompletoController',
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
                                                      'v0m1ujju' /* Descrição do Produto */,
                                                    ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    filled: true,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                  maxLines: 100,
                                                  keyboardType:
                                                      TextInputType.multiline,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 18),
                                              child: InkWell(
                                                onTap: () async {
                                                  final selectedMedia =
                                                      await selectMedia(
                                                    mediaSource: MediaSource
                                                        .photoGallery,
                                                    multiImage: true,
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
                                                            .wait(selectedMedia
                                                                .map((m) async =>
                                                                    await uploadData(
                                                                        m.storagePath,
                                                                        m.bytes))))
                                                        .where((u) => u != null)
                                                        .toList();
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .hideCurrentSnackBar();
                                                    if (downloadUrls != null &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      setState(() =>
                                                          uploadedFileUrls =
                                                              downloadUrls);
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
                                                child: Container(
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9),
                                                    border: Border.all(
                                                      color: Color(0xFF757575),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 25,
                                                        borderWidth: 1,
                                                        buttonSize: 50,
                                                        icon: Icon(
                                                          Icons
                                                              .add_box_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 25,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0gwgxgw5' /* Adicionar Imagens */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Builder(
                                                builder: (context) {
                                                  final listImage =
                                                      uploadedFileUrls
                                                              ?.toList() ??
                                                          [];
                                                  return GridView.builder(
                                                    padding: EdgeInsets.zero,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      crossAxisSpacing: 10,
                                                      mainAxisSpacing: 10,
                                                      childAspectRatio: 1,
                                                    ),
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: listImage.length,
                                                    itemBuilder: (context,
                                                        listImageIndex) {
                                                      final listImageItem =
                                                          listImage[
                                                              listImageIndex];
                                                      return InkWell(
                                                        onTap: () async {
                                                          setState(() =>
                                                              FFAppState().img =
                                                                  listImageItem);
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child:
                                                                Image.network(
                                                              listImageItem,
                                                              width: 100,
                                                              height: 100,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ).animated([
                                                            animationsMap[
                                                                'imageOnActionTriggerAnimation']
                                                          ]),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
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
                ),
              ),
              StreamBuilder<List<UnidadeRecord>>(
                stream: queryUnidadeRecord(
                  queryBuilder: (unidadeRecord) => unidadeRecord.where(
                      'descriprition_unity',
                      isEqualTo: dropDownUnidadeValue),
                  singleRecord: true,
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
                  List<UnidadeRecord> cFiltroUnidadeUnidadeRecordList =
                      snapshot.data;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data.isEmpty) {
                    return Container();
                  }
                  final cFiltroUnidadeUnidadeRecord =
                      cFiltroUnidadeUnidadeRecordList.isNotEmpty
                          ? cFiltroUnidadeUnidadeRecordList.first
                          : null;
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: StreamBuilder<List<CategoriaRecord>>(
                      stream: queryCategoriaRecord(
                        queryBuilder: (categoriaRecord) =>
                            categoriaRecord.where('category_name',
                                isEqualTo: dropDownCategoriaValue),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitRipple(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        List<CategoriaRecord>
                            cFiltroCategoriaCategoriaRecordList = snapshot.data;
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data.isEmpty) {
                          return Container();
                        }
                        final cFiltroCategoriaCategoriaRecord =
                            cFiltroCategoriaCategoriaRecordList.isNotEmpty
                                ? cFiltroCategoriaCategoriaRecordList.first
                                : null;
                        return Container(
                          decoration: BoxDecoration(),
                          child: StreamBuilder<List<MarcaRecord>>(
                            stream: queryMarcaRecord(
                              queryBuilder: (marcaRecord) => marcaRecord.where(
                                  'brand_name',
                                  isEqualTo: dropDownMarcaValue),
                              singleRecord: true,
                            ),
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
                              List<MarcaRecord> cFiltroMarcaMarcaRecordList =
                                  snapshot.data;
                              // Return an empty Container when the document does not exist.
                              if (snapshot.data.isEmpty) {
                                return Container();
                              }
                              final cFiltroMarcaMarcaRecord =
                                  cFiltroMarcaMarcaRecordList.isNotEmpty
                                      ? cFiltroMarcaMarcaRecordList.first
                                      : null;
                              return Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      9, 0, 9, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          Navigator.pop(context);
                                          if ((widget
                                                  .recordProduc.productName) ==
                                              '') {
                                            await widget.recordProduc.reference
                                                .delete();
                                            return;
                                          } else {
                                            return;
                                          }
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'tpa7kvus' /* Voltar */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                          borderSide: BorderSide(
                                            color: Color(0xFF303F9F),
                                            width: 2,
                                          ),
                                          borderRadius: 12,
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          final produtoUpdateData = {
                                            ...createProdutoRecordData(
                                              costPrice: double.parse(
                                                  precoCustoController.text),
                                              productCode: int.parse(
                                                  codigoProdutoController.text),
                                              productName:
                                                  produtoNomeController.text,
                                              pesoliquidoUnit: double.parse(
                                                  pesoUnitLiquidoController
                                                      .text),
                                              pesobrutoUnit: double.parse(
                                                  pesoUnitarioBrutoController
                                                      .text),
                                              category:
                                                  cFiltroCategoriaCategoriaRecord
                                                      .reference,
                                              brand: cFiltroMarcaMarcaRecord
                                                  .reference,
                                              unit: cFiltroUnidadeUnidadeRecord
                                                  .reference,
                                              modifieldDate:
                                                  getCurrentTimestamp,
                                              salePrice: double.parse(
                                                  precoVendaController.text),
                                              typeProduct:
                                                  dropDownTipoProdutoValue,
                                              origemMercadoria:
                                                  dropDownOrigemValue,
                                              referenciaEANGTIN: int.parse(
                                                  refEANGTINController.text),
                                              ncm:
                                                  int.parse(ncmController.text),
                                              excecaoIpi: dropDownExceIPIValue,
                                              codigoCest:
                                                  codigoCestController.text,
                                              codBenefFiscalUF:
                                                  codigoBenefFiscalController
                                                      .text,
                                              unidadeComercial:
                                                  unidadeComercialController
                                                      .text,
                                              unidadeTributadaDiferente: false,
                                              descrition:
                                                  descricaoCompletoController
                                                      .text,
                                              imgPrincipal: FFAppState().img,
                                            ),
                                            'images': uploadedFileUrls,
                                          };
                                          await widget.recordProduc.reference
                                              .update(produtoUpdateData);
                                          setState(() {
                                            codigoProdutoController?.clear();
                                            produtoNomeController?.clear();
                                            precoCustoController?.clear();
                                            precoVendaController?.clear();
                                            refEANGTINController?.clear();
                                            pesoUnitLiquidoController?.clear();
                                            pesoUnitarioBrutoController
                                                ?.clear();
                                            ncmController?.clear();
                                            codigoCestController?.clear();
                                            codigoBenefFiscalController
                                                ?.clear();
                                            unidadeComercialController?.clear();
                                            descricaoCompletoController
                                                ?.clear();
                                          });
                                          Navigator.pop(context);
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '6604x1sv' /* Salvar */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
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
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
