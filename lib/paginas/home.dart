import 'package:adocao_gato1/paginas/cadastro.dart';
import 'package:adocao_gato1/paginas/cadastro2.dart';
import 'package:adocao_gato1/paginas/login.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:color/color.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pets',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            /* actions: [
              FlatButton(
                height: 400,
                textColor: Colors.white,
                onPressed: () {},
                child: Text("Criar Conta"),
                shape:
                    CircleBorder(side: BorderSide(color: Colors.transparent)),
              ),
              IconButton(
                  iconSize: 50,
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],*/
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 350,
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 10),
                  tween: Tween(begin: 700.0, end: 100.0),
                  builder: (context, value, child) => Center(
                      child: ShowUpAnimation(
                    delayStart: Duration(seconds: 1),
                    animationDuration: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: Text('Adote\n um\n pet! ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.pinkAccent,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
                ),
              ),
              Container(
                child: ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  animationDuration: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Text(
                    'Voce pode mudar uma vida! ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.brown,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShowUpAnimation(
                      delayStart: Duration(seconds: 1),
                      animationDuration: Duration(seconds: 1),
                      curve: Curves.bounceIn,
                      direction: Direction.vertical,
                      offset: 0.5,
                      child: ButtonTheme(
                        minWidth: 40.0,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          child: RaisedButton(
                            color: Colors.brown[600],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShowUpAnimation(
                      delayStart: Duration(seconds: 1),
                      animationDuration: Duration(seconds: 1),
                      curve: Curves.bounceIn,
                      direction: Direction.vertical,
                      offset: 0.5,
                      child: ButtonTheme(
                        minWidth: 40.0,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          child: RaisedButton(
                            color: Colors.brown[600],
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cadastro2()),
                              );
                            },
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            child: Text(
                              'Criar conta',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
