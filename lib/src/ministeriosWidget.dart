import 'package:flutter/material.dart';
import 'nibAppBar.dart';

class Ministerios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NibAppBar(),
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
