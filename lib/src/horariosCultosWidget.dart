import 'package:flutter/material.dart';

class HorariosCultos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 200, 88, 0.7),
        title: Row(
          children: <Widget>[
            Container(
              child: Image.asset('imagens/NIB.png'),
              margin: const EdgeInsets.all(10.0),
              width: 120.0,
              height: 140.0,
            ),
            Expanded(
              child: Text(
                "Firmes na Palavra${"\n"} e no Amor",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset('imagens/cultoDomingo.jpg'),
            margin: const EdgeInsets.all(10.0),
            width: 140.0,
            height: 140.0,
          ),
          Expanded(
            child: Center(
              child: Text(
                "Culto da Família: Domingo às 19:30hs",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Container(
            child: Image.asset('imagens/jovens.jpg'),
            margin: const EdgeInsets.all(10.0),
            width: 140.0,
            height: 140.0,
          ),
          Expanded(
            child: Center(
              child: Text(
                "Culto Nova Jovens: Sábado às 19:30hs",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Container(
            child: Image.asset('imagens/Teens.jpg'),
            margin: const EdgeInsets.all(10.0),
            width: 140.0,
            height: 140.0,
          ),
          Expanded(
            child: Center(
              child: Text(
                "Culto Nova Teens: Domingo às 18:00hs",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
