import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  bool isentoMuncipal = false;

  bool isentoEstadual = false;

  String img;

  int qtd = 1;

  double desconto = 0;
  double descontoField = 0;

  List<int> charts = [0, 1, 2, 4, 3, 6, 3, 8, 9, 5];

  String menu = 'Nenhum';
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
