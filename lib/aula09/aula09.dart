import 'package:flutter/material.dart';
import 'package:flutter_project/aula09/classes/disciplina.dart';
import 'package:flutter_project/aula09/view/aula09_dashboard.dart';
import 'package:flutter_project/aula09/view/aula09_disciplinas.dart';
import 'package:flutter_project/aula09/widgets/disciplina_card.dart';

class Aula09 extends StatefulWidget {
  const Aula09({super.key});

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  var _itemSelecionado = 0;
  final _telas = [Aula09Dashboard(), Aula09Disciplinas()];

  void _atualizarBottomNav(int idx) {
    setState(() {
      _itemSelecionado = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          debugPrint("eaaaaaaaaaaaaaaaa");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: _telas[_itemSelecionado],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          currentIndex: _itemSelecionado,
          onTap: (idx) {
            if (idx == 2) {
              Navigator.pop(context);
              return;
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
      ),
    );
  }
}
