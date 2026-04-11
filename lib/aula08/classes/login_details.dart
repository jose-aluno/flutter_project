// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum TiposLoginEnhanced {
  email(
    hint: 'usuario@email.com',
    label: 'E-mail',
    prefixIcon: Icon(Icons.mail),
  ),
  cpf(hint: 'usuario@email.com', label: 'E-mail', prefixIcon: Icon(Icons.mail)),
  telefone(
    hint: '(11) 11111-1111',
    label: 'Telefone',
    prefixIcon: Icon(Icons.phone),
  );

  final String hint;
  final String label;
  final Icon prefixIcon;

  const TiposLoginEnhanced({
    required this.hint,
    required this.label,
    required this.prefixIcon,
  });
}

enum TiposLogin { email, cpf, telefone }

class LoginDetails {
  late final String hint;
  late final String label;
  late final Icon prefixIcon;

  LoginDetails({
    required this.hint,
    required this.label,
    required this.prefixIcon,
  });

  static Map<TiposLogin, LoginDetails> loginDetails() {
    return {
      TiposLogin.email: LoginDetails(
        hint: 'usuario@email.com',
        label: 'E-mail',
        prefixIcon: Icon(Icons.mail),
      ),
      TiposLogin.cpf: LoginDetails(
        hint: '111.111.111-11',
        label: 'CPF',
        prefixIcon: Icon(Icons.person),
      ),
      TiposLogin.telefone: LoginDetails(
        hint: '(11) 11111-1111',
        label: 'Telefone',
        prefixIcon: Icon(Icons.phone),
      ),
    };
  }
}
