import 'package:http/http.dart' as http;
import 'dart:convert';

main() async {
  final response = await http.post("http://ankadiapp.com/api/v1/login",body: {"email_id": "test@test.com", "password": "123456"});
  print(response.body);
  Map<String, dynamic> data = json.decode(response.body);
  print(data["data"]["auth_token"]);
}
