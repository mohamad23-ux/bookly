import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
  print("========================");
  print('Request URL: $_baseUrl$endPoint');

  try {
    var response = await dio.get(
      '$_baseUrl$endPoint',
      queryParameters: {'key': 'AIzaSyCtiYLvdKUiC_9NFHYtItTCguret1brSHU'},
    );

    print('Response Data: ${response.data}');

    if (response.data is Map<String, dynamic> &&
        response.data.containsKey('items')) {
      return response.data;
    } else if (response.data.containsKey('error')) {
      final errorMessage = response.data['error']['message'];
      throw Exception('خطأ من الخادم: $errorMessage');
    } else {
      throw Exception('الاستجابة لا تحتوي على بيانات متوقعة.');
    }
  } catch (e) {
    if (e is DioException) {
      print('Dio Error: ${e.response?.data}');
    } else {
      print('Unknown Error: $e');
    }
    throw Exception('فشل في جلب البيانات: $e');
  }
}

}
