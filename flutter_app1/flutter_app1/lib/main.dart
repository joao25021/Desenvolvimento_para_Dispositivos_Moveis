import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "resultado 1",
    "resultado 2",
    "resultado 3",
    "resultado 4",
    "resultado 5",
    "resultado 6",
  ];

  var _imagens =[
    "imagens/dados-para1.png",
    "imagens/dados-para2.png",
    "imagens/dados-para3.png",
    "imagens/dados-para4.png",
    "imagens/dados-para5.png",
    "imagens/dados-para6.png",
  ];

  var _fraseGerada = "QUAL SERÁ?";

  void _gerarFrase(){
    // 0, 1
    var numeroSorteado = Random().nextInt( _frases.length );
    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
      _imag_pad = _imagens[numeroSorteado];
    });
  }

  var _imag_pad= "imagens/3-dados-vermelhos-close-up-no-fundo-branco_1330-38.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dados da sorte"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(_imag_pad),
              Text(
                "jogue os dados" ,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "PRESSIONE",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.blue,
                onPressed: _gerarFrase,
              ),

            ],
          ),
        ),
      ),
    );
  }
}