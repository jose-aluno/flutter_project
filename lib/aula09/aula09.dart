import 'package:flutter/material.dart';

class Aula09 extends StatefulWidget {
  const Aula09({super.key, required this.usuario});

  final String usuario;

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Tela Aula 09\nUsuario: ${widget.usuario}"),
      ),
    );
  }
}
