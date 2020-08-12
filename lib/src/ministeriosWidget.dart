import 'package:flutter/material.dart';

class ministerios extends StatelessWidget {
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
      body: ListView(
        //padding: const EdgeInsets.all(8),
        children: <Widget>[
          Expanded(
            child: Image.asset('imagens/artesMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/casaisMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/decoracaoMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/estacionamentoMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/fotografiaMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/LogisticaEstatisticaMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/louvorMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/novaBabyMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/novaInfantilMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/novaJovens.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/novaKidsMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/novaTeensMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/redesSociaisMinisterio.png'),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: Image.asset('imagens/somIluminacaoMinisterio.png'),
          ),
        ],
      ),
    );
  }
}
