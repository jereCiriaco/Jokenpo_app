import 'dart:math';
import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases Aleatórias"),
        backgroundColor: Colors.green,
      ),
      body: MeioStateful(),
    );
  }
}

class MeioStateful extends StatefulWidget {
  const MeioStateful({super.key});

  @override
  State<MeioStateful> createState() => _MeioStatefulState();
}

class _MeioStatefulState extends State<MeioStateful> {
  String frase = "Clique abaixo para gerar uma frase";
  List<String> frases = [
    "Vai dar certo",
    "Scooby-DOOO",
    "Hoje vai ter festina",
    "Toddy é melhor que nescau",
  ];

  void geradorFrase() {
    int i = Random().nextInt(frases.length);
    setState(() {
      setState(() {
        this.frase = frases[i];
      });
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 40),
            Image.asset(
              "images/title.png",
              height: 300,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 80),
            Text(frase,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                )),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                onPressed: () => geradorFrase(),
                child: Text("Nova Frase", style: TextStyle(fontSize: 30)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
