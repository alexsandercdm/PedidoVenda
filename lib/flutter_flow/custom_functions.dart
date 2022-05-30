import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double calcPrecoLiquido(
  double precoTabela,
  int qtd,
) {
  double calc = precoTabela * qtd;
  return calc;
}

double calValorLiquido(
  double precoLiquido,
  double desconto,
) {
  var vLiquido = precoLiquido - desconto;

  return vLiquido;
}

double descontoLiquido(
  double precoTabela,
  double descontoAplicado,
) {
  double porcentagem;
  double calcDesconto;

  if (descontoAplicado <= 100) {
    porcentagem = descontoAplicado / 100;
    calcDesconto = precoTabela * porcentagem;
  } else {
    calcDesconto = 0;
  }
  return calcDesconto;
}

String maskPrecoLiquido(double precoLiquido) {
  NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
  return formatter.format(precoLiquido);
}
