import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Janela Inicial - Teste"),
        backgroundColor: Colors.green,
      ),
      body: BodyStateful(),
      bottomNavigationBar: BottomAppBar(
          child: Text("Botao"), color: Color.fromARGB(255, 247, 208, 14)),
    );
  }
}

class BodyStateful extends StatefulWidget {
  const BodyStateful({super.key});

  @override
  State<BodyStateful> createState() => _BodyStatefulState();
}

class _BodyStatefulState extends State<BodyStateful> {
  String _text = "ANIME 2";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              //print("CLICADOO");
            },
            child:
                Text(_text, style: TextStyle(decoration: TextDecoration.none)),
          ),
          Text(
            "Dragon Ball z",
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                wordSpacing: 15,
                decoration: TextDecoration.none),
          ),
          Text(
            "Fim da jornada",
            style: TextStyle(
                color: Colors.black, decoration: TextDecoration.overline),
          ),
          Image.asset(
            "images/goku.png",
            height: 300,
            fit: BoxFit.contain,
          ),
          Padding(
              padding: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () {
                    print("Botao pressionado");

                    setState(() {
                      this._text = "Alterado com sucesso";
                    });
                  },
                  child: Text(
                    "Clique aqui",
                    style: TextStyle(fontSize: 40),
                  )))
        ],
      )),
    );
  }
}
