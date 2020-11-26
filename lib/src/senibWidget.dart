import 'package:flutter/material.dart';
import 'funcoes.dart';
import 'package:flutter/material.dart';
import 'nibAppBar.dart';

class SenibMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NibAppBar(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/nib.jpeg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Text(
              "O Seminário da Nova Igreja Batista de Curitiba é baseado no Seminário da Nova Igreja Batista de Manaus. Todas as matérias são ministradas conforme plano de aula  anual. São cinco anos letivos para conclusão de todas as matérias. Cada matéria tem duração de seis semanas. ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/biblia.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Text(
              '''Primeiro Ano: 
              Um com Deus 
              João 
              8 Qualidades de Vida
              Vida de Cristo
              Amando uns aos outros
              Princípios de Vida 1
              Introdução a Bíblia''',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/biblia.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Text(
              '''Segundo Ano:
              Velho Testamento 1
              Velho Testamento 2
              Eclesiologia
              Doutrinas 1
              Doutrinas 2
              Evangelismo''',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/biblia.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Text(
              '''Terceiro Ano:
              Origens
              Método de Estudo Bíblico 1
              Escatologia
              Atos
              Velho Testamento 3
              Princípios de Vida 2''',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/biblia.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Text(
              '''Quarto Ano:
              Velho Testamento 4
              Velho Testamento 5
              História da Igreja
              Mensagens Dinâmicas
              Seitas
              Vivendo na Palavra''',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagens/biblia.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Text(
              '''Quinto Ano:
              Velho Testamento 6
              Velho Testamento 7
              Princípios de Liderança
              Epístolas de Paulo
              ''',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            child: Text(
              "Material SENIB Curitiba",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
              child: FlatButton(
            child: const Text('Press'),
            color: Colors.yellow[70],
            onPressed: () {
              materialSenib();
            },
          )),
          Container(
            height: 20,
          ),
          Container(
            child: Text(
              "Matricula",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: SenibForm(),
          ),
        ],
      ),
    );
  }
}

// Create a Form widget.
class SenibForm extends StatefulWidget {
  @override
  SenibFormState createState() {
    return SenibFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SenibFormState extends State<SenibForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  var _materia;
  var _nome;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(child: Text('Nome completo:')),
          TextFormField(
            validator: (value) {
              _nome = value;
              if (value.isEmpty) {
                return 'Inserir Nome por favor';
              } else
                return _nome;
            },
          ),
          Container(child: Text('Materia:')),
          TextFormField(
            validator: (value) {
              _materia = value;
              if (value.isEmpty) {
                return 'Inserir Materia por favor';
              } else
                return _materia;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
                send("Matéria: $_materia ; aluno: $_nome");
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
