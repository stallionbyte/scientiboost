import 'package:result_dart/result_dart.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:scientiboost/core/constants.dart';

abstract class InternetRepository {
  Future<ResultDart<int, String>> checkInternetAccess();
}

class InternetRepositoryImpl implements InternetRepository {
  @override
  Future<ResultDart<int, String>> checkInternetAccess() async {
    const int timeOut = 5;

    try {
      final response = await http
          .get(Uri.parse('https://www.google.com'))
          .timeout(const Duration(seconds: timeOut));

      return Success(response.statusCode);
    } on TimeoutException {
      return const Failure(InternetConstants.verificationTimeOutError);
    } on http.ClientException {
      return Failure(InternetConstants.connexionError);
    } catch (e) {
      return Failure(InternetConstants.verificationError);
    }
  }
}
