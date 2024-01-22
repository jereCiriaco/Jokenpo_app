// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "pag1",
      debugShowCheckedModeBanner: false,
      home: Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.only(top: 5),

          //color: Color.fromARGB(255, 219, 226, 226),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 177, 193, 206),
              width: 3,
            ),
            color: Color.fromARGB(255, 6, 5, 5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text(
                "Escolha do App",
                style: TextStyle(
                    color: Color.fromARGB(255, 240, 236, 236),
                    decoration: TextDecoration.none),
              ),

              Image.asset(
                "images/default.png",
                height: 150,
                fit: BoxFit.contain,
              ),

              GestureDetector(
                onTap: () {
                  print("CLICADOO");
                },
                child: Text("Escolha uma:",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color.fromARGB(255, 240, 236, 236))),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => print("Pedra"),
                    child: Image.asset("images/pedra.png", height: 80),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () => print("Papel"),
                    child: Image.asset("images/papel.png", height: 80),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () => print("Tesoura"),
                    child: Image.asset("images/tesoura.png", height: 80),
                  )
                ],
              )
              // Padding(padding: EdgeInsets.only(top: 25),
              //   child:ElevatedButton(
              //       onPressed: () {
              //         print("Botao pressionado");
              //       },
              //       child: Text(
              //         "Clique aqui",
              //         style: TextStyle(fontSize: 40),
              //       ))
              // )
            ],
          ))));
}
