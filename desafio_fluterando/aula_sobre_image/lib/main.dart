// ignore_for_file: deprecated_member_use

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  ThemeData.dark();
  runApp(ImagemTeste());
}

class ImagemTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "imagem test",
      home: Scaffold(
        backgroundColor: Color(0xFFFE6D6E),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo2.png',
                  width: 150,
                ),
                Container(height: 25),
                Text(
                  'Location Changer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: '',
                  ),
                ),
                Container(height: 10),
                Text(
                  'Plugin app for Tinder',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                Container(height: 25),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red)
                    ),
                    onPressed: () {},
                    child: Container(
                      width: 180,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Login With Facebook',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red[300],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
