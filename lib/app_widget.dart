import 'package:flutter/material.dart';

import 'paginas/home.dart';

class AppWidget extends StatelessWidget {
  //widget que nao tem estado
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
