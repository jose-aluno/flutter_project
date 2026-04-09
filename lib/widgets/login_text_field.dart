import 'package:flutter/material.dart';
import 'package:flutter_project/classes/login_details.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({
    super.key,
    required this.controller,
    required this.tipoLogin,
  });

  final TextEditingController controller;
  final TiposLogin tipoLogin;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  var loginDetails = LoginDetails.loginDetails();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text(loginDetails[widget.tipoLogin]!.label),
        hint: Text(loginDetails[widget.tipoLogin]!.hint),
        prefixIcon: loginDetails[widget.tipoLogin]!.prefixIcon,
      ),
    );
  }
}
