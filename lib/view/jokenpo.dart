import 'dart:math';
import 'package:flutter/material.dart';

class jokenpo extends StatelessWidget {
  const jokenpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
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
  String resultado = "Escolha uma Opção";
  String caminhoFoto = "images/default.png";
  List<String> op = ["Pedra", "Papel", "Tesoura"];

  void play(String escolha) {
    int i = Random().nextInt(op.length);
    String adv = op[i];

    this.caminhoFoto = "images/"+adv.toLowerCase()+".png";
 
    if ((escolha == "Pedra" && adv == "Tesoura") ||
        (escolha == "Papel" && adv == "Pedra") ||
        (escolha == "Tesoura" && adv == "Papel")) {
      setState(() {
        this.resultado = "Ganhou";
      });
    } else if ((adv == "Pedra" && escolha == "Tesoura") ||
        (adv == "Papel" && escolha == "Pedra") ||
        (adv == "Tesoura" && escolha == "Papel")) {
      setState(() {
        this.resultado = "Perdeu";
      });
    } else {
      setState(() {
        this.resultado = "Empate";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 40),
            Text("Escolha do App",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Image.asset(
              caminhoFoto,
              height: 300,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Text(resultado,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                )),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () => play("Pedra"),
                    child: Image.asset(
                      "images/pedra.png",
                      height: 100,
                      fit: BoxFit.contain,
                    )),
                GestureDetector(
                    onTap: () => play("Papel"),
                    child: Image.asset(
                      "images/papel.png",
                      height: 100,
                      fit: BoxFit.contain,
                    )),
                GestureDetector(
                    onTap: () => play("Tesoura"),
                    child: Image.asset(
                      "images/tesoura.png",
                      height: 100,
                      fit: BoxFit.contain,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
