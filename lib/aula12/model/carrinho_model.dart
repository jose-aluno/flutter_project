import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_project/aula12/model/produto.dart';

class CarrinhoModel extends ChangeNotifier {
  final List<Produto> _lista = [];

  UnmodifiableListView<Produto> get produtos => UnmodifiableListView(_lista);

  double get valorTotal {
    double vltotal = 0;
    for (Produto p in _lista) {
      vltotal += p.preco;
    }
    return vltotal;
  }

  int get numProdutos => _lista.length;

  void adicionar(Produto p) {
    _lista.add(p);
    notifyListeners();
  }

  void remover(Produto p) {
    _lista.remove(p);
    notifyListeners();
  }

  bool adicionado(Produto p) {
    return _lista.any((prod) => prod.id == p.id);
  }
}
