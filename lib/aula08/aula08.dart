import 'package:flutter/material.dart';
import 'package:flutter_project/aula08/classes/login_details.dart';
import 'package:flutter_project/aula08/widgets/login_text_field.dart';
import 'package:flutter_project/aula09/aula09.dart';

class Aula08 extends StatefulWidget {
  const Aula08({super.key});

  @override
  State<Aula08> createState() => _Aula08State();
}

class _Aula08State extends State<Aula08> {
  late TextEditingController _loginController;
  late TextEditingController _senhaController;
  var _senhaEscondida = true;
  var _tipoLogin = TiposLogin.email;

  var _tipoLoginSelecionado = [true, false, false];

  @override
  void initState() {
    _loginController = TextEditingController();
    _senhaController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _loginController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _visibilidadeSenha() {
    setState(() {
      _senhaEscondida = !_senhaEscondida;
    });
  }

  void _alterarTipoLogin(int idx) {
    setState(() {
      for (var i = 0; i < 3; i++) {
        _tipoLoginSelecionado[i] = i == idx;
      }
      _tipoLogin = TiposLogin.values[idx];
    });
  }

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: larguraTela * 0.75,
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Image(image: AssetImage('assets/logoIfsp.png')),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text("Logar com:"),
                  SizedBox(width: 8),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(10),
                    onPressed: _alterarTipoLogin,
                    isSelected: _tipoLoginSelecionado,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("E-mail"),
                      ),
                      Padding(padding: EdgeInsets.all(8.0), child: Text("CPF")),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Telefone"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              LoginTextField(
                controller: _loginController,
                tipoLogin: _tipoLogin,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _senhaController,
                obscureText: _senhaEscondida,
                decoration: InputDecoration(
                  label: Text("Senha"),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: _visibilidadeSenha,
                    icon: Icon(
                      _senhaEscondida ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: .end,
                children: [
                  Text("Memorizar Dados"),
                  SizedBox(width: 8),
                  Switch(value: false, onChanged: null),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(larguraTela * 0.75, 45),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Aula09()),
                  );
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
