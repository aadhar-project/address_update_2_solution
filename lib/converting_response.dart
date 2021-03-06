import 'dart:convert';

import 'package:adhaarhackathon/posts.dart';
import 'package:http/http.dart' as http;

Future<optApi> createOtp(String uid, String txnId) async {
  final response = await http.post(
      Uri.parse('https://stage1.uidai.gov.in/onlineekyc/getOtp/'),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: jsonEncode(<String, String>{
        'uid': uid,
        'txnId': txnId,
      }));
  if (response.statusCode == 200) {
    // ignore: unused_local_variable
    optApi result = optApi.fromJson(jsonDecode(response.body));
    print(result.hashCode);
    return result;
  } else {
    throw Exception("Failed to generate otp");
  }
}
