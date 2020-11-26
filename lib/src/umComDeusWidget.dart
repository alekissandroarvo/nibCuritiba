import 'package:flutter/material.dart';
import 'funcoes.dart';
import 'package:flutter/material.dart';
import 'nibAppBar.dart';

class UmComDeus extends StatelessWidget {
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
              "O curso de Um Com Deus é ministrado para aqueles que desejam ter uma verdadeira comunhão com Deus. São seis semanas meditando sobre as quatro áreas de União com Deus: União de Espírito, União de Pensamento, União de Propósito e União de Corpo.",
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
            child: Image.asset("imagens/umComDeus.jpg"),
          ),
          Container(
            height: 20,
          ),
          Container(
            child: Text(
              "Material Um Com Deus",
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
              materialUmComDeus();
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
            child: UmComDeusForm(),
          ),
        ],
      ),
    );
  }
}

// Create a Form widget.
class UmComDeusForm extends StatefulWidget {
  @override
  UmComDeusFormState createState() {
    return UmComDeusFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class UmComDeusFormState extends State<UmComDeusForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
                send("Matéria: Um Com Deus ; aluno: $_nome");
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
