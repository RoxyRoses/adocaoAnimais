import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  String email = '';
  String senha = '';
  String nome = '';
  String cpf = '';
  String celular = '';

  Widget _body() {
    return SingleChildScrollView(
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            TextField(
              onChanged: (text) {
                nome = text;
              },
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (text) {
                cpf = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (text) {
                celular = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Celular',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (text) {
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (text) {
                senha = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
              textColor: Colors.white,
              color: Colors.pink[200],
              onPressed: () {
                print('funcionando');
              },
              child: Container(
                width: 200,
                child: Text(
                  'Cadastrar',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
              textColor: Colors.white,
              color: Colors.pink[200],
              onPressed: () {
                print('funcionando');
              },
              child: Container(
                width: 200,
                child: Text(
                  'Ja possuo cadastro',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Cadastrar'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            _body(),
          ],
        ));
  }
}
