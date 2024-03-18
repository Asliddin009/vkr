import 'package:client_vkr/feature/student/domain/qe_code_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: QrCodeRepo)
@test
final class MockQrCodeRepo implements QrCodeRepo {
  @override
  Future<String> sendMark(String lessonId, String qrCodeId) {
    return Future.delayed(const Duration(seconds: 1), () {
      if (qrCodeId == '2') return 'Вы не успели';
      return 'Вы успешно отметились';
    });
  }
}
