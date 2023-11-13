import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ProdutosDoCarrinho = prefs
              .getStringList('ff_ProdutosDoCarrinho')
              ?.map((x) {
                try {
                  return ProdutosCarrinhoStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ProdutosDoCarrinho;
    });
    _safeInit(() {
      _totalprice = prefs.getDouble('ff_totalprice') ?? _totalprice;
    });
    _safeInit(() {
      _numberCarrinho = prefs.getInt('ff_numberCarrinho') ?? _numberCarrinho;
    });
    _safeInit(() {
      _MenuCondicao = prefs.getString('ff_MenuCondicao') ?? _MenuCondicao;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ProdutosCarrinhoStruct> _ProdutosDoCarrinho = [];
  List<ProdutosCarrinhoStruct> get ProdutosDoCarrinho => _ProdutosDoCarrinho;
  set ProdutosDoCarrinho(List<ProdutosCarrinhoStruct> _value) {
    _ProdutosDoCarrinho = _value;
    prefs.setStringList(
        'ff_ProdutosDoCarrinho', _value.map((x) => x.serialize()).toList());
  }

  void addToProdutosDoCarrinho(ProdutosCarrinhoStruct _value) {
    _ProdutosDoCarrinho.add(_value);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void removeFromProdutosDoCarrinho(ProdutosCarrinhoStruct _value) {
    _ProdutosDoCarrinho.remove(_value);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProdutosDoCarrinho(int _index) {
    _ProdutosDoCarrinho.removeAt(_index);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void updateProdutosDoCarrinhoAtIndex(
    int _index,
    ProdutosCarrinhoStruct Function(ProdutosCarrinhoStruct) updateFn,
  ) {
    _ProdutosDoCarrinho[_index] = updateFn(_ProdutosDoCarrinho[_index]);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProdutosDoCarrinho(
      int _index, ProdutosCarrinhoStruct _value) {
    _ProdutosDoCarrinho.insert(_index, _value);
    prefs.setStringList('ff_ProdutosDoCarrinho',
        _ProdutosDoCarrinho.map((x) => x.serialize()).toList());
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int _value) {
    _contador = _value;
  }

  double _totalprice = 0;
  double get totalprice => _totalprice;
  set totalprice(double _value) {
    _totalprice = _value;
    prefs.setDouble('ff_totalprice', _value);
  }

  int _quantity = 1;
  int get quantity => _quantity;
  set quantity(int _value) {
    _quantity = _value;
  }

  int _condicao = 0;
  int get condicao => _condicao;
  set condicao(int _value) {
    _condicao = _value;
  }

  double _preferec = 0;
  double get preferec => _preferec;
  set preferec(double _value) {
    _preferec = _value;
  }

  PrefenciasAppSStruct _PrefReferencia =
      PrefenciasAppSStruct.fromSerializableMap(
          jsonDecode('{\"nome_massa\":\"Nenhuma\",\"valor_massa\":\"0\"}'));
  PrefenciasAppSStruct get PrefReferencia => _PrefReferencia;
  set PrefReferencia(PrefenciasAppSStruct _value) {
    _PrefReferencia = _value;
  }

  void updatePrefReferenciaStruct(Function(PrefenciasAppSStruct) updateFn) {
    updateFn(_PrefReferencia);
  }

  int _numberCarrinho = 0;
  int get numberCarrinho => _numberCarrinho;
  set numberCarrinho(int _value) {
    _numberCarrinho = _value;
    prefs.setInt('ff_numberCarrinho', _value);
  }

  SaboresStruct _SaboresApp = SaboresStruct.fromSerializableMap(jsonDecode(
      '{\"sabor1\":\"Nenhum\",\"sabor2\":\"Nenhum\",\"preco_sabor1\":\"0\",\"preco_sabor2\":\"0\"}'));
  SaboresStruct get SaboresApp => _SaboresApp;
  set SaboresApp(SaboresStruct _value) {
    _SaboresApp = _value;
  }

  void updateSaboresAppStruct(Function(SaboresStruct) updateFn) {
    updateFn(_SaboresApp);
  }

  double _precoSabor1 = 0;
  double get precoSabor1 => _precoSabor1;
  set precoSabor1(double _value) {
    _precoSabor1 = _value;
  }

  double _precoSabor2 = 0;
  double get precoSabor2 => _precoSabor2;
  set precoSabor2(double _value) {
    _precoSabor2 = _value;
  }

  int _massaCondicao = 0;
  int get massaCondicao => _massaCondicao;
  set massaCondicao(int _value) {
    _massaCondicao = _value;
  }

  String _MenuCondicao = 'Monte Sua Pizza';
  String get MenuCondicao => _MenuCondicao;
  set MenuCondicao(String _value) {
    _MenuCondicao = _value;
    prefs.setString('ff_MenuCondicao', _value);
  }

  double _precoSabor3 = 0;
  double get precoSabor3 => _precoSabor3;
  set precoSabor3(double _value) {
    _precoSabor3 = _value;
  }

  double _precoSabor4 = 0;
  double get precoSabor4 => _precoSabor4;
  set precoSabor4(double _value) {
    _precoSabor4 = _value;
  }

  int _numberPedido = 1;
  int get numberPedido => _numberPedido;
  set numberPedido(int _value) {
    _numberPedido = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
