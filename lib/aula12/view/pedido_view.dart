import 'package:flutter/material.dart';
import 'package:flutter_project/aula12/model/carrinho_model.dart';
import 'package:provider/provider.dart';

class PedidoView extends StatelessWidget {
  const PedidoView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();

    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: carrinho.numProdutos,
            itemBuilder: (context, index) {
              var produto = carrinho.produtos[index];
              return Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(produto.nome),
                    Text('R\$ ${produto.preco.toStringAsFixed(2)}'),
                  ],
                ),
              );
            },
          ),
          Divider(),
          Container(
            alignment: .bottomEnd,
            padding: EdgeInsets.all(8),
            child: Text(
              'Valor total: R\$${carrinho.valorTotal.toStringAsFixed(2)}',
            ),
          ),
        ],
      ),
    );
  }
}
