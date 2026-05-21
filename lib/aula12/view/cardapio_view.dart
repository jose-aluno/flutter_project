import 'package:flutter/material.dart';
import 'package:flutter_project/aula12/model/carrinho_model.dart';
import 'package:flutter_project/aula12/model/produto.dart';
import 'package:provider/provider.dart';

class CardapioView extends StatelessWidget {
  const CardapioView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Produto> listaProduto = Produto.gerarLista();
    var carrinho = context.watch<CarrinhoModel>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: InkWell(
              onTap: () {
                if (carrinho.numProdutos > 0) {
                  Navigator.pushNamed(context, '/aula12_pedidoview');
                }
              },
              child: Badge(
                label: Text('${carrinho.numProdutos}'),
                isLabelVisible: carrinho.numProdutos > 0,
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listaProduto.length,
        itemBuilder: (context, index) {
          var produto = listaProduto[index];
          return ListTile(
            title: Text(produto.nome),
            subtitle: Text('R\$ ${produto.preco.toStringAsFixed(2)}'),
            trailing: Padding(
              padding: EdgeInsetsGeometry.all(8.0),
              child: carrinho.adicionado(produto)
                  ? IconButton(
                      onPressed: () {
                        carrinho.remover(produto);
                      },
                      icon: Icon(Icons.check),
                    )
                  : IconButton(
                      onPressed: () {
                        carrinho.adicionar(produto);
                      },
                      icon: Icon(Icons.add),
                    ),
            ),
          );
        },
      ),
    );
  }
}
