import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:numberapi/number_dta_response/number_dta_response.dart';

Future<NumberDtaResponse> getNumberData({required String number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;

  final data = NumberDtaResponse.fromJson(bodyAsJson);
  return data;
}
