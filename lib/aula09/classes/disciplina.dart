// ignore_for_file: public_member_api_docs, sort_constructors_first
class Disciplina {
  late final String codigo;
  late final String nome;
  late final String professor;
  Disciplina({
    required this.codigo,
    required this.nome,
    required this.professor,
  });

  static List<Disciplina> gerarDisciplinas() {
    return [
      Disciplina(codigo: 'ALG', nome: 'Algoritmos', professor: 'Ricardo'),
      Disciplina(codigo: 'WED', nome: 'Des. Web', professor: 'Giorjety'),
      Disciplina(codigo: 'ED1', nome: 'Estrutura I', professor: 'Dourado'),
      Disciplina(codigo: 'WEP', nome: 'Prog. Web', professor: 'Anisio'),
      Disciplina(codigo: 'ED2', nome: 'Estrutura II', professor: 'Dourado'),
      Disciplina(codigo: 'TP2', nome: 'Tec. Prog. II', professor: 'Pazzinato'),
    ];
  }
}
