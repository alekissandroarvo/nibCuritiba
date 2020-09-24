import 'package:flutter/material.dart';

class NibAppBar extends AppBar {
  NibAppBar()
      : super(
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
        );
}
