import 'dart:async';
import 'package:http/http.dart' as http;

class PersonagemAPI {
  static Future getPersonagens() {
    Uri url = Uri.parse('https://amiiboapi.com/api/amiibo/');
    return http.get(url);
  }
}
