
import 'dart:convert';
import 'posts.dart';
import 'package:http/http.dart' as http;

Future<http.Response> otpApi(String uid, String txnId){
  return http.post(
    Uri.parse('https://stage1.uidai.gov.in/onlineekyc/getOtp/'),
    headers: <String, String>{
      'Content-Type': 'application/json'
    },
    encoding: Encoding.getByName("utf-8"),    
    body: jsonEncode(<String, String>{
      'uid': uid,
      'txnId': txnId,
    })
  
  );
}