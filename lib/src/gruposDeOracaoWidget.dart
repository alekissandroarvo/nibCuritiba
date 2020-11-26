import 'package:flutter/material.dart';
import 'nibAppBar.dart';

class gruposDeOracao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NibAppBar(),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              child: Image.asset('imagens/goAlek.jpg'),
              margin: const EdgeInsets.all(10.0),
              width: 140.0,
              height: 140.0,
            ),
            Container(
              child: Text(
                "G.O Alekissandro. Encontro: Sábado às 19:30hs.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                "R. Sargento Erwin n. 2225- Bl 21 AP 201- Bacacheri",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Image.asset('imagens/goEdgar.jpg'),
              margin: const EdgeInsets.all(10.0),
              width: 140.0,
              height: 140.0,
            ),
            Container(
              child: Text(
                "G.O Edgar. Encontro: Sábado às 19:30hs.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                "R. Nahyr Costa Lima Padilha n. 95- Novo Mundo",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Image.asset('imagens/goEdinei.jpg'),
              margin: const EdgeInsets.all(10.0),
              width: 140.0,
              height: 140.0,
            ),
            Container(
              child: Text(
                "G.O Edinei. Encontro: Sexta-feira às 19:30hs.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                "R. Laudelino Ferreira Lopes n.547- Novo Mundo",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Image.asset('imagens/goValter.jpg'),
              margin: const EdgeInsets.all(10.0),
              width: 140.0,
              height: 140.0,
            ),
            Container(
              child: Text(
                "G.O Valter. Encontro: Sábado às 19:00hs.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                "R. Laudelino Ferreira Lopes n.547- Novo Mundo",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ));
  }
}
