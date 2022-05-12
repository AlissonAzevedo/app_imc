import 'package:flutter/material.dart';
import 'package:app_imc/formulario.dart';

void main() {
  runApp(const CalculadoraDaSaude());
}

class CalculadoraDaSaude extends StatelessWidget {
  const CalculadoraDaSaude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora da Saude'),
        backgroundColor: Colors.green.shade900,
      ),
      body: Corpo(),
    );
  }
}

class Corpo extends StatefulWidget {
  const Corpo({Key? key}) : super(key: key);

  @override
  State<Corpo> createState() => _CorpoState();
}

class _CorpoState extends State<Corpo> {
  int _idade = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
                text: 'O ',
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  TextSpan(
                    text: 'índice de massa corporal ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '(',
                  ),
                  TextSpan(
                    text: 'IMC',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ')',
                  ),
                  TextSpan(
                      text:
                          ' é uma medida internacional usada para calcular se uma pessoa está no peso ideal.')
                ]),
          ),
        ),
        Formulario()
      ],
    );
  }
}
