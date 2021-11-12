import 'package:dio/dio.dart';
import '../../common/user_type.enum.dart';

class AuthRepository {
  Dio dio = Dio();

  Future<void> register(
    String fullName,
    String email,
    String password,
  ) async {}

  Future<void> login(
    UserType userType,
    String email,
    String password,
  ) async {
    late String url;

    if (userType == UserType.patient) {
      url = '';
    } else {
      url = '';
    }

    final response = await dio.post(url);

    if (response.statusCode == 200) {}
  }
}
