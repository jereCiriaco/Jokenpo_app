import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: home()));
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 10, 10),
      appBar: AppBar(
        title: Text("Dragon Ball"),
        backgroundColor: Color.fromARGB(255, 228, 74, 60),
      ),
      body: treinoStateful(),
    );
  }
}

class treinoStateful extends StatefulWidget {
  const treinoStateful({super.key});

  @override
  State<treinoStateful> createState() => _treinoStatefulState();
}

class _treinoStatefulState extends State<treinoStateful> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/td8.gif', height: 50,width: 100,),
              Image.asset(
                'images/td1.gif',
                height: 50,
                width: 100,
              ),

              Image.asset(
                'images/td7.gif',
                height: 50,
                width: 100,
              ),
              

              Image.asset(
                'images/td9.gif',
                height: 50,
                width: 100,
              )
            ],
      ),
      

      ),
    );
  }
}
