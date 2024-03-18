import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/student/domain/qe_code_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'qr_code_state.dart';
part 'qr_code_cubit.freezed.dart';

@Singleton()
class QrCodeCubit extends Cubit<QrCodeState> {
  QrCodeCubit(this.repo) : super(const QrCodeState.initial());
  final QrCodeRepo repo;

  void toMarkStudent(String url) async {
    try {
      final urlId = Utils.getIdFromUrl(url);
      emit(const QrCodeState.loading());
      await repo.sendMark(urlId.$1, urlId.$2);
      emit(const QrCodeState.done());
    } catch (error) {
      kDebugMode
          ? emit(QrCodeState.error(error.toString()))
          : emit(const QrCodeState.error('Внутреняя ошибка'));
    }
  }
}
