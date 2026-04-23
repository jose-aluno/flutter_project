import 'package:flutter/material.dart';
import 'package:flutter_project/aula08/aula08.dart';
import 'package:flutter_project/aula08/classes/login_details.dart';
import 'package:flutter_project/aula08/widgets/login_text_field.dart';
import 'package:flutter_project/aula09/aula09.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/',
      routes: {
        '/': (context) => Aula08(),
        '/aula09': (context) => Aula09()
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
