// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:conversor/app/components/currency_box.dart';
import 'package:conversor/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController? toText = TextEditingController();

  final TextEditingController? fromText = TextEditingController();
  HomeController? homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 100,
              ),
              SizedBox(height: 50),
              CurrencyBox(
                selectedItem: homeController?.toCurrency,
                controller: toText,
                itens: homeController?.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController?.toCurrency = model;
                  });
                },
              ),
              SizedBox(height: 10),
              CurrencyBox(
                selectedItem: homeController?.fromCurrency,
                controller: fromText,
                itens: homeController?.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController?.fromCurrency = model;
                  });
                },
              ),
              SizedBox(height: 50),
              //ElevatedButton(
              //style: ElevatedButton.styleFrom(
              // primary: Colors.amber,
              //),
              //onPressed: () {},
              //child: Text('CONVERTER'),
              //),
              RaisedButton(
                color: Colors.amber,
                child: Text('CONVERTER'),
                onPressed: () {
                  homeController?.convert();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
