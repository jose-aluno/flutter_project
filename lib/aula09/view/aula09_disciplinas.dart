import 'package:flutter/material.dart';
import 'package:flutter_project/aula09/classes/disciplina.dart';
import 'package:flutter_project/aula09/widgets/disciplina_card.dart';

class Aula09Disciplinas extends StatelessWidget {
  Aula09Disciplinas({super.key});

  final List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: disciplinas.length,
      itemBuilder: (context, index) =>
          DisciplinaCard(disciplina: disciplinas[index]),
    );
  }
}
