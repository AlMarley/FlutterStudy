import 'package:flutter/material.dart';

import 'views/lista_personagem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meu Aplicativo",
      home: ListaPersonagem(),
      theme: ThemeData.dark(),
    );
  }
}
