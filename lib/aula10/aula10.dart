import 'package:flutter/material.dart';

class Aula10 extends StatefulWidget {
  const Aula10({super.key});

  @override
  State<Aula10> createState() => _Aula10State();
}

class _Aula10State extends State<Aula10> {
  void fireAndForget() async {
    await Future.delayed(Duration(seconds: 10));
    debugPrint('Print executado depois de 10 segundos');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    fireAndForget();
    return const Placeholder();
  }
}
