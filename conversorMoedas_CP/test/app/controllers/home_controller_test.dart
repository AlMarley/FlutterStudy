import 'package:conversor/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController? toText = TextEditingController();
  final TextEditingController? fromText = TextEditingController();

  final homeController = HomeController(toText: toText, fromText: fromText);

  test('espera-se converter de real para dolar', () {
    toText?.text = '1.0';
    homeController.convert();
    expect(fromText?.text, '0.36');
  });
}
