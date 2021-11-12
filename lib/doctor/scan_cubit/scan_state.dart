part of 'scan_cubit.dart';

// enum Result {
//   success,
//   failure,
// }

class ScanState extends Equatable {
  final LoadStatus loadStatus;
  final bool emailSent;
  const ScanState({
    required this.loadStatus,
    required this.emailSent,
  });

  factory ScanState.initial() {
    return const ScanState(loadStatus: LoadStatus.intial, emailSent: false);
  }

  @override
  List<Object?> get props => [
        loadStatus,
        emailSent,
      ];

  @override
  bool get stringify => true;

  ScanState copyWith({
    LoadStatus? loadStatus,
    bool? emailSent,
  }) {
    return ScanState(
      loadStatus: loadStatus ?? this.loadStatus,
      emailSent: emailSent ?? this.emailSent,
    );
  }
}
