import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failuer {
  final String errorMessage;
  Failuer({required this.errorMessage});
}

class ServerFailure extends Failuer {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timed out');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timed out');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timed out');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Connection error');
      case DioExceptionType.unknown:
        return ServerFailure(errorMessage: 'Unknown error');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad certificate error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['message']['error']);
    } else if (statusCode == 404) {
      return ServerFailure(errorMessage: 'Not found');
    } else if (statusCode == 500) {
      return ServerFailure(errorMessage: 'Internal server error');
    } else {
      return ServerFailure(errorMessage: 'Something went wrong');
    }
  }
}
