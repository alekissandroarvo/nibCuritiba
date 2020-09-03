import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'funcoes.dart';
import 'horariosCultosWidget.dart';
import 'ministeriosWidget.dart';
import 'gruposDeOracaoWidget.dart';
import 'senibWidget.dart';

class NibApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NibStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NibStatefulWidget extends StatefulWidget {
  NibState createState() => NibState();
}

class NibState extends State<NibStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
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

      //Body
      body: Column(
        children: <Widget>[
          //Row para ver endereço e link visitas
          Row(
            children: <Widget>[
              Container(
                child: Image.asset('imagens/predioNib.jpg'),
                margin: const EdgeInsets.all(10.0),
                width: 120.0,
                height: 140.0,
              ),
              Expanded(
                child: FlatButton.icon(
                  //color: Colors.amber,
                  onPressed: launchURLMaps,
                  icon: Icon(Icons.navigation),
                  label: Text("Visite"),
                ),
              ),
            ],
          ),

          //Row Endereço
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                    'R. Laudelino Ferreira Lopes-547- Bairro Novo-Curitiba-PR',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 48.0,
                height: 40.0,
              ),
            ],
          ),

          //Row de versículo
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "E perseveravam no ensino dos apóstolos, e na comunhão, no partir do pão e nas orações. At 2.42",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Container(
                width: 48.0,
                height: 80.0,
              ),
            ],
          ),

          //Row para contactar
          Row(
            children: <Widget>[
              Expanded(
                child: Text('ENTRE EM CONTATO',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton.icon(
                  //color: Colors.amber,
                  onPressed: callMe,
                  icon: Icon(Icons.call),
                  label: Text("Ligue"),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Image.asset('imagens/whatsup.jpg'),
                    margin: const EdgeInsets.all(10.0),
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ),
            ],
          ),

          //Midias Sociais
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "MÍDIAS SOCIAIS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: launchURL_Facebook,
                  child: Container(
                    child: Image.asset('imagens/facebook.png'),
                    margin: const EdgeInsets.all(10.0),
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    child: Image.asset('imagens/twitter.jpg'),
                    margin: const EdgeInsets.all(10.0),
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: launchURLInstagramNIB,
                  child: Container(
                    child: Image.asset('imagens/instagram.jpg'),
                    margin: const EdgeInsets.all(10.0),
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'MENU',
                style: TextStyle(height: 5, fontSize: 14),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 200, 88, 0.7),
              ),
            ),
            ListTile(
              title: Text(
                'CULTOS',
                style: TextStyle(height: 5, fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HorariosCultos()),
                );
              },
            ),
            ListTile(
              title: Text(
                'UM COM DEUS',
                style: TextStyle(height: 5, fontSize: 14),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'SENIB',
                style: TextStyle(height: 5, fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => senibMain()),
                );
              },
            ),
            ListTile(
              title: Text(
                'MEDITAÇÕES',
                style: TextStyle(height: 5, fontSize: 14),
              ),
              onTap: launchURL_Meditacoes,
            ),
            ListTile(
                title: Text(
                  'GRUPOS DE ORAÇÃO',
                  style: TextStyle(height: 5, fontSize: 14),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => gruposDeOracao()),
                  );
                }),
            ListTile(
              title: Text(
                'MINISTÉRIOS',
                style: TextStyle(height: 5, fontSize: 14),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ministerios()),
                );
              },
            ),
            ListTile(
              title: Text(
                'EVENTOS',
                style: TextStyle(height: 5, fontSize: 14),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
