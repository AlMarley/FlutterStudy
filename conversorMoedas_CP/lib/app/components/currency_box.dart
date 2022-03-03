// ignore_for_file: prefer_const_constructors

import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel>? itens;
  final CurrencyModel? selectedItem;
  final TextEditingController? controller;
  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox(
      {Key? key,
      this.itens,
      this.controller,
      this.onChanged,
      this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<CurrencyModel>(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              value: selectedItem,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              items: itens
                  ?.map((e) => DropdownMenuItem<CurrencyModel>(
                      value: e, child: Text(e.name!)))
                  .toList(),

              onChanged: onChanged,
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
