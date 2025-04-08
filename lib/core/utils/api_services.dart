import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio dio;

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var responce = await dio.get('$_baseUrl$endpoint');

    return responce.data;
  }
}
