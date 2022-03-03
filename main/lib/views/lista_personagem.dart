import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:main/data/personagem_api.dart';
import 'package:main/model/personagem.dart';
import 'package:main/model/personagem.dart';

class ListaPersonagem extends StatefulWidget {
  const ListaPersonagem({Key? key}) : super(key: key);

  @override
  _ListaPersonagemState createState() => _ListaPersonagemState();
}

class _ListaPersonagemState extends State<ListaPersonagem> {
  List<Personagem> personagensLista = <Personagem>[];

  void getPersonagensFromAPI() async {
    PersonagemAPI.getPersonagens().then((response) {
      setState(() {
        var responseData = json.decode(response.body);
        Iterable lista = responseData['results'];
        personagensLista =
            lista.map((model) => Personagem.fromJson(model)).toList();
      });
    });
  }

//pergar os personagens
  @override
  void initState() {
    getPersonagensFromAPI();
    //chamar nosso método de trazer os personagens
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumindo API"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: personagensLista.length,
            itemBuilder: (context, int index) {
              return ListTile(
                title: Text(personagensLista[index].name),
                subtitle: Text(personagensLista[index].email),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(personagensLista[index].picture),
                ),
              );
            }),
      ),
    );
  }
}
