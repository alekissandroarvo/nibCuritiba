import 'package:flutter/material.dart';
import 'package:nibCuritiba/src/umComDeusWidget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'funcoes.dart';
import 'horariosCultosWidget.dart';
import 'ministeriosWidget.dart';
import 'gruposDeOracaoWidget.dart';
import 'senibWidget.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
      body: FooterView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/nib.jpeg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Column(
              children: <Widget>[
                //Row para ver endereço e link visitas
                Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset('imagens/predioNib.jpg'),
                      margin: const EdgeInsets.all(10.0),
                      width: 330.0,
                      height: 250.0,
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
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

                //Row para contactar
              ],
            ),
          ),
        ],
        footer: Footer(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.call),
                onPressed: callMe,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(MdiIcons.facebook),
                onPressed: launchURL_Facebook,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(MdiIcons.instagram),
                onPressed: launchURLInstagramNIB,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(MdiIcons.whatsapp),
                onPressed: launchWhatsApp,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(Icons.navigation),
                onPressed: launchURLMaps,
              )
            ],
          ),
        ),
        flex: 2,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => umComDeus()),
                );
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
                eventosNib();
              },
            ),
          ],
        ),
      ),
    );
  }
}
