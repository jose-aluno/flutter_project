import 'package:flutter/material.dart';

class Aula09 extends StatefulWidget {
  const Aula09({super.key});

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  var _itemSelecionado = 0;

  void _atualizarBottomNav(int idx) {
    setState(() {
      _itemSelecionado = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Tela Aula 09"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        currentIndex: _itemSelecionado,
        onTap: (idx) {
          if (idx == 2) {
            Navigator.pop(context);
          }
          _atualizarBottomNav(idx);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Disciplinas',
            icon: Icon(Icons.menu_book),
          ),
          BottomNavigationBarItem(
            label: 'Sair',
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
