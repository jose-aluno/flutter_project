import 'package:flutter/material.dart';
import 'package:flutter_project/aula08/aula08.dart';
import 'package:flutter_project/aula08/classes/login_details.dart';
import 'package:flutter_project/aula08/widgets/login_text_field.dart';
import 'package:flutter_project/aula09/aula09.dart';
import 'package:flutter_project/aula10/aula10.dart';
import 'package:flutter_project/aula12/model/carrinho_model.dart';
import 'package:flutter_project/aula12/view/cardapio_view.dart';
import 'package:flutter_project/aula12/view/pedido_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CarrinhoModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/aula12',
      routes: {
        '/': (context) => Aula08(),
        '/aula09': (context) => Aula09(),
        '/aula10': (context) => Aula10(),
        '/aula12': (context) => CardapioView(),
        '/aula12_pedidoview': (context) => PedidoView()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _loginController;

  @override
  void initState() {
    _loginController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: LoginTextField(
            controller: _loginController,
            tipoLogin: TiposLogin.cpf,
          ),
        ),
      ),
    );
  }
}
