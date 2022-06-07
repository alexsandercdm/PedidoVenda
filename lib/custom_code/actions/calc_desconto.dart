// Automatic FlutterFlow imports
// import '../../backend/backend.dart';
// import '../../flutter_flow/flutter_flow_theme.dart';
// import '../../flutter_flow/flutter_flow_util.dart';
// import 'index.dart'; // Imports other custom actions
// import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
// import 'package:flutter/material.dart';

// Begin custom action code
Future<double> calcDesconto(
  double descontoPorcentagem,
  double resultPrecoLiquido,
) async {
  double porcentagem;
  double calcDesconto;

  if (descontoPorcentagem <= 100) {
    porcentagem = descontoPorcentagem / 100;
    calcDesconto = resultPrecoLiquido * porcentagem;
  } else {
    calcDesconto = 0;
  }

  return calcDesconto;
}
