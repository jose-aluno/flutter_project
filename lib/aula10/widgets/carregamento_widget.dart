import 'package:flutter/material.dart';

class CarregamentoWidget extends StatelessWidget {
  const CarregamentoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Text("Carregando"),
        SizedBox(
          height: 8,
        ),
        CircularProgressIndicator(),
      ],
    );
  }
}
