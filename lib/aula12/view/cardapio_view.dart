import 'package:flutter/material.dart';
import 'package:flutter_project/aula12/model/carrinho_model.dart';
import 'package:provider/provider.dart';

class CardapioView extends StatelessWidget {
  const CardapioView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Badge(
                label: Text('${carrinho.numProdutos}'),
                isLabelVisible: carrinho.numProdutos > 0,
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
