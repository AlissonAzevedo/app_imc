import 'package:flutter/material.dart';
import 'package:app_imc/formulario.dart';


class Result extends StatelessWidget {
  final String imc;
  final String imcMsg;
  const Result({Key? key, required this.imc, required this.imcMsg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora da Saúde'),
          backgroundColor: Colors.green.shade900,
        ),
        body: Center(
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Card(
                  color: Colors.green.shade900,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                    child: Column(
                      children: [
                        Text(
                          imc,
                          style: TextStyle(fontSize: 60, color: Colors.white),
                        ),
                        Text(
                          imcMsg,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset('images/classificacao-imc.png')
              ],
            ),
        )
    );
  }
}
