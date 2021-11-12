import 'package:dio/dio.dart';
import '../model/patient.dart';

class PatientRepository {
  Dio dio = Dio();

  Future<Patient?> getPatientDetails(String id) async {
    final response = await dio.get('');

    if (response.statusCode == 200) {
      return Patient.fromMap(response.data);
    }
    return null;
  }

  Future<bool> updatePatientDetails(Patient patient) async {
    final response = await dio.put('', data: patient.toMap());

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }
}
