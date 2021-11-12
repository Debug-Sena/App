class Patient {
  final String gender;
  final String blood;
  final String age;
  final String policy;
  final String policyNo;
  Patient({
    required this.gender,
    required this.blood,
    required this.age,
    required this.policy,
    required this.policyNo,
  });

  Map<String, dynamic> toMap() {
    return {
      'gender': gender,
      'blood': blood,
      'age': age,
      'policy': policy,
      'policyNo': policyNo,
    };
  }

  factory Patient.fromMap(Map<String, dynamic> map) {
    return Patient(
      gender: map['gender'],
      blood: map['blood'],
      age: map['age'],
      policy: map['policy'],
      policyNo: map['policyNo'],
    );
  }
}
