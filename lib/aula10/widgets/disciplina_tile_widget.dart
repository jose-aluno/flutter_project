import 'package:flutter/material.dart';
import 'package:flutter_project/aula09/classes/disciplina.dart';

class DisciplinaTileWidget extends StatelessWidget {
  const DisciplinaTileWidget({super.key, required this.disciplina});

  final Disciplina disciplina;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: .center,
        children: [Text(disciplina.codigo)],
      ),
      title: Text(disciplina.nome),
      subtitle: Text(disciplina.professor),
    );
  }
}
