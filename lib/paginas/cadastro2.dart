import 'package:adocao_gato1/paginas/botao_widget.dart';
import 'package:adocao_gato1/paginas/cpf_field_widget.dart';
import 'package:adocao_gato1/paginas/email_field_widget.dart';
import 'package:adocao_gato1/paginas/home.dart';
import 'package:adocao_gato1/paginas/nome_field_widget.dart';
import 'package:adocao_gato1/paginas/senha_field_widget.dart';
import 'package:adocao_gato1/paginas/telefone_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class Cadastro2 extends StatelessWidget {
  static final String title = 'Criar Conta';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.brown),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nomeController = TextEditingController();
  final telefoneController = TextEditingController();
  final cpfController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(Cadastro2.title),
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  EmailFieldWidget(controller: emailController),
                  const SizedBox(height: 16),
                  NomeField(controller: nomeController),
                  const SizedBox(
                    height: 16,
                  ),
                  TelefoneWidget(controller: telefoneController),
                  const SizedBox(
                    height: 16,
                  ),
                  CpfField(controller: cpfController),
                  const SizedBox(
                    height: 16,
                  ),
                  SenhaField(controller: senhaController),
                  const SizedBox(
                    height: 16,
                  ),
                  buildButton(),
                  buildNoAccount(),
                ],
              ),
            ),
          ),
        ),
      );

  Widget buildButton() => BotaoWidget(
        text: 'Cadastrar',
        onClicked: () {
          final form = formKey.currentState!;

          if (form.validate()) {
            final email = emailController.text;

            ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text('Seu email e $email'),
              ));
          }
        },
      );

  Widget buildNoAccount() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ja possui uma conta?'),
          TextButton(
            child: Text('Entrar'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      );
}
