import 'dart:async';
import 'package:http/http.dart' as http;

class PersonagemAPI {
  static Future getPersonagens() {
    Uri url = Uri.parse('https://randomuser.me/api/?results=25&&nat=br');
    return http.get(url);
  }
}
