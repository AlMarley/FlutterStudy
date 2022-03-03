// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

String _result = '';
var imgr;
TextEditingController _controllerPeso = TextEditingController();
TextEditingController _controllerAltura = TextEditingController();

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI calculator',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
              child: Text(
                'Preencha os Campos :)',
                style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.orange[400],
                ),
              ),
            ),
            CreatTextFild("Peso (kg)", _controllerPeso),
            CreatTextFild("Altura (cm)", _controllerAltura),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 21.0, 8.0, 21.0),
              child: Text(
                _result,
                style: TextStyle(
                  fontSize: 21.0,
                ),
              ),
            ),
            Container(
              width: 250.0,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  doCalculation();
                },
                child: Text("Calculate"),
              ),
            ),
            Container(
              height: 21,
            ),
            Container(
              width: 300,
              height: 300,
              child: imgr != null ? Image.asset(imgr) : null,
            ),
          ],
        ),
      ),
    );
  }

  doCalculation() {
    double? peso = double.tryParse(_controllerPeso.text);
    double? altura = double.tryParse(_controllerAltura.text);

    if (peso != null && altura != null) {
      altura = (altura / 100.0);
      double _imc = (peso / (altura * altura));

      setState(() {
        if (_imc < 18.5) {
          _result = "Seu IMC é: ${_imc.toStringAsPrecision(4)}\nAbaixo do Peso";
          // imgr ="https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/5eeea355389655.59822ff824b72.gif";
          imgr = "images/abaixo.jpg";
        } else if (_imc >= 18.5 && _imc <= 24.9) {
          _result = "Seu IMC é: ${_imc.toStringAsPrecision(4)}\nPeso Normal";
          imgr = "images/normal.png";
        } else if (_imc >= 25.0 && _imc <= 29.9) {
          _result = "Seu IMC é: ${_imc.toStringAsPrecision(4)}\nSobrepeso";
          imgr = "images/sobrepeso.jpg";
        } else if (_imc >= 30.0 && _imc <= 34.9) {
          _result =
              "Seu IMC é: ${_imc.toStringAsPrecision(4)}\nObesidade Grau l";
          imgr = "images/gordoll1.png";
        } else if (_imc >= 35 && _imc <= 39.9) {
          _result =
              "Seu IMC é: ${_imc.toStringAsPrecision(4)}\nObesidade Grau ll";
          imgr = "images/gordoll.jpg";
        } else if (_imc > 39.9) {
          _result =
              "Seu IMC é: ${_imc.toStringAsPrecision(4)}\nObesidade Grau lll (Mórbida)";
          imgr = "images/gordolll.png";
        }
      });
    } else {
      setState(() {
        _result = ('Preencha os campos primeiro, criatura!');
      });
    }
  }

  upImg() {
    setState(() {
      Image.network(imgr);
    });
  }

  Padding CreatTextFild(String text, TextEditingController _controller) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(
            fontSize: 21.0,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
