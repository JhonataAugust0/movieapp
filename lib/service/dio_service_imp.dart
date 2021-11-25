import 'package:dio/dio.dart';
import 'package:movieapp/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/4/', headers: {
      'content-type': 'application/json;charset=utf-8',
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmNDIyZGM4ZDhlMDI3OTllY2JkZDYwZTE0OTdmZGQ4MCIsInN1YiI6IjYxOWVjYmM5YzBhZTM2MDAyYjY4MmRjZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.rZuvml_W6MDDpOsNCLc0wSSqAaPMJ-KEyhJswR7rGwU'
    }));
  }
}
