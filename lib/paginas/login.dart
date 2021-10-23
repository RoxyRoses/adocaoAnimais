import 'package:adocao_gato1/paginas/cadastro2.dart';
import 'package:adocao_gato1/paginas/email_field_widget.dart';
import 'package:adocao_gato1/paginas/senha_field_widget.dart';
import 'package:flutter/material.dart';

import 'botao_widget.dart';

class LoginPage extends StatelessWidget {
  static final String title = 'Entrar';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.brown),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<MainPage> {
  final formKey = GlobalKey<FormState>();
  final senhaController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(LoginPage.title),
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
          Text('Nao possui uma conta?'),
          TextButton(
            child: Text('Entrar'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro2()),
              );
            },
          ),
        ],
      );
}
