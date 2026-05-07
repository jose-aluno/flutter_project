import 'package:flutter/material.dart';

class Aula10 extends StatefulWidget {
  const Aula10({super.key});

  @override
  State<Aula10> createState() => _Aula10State();
}

class _Aula10State extends State<Aula10> {
  var _carregando = true;
  void simularCarregamento() async {
    await Future.delayed(Duration(seconds: 10)); //await algum endpoint
    setState(() {
      _carregando = false;
    });
  }

  Future<void> simularFutureBuilder() async {
    await Future.delayed(Duration(seconds: 10));
  }

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
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: simularFutureBuilder(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Houve um erro? ${snapshot.error.toString()}');
              }
              return Text('Bem vindo');
            } else {
              return Column(
                mainAxisAlignment: .center,
                children: [Text('Carregando'), CircularProgressIndicator()],
              );
            }
          },
        ),
      ),
    );
    //simularCarregamento();
    // return Scaffold(
    //   body: Center(
    //     child: _carregando
    //         ? Column(
    //             mainAxisAlignment: .center,
    //             children: [Text('Carregando'), CircularProgressIndicator()],
    //           )
    //         : Text('Bem vindo'),
    //   ),
    // );
  }
}
