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
      backgroundColor: Colors.deepPurple,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},
        )
      ],
    ));
  }
}
