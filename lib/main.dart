import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

//é o widget que representa nossa tela - stateful permite interagir, statles não permite.
class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Scaffold representa o design com barras icones e etc.
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora de IMC"),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.white,
        //permiter rolagem independente do tamanho do container
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            //alinhar eixo horizontal
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.person_outline, size: 120, color: Colors.green),
              TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Peso em KG",
                      labelStyle: TextStyle(color: Colors.green)),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 25.0)),
              TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Altura",
                      labelStyle: TextStyle(color: Colors.green)),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 25.0)),
              //container para definirmos a altura
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Calcular",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.green,
                    )),
              ),
              Text("Info",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 25.0))
            ],
          ),
        ));
  }
}
