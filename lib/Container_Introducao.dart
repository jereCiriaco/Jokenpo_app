// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "pag1",
      debugShowCheckedModeBanner: false,
      home: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.only(top: 30),

          //color: Color.fromARGB(255, 219, 226, 226),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 3,
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              GestureDetector(
                onTap: () {
                  print("CLICADOO");
                },
                child: Text("Inicio de uma jornada ",
                    style: TextStyle(decoration: TextDecoration.none)),
              ),
              Text(
                "MECzada do grau",
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
                      },
                      child: Text(
                        "Clique aqui",
                        style: TextStyle(fontSize: 40),
                      )))
            ],
          )
          )
          )
          
          );
}
