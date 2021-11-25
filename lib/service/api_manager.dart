import 'dart:convert';

import 'package:assessment_internashala/model/client_model.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<ClientModel> getClientInfo() async {
    var client = http.Client();
    late ClientModel clientModel;
    String url = "https://run.mocky.io/v3/f3feef1c-9bfa-43fd-b2a0-bbe9abadb4f6";
    var response = await client.get(Uri.parse(url));

    try {
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        clientModel = ClientModel.fromJson(jsonMap);
      }
    } catch (e) {
      return clientModel;
    }

    return clientModel;
  }
}
