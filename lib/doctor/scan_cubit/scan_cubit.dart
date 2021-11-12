import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/load_status.dart';
import '../repository/scan_repository.dart';
part 'scan_state.dart';

class ScanCubit extends Cubit<ScanState> {
  ScanCubit() : super(ScanState.initial());

  ScanRepository scanRepository = ScanRepository();

  Future<void> scan() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));

    try {
      final result = await scanRepository.scan();
      if (result != null) {
        emit(state.copyWith(loadStatus: LoadStatus.loaded, emailSent: result));
      } else {
        emit(state.copyWith(loadStatus: LoadStatus.error, emailSent: false));
      }
    } catch (e, s) {
      emit(state.copyWith(loadStatus: LoadStatus.error, emailSent: false));
    }
  }

  void reset() {
    emit(ScanState.initial());
  }
}
