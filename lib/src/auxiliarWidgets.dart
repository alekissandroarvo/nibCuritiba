 

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
                  child: Text("Firmes na Palavra${"\n"} e no Amor",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),                  
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
                  child: Text("Culto da Família: Domingo às 19:30hs",                        
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
                  child: Text("Culto Nova Jovens: Sábado às 19:30hs",                        
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
                  child: Text("Culto Nova Teens: Domingo às 18:00hs",                        
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



class gruposDeOracao extends StatelessWidget {
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
                  child: Text("Firmes na Palavra${"\n"} e no Amor",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),                  
                  ),             
                )
              ],
              ),
              ),

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
                          child: Text("G.O Alekissandro. Encontro: Sábado às 19:30hs.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          child: Text("R. Sargento Erwin n. 2225- Bl 21 AP 201- Bacacheri",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          child: Image.asset('imagens/goEdgar.jpg'),
                                            margin: const EdgeInsets.all(10.0),                
                                            width: 140.0,
                                            height: 140.0, 
                        ),
                        Container(
                          child: Text("G.O Edgar. Encontro: Sábado às 19:30hs.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          child: Text("R. Nahyr Costa Lima Padilha n. 95- Novo Mundo",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                        child: Image.asset('imagens/goEdinei.jpg'),
                                            margin: const EdgeInsets.all(10.0),                
                                            width: 140.0,
                                            height: 140.0, 
                        ),
                         Container(
                          child: Text("G.O Edinei. Encontro: Sexta-feira às 19:30hs.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          child: Text("R. Laudelino Ferreira Lopes n.547- Novo Mundo",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                        child: Image.asset('imagens/goValter.jpg'),
                                            margin: const EdgeInsets.all(10.0),                
                                            width: 140.0,
                                            height: 140.0, 
                        ),
                        Container(
                          child: Text("G.O Valter. Encontro: Sábado às 19:30hs.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          child: Text("R. Laudelino Ferreira Lopes n.547- Novo Mundo",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    )
      
      
      
      );

  }

}